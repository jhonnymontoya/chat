<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Symfony\Component\HttpFoundation\StreamedResponse;

use Log;
use App\Models\Mensajes;

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
				$mensajes = Mensajes::nuevo(date("Y-m-d H:i:s"))->orderBy("created_at", "desc")->orderBy("id", "desc")->get();
				//Log::info($mensajes);
				if($mensajes->count() > 0){
					$mens = array();
					foreach ($mensajes as $mensaje) {
						$mens[] = array('de' => $mensaje->usuario->name, 'mensaje' => $mensaje->mensaje, "fecha" => $mensaje->created_at);
					}

					$mens = json_encode($mens);

					echo "event: chat\n";

					echo 'data: ' . $mens;
					echo "\n\n";
					
					if(ob_get_contents())ob_end_flush();
					flush();
				}
				sleep(1);
			}
		});


    	return $response;
	}
}
