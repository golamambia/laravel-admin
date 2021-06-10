<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Service extends Authenticatable
{

   protected $table = "service";
    protected $primaryKey = "id";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        "id",
        "title",
        "short_description",
        "long_description",
        "icon",
        
    ];
}
