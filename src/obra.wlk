class Obra {

	const property plantilla = []
	var property cantCanio = 0
	var property cantCable = 0
	var property cantCinta = 0
	var property cantFosforos = 0
	var property cantArandelas = 0
	var property cantLadrillos = 0
	var property desperdicio = 0
	
	
	method agregarAPlant(obrero) {
		plantilla.add(obrero)
	}

	method quitarDePlant(obrero) {
		plantilla.remove(obrero)
	}

	method restarLadrillos(cant) {
		cantLadrillos -= cant
	}

	method restarCanio(cant) {
		cantCanio -= cant
	}

	method restarCable(cant) {
		cantCable -= cant
	}

	method restarFosforos(cant) {
		cantFosforos -= cant
	}

	method restarCinta(cant) {
		
		cantCinta -= cant
	}
	method restarArandelas(cant){
		
		cantArandelas -= cant
	}
	method trabajar(){
		
	plantilla.forEach({elem=>
		if(!elem.bLicencia)
		{
		elem.trabajar(self)})
		}
		
}
}


