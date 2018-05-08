<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LocationReport extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'analytic_id', 'country', 'country_iso', 'state', 'state_iso', 'total'
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
