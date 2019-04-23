import wollok.game.*
import pepita.*
object manzana {
	var position = game.at(5, 1)
	method image() = "manzana.png"
	method energia() = 80
	method position() {
		return position
	}
	method alColisionarCon(){
		roque.agarrarComida(self)
		self.aparecerEnTablero()
	}
	method aparecerEnTablero(){
		position = game.at(1.randomUpTo(5), 1.randomUpTo(5))
		game.addVisual(self)
	}
}

object alpiste {
	var position = game.at(5,5)
	method image() = "alpiste.png"
	method position(){
		return position
	}
	method energia() = 5
	method aparecerEnTablero(){
		position = game.at(1.randomUpTo(5), 1.randomUpTo(5))
		game.addVisual(self)
	}
	method alColisionarCon(){
		roque.agarrarComida(self)
		self.aparecerEnTablero()
	}
}
