<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class PixelTracker extends \TCG\Voyager\Models\User
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'short_name', 'pixel_slug', 'is_locked', 'is_active',
        'is_deleted', 'is_email_campaign', 'owner_id', 'is_dynamically_created',
        'redirect_url', 'created_on','pixel_email','pixel_subject'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'updated_on','created_at'
    ];

    public function scopeActive( $query )
    {
        return $query->where( 'is_active', 1 );
    }

    public function scopeWorking( $query )
    {
        return $query->where( 'is_deleted', 0 );
    }

    public function scopeTrackable( $query )
    {
        return $query->where( ['is_deleted' => 0, 'is_active' => 1 ] );
    }

}
