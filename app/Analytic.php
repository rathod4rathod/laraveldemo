<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Analytic extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'pixel_tracker_id', 'user_id'
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
