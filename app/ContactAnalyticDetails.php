<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactAnalyticDetails extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ip_address', 'email', 'client_id', 'ua_string', 'browser', 'device'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'created_at', 'updated_at'
    ];

}
