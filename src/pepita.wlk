import ciudades.*
import wollok.game.*

object pepita {
	var property energia = 90
	var property ciudad = buenosAires 
	var property position = game.at(3,3)
	var amiga
	method image() { //post calculo
		if (self.energia() > 100){
			return "pepita-gorda-raw.png"
		}
		else{
			return "pepita.png"
		}
	} 

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	
	method energiaParaVolarSegun_(otraCiudad){
		return self.energiaParaVolar(position.distance(otraCiudad.position()))
	} //calacula la energia que necesitaria para volar, que mas prolijo
	
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad and self.energiaParaVolarSegun_(unaCiudad)<= self.energia()){ 
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}
		else if(self.energiaParaVolarSegun_(unaCiudad)>= self.energia()){
			game.say(self, "dame de comer!!")
		}
		else{
			game.say(self, "estoy en !")
		}
	}
	
	method nuevaAmiga(ave){
		if(amiga != ave){
			game.say(self, "hola" + ave.nombre() + "!")
			amiga = ave		
		}
		
	}
	
	method moveteyCome_(comida){
		self.move(comida.position());
		self.come(comida);
		game.removeVisual(comida);
	}
	

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)}
	}
	
	
	object pepona{
		method nombre() = "pepona"
		method image()= "pepona.png"
		method position() = game. at(2,8)
	}
	object pepitaCanchera {
		method nombre()= "pipa"
		method image()= "pepitaCanchera.png"
		method position()=game.at(5,8)
	}
	
	object roque {
		var mochila =null
		var property position = game.at(5,9)
		var property energia = 200
		method energiaParaVolar(distancia) = 15 + 5 * distancia

	    method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
		}
		method image()= "jugador.png"
		
		method agarrarComida(comida){
			if(mochila != comida){
				game.removeVisual(comida);
				mochila = comida;
				
			}
		}
		
		method alimentar(ave){
			ave.come(mochila)
			mochila.aparecerEnTablero()
		}
		
	}
	
	