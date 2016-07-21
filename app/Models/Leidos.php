<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Leidos extends Model
{
    protected $table = 'leidos';

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    public function user()
	{
		return $this->belongsTo('App\Models\User', 'usuario', 'id');
	}

    public function mensaje()
	{
		return $this->belongsTo('App\Models\Mensajes', 'mensaje', 'id');
	}
}
