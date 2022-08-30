/*
 * Ahora, cada operación tiene condiciones por las cuales no fue exitosa. Se pide poder saber si una operación es exitosa. Por ejemplo:
 * * Si el resultado de la suma daría más de 512, se considera una suma grande y por lo tanto falla
 * * Si el primer número de la resta es negativo, nuestro procesador no puede manejarla y rompe
 * * Si el divisor es 0, rompe
 * * El que siempre da cero no puede fallar
 * Ahora, la calculadora responde ante casos de error de la operación, independientemente de cuál sea la operación, ejecutando un bloque de código que puede cambiar en el tiempo. 
 * Algunas alternativas pueden ser:
 * * Devolver 0
 * * Devolver un mensaje de “esta calculadora está fuera de servicio”
 * * Tirar un error con un mensaje amigable al usuario 
 */
object calculadora {

	var ultimoResultado = 0
	var maximoResultado = 0
	var property bloqueDeFalla = {
	}

	method hacerCuenta(numero, otroNumero, operacion) {
		if (operacion.falla(numero, otroNumero)) {
			bloqueDeFalla.apply()
		}
		ultimoResultado = operacion.operar(numero, otroNumero)
		if (ultimoResultado > maximoResultado) {
			maximoResultado = ultimoResultado
		}
	}

	method maximoResultado() = maximoResultado

	method ultimoResultado() = ultimoResultado

}

object suma {

	method operar(numero, otroNumero) = numero + otroNumero

	method falla(numero, otroNumero) = self.operar(numero, otroNumero) > 512

}

object resta {

	method operar(numero, otroNumero) = numero - otroNumero

	method falla(numero, otroNumero) = numero < 0

}

object division {

	method operar(numero, otroNumero) = numero / otroNumero

	method falla(numero, otroNumero) = otroNumero == 0

}

object siempreCero {

	method operar(numero, otroNumero) = 0

	method falla(numero, otroNumero) = false

}

object resultadoAnterior {

	var ultimoResultado = 0
	const operacion = suma

	method operar(numero, otroNumero) {
		const resultadoADevolver = ultimoResultado
		ultimoResultado = operacion.operar(numero, otroNumero)
		return resultadoADevolver
	}

}

