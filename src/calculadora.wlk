object calculadora{
  var ultimoResultado = 0
  var maximoResultado = 0
  method hacerCuenta(numero, otroNumero, operacion){
    ultimoResultado = operacion.operar(numero, otroNumero)
    if(ultimoResultado > maximoResultado){
      maximoResultado = ultimoResultado
    }
  }

  method maximoResultado(){
    return maximoResultado
  }

  method ultimoResultado(){
    return ultimoResultado
  }
}

object suma{
  method operar(numero, otroNumero){
    return numero + otroNumero
  }
}

object resta{
  method operar(numero, otroNumero){
    return numero - otroNumero
  }
}

object siempreCero{
  method operar(numero, otroNumero){
    return 0
  }
}

object resultadoAnterior{
  var ultimoResultado = 0
  const operacion = suma
  
  method operar(numero, otroNumero){
    const resultadoADevolver = ultimoResultado
    ultimoResultado = operacion.operar(numero, otroNumero)
    return resultadoADevolver
  }
}

/*object hinchaFanatizado{
  method operar(numero, otroNumero){
    return "Andá a la cancha, bobo"
  }
  
  method gritar2(){
    return "Yo te vi correr"
  }
}*/

