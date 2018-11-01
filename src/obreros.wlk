import obra.*
import uocra.*

class Obrero {
	var property jornalesAdeudados=0

	var property bLicencia = false

	method pedirLicencia() {
		bLicencia = true
	}

	method salirLicencia() {
		bLicencia = false
	}

	method trabajar(obra) {
		jornalesAdeudados++
	}
	method cancelarJornales(){
		jornalesAdeudados=0	
	}


}

class Albanil inherits Obrero {

	var property cantLadrillos = 100
	var property desperdicio = 0
	var property aPorte = 3

	override method trabajar(obra) {
		super(obra)
		obra.restarLadrillos(cantLadrillos)
		obra.desperdicio(desperdicio)
	
	}
	method debeCobrar() {
		return uocra.jornalAlbanil() * jornalesAdeudados
	}		


}

class Gasista inherits Obrero {

	var property cantCanio = 3
	var property cantFosforos = 20
	var property desperdicio = 0
	var property aPorte

	override method trabajar(obra) {
		super(obra)
		obra.restarCanio(cantCanio)
		obra.restarFosforos(cantFosforos)
		obra.desperdicio(desperdicio)
		
	}
		method debeCobrar() {
		return uocra.jornalGasista() * jornalesAdeudados
	}
}

class Plomero inherits Obrero {

	var property cantCanio = 10
	var property cantArandelas = 30
	var property desperdicio = 1

	override method trabajar(obra) {
		super(obra)
		obra.restarCanio(cantCanio)
		obra.restarArandelas(cantArandelas)
		obra.desperdicio(desperdicio)
	}	
		method debeCobrar() {
		return uocra.jornalPlomero() * jornalesAdeudados
	}
}

class Electricista inherits Obrero {

	var property cantCable = 4
	var property cantCinta = 1
	var property desperdicio = 0

	override method trabajar(obra) {
		super(obra)
		obra.restarCable(cantCable)
		obra.restarCinta(cantCinta)
		obra.desperdicio(desperdicio)
	}	
		method debeCobrar() {
		return uocra.jornalElectricista() * jornalesAdeudados
	}
}

