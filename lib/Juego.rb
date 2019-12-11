 class Juego
    def initialize()
        @alto=0
        @ancho=0
        @p1=0
        @p2=0
    end
    def generarTabla(h,w)
        @alto=h
        @ancho=w
    end
    def operacionresult()
        @alto.to_s+"*"+@ancho.to_s
    end
    def ingresarInicial(i,j)
        @p1=i
        @p2=j 
    end
    def posicion()
        @p1.to_s+","+@p2.to_s
    end
    def movimiento(m)
        if(m=="D")
            @p2=@p2+1
        elsif (m=="I")
            @p2=@p2-1
        elsif (m=="A")
            @p1=@p1+1
        end

    end    

 end