/*
 * @name Dibujo simple
 * @description Toca para dibujar en la pantalla usando los valores de posición x e y de toque actual y anterior (touchX, touchY, ptouchX, ptouchY).
 */

 function setup() {
 	createCanvas(displayWidth, displayHeight);
	strokeWeight(10)
	stroke(0);
}

function touchMoved() {
	line(touchX, touchY, ptouchX, ptouchY);
	return false;
}
