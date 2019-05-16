import wollok.game.*
import pepita.*
object manzana {
	var position = game.at(5, 1)
	method image() = "manzana.png"
	method energia() = 80
	method position() {
		return position
	}
	
	method aparecerEnTablero(){
		position = game.at(1.randomUpTo(5), 1.randomUpTo(5))
		game.addVisual(self)
	}
	method teEncontro(alguien){
		alguien.agarrarComida(self)
	}
	method teEncontro_(unAve){
		unAve.come(self)
	}
	
}

class Manzana {
	var position
	method image() = "manzana.png"
	method energia() = 80
	method position(x, y) {
	position = game.at(x,y)
	}
	
	method aparecerEnTablero(){
		position = game.at(1.randomUpTo(5), 1.randomUpTo(5))
		game.addVisual(self)
	}
	method teEncontro(alguien){
		alguien.agarrarComida(self)
	}
	method teEncontro_(unAve){
		unAve.come(self)
	}
	method nuevaPosicion(nuevaPosicion){
		position = nuevaPosicion
	}
}




class Alpiste {
	var cantGranos
	var position
	method image() = "alpiste.png"
	method position(x, y) {
	position = game.at(x,y)
	}
	method nuevaPosicion(nuevaPosicion){
		position = nuevaPosicion
	}
	method cantidadGranos(cant){
		cantGranos = cant
	}
	method energia() = 0.5 * cantGranos
	method aparecerEnTablero(){
		position = game.at(1.randomUpTo(5), 1.randomUpTo(5))
		game.addVisual(self)
	}
	method teEncontro(alguien){
		alguien.agarrarComida(self)
	}
	method teEncontro_(unAve){
		unAve.come(self)
	}
	
}


