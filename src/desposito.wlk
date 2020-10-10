import accesorios.*
import bicis.*

class Deposito {
	const property bicis = []
	
	method agregarBicis(lista){
		bicis.addAll(lista)
	}
	
	method bicisRapidas(){
		return bicis.filter({b=>b.velocidadCrucero() > 25})
	}
	
	method marcas(){
		return bicis.map({b=>b.marca()}).asSet()
	}
	
	method esNocturno(){
		return bicis.all({b=>b.tieneLuz()})
	}
	
	method tieneBiciParaLlevar(kg){
		return bicis.any({b=>b.carga() > kg})
	}
	
	method marcaDeLaBiciMasRapida(){
		return bicis.max({b=>b.velocidadCrucero()}).marca()
	}
	
	method cargaTotalBicisLargas(){
		return bicis.filter({b=>b.largo() > 170}).sum({b=>b.carga()})
	}
	
	method cantidadDeBicisSinAccesorios(){
		return bicis.count({b=>b.accesorios().size() == 0})
	}
		
	method bicisMismaMarca(bici){
		return bicis.filter({b=>b.mismaMarca(bici)})
	}
	
	method bicisCompanieras(bici){
		return bicis.filter({b=>b.biciCompaniera(bici)})
	}
	
}
