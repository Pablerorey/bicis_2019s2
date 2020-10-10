class Bicicleta{
	var property rodado
	var property largo
	var property marca
	
	const property accesorios = []
	
	method agregarAccesorios(lista){
		accesorios.addAll(lista)
	}
	method altura(){
		return rodado * 2.5 + 15
	}
	
	method velocidadCrucero(){
		return if(largo > 120){rodado + 6}else{rodado + 2}
	}
	
	method carga(){
		return accesorios.sum({a=>a.carga()})
	}
	
	method peso(){
		return rodado / 2 + self.pesoTotalDeAccesorios()
	}
	
	method tieneLuz(){
		return accesorios.any({a=>a.tieneLuz()})
	}
	
	method pesoTotalDeAccesorios(){
		return accesorios.sum({a=>a.peso()})
	}

	method cantidadDeAccesoriosLivianos(){
		return accesorios.count({a=>a.peso() < 1})
	}
	
	method biciCompaniera(bici){
		return self.marca() == bici.marca() and (self.largo() - bici.largo()).between(0, 10)
		and bici != self
	}
	
	method mismaMarca(bici){
		return self.marca() == bici.marca() and bici != self
	}
}