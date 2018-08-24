
object ludmila {
	method precioPactadoPorKm() {return 18}
}
object anaMaria {
	method precioPactadoPorKm() {return 30}
}
object teresa {
	method precioPactadoPorKm() {return 22}
}

object melina {
	var _cliente=null
	method precioPactadoPorKm(cliente) {
		return _cliente.precioPactadoPorKm()-3
	}
}