@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                    @endif

                    You are logged in!                   
                </div>
                <div class="panel-footer">
                    <a href="{{ route('list_pixel_trackers') }}">Go to Pixel Tracker Listing</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
