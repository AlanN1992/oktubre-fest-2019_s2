class Marcas inherits GraduacionReglamentaria{
	
	var marcaCerveza
	var tipoCerveza
	var contenidoLupulo
	var paisOrigen
	var graduacionAlcohol
	
	method configCerveza(marca,tipo,lupulo,origen,graduacion){
		marcaCerveza = marca
		tipoCerveza = tipo
		contenidoLupulo = lupulo
		paisOrigen = origen
		graduacionAlcohol = graduacion
		}
	
	method graduacion(){
		if (tipoCerveza =='rubia'){return graduacionAlcohol}
		else if (tipoCerveza == 'negra') {
			if(graduacionMundial >= (contenidoLupulo *2)){graduacionAlcohol = (contenidoLupulo*2)}
			else(graduacionMundial < (contenidoLupulo *2)){graduacionAlcohol = graduacionMundial}
			return graduacionAlcohol
			}
		else {
			if(graduacionMundial >= (contenidoLupulo *2)){graduacionAlcohol = (contenidoLupulo*2) * 1.25 }
			else(graduacionMundial < (contenidoLupulo *2)){graduacionAlcohol = graduacionMundial * 1.25}
			return graduacionAlcohol
			}
	}
}

class GraduacionReglamentaria{
	
	var graduacionMundial
	method setGraduacionmundial (newGraduacion){ graduacionMundial = newGraduacion}
	method graduacionMundial (){ return graduacionMundial}
}
