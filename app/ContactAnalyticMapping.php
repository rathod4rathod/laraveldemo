<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactAnalyticMapping extends Model
{

    protected $table = 'contact_analytic_mapping';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'contact_id', 'analytic_id', 'open_count', 'click_count', 'click_count', 'print_count', 'forward_count'
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
