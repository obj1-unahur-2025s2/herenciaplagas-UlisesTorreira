import elementos.*

class Plaga {
    var poblacion
    method transmitirEnfermedades() = poblacion >= 10
    method atacar(elemento){
        elemento.recibirAtaque(self)
        self.efectos()
    }
    method efectos() {
        poblacion = poblacion *0.1
    }
}

class Cucarachas inherits Plaga{
    var pesoPromedio

    method daño() = poblacion/2
    override method transmitirEnfermedades() { return super() && pesoPromedio >= 10}
    override method efectos(){
        super()
        pesoPromedio = pesoPromedio +2 
    }
}

class Pulgas inherits Plaga {  
    method daño() = poblacion*2
}

class Garrapatas inherits Pulgas {
    override method efectos(){
        poblacion = poblacion * 0.2
    }
}

class Mosquitos inherits Plaga {
    method daño() = poblacion
    override method transmitirEnfermedades() {return super() && poblacion % 3 == 0}
}


