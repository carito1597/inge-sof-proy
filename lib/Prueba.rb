class Prueba
 
  def initialize()
    $posicionX=0
    $posicionY=0
    $alto=0
    $ancho=0
    $orientacion="" 
    $movimiento=""
    $limite=0
    $mAux=""
  end
  def avan()
  
    verifica()
      if($limite==0)
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
      if($limit==1)
      $limit=0
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
def setTabla(xt,yt)
  $ancho = xt
  $alto= yt
end
def terreno()
  $ancho.to_s+","+$alto.to_s
end
def posicion()
  $posicionX.to_s+","+$posicionY.to_s+","+$orientacion.to_s
end
def setDatos(x,y,o)
  $posicionX=x
  $posicionY=y
  $orientacion=o
end
def setMov(m)
  $movimiento=m
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

end