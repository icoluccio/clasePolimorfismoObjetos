object logan{
  var property enfermedad = malaria
  var property temperatura = 36.5
  var property celulas = 40000
  
  method vivirUnDia(){
  	enfermedad.actuarSobre(self)
  }
  method vivirDias(dias){
  	dias.times({x => self.vivirUnDia() })
  }
 
  method aumentarTemperatura(grados){
  	temperatura += grados
  }

  method matarCelulas(celulasAMatar){
  	celulas -= celulasAMatar
  }
  
  method tieneFiebre() = temperatura > 36.5
}

object malaria{
	var property intensidad = 5
	
	method reproducirse(){
		intensidad *= 2
	}
	
	method actuarSobre(enfermo){
		enfermo.aumentarTemperatura(intensidad)
	}
}

object lupus {
	var property celulas = 10
	
	method actuarSobre(enfermo){
		enfermo.matarCelulas(celulas)
	}
}	


object enfermedadDeLaboratorio{
	var property chip = { x => }
	
	method actuarSobre(enfermo){
		chip.apply(enfermo)
	}
}
