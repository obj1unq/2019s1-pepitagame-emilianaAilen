import ciudades.*
import wollok.game.*

object roque {
		var property name = "Roque"
		var mochila =null
		var granosAlpiste = 0
		var property position = game.at(5,9)
		var amiga
		var property energia = 200
		method energiaParaVolar(distancia) = 15 + 5 * distancia

	    method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
		granosAlpiste = granosAlpiste + 1
		}
		method image()= "jugador.png"
		
		method agarrarComida(comida){
			if(mochila != null){
				game.removeVisual(comida);
				mochila.aparecerEnTablero()
				mochila = comida;
			}
			else{
				game.removeVisual(comida)
				mochila = comida
			}
		}
		method dejarComida(unaComida){
			unaComida.nuevaPosicion(position)
			unaComida.addVisual(unaComida.image())
		}
		method dejarAlpiste(unAlpiste){
			unAlpiste.cantidadGranos(granosAlpiste)
			unAlpiste.nuevaPosicion(position)
			unAlpiste.addVisual(unAlpiste.image())
		}
		
		method alimentar(ave){
			ave.come(mochila)
			mochila.aparecerEnTablero()
		}
		method nuevaAmiga(ave){
		if(amiga != ave){
			game.say(self, "hola" + ave.nombre() + "!")
			amiga = ave		
			}
		
		}
}