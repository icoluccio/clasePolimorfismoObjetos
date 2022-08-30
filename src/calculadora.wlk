object calculadora{
  var ultimoResultado = 0
  var maximoResultado = 0
  
  method hacerCuenta(numero, otroNumero, operacion){
    ultimoResultado = operacion.operar(numero, otroNumero)
    if(ultimoResultado > maximoResultado){
      maximoResultado = ultimoResultado
    }
  }

  method maximoResultado() = maximoResultado
  method ultimoResultado() = ultimoResultado
}

object suma{
  method operar(numero, otroNumero) = numero + otroNumero
}

object resta{
  method operar(numero, otroNumero) = numero - otroNumero  
}

object siempreCero{
  method operar(numero, otroNumero) = 0
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
