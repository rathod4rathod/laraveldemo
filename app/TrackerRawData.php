<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TrackerRawData extends Model
{

    protected $table = 'tracker_raw_data';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ip_address', 'status', 'last_clicked', 'open_date', 'engagement_type', 'updated_engagement_type', 'email', 'ua_string', 'request_data', 'open_duration','created_on'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_on', 'updated_on',
    ];

}
