require 'sinatra'
require './lib/Prueba'

$posicionX=0
$posicionY=0
$alto=0
$ancho=0
$orientacion="" 
$movimiento=""
$limite=0

jueguito= Prueba.new

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

post '/actionUbicar' do
  $posicionX=params[:posicionX]
  $posicionY=params[:posicionY]
  $orientacion=params[:orientacion]
  erb :movimientos
end

get '/crearTabla' do
  erb :crearTabla
end

post '/actionCrearTabla' do
  $ancho=params[:ancho]
  $alto=params[:alto]
  erb :principal
end

get '/movimientos' do
  erb :movimientos
end

post '/actionMover' do
  'hol'
  $movimiento=params[:movimiento]
  jueguito.generar($movimiento)
  erb :movimientos
end

def generar(palabra)
  palabra.each_char {|charAux|
    jueguito.mover(charAux)
   }
end

