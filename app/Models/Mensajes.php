<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Mensajes extends Model
{
    protected $table = 'mensajes';

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];


    public function usuario()
	{
		return $this->belongsTo('App\Models\User', 'de', 'id');
	}

    public function scopeNuevo($query, $date)
    {
    	if(trim($date) != '')
    	{
    		$query->where('created_at', '>=', $date);
    	}
    }
}
