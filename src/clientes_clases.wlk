class Clientes {
	var precioPactadoPorKm
	var cliente=null
	
	constructor(){
		precio = 0
	}
	
	constructor(precioPactado){
		precioPactadoPorKm=precioPactado	
	}
	
	method reemplazo(){
		if(cliente<>null){
			cliente=
		}
	}
	
}


object ludmila {method precioPactadoPorKm() {return 18}}
object anaMaria {method precioPactadoPorKm() {return 30}}
object teresa {method precioPactadoPorKm() {return 22}}

object melina {
	var _cliente=null
	method reemplazoCliente(cliente) {
		_cliente=cliente
	}
	method precioPactadoPorKm() {
		return _cliente.precioPactadoPorKm()-3
	}
}