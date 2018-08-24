import clientes.*

object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms * 1.2
	}
}

object mariela {
	method precioViaje(cliente, kms) { 
		if (cliente.precioPactadoPorKm() * kms<50) {
			return 50
		}else{
		return cliente.precioPactadoPorKm() * kms
		}
	}
}

object juana {
	method precioViaje(cliente, kms) { 
		if (kms<8) {
			return 100
		}else{
			return 200
		}
	}
}

object lucia {
	var _chofer=null
	method reemplazoChofer(chofer){
		_chofer=chofer
	}
	method precioViaje(cliente, kms) {
		return _chofer.precioViaje(cliente,kms)
	}
}