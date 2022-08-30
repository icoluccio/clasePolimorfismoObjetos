object calculadora {

	var property ultimoResultado = 0
	var property maximoResultado = 0

	method hacerCuenta(numero, otroNumero, operacion) {
		ultimoResultado = operacion.apply(numero, otroNumero)
		if (ultimoResultado > maximoResultado) {
			maximoResultado = ultimoResultado
		}
	}

}

object resultadoAnterior {

	var property ultimoResultado = 0
	const operacion = { x , y => x + y }

	method operar(numero, otroNumero) {
		const resultadoADevolver = ultimoResultado
		ultimoResultado = operacion.apply(numero, otroNumero)
		return resultadoADevolver
	}

}

