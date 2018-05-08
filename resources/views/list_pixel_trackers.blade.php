@extends('layouts.app')

@section('page_css')
<link href="{{ asset('public/css/jquery.growl.css') }}" rel="stylesheet">
<link href="{{ asset('public/css/custom.css') }}" rel="stylesheet">
@endsection
@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">List of Pixel Trackers
                    <div class="pull-right"><a class="btn btn-primary" style="padding: 0px 12px;" id="btnAddPixelTracker" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus"></i> Add</a></div>
                </div>

                <div class="panel-body">
                    @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                    @endif                                                              
                    <table class="table table-bordered table-hover">
                        <thead>
                        <th width="30%">Pixel Tracker Title</th>
                        <th width="15%">Created On</th>
                        <th width="15%">Total Impressions</th>
                        <th width="15%">Latest Impression</th>
                        <th width="10%">Status</th>
                        <th width="15%">Action(s)</th>                            
                        </thead>
                        @if(isset($pixel_trackers))
                        @if(count($pixel_trackers) > 0)
                        @foreach ($pixel_trackers as $pt)
                        <tr id="{{ $pt->id }}">
                            <td>{{ $pt->name }}</td>
                            <td class="text-center">{{ $pt->created_at != '' ? $pt->created_at : '-' }}</td>
                            <td class="text-center">{{ $pt->total_open }}</td>
                            <td class="text-center">{{ $pt->latest_impression }}</td>
                            <td class="text-center">
                                {{ $pt->is_active == 1 ? 'Active' : 'Inactive' }}
                            </td>
                            <td class="text-center action_controls">                                        
                                @if($pt->is_active == 1)
                                <a href="#" title="View Script" class="btnShowTrackerScript"><i class="fa fa-eye"></i></a>
                                @else
                                <a href="#" title="Pixel Tracker is inactive!"><i class="fa fa-eye text-grey"></i></a>
                                @endif
                                @if($pt->total_open > 0)
                                <a href="{{ route('statistics', $pt->id) }}" title="View Statistics"><i class="fa fa-gears"></i></a>
                                @else
                                <a href="#" title="No Statistics"><i class="fa fa-gears text-grey"></i></a>
                                @endif
                                @if($pt->is_active == 1)
                                <a href="#" title="Deactive Pixel Tracker!" class="btnToggleStatus _tactive"><i class="fa fa-pause-circle"></i></a>
                                @else
                                <a href="#" title="Activate Pixel Tracker!" class="btnToggleStatus"><i class="fa fa-play-circle"></i></a>
                                @endif
                                <a href="#" title="Edit Pixel Tracker" class="btnEditPixelTracker"><i class="fa fa-pencil"></i></a>
                                <a href="#" title="Remove Pixel Tracker" class="btnRemovePixelTracker"><i class="fa fa-times text-danger"></i></a>
                            </td>
                        </tr>
                        @endforeach
                        @else                            
                        <tr class="text-center"><td colspan="6">No data found.</td></tr>
                        @endif
                        @else
                        <tr><td colspan="6">No data found.</td></tr>
                        @endif
                     @endforeach
                    </table>
                    {{ $pixel_trackers->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add Pixel Tracker</h4>
            </div>
            <form id="frmAddPixelTracker" method="post" action="#">
                <input type="hidden" id="pt_mode" value="1"/>
                <input type="hidden" id="pt_id" name="id" value=""/>

                <div class="modal-body">
                    <div class="form-group">
                        <label>Pixel Tracker Title</label>
                        {{ csrf_field() }}
                        <input class="form-control" id="pixel_tracker_title" placeholder="Enter Pixel Tracker Title!" name="pixel_tracker_title" maxlength="25" />
                        <span class="text-danger" id="err_msg"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="btnSavePixelTracker">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">Pixel Tracker Script</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Pixel Tracker Script</label><button class="btn btn-primary" id="btnCopyCode" style="position: absolute; right: 30px; margin-bottom: 10px;"  data-clipboard-target="#script_code">Copy</button><br/>                    
                    <div><code id="script_code"></code></div>                    
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>                
            </div>            
        </div>
    </div>
</div>
@endsection
@section('page_js')
<script src="{{ asset('public/js/jquery.growl.js') }}"></script>
<script src="{{ asset('public/js/clipboard.min.js') }}"></script>
<script src="{{ asset('public/js/tracker.js') }}"></script>
@endsection