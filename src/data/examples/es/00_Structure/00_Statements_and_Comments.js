/*
 * @name Sentencias y comentarios
 * @description Las sentencias son los elementos que construyen a los programas. El símbolo ";" (punto y coma) se utiliza para cerrar las sentencias.
 * Se le llama el "statement terminator". Los comentarios son usados para hacer notas para ayudar a las personas a entender mejor los programas. Un comentario empieza con dos diagonales ("//").
 * <br><br><small><em>Este ejemplo es traído desde <a href="https://processing.org/examples/statementscomments.html">Statements and Comments example</a>
 * en la página de Processing</em></small>
 */
// La función createCanvas es una sentencia que le dice a la computadora
// que tan grande hacer la ventana.
// Cada sentencia de función tiene cero o más parámetros.
// Los parámetros son datos que pasan dentro de la función
// y son usados como valores para decirle a la computadora que hacer.
function setup() {
   createCanvas(710, 400);
}

// La función background es una sentencia que le dice a la computadora
// con que color (o que valor de gris) hacer el fondo de la ventana mostrada.
function draw() {
   background(204, 153, 0);
}

