//: VELOCIMETRO

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20 , VelocidadMedia = 50 , VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
  
    
    init(velocidad : Velocidades){
        self.velocidad = velocidad
    }
    
    
    func cambioDeVelocidad () -> (actual:Int, velocidadEnCadena:String){
        
        var velocidadActualizada : Int = 0
        var velocidadEnTexto : String = ""
        
        
        if velocidad == .Apagado {
            self.velocidad = .VelocidadBaja
           velocidadActualizada = 20
        velocidadEnTexto = "Esta en velocidad Baja"
        }else if velocidad == .VelocidadBaja {
            self.velocidad = .VelocidadMedia
            velocidadActualizada = 50
            velocidadEnTexto = "Esta en velocidad Media"
        }else if velocidad == .VelocidadMedia {
            self.velocidad = .VelocidadAlta
            velocidadActualizada = 120
            velocidadEnTexto = "Esta en velocidad Alta"
        }else if velocidad == .VelocidadAlta {
            self.velocidad = .Apagado
            velocidadActualizada = 0
            velocidadEnTexto = "Esta Apagado"
        }
        
        let datos=(velocidadActualizada,velocidadEnTexto)
        return datos
    }
    
}

var auto = Auto(velocidad:.VelocidadAlta)
for var i = 0 ; i < 20 ; i++ {
    print(auto.cambioDeVelocidad())
}






















































