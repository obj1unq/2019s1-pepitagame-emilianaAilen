import ciudades.*
import wollok.game.*

object roque {	
 		/*var mochila =null	*/
 		var property position = game.at(5,9)	

		var property cantGranos = 0
 	    method move(nuevaPosicion) {	
		self.position(nuevaPosicion)
		self.cantidadGranos(1)
		}	
		method image()= "jugador.png"	

 		/*method agarrarComida(comida){	
			if(mochila != null){	
				game.removeVisual(comida);	
				mochila.aparecerEnTablero()	
				mochila = comida;	
			}	
			else{	
				game.removeVisual(comida)	
				mochila = comida	
			}	
		}*/	

 		/*method alimentar(ave){	
			ave.come(mochila)	
			mochila.aparecerEnTablero()	
		}	*/
		
		method cantidadGranos(cant){
			cantGranos += cant
		}
		method dejarComida(comida){
			comida.esDejadaPor(self)
		}
		method come(comida){}
		method teEncontro_(cosa){game.say(cosa, "hola Roque")}

 	}