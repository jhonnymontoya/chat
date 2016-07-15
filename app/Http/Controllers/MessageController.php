<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Models\User;
use App\Models\Mensajes;
use Auth;

use Log;

use App\Http\Requests\Message\CreateMessageRequest;

class MessageController extends Controller
{
    public function __construct()
	{
		$this->middleware('auth');
	}

    public function mensaje(CreateMessageRequest $request){

        if(!$request->ajax())return "";

        $user = Auth::getUser();

        $mensaje = new Mensajes();

        $mensaje->de            = $user->id;
        $mensaje->mensaje       = $request->mensaje;

        $ok = $mensaje->save();

        $resp = array('enviado' => $ok, 'hora' => $mensaje->created_at);

        return response()->json(json_encode($resp));
    }
}
