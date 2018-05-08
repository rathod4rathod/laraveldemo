@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Statistics - {{ $data['pixel_info']->name }}</div>
                <div class="panel-body">                
                    <h4>Overall Statistics</h4>
                    <div class="col-lg-12">                        
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th class="text-center">Total Open</th>
                                    <th class="text-center">Total Unique Visitors</th>
                                    <th class="text-center">Latest Impression</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">{{ $data['overall_statistics']['total_opens'] }}</td>
                                    <td class="text-center">{{ $data['overall_statistics']['unique_visitors'] }}</td>
                                    <td class="text-center">{{ $data['overall_statistics']['latest_impression'] }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-12">                        
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="80%">Particular</th>
                                    <th width="20%" class="text-center">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Total Opens</td>                                    
                                    <td class="text-center">{{ $data['statistics']->total_opens }}</td>
                                </tr>
                                <tr>
                                    <td>Total Clicks</td>                                    
                                    <td class="text-center">{{ $data['statistics']->total_clicks }}</td>
                                </tr>
                                <tr>
                                    <td>Total Prints</td>                                    
                                    <td class="text-center">{{ $data['statistics']->total_prints }}</td>
                                </tr>
                                <tr>
                                    <td>Total Forwards</td>                                    
                                    <td class="text-center">{{ $data['statistics']->total_forwards }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel-footer">
                    <a href="{{ route('list_pixel_trackers') }}"><i class="fa fa-arrow-left" aria-hidden="true"></i> Go to Pixel Tracker Listing</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
