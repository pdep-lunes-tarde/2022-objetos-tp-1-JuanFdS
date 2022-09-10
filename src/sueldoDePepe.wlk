object pepe {
	var property categoria
	var property bonoPorResultados
	var property bonoPorPresentismo
	var faltas = 0

	method neto() {
		return categoria.neto()
	}

	method cuantoCobraPorBonoPorResultados() {
		return bonoPorResultados.bono(self.neto())
	}
	method falto() {
		faltas += 1
	}
	method cuantoCobraPorBonoPorPresentismo() {
		return bonoPorPresentismo.bono(faltas)
	}
	method sueldo() {
		return self.neto() +
				self.cuantoCobraPorBonoPorPresentismo() +
				self.cuantoCobraPorBonoPorResultados()
	}
}

object sofia {
	var property categoria
	var property bonoPorResultados

//	var categoria
//	method categoria() {
//		return categoria
//	}
//	method categoria(unaCategoria) {
//		categoria = unaCategoria
//	}

	method neto() {
		return categoria.neto() * 1.3 
	}
//	method neto() = categoria.neto() * 1.3

	method sueldo() {
		return self.neto() + bonoPorResultados.bono(self.neto())
	}
}

object ajuste {
	method bono(cantidadFaltas) {
		if(cantidadFaltas > 0) {
			return 0
		} else {
	 		return 100			
		}
	}
}

object normal {
	method bono(cantidadFaltas) {
		if(cantidadFaltas > 1) {
			return 0
		} else if(cantidadFaltas > 0) {
			return 1000
		} else {
			return 2000
		}
	}
}

object nulo {
	method bono(_sueldoNeto) = 0
}

object montoFijo {
	method bono(_sueldoNeto) {
		return 800
	}
}

object porcentaje {
	method bono(sueldoNeto) {
		return sueldoNeto * 0.1
	}
}

object gerente {
	method neto() {
		return 15000
	}
}

object cadete {
	method neto() {
		return 20000
	}
}
