/*
 * @name Direccional
 * @frame 710,400
 * @description Mueve el ratón para cambiar la dirección de la luz.
 * La luz direccional proviene de una dirección y es de mayor intensidad cuando incide sobre
 * una superficie cuadrada y más suave sobre un ángulo menor. Después de incidir sobre la
 * superficie, una luz direccional se dispersa en todas direcciones.
 */
var radius = 200;

function setup() {
	createCanvas(710, 400, WEBGL);
	noStroke();
	fill(200);
}

function draw() {
	noStroke();
	background(0);
	var dirY = (mouseY / height - 0.5) * 4;
	var dirX = (mouseX / width - 0.5) * 4;
	directionalLight(204, 204, 204, dirX, dirY, 1);
	translate(-1.5 * radius, 0, 0);
	sphere(radius);
	translate(3 * radius, 0, 0);
	sphere(radius);
}
