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

	method vida() {
		return vida
	}

	method cambiarMultiplicador(numero) {
		multiplicador = numero
	}

	method arriba() {
		y += multiplicador
	}

	method abajo() {
		y -= multiplicador
	}

	method derecha() {
		x += multiplicador
	}

	method izquierda() {
		x -= multiplicador
	}

	method comer(algo) {
		algo.serComido()
	}

	method cambiarVida(numero) {
		vida += numero
	}

	method atacar(otro) {
		otro.recibirDanio(arma.poder() + 1)
	}

	method recibirDanio(danio) {
		self.cambiarVida(-1 * danio)
	}

    method sigueVivo(){
    	return vida > 0
    }
}

object troll {

	var vida = 100

	method recibirDanio(danio) {
		vida -= 1
	}

	method vida() {
		return vida
	}

}

object vampiro {

	var almas = 100

	method recibirDanio(danio) {
		almas += danio
	}

	method almas() {
		return almas
	}

}

object espada {

	method poder() = 2

}

object churrasco {

	method serComido() {
		personaje.cambiarVida(10)
	}

}

object acelerador {

	method serComido() {
		personaje.cambiarMultiplicador(2)
	}

}

object nada {

	method serComido() {
	}

}

object tiradorParaArriba {

	method serComido() {
		personaje.arriba()
	}

}

