/* Respuesta: Para agregar un nuevo tipo de accesorio habria que agregar una 
 * nueva clase que respete el contrato y sea polimorfica con las clases de 
 * acesorios que ya estan echos.*/  

class Farolito{
	var property peso = 0.5
	var property carga = 0
	var property tieneLuz = true
}

class Canasto{
	var property tieneLuz = false
	var property volumen = 0
	
	method peso(){
		return volumen / 10
	}
	
	method carga(){
		return volumen * 2
	}
}

class Morral{
	const property peso = 1.2
	var property ojoDeGato = true
    var property largo = 0
	
	method tieneLuz(){
		return ojoDeGato
	}
	
	method carga(){
		return largo / 3
	}
}
