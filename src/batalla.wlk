object personaje {

	var x = 0
	var y = 0
	var vida = 10

	method cambiarVida(numero) {
		vida += numero
	}

	method arriba() {
		y += 1
	}

	method abajo() {
		y -= 1
	}

	method derecha() {
		x += 1
	}

	method izquierda() {
		x -= 1
	}

}

