// PLAGAS
  // ELEMETNOS QUE PUEDEN SER ATACADOS

class Hogar {
  var mugre
  var confort

  method esBueno() = if(mugre/2<confort) true else false 
}

class Huerta {
  var capProduccion = 0

  method esBueno(unNivel) = if(capProduccion>unNivel) true else false
}

class Mascota{
  var nivelSalud = 0
  
  method esBueno() = if(nivelSalud>250) true else false
}

// REQUERIMIENTOS DEL BARRIO
object barrio {
  // EN LOS BARRIOS PUEDE IR HOGAR HUERTA Y MASCOTA
  const barrios=[]

  method esBuenoEsto() = barrios.any({e=>e.esBueno()}) 
  method esCopado() = barrios.count({e=>e.esBueno()}) // lista negada de esBueno()
} 