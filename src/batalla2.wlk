object arma {

	var poder = 2

	method poder() {
		return poder
	}

}

object personaje {

	var x = 0
	var y = 0
	var multiplicador = 1
	var vida = 10
	var arma = espada

	method cambiarVida(numero) {
		vida += numero
	}

	method atacar(otro) {
		otro.recibirDanio(arma.poder() + 1)		
	}

	method recibirDanio(danio) {
		self.cambiarVida(-1 * danio)
	}

}

object troll {

	var vida = 10

	method recibirDanio(danio) {
		vida -= 1
	}

}

object vampiro {

	var almas = 100

	method recibirDanio(danio) {
		almas += danio
	}

}

object espada {

	method poder() = 2

}

