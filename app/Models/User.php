<?php

namespace App\models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function mensajes()
	{
		return $this->hasMany('App\Models\Mensajes', 'de', 'id');
	}

    public function leidos()
	{
		return $this->hasMany('App\Models\Leidos', 'usuario', 'id');
	}
}
