class Prueba

def mover(mAux)
    if mAux =="A"
      verifica($orientacion)
      if $limite==0
        if $orientacion =="N"
          $posicionY = $posicionY.to_i + 1
        elsif $orientacion =="E"
            $posicionX = $posicionX.to_i + 1
        elsif $orientacion =="S"
            $posicionY = $posicionY.to_i - 1
        elsif $orientacion == "O"
            $posicionX = $posicionX.to_i - 1 
        end
      elsif $limite==1
        $limite=0
      end
    elsif mAux =="D"
      if $orientacion =="N"
        $orientacion ="E"
      elsif $orientacion =="E"
        $orientacion="S"
      elsif mAux =="S"
          $orientacion="O"
      elsif $orientacion=="O"
          $orientacion="N"
        end
    elsif mAux =="I"
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
  end
  
  
  def verifica(orAux)
    if orAux=="N"
      if $posicionY.to_i==$alto.to_i
        $limite=1
      end  
    elsif orAux=="E"
      if $posicionX.to_i==$ancho.to_i
        $limite=1
      end
    elsif orAux=="S"
      if $posicionY.to_i==1
        $limite=1
      end
    elsif orAux=="O"
      if $posicionX.to_i==1
        $limite=1
      end
    end
  end

end