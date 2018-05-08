<?php

namespace App\Http\Controllers\Voyager;

use TCG\Voyager\Http\Controllers\VoyagerBreadController as BaseVoyagerBreadController;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use TCG\Voyager\Database\Schema\SchemaManager;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Events\BreadImagesDeleted;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\Traits\BreadRelationshipParser;
use Illuminate\Database\Query\Builder;
use App\Mail\RemarkAdded;
use App\Mail\RequirementAdded;
use Auth;
use Validator;
use App\PixelTracker;
use App\ContactAnalyticMapping;

class VoyagerBreadController extends BaseVoyagerBreadController {

    //***************************************
    //               ____
    //              |  _ \
    //              | |_) |
    //              |  _ <
    //              | |_) |
    //              |____/
    //
    //      Browse our Data Type (B)READ
    //
    //****************************************

    public function index(Request $request) {
        // GET THE SLUG, ex. 'posts', 'pages', etc.
        $slug = $this->getSlug($request);

        // GET THE DataType based on the slug
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('browse', app($dataType->model_name));

        $getter = $dataType->server_side ? 'paginate' : 'get';

        $search = (object) ['value' => $request->get('s'), 'key' => $request->get('key'), 'filter' => $request->get('filter')];
        $searchable = $dataType->server_side ? array_keys(SchemaManager::describeTable(app($dataType->model_name)->getTable())->toArray()) : '';
        $orderBy = $request->get('order_by');
        $sortOrder = $request->get('sort_order', null);


        // Next Get or Paginate the actual content from the MODEL that corresponds to the slug DataType
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);


            if ($slug == 'emailtracker') {
                $columns = ['name', 'created_at', 'is_active'];
                $orderBy = 'created_at';
                $order = 'desc';
                if ($request->has('sortBy')) {
                    if (in_array($request->sortBy, $columns)) {
                        $orderBy = $request->sortBy;
                    } else {
                        $orderBy = 'created_at';
                    }
                }
                if ($request->has('orderBy')) {
                    if ($request->orderBy != 'desc' || $request->orderBy != 'asc') {
                        $order = $request->orderBy;
                    }
                }
                $query = $model::select([
                            'pixel_trackers.id', 'pixel_trackers.name', 'pixel_trackers.is_active', 'pixel_trackers.is_deleted', 'pixel_trackers.owner_id', 'pixel_trackers.created_at', 'pixel_trackers.pixel_email', 'pixel_trackers.pixel_subject','pixel_trackers.timezone',
                            DB::raw('(SELECT count(analytic_details.id) FROM analytics, analytic_details WHERE analytics.pixel_tracker_id = pixel_trackers.id AND analytic_details.analytic_id = analytics.id AND analytic_details.status = "OPEN") as total_open'),
                            DB::raw('(SELECT IFNULL(max(analytic_details.open_date), "-") FROM analytics, analytic_details WHERE analytics.pixel_tracker_id = pixel_trackers.id AND analytic_details.analytic_id = analytics.id) as latest_impression'),
                        ]);
                    
                        if(Auth::guard()->user()->role_id !=1){
                            $query->where('owner_id', Auth::id());
                        }
                        
            } elseif ($slug == 'remarks' && isset($_GET['id']) && $request['id']) {
                $query = $model::select('*')->where('enquiry_id', $request['id']);
            } elseif ($slug == 'users') {
            	if (Auth::user() && Auth::user()->role_id == 4 || Auth::user()->role_id == 5) {
                    $query = $model::where('id', Auth::ID());
                } else {
                    $query = $model::select('*')->where('id','!=', Auth::id());
                }
            } else {

                $query = $model::select('*');
            }
            $relationships = $this->getRelationships($dataType);
            //dd($relationships);
            // If a column has a relationship associated with it, we do not want to show that field
            $this->removeRelationshipField($dataType, 'browse');

            if ($search->value && $search->key && $search->filter) {
                $search_filter = ($search->filter == 'equals') ? '=' : 'LIKE';
                $search_value = ($search->filter == 'equals') ? $search->value : '%' . $search->value . '%';
                $query->where($search->key, $search_filter, $search_value);
            }

            if ($orderBy && in_array($orderBy, $dataType->fields())) {
                $querySortOrder = (!empty($sortOrder)) ? $sortOrder : 'DESC';
                $dataTypeContent = call_user_func([
                    $query->with($relationships)->orderBy($orderBy, $querySortOrder),
                    $getter,
                ]);
            } elseif ($model->timestamps) {
                $dataTypeContent = call_user_func([$query->latest($model::CREATED_AT), $getter]);
                //$dataTypeContent = \App\Requirement::first();
                //dd($dataTypeContent);
            } else {
                $dataTypeContent = call_user_func([$query->with($relationships)->orderBy($model->getKeyName(), 'DESC'), $getter]);
            }
            // Replace relationships' keys for labels and create READ links if a slug is provided.
            //$dataType = \App\UserRespnsibleMap::first();
            //dd($dataTypeContent, $dataType,  \App\UserRespnsibleMap::first());            
            $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType);
        } else {
            // If Model doesn't exist, get data from table name
            $dataTypeContent = call_user_func([DB::table($dataType->name), $getter]);
            $model = false;
        }

        // Check if BREAD is Translatable
        if (($isModelTranslatable = is_bread_translatable($model))) {
            $dataTypeContent->load('translations');
        }

        // Check if server side pagination is enabled
        $isServerSide = isset($dataType->server_side) && $dataType->server_side;


        $view = 'voyager::bread.browse';

        if (view()->exists("voyager::$slug.browse")) {
            $view = "voyager::$slug.browse";
        }
        if ($slug == 'emailtracker') {

            $columns = ['name', 'created_at', 'is_active'];
            $orderBy = 'created_at';
            $order = 'desc';
            if ($request->has('sortBy')) {
                if (in_array($request->sortBy, $columns)) {
                    $orderBy = $request->sortBy;
                } else {
                    $orderBy = 'created_at';
                }
            }
            if ($request->has('orderBy')) {
                if ($request->orderBy != 'desc' || $request->orderBy != 'asc') {
                    $order = $request->orderBy;
                }
            }
            $pixel_trackers = PixelTracker::select([
                                'pixel_trackers.id', 'pixel_trackers.name', 'pixel_trackers.is_active', 'pixel_trackers.is_deleted', 'pixel_trackers.owner_id', 'pixel_trackers.created_at',
                                'pixel_trackers.pixel_email', 'pixel_trackers.pixel_subject', 'pixel_trackers.timezone',
                                DB::raw('(SELECT count(analytic_details.id) FROM analytics, analytic_details WHERE analytics.pixel_tracker_id = pixel_trackers.id AND analytic_details.analytic_id = analytics.id AND analytic_details.status = "OPEN") as total_open'),
                                DB::raw('(SELECT IFNULL(max(analytic_details.open_date), "-") FROM analytics, analytic_details WHERE analytics.pixel_tracker_id = pixel_trackers.id AND analytic_details.analytic_id = analytics.id) as latest_impression'),
                            ]);

          

               // $pixel_trackers = DB::table('pixel_trackers')
               //              ->select('pixel_trackers.id', 'pixel_trackers.name', 'pixel_trackers.is_active', 'pixel_trackers.is_deleted', 'pixel_trackers.owner_id', 'pixel_trackers.created_at','pixel_trackers.pixel_email', 'pixel_trackers.pixel_subject', 'pixel_trackers.timezone', DB::raw('(SELECT count(analytic_details.id) FROM analytics LEFT JOIN analytic_details ON analytic_details.analytic_id=analytics.id WHERE analytics.pixel_tracker_id = pixel_trackers.id  AND analytic_details.status = "OPEN")as total_open'),DB::raw('(SELECT IFNULL(max(analytic_details.open_date), "-") FROM analytics LEFT JOIN analytic_details ON analytic_details.analytic_id=analytics.id WHERE analytics.pixel_tracker_id = pixel_trackers.id)as latest_impression'));
                            if(Auth::guard()->user()->role_id !=1){
                            $pixel_trackers = $pixel_trackers->where('pixel_trackers.owner_id', Auth::id());
                            }
                           // $pixel_trackers = $pixel_trackers->working();
                            $pixel_trackers = $pixel_trackers->orderBy('pixel_trackers.'.$orderBy, $order)->get();
                            
                           // dd($pixel_trackers);
                             // echo "<pre>";
                             // var_dump($pixel_trackers);
                             // die;
            return Voyager::view($view, compact(
                                    'dataType', 'dataTypeContent', 'isModelTranslatable', 'search', 'orderBy', 'sortOrder', 'searchable', 'isServerSide', 'pixel_trackers'));
        }
        return Voyager::view($view, compact(
                                'dataType', 'dataTypeContent', 'isModelTranslatable', 'search', 'orderBy', 'sortOrder', 'searchable', 'isServerSide'
        ));
    }

    //***************************************
    //
    //                   /\
    //                  /  \
    //                 / /\ \
    //                / ____ \
    //               /_/    \_\
    //
    //
    // Add a new item of our Data Type BRE(A)D
    //
    //****************************************

    public function create(Request $request) {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        $dataTypeContent = (strlen($dataType->model_name) != 0) ? new $dataType->model_name() : false;

        foreach ($dataType->addRows as $key => $row) {
            $details = json_decode($row->details);
            $dataType->addRows[$key]['col_width'] = isset($details->width) ? $details->width : 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'add');

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $view = 'voyager::bread.edit-add';

        if (view()->exists("voyager::$slug.edit-add")) {
            $view = "voyager::$slug.edit-add";
        }

        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
    }

    /**
     * POST BRE(A)D - Store data.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request) {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('edit', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows);

        if ($val->fails()) {
            return response()->json(['errors' => $val->messages()]);
        }

        if (!$request->ajax()) {
            $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());
            // dd($data);
            if ($slug == 'requirements') {
                $users = \App\UserRespnsibleMap::where('responsible_id', request('requirement_belongstomany_responsible_relationship'))->leftjoin('users', 'users.id', 'user_respnsible_maps.user_id')->get();
                // dd($users);
                //var_dump($users);die;
                // foreach ($users as $user) {
                // \Notification::send($users, new EnquiryAdded($data));
                // }
                // $user->notify();new EnquiryAdded($data);
                foreach ($users as $user) {
                    Mail::to($user->email)->send(new RequirementAdded($data));
                }
                //add remark in remark table
                // dd($request);
                // $remark = new \App\Remark();
                // $remark->remarks = $request['remark'];
                // $remark->enquiry_id = $data->id;
                // $remark->created_by = Auth::user()->id;
                // $remark->created_at = now();
                // $remark->save();
            } else {
                event(new BreadDataAdded($dataType, $data));
            }
            return redirect()
                            ->route("voyager.{$dataType->slug}.index")
                            ->with([
                                'message' => __('voyager.generic.successfully_added_new') . " {$dataType->display_name_singular}",
                                'alert-type' => 'success',
            ]);
            // }
        }
    }

    //***************************************
    //                ______
    //               |  ____|
    //               | |__
    //               |  __|
    //               | |____
    //               |______|
    //
    //  Edit an item of our Data Type BR(E)AD
    //
    //****************************************

    public function edit(Request $request, $id) {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();
        // Compatibility with Model binding.
        $id = $id instanceof Model ? $id->{$id->getKeyName()} : $id;

        $relationships = $this->getRelationships($dataType);

        $dataTypeContent = (strlen($dataType->model_name) != 0) ? app($dataType->model_name)->with($relationships)->findOrFail($id) : DB::table($dataType->name)->where('id', $id)->first(); // If Model doest exist, get data from table name

        foreach ($dataType->editRows as $key => $row) {
            $details = json_decode($row->details);
            $dataType->editRows[$key]['col_width'] = isset($details->width) ? $details->width : 100;
        }

        // If a column has a relationship associated with it, we do not want to show that field
        $this->removeRelationshipField($dataType, 'edit');

        // Check permission
        $this->authorize('edit', $dataTypeContent);

        // Check if BREAD is Translatable
        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $view = 'voyager::bread.edit-add';

        if (view()->exists("voyager::$slug.edit-add")) {
            $view = "voyager::$slug.edit-add";
        }

        return Voyager::view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
    }

    // POST BR(E)AD
    public function update(Request $request, $id) {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Compatibility with Model binding.
        $id = $id instanceof Model ? $id->{$id->getKeyName()} : $id;

        $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);

        // Check permission
        $this->authorize('edit', $data);

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->editRows);

        if ($val->fails()) {
            return response()->json(['errors' => $val->messages()]);
        }

        if (!$request->ajax()) {
            $this->insertUpdateData($request, $slug, $dataType->editRows, $data);

            if ($slug == 'requirements' && !empty($request['remark'])) {
                // add remark
                $remark = new \App\Remark();
                $remark->remarks = $request['remark'];
                $remark->enquiry_id = $data->id;
                $remark->modified_by = Auth::user()->id;
                $remark->updated_at = now();
                $remark->save();
                //Find Requirement Added User Email Address while added remark to send mail.
                $remark_id = $remark->id;
                $requirement = \App\Requirement::where('id', $remark->enquiry_id)->first();
                $user = \App\User::where('id', $requirement->created_by)->first();
                Mail::to($user->email)->send(new RemarkAdded($remark));
                // //update assign user on edit
                $checkid = \App\Requirement ::where('id', $id)->first();
                if (!empty($checkid)) {
                    $checkid->remark = NULL;
                    $checkid->save();
                }
            } else {
                event(new BreadDataUpdated($dataType, $data));
            }

            if ($slug == 'users') {
                if (Auth::user()->role_id == 4 || Auth::user()->role_id == 5) {
                    return redirect('admin')
                                    ->with([
                                        'message' => __('voyager.generic.successfully_updated') . " {$dataType->display_name_singular}",
                                        'alert-type' => 'success',
                    ]);
                } else {
                    return redirect()
                                    ->route("voyager.{$dataType->slug}.index")
                                    ->with([
                                        'message' => __('voyager.generic.successfully_updated') . " {$dataType->display_name_singular}",
                                        'alert-type' => 'success',
                    ]);
                }
            } else {
                return redirect()
                                ->route("voyager.{$dataType->slug}.index")
                                ->with([
                                    'message' => __('voyager.generic.successfully_updated') . " {$dataType->display_name_singular}",
                                    'alert-type' => 'success',
                ]);
            }
        }
    }

}
