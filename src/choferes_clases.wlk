import clientes_clases.*

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
		return if (kms<8) {100} else {200}
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

object oficina {
	var _chofer1
	var _chofer2
		
	method asignarChoferes(chofer1, chofer2){
		_chofer1=chofer1
		_chofer2=chofer2
	}
	method cambiarPrimerChoferPor(chofer){
		_chofer1=chofer		
	}
	method cambiarSegundoChoferPor(chofer){
		_chofer2=chofer
	}
	method intercambiarChoferes(){
		const _choferTemp=_chofer1
		_chofer1=_chofer2
		_chofer2=_choferTemp
		//self.asignarChoferes(_chofer2,_chofer1)
	}
	method choferElegidoParaViaje(cliente, kms){
		return if (_chofer2.precioViaje(cliente, kms)<_chofer1.precioViaje(cliente, kms)-30){_chofer2}else{_chofer1}
	}
}
