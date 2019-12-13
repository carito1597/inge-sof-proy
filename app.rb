require 'sinatra'
require './lib/Prueba'



  $posicionX=0
  $posicionY=0
  $alto=0
  $ancho=0
  $orientacion="" 
  $movimiento=""
  $limite=0
  $mAux=""

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
  $movimiento=params[:movimiento1]
  generar()
  erb :movimientos
end

post '/actionCrearTabla' do
  $ancho=params[:ancho]
  $alto=params[:alto]
  erb :principal
end

  def avan()
   
      verifica()
        if $orientacion =="N"
          $posicionY = $posicionY.to_i + 1
        elsif $orientacion =="E"
            $posicionX = $posicionX.to_i + 1
        elsif $orientacion =="S"
            $posicionY = $posicionY.to_i- 1
        elsif $orientacion == "O"
            $posicionX = $posicionX.to_i- 1 
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
    $movimiento.each_char{ |c|
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

  def verifica()
    if $orientacion=="N"
      if $posicionY==$alto.to_i
        $limite=1
      end  
    elsif $orientacion=="E"
      if $posicionX==$ancho.to_i
        $limite=1
      end
    elsif $orientacion=="S"
      if $posicionY==1
        $limite=1
      end
    elsif $orientacion=="O"
      if $posicionX==1
        $limite=1
      end
    end
  end