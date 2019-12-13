require 'Prueba'
prueba=Prueba.new


RSpec.describe Prueba do
    it 'Deberia devolver 7*8' do
        prueba.setTabla("7","8")
        expect(prueba.terreno()).to eq("7,8")
    end
    it 'Deberia devolver 6*9' do
        prueba.setTabla("6","9")
        expect(prueba.terreno()).to eq("6,9")
    end
    it 'Deberia devolver 3,5,N' do
        prueba.setDatos("3","5","N")
        expect(prueba.posicion()).to eq("3,5,N")
    end
    it 'Deberia devolver 3,8,N' do
        prueba.setDatos("3","5","N")
        prueba.setMov("AAA")
        prueba.generar()
        expect(prueba.posicion()).to eq("3,8,N")
    end

    it 'Deberia devolver 3,5,E' do
        prueba.setDatos("3","5","N")
        prueba.setMov("D")
        prueba.generar()
        expect(prueba.posicion()).to eq("3,5,E")
    end
    it 'Deberia devolver 3,5,O' do
        prueba.setDatos("3","5","N")
        prueba.setMov("I")
        prueba.generar()
        expect(prueba.posicion()).to eq("3,5,O")
    end

    it 'Deberia devolver 3,8,N' do
        prueba.setTabla("5","8")
        prueba.setDatos("3","5","N")
        prueba.setMov("AAAAAAAAA")
        prueba.generar()
        expect(prueba.posicion()).to eq("3,8,N")
    end
end