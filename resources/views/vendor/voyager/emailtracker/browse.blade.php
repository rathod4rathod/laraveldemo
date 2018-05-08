@extends('voyager::master')
@section('css')
    <link href="{{ asset('public/css/jquery.growl.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/custom.css') }}" rel="stylesheet">
@stop

@section('page_title', __('voyager.generic.viewing').' '.$dataType->display_name_plural)

@section('page_header')
<div class="container-fluid">
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i> {{ $dataType->display_name_plural }}
    </h1>
    @can('add',app($dataType->model_name))
    <a  id="btnAddPixelTracker" data-toggle="modal" data-target="#myModal" class="btn btn-success btn-add-new">
        <i class="voyager-plus"></i> <span>Add New</span>
    </a>
    @endcan
   
    @include('voyager::multilingual.language-selector')
</div>
@stop

@section('content')
<div class="page-content browse container-fluid">
    @include('voyager::alerts')
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-bordered">
                <div class="panel-body">
                    @if ($isServerSide)
                    <form method="get" class="form-search">
                        <div id="search-input">
                            <select id="search_key" name="key">
                                @foreach($searchable as $key)
                                <option value="{{ $key }}" @if($search->key == $key){{ 'selected' }}@endif>{{ ucwords(str_replace('_', ' ', $key)) }}</option>
                                @endforeach
                            </select>
                            <select id="filter" name="filter">
                                <option value="contains" @if($search->filter == "contains"){{ 'selected' }}@endif>contains</option>
                                <option value="equals" @if($search->filter == "equals"){{ 'selected' }}@endif>=</option>
                            </select>
                            <div class="input-group col-md-12">
                                <input type="text" class="form-control" placeholder="Search" name="s" value="{{ $search->value }}">
                                <span class="input-group-btn">
                                    <button class="btn btn-info btn-lg" type="submit">
                                        <i class="voyager-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                    </form>
                    @endif
                    <div class="table-responsive">
                        <table id="dataTablePixcel" class="table table-hover">
                            <thead>
                                <tr>
                                   
                                   <th>Email</th>
                                   <th>Subject</th>
                                   <th>Email Sent</th>
                                   <th>Total Read</th>
                                   <th>Last Read</th>                                  
                                   <!-- <th>Action</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <?php

                                ?>
                                @if(isset($pixel_trackers))
                                @if(count($pixel_trackers) > 0)
                                @foreach ($pixel_trackers as $pt)

                                <tr id="{{ $pt->id }}">                                   
                                   
                                    <td>{{ $pt->pixel_email or '-' }}</td>
                                    <td>{{ $pt->pixel_subject or '-'}}</td>
                                    <td>
                                    <?php    
                                    if($pt->timezone != '' || $pt->timezone != null)
                                    {   
                                        echo $pt->created_at->setTimezone($pt->timezone); 
                                    }else{ ?>
                                    {{ $pt->created_at or '-' }}
                                    <?php } ?>
                                    </td>
                                    <td>
                                    <?php
                                    if($pt->total_open != '' || $pt->total_open != null || $pt->total_open != '-'){
                                        if($pt->total_open == 1){
                                            echo $pt->total_open - 1;
                                        }else{ 
                                            echo $pt->total_open-1;
                                        }
                                    }else{
                                            echo '0';
                                        } 
                                    ?>
                                    </td>
                                    <td> <?php
                                    if(($pt->timezone != '' || $pt->timezone != null) && ($pt->latest_impression != '-'))
                                    {                                    
                                        $date = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $pt->latest_impression, Config::get('app.timezone'));
                                       echo $date->setTimezone($pt->timezone);
                                     }else{                                 
                                     ?>                                    
                                        {{ $pt->latest_impression or '-' }}
                                       <?php } ?>
                                    </td> 
                                     <td> <a href="#" title="View Script" class="btnShowTrackerScript"><i class="voyager-eye"></i></a></td>                                
                                </tr>
                                @endforeach
                                @else                            
                                <tr class="text-center"><td colspan="6">No data found.</td></tr>
                                @endif
                                @else
                                <tr><td colspan="6">No data found.</td></tr>
                                @endif
                                
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
{{-- add pixcel --}}
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Add Email Tracker</h4>
            </div>
            <form id="frmAddPixelTracker" method="post" action="#">
                <input type="hidden" id="pt_mode" value="1"/>
                <input type="hidden" id="pt_id" name="id" value=""/>

                <div class="modal-body">
                    <div class="form-group">
                        <label>Email Tracker Title</label>
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
{{-- Pixel Tracker Script --}}
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">Email Tracker Script</h4>
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

{{-- Single delete modal --}}
<div class="modal modal-danger fade" tabindex="-1" id="delete_modal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="{{ __('voyager.generic.close') }}"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><i class="voyager-trash"></i> {{ __('voyager.generic.delete_question') }} {{ strtolower($dataType->display_name_singular) }}?</h4>
            </div>
            <div class="modal-footer">
                <form action="{{ route('voyager.'.$dataType->slug.'.index') }}" id="delete_form" method="POST">
                    {{ method_field("DELETE") }}
                    {{ csrf_field() }}
                    <button type="button" id="btnRemovePixelTracker"  class="btn btn-danger pull-right delete-confirm">{{ __('voyager.generic.delete_confirm') }} {{ strtolower($dataType->display_name_singular) }}</button>
                </form>
                <button type="button" class="btn btn-default pull-right" data-dismiss="modal">{{ __('voyager.generic.cancel') }}</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
@stop

@section('css')
@if(!$dataType->server_side && config('dashboard.data_tables.responsive'))
<link rel="stylesheet" href="{{ voyager_asset('lib/css/responsive.dataTables.min.css') }}">
@endif
@stop

@section('javascript')
<!-- DataTables -->
<?php 
//dd((!$dataType->server_side && config('dashboard.data_tables.responsive')));
//dd($dataType->server_side,config('dashboard.data_tables.responsive')); 

?>
<script src="{{ asset('public/js/jquery.growl.js') }}"></script>
<script src="{{ asset('public/js/clipboard.min.js') }}"></script>
<script src="{{ asset('public/js/tracker.js') }}"></script>
@if(!$dataType->server_side && config('dashboard.data_tables.responsive'))
    <script src="{{ voyager_asset('lib/js/dataTables.responsive.min.js') }}"></script>
@endif

<script>
     var table = $('#dataTablePixcel').DataTable({!! json_encode(
            array_merge([
                    "order" => [],
                    "language" => __('voyager.dataTablePixcel'),
            ],
                    config('voyager.dashboard.data_tables', []))
            , true) !!});       
    
            /*$(document).ready(function () {
            @if ($isModelTranslatable)
                    $('.side-body').multilingual();
            @endif
            });
            var deleteFormAction;
            $('td').on('click', '.delete', function (e) {
            var form = $('#delete_form')[0];
            if (!deleteFormAction) { // Save form action initial value
            deleteFormAction = form.action;
            }*/

          /*  form.action = deleteFormAction.match(/\/[0-9]+$/)
                    ? deleteFormAction.replace(/([0-9]+$)/, $(this).data('id'))
                    : deleteFormAction + '/' + $(this).data('id');
            console.log(form.action);
            $('#delete_modal').modal('show');
            });*/

</script>
@stop