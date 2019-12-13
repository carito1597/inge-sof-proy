require 'sinatra'
require './lib/Prueba'


def initialize()
  $posicionX=0
  $posicionY=0
  $alto=0
  $ancho=0
  $orientacion="" 
  $movimiento1=""
  $limite=0
  $mAux=""


end

get '/' do
  erb :saludo
end
post '/saludar' do
  $nombre_persona =params[:nombre]
  erb :principal
end

get '/ubicaRobot' do
  erb :ubicaRobot
end
get '/principal' do
  erb :principal
end

get '/movimientos' do
  erb :movimientos
end

post '/actionUbicar' do
  $posicionX=params[:posicionX]
  $posicionY=params[:posicionY]
  $orientacion=params[:orientacion]
  erb :movimientos
end

get '/crearTabla' do
  erb :crearTabla
end
post '/actionMover' do
  $movimiento1=params[:movimiento1]
  erb :movimientos
end

post '/actionCrearTabla' do
  $ancho=params[:ancho]
  $alto=params[:alto]
  erb :principal
end






  def avan()
   
    
        if $orientacion =="N"
          $posicionY = $posicionY + 1
        elsif $orientacion =="E"
            $posicionX = $posicionX + 1
        elsif $orientacion =="S"
            $posicionY = $posicionY- 1
        elsif $orientacion == "O"
            $posicionX = $posicionX- 1 
        end
    
  end
  def der()
    if $orientacion =="N"
      $orientacion ="E"
    elsif $orientacion =="E"
      $orientacion="S"
    elsif $orientacion =="S"
        $orientacion="O"
    elsif $orientacion=="O"
        $orientacion="N"
      end
  end
  def izq()
    if $orientacion=="N"
      $orientacion="O"
    elsif $orientacion =="E"
      $orientacion="N"
    elsif $orientacion =="S"
        $orientacion="E"
    elsif $orientacion=="O"
        $orientacion="S"
      end
  end


  def generar()
    $movimiento1.each_char{ |c|
      case c
      when 'A'
        avan()
      when 'D'
        der()
      when 'I'
        izq()
      end
     }
  end