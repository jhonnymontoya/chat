<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Symfony\Component\HttpFoundation\StreamedResponse;

use Log;
use App\Models\Mensajes;
use App\Models\Leidos;
use Auth;

class PushController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth');
	}

	public function index()
	{
		/*header("Content-Type: text/event-stream\n\n");

		while(true){
			// Every second, sent a "ping" event.
			echo "event: ping\n";
			$curDate = date("l, F d \of Y (d/m/Y H:i:s)");
			echo 'data: {"time": "' . $curDate . '"}';
			echo "\n\n";

			if(ob_get_contents())ob_end_flush();
			flush();
			sleep(1);
		}*/

		$response = new StreamedResponse();
		$response->headers->set('Content-Type', 'text/event-stream');
        $response->headers->set('Cache-Control', 'no-cache');

		$response->setCallBack(function(){

			while(true){
				$user = Auth::getUser();
				$mensajes = Mensajes::orderBy("mensajes.created_at", "desc")
					->orderBy("mensajes.id", "desc")
					->take(5)
					->get();
				//$mensajes = Mensajes::nuevo(date("Y-m-d H:i:s"))->orderBy("created_at", "desc")->orderBy("id", "desc")->get();
				//Log::info($mensajes);
				if($mensajes->count() > 0){
					$mens = array();
					foreach ($mensajes as $mensaje) {

						$leido = Leidos::where('usuario', '=', $user->id)->where('mensaje', '=', $mensaje->id)->get()->count();

						if($leido == 0)
						{
							$mens[] = array('de' => $mensaje->usuario->name, 'mensaje' => $mensaje->mensaje, "fecha" => $mensaje->created_at);

							$leido = new Leidos();

							$leido->usuario = $user->id;
							$leido->mensaje = $mensaje->id;

							$leido->save();
						}
					}

					$mens = json_encode($mens);

					echo "event: chat\n";

					echo 'data: ' . $mens;
					echo "\n\n";
					
					if(ob_get_contents())ob_end_flush();
					flush();
				}
				sleep(0.5);
			}
		});


    	return $response;
	}

	public function prueba()
	{
		/*$user = Auth::getUser();
		$mensajes = Mensajes::orderBy("mensajes.created_at", "desc")
					->orderBy("mensajes.id", "desc")
					->take(15)
					->get();*/
		

		/*$mensajes = Mensajes::select('mensajes.*')
					->leftJoin('leidos', 'leidos.mensaje', '=', 'mensajes.id')
					->whereNull('leidos.usuario')
					->orderBy("mensajes.created_at", "desc")
					->orderBy("mensajes.id", "desc")
					->take(50)
					->toSql();*/

		$leido = Leidos::where('usuario', '=', 1)->where('mensaje', '=', 1)->toSql();
		dd($leido);
	}
}
