/*
 * @name Caleidoscopio
 * @description Un caleidoscopio es un instrumento óptico con dos o más superficies reflectantes inclinadas entre sí en ángulo. Este ejemplo intenta replicar el comportamiento de un caleidoscopio. Establezca el número de reflexiones en la variable de simetría y comience a dibujar en la pantalla. Ajuste el tamaño del pincel con la ayuda del control deslizante. La pantalla clara como dice borra la pantalla. El botón Guardar descargará un archivo .jpg del arte que ha creado.
 */
// Simetría correspondiente al número de reflejos.
// Cambia el valor para obtener un número diferente de reflexiones
let symmetry = 6;

let angle = 360 / symmetry;
let saveButton, clearButton, mouseButton, keyboardButton;
let slider;

function setup() {
  createCanvas(710, 710);
  angleMode(DEGREES);
  background(127);

  // Creando el botón para guardar para el archivo
  saveButton = createButton('save');
  saveButton.mousePressed(saveFile);

  // Creando el botón para borrar la pantalla
  clearButton = createButton('clear');
  clearButton.mousePressed(clearScreen);

  // Creando el botón para la pantalla completa
  fullscreenButton = createButton('Full Screen');
  fullscreenButton.mousePressed(screenFull);

  // Configurando el deslizador para el grosor del pincel
  brushSizeSlider = createButton('Brush Size Slider');
  sizeSlider = createSlider(1, 32, 4, 0.1);
}

// Función para guardar el archivo
function saveFile() {
  save('design.jpg');
}

// Función para limpiar la pantalla
function clearScreen() {
  background(127);
}

// Función para pantalla completa
function screenFull() {
  let fs = fullscreen();
  fullscreen(!fs);
}

function draw() {
  translate(width / 2, height / 2);

  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    let mx = mouseX - width / 2;
    let my = mouseY - height / 2;
    let pmx = pmouseX - width / 2;
    let pmy = pmouseY - height / 2;

    if (mouseIsPressed) {
      for (let i = 0; i < symmetry; i++) {
        rotate(angle);
        let sw = sizeSlider.value();
        strokeWeight(sw);
        line(mx, my, pmx, pmy);
        push();
        scale(1, -1);
        line(mx, my, pmx, pmy);
        pop();
      }
    }
  }
}
