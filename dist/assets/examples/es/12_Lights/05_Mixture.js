/*
 * @name Mezcla
 * @frame 710,400 (optional)
 * @description Muestra una caja con tres tipos diferentes de luces.
 */
function setup() {
	createCanvas(710, 400, WEBGL);
	noStroke();
}

function draw() {
	background(0);

	// Luz puntual naranja a la derecha
	pointLight(150, 100, 0, 500, 0, 200);

	// Luz direccional azul desde la izquierda
	directionalLight(0, 102, 255, -1, 0, 0);

	// Foco amarillo desde el frente
	pointLight(255, 255, 109, 0, 0, 300);

	rotateY(map(mouseX, 0, width, 0, PI));
	rotateX(map(mouseY, 0, height, 0, PI));
	box(200);
}
