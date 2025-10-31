// PLAGAS
  // ELEMETNOS QUE PUEDEN SER ATACADOS

class Hogar {
  const mugre
  const confort

  method esBueno() = mugre <= confort/2
}

class Huerta {
  const capProduccion

  method esBueno() = capProduccion > nivelHuerta
}

object nivelHuerta {
  var property nivel = 0 
}

class Mascota{
  const nivelSalud 
  
  method esBueno() = nivelSalud >= 250
}

// REQUERIMIENTOS DEL BARRIO
class  Barrio {
  // EN LOS BARRIOS PUEDE IR HOGAR HUERTA Y MASCOTA
  const barrios=[]

  method agregarElemento(unElemento){barrios.add(unElemento)}
  method quitarElemento(unElemento){barrios.remove(unElemento)}
  method esBuenoEsto() = barrios.any({e=>e.esBueno()}) 
  method esCopado() = barrios.count({e=>e.esBueno()}) // lista negada de esBueno()
} 

//pushPruebaPlagas