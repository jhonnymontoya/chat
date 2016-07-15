@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Chat</div>

                <div class="panel-body">
                    <div id="id_chat"></div>
                    <div id="id_enviar">
                        <input type="text" class="form-control" name="mensaje" placeholder="Escribe tu mensaje">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('css')
    <style type="text/css">
        #id_chat{
            width: 100%;
            height: 300px;
            border: 1px solid #ccc;
            overflow: auto;
            padding: 1px 3px 2px 3px;
        }

        #id_enviar{
            width: 100%;
            margin-top: 5px;
        }

        #id_enviar input{
            width: 100%;
        }
        .de{
            margin-right: 5px;
            color: #009;
        }
        .de:after{
            content: ":";
        }
        .contenido{
        }
        .fecha{
            margin-left: 5px;
            font-size: 10px;
        }
    </style>
@endsection


@section('js')
    <script>
        var evtSource = new EventSource("/chat");

        evtSource.addEventListener("chat", function(e) {
            var obj = jQuery.parseJSON(e.data);
            $.each(obj, function(key, value){
                var de = $('<label class="de"></label>').html(value.de);
                var mensaje = $('<span class="contenido"></span>').html(value.mensaje);
                var fecha = $('<span class="fecha"></span>').html(value.fecha.date);
                var nuevoMensaje = $('<div></div>');

                nuevoMensaje.append(de, mensaje, fecha);
                $("#id_chat").append(nuevoMensaje);
                $("#id_chat").scrollTop($("#id_chat")[0].scrollHeight);

            });
            /*var nuevoDiv = document.createElement("div");

            $(nuevoDiv).html("Mensajes: " + obj.cuantos);

            $("#id_chat").append(nuevoDiv);

            $("#id_chat").scrollTop($("#id_chat")[0].scrollHeight);*/

        }, false);

        $(function(){
			$("input[name='mensaje']").focus();
			$("input[name='mensaje']").val($("input[name='mensaje']").val());
		});

        $("input[name='mensaje']").keypress(function(event){
            if(event.which == 13){
                event.preventDefault();
                var mensaje = $("input[name='mensaje']").val();
                if(mensaje.length != 0){
                    var url = "{{ url('/mensaje') }}";
                    var data = "_token={{ csrf_token() }}&mensaje=" + mensaje;

                    $.post(url, data, function(result)
                    {
                        if(result.length > 0){
                            var obj = JSON.parse(result);
                            console.log("Enviado: " + obj.enviado);
                            $("input[name='mensaje']").val("");
                        }
                    });
                }
            }
        });
    </script>
@endsection