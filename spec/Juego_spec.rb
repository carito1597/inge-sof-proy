require 'Juego.rb'

RSpec.describe Juego do
    juego=Juego.new
    it 'Deberia devolver 7*8' do
        
        juego.generarTabla(7,8)
        expect(juego.operacionresult()).to eq("7*8")
    end
    it 'Deberia devolver posicion inicial 'do
        # juego=Juego.new
        # juego.generarTabla(7,8)
        juego.ingresarInicial(3,2)
        expect(juego.posicion()).to eq("3,2")
    end
    # it 'Deberia devolver posicion imvalida 'do
    # juego.generarTabla(5,5)
    # juego.ingresarInicial(2,2)
    # juego.movimiento("I")
    # juego.movimiento("I")
    # expect(juego.posicion().to eq("error")    
    # end
    it 'Deberia devolver movimiento 'do
        juego.ingresarInicial(5,3)
        juego.movimiento("D")
        juego.movimiento("D")
        expect(juego.posicion()).to eq("5,5")    
    end
    it 'Deberia devolver posicion final 'do
    juego.ingresarInicial(4,2)
    juego.movimiento("A")
    juego.movimiento("I")
    expect(juego.posicion()).to eq("5,1")   
    end      

end