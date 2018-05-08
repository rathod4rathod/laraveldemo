<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnalyticDetail extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'analytic_id',
        'engagement_type',
        'status',
        'browser',
        'browser_version',
        'operating_system',
        'os_version',
        'reading_environment',
        'ip_address',
        'open_date',
        'state',
        'state_iso',
        'country',
        'country_iso',
        'city',
        'postal_code',
        'timezone',
        'email',
        'ua_string',
        'open_duration',
        'latitude',
        'longitude',
        'contact_id'
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
