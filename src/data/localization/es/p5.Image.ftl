description__0 = Crea un nuevo <a href="#/p5.Image">p5.Image</a>. Un <a href="#/p5.Image">p5.Image</a> es una representación de una imagen respaldada por un canvas.
description__1 = p5 puede mostrar imágenes .gif, .jpg y .png. Las imágenes pueden mostrarse en espacio 2D y 3D. Antes de usar una imagen, debe cargarse con la función <a href="#/p5/loadImage">loadImage()</a>. La clase <a href="#/p5.Image">p5.Image</a> contiene campos para el ancho y alto de la imagen, así como una matriz llamada <a href="#/p5.Image/pixels">pixels[]</a> que contiene los valores para cada píxel en la imagen.
description__2 = Los métodos descritos a continuación permiten un fácil acceso a los píxeles de la imagen y al canal alfa y simplifican el proceso de composición.
description__3 = Antes de usar la matriz de <a href="#/p5.Image/pixels">pixels[]</a>, asegúrese de usar el método <a href="#/p5.Image/loadPixels">loadPixels()</a> en la imagen para asegurarse de que los datos de píxeles estén cargados correctamente.
params__width = Número de ancho:
params__height = Número de altura:
width__description__0 = Ancho de la imagen.
height__description__0 = Altura de imagen.
pixels__description__0 = Matriz que contiene los valores para todos los píxeles en la ventana de visualización. Estos valores son números. Esta matriz es el tamaño (incluya un factor apropiado para la densidad de píxeles) de la ventana de visualización x4, que representa los valores R, G, B, A en orden para cada píxel, moviéndose de izquierda a derecha a través de cada fila, luego hacia abajo en cada columna. La retina y otras pantallas de alta densidad pueden tener más píxeles (por un factor de densidad de píxeles ^ 2). Por ejemplo, si la imagen es de 100x100 píxeles, habrá 40,000. Con pixelDensity = 2, habrá 160,000. Los primeros cuatro valores (índices 0-3) en la matriz serán los valores R, G, B, A del píxel en (0, 0). Los segundos cuatro valores (índices 4-7) contendrán los valores R, G, B, A del píxel en (1, 0). Más generalmente, para establecer valores para un píxel en (x, y): <pre><code class="language-javascript">let d = pixelDensity(); for (let i = 0; i < d; i++) {"{"}  for (let j = 0; j < d; j++) {"{"}  // loop over  index = 4 * ((y * d + j) * width * d + (x * d + i));  pixels[index] = r;  pixels[index+1] = g;  pixels[index+2] = b;  pixels[index+3] = a;  {"}"} {"}"}</code></pre>
pixels__description__1 = Antes de acceder a esta matriz, los datos deben cargarse con la función <a href="#/p5.Image/loadPixels">loadPixels()</a>. Después de que se hayan modificado los datos de la matriz, se debe ejecutar la función <a href="#/p5.Image/updatePixels">updatePixels()</a> para actualizar los cambios.
loadPixels__description__0 = Carga los datos de píxeles para esta imagen en el atributo [píxeles].
updatePixels__description__0 = Actualiza el canvas de respaldo para esta imagen con el contenido de la matriz [píxeles].
updatePixels__description__1 = Si esta imagen es un GIF animado, los píxeles se actualizarán en el cuadro que se muestra actualmente
get__description__0 = Obtiene una región de píxeles de una imagen.
get__description__1 = Si no se pasan parámetros, se devuelve toda la imagen. Si x e y son los únicos parámetros pasados, se extrae un solo píxel. Si se pasan todos los parámetros, se extrae una región rectangular y se devuelve un <a href="#/p5.Image">p5.Image</a>.
set__description__0 = Establece el color de un solo píxel o escribe una imagen en este <a href="#/p5.Image">p5.Image</a>.
set__description__1 = Tenga en cuenta que para una gran cantidad de píxeles esto será más lento que manipular directamente la matriz de píxeles y luego llamar a <a href="#/p5.Image/updatePixels">updatePixels()</a>.
resize__description__0 = Cambiar el tamaño de la imagen a un nuevo ancho y alto. Para hacer que la imagen escale proporcionalmente, use 0 como valor para el parámetro ancho o alto. Por ejemplo, para hacer que el ancho de una imagen sea de 150 píxeles y cambiar la altura con la misma proporción, use cambiar el tamaño (150, 0).
copy__description__0 = Copia una región de píxeles de una imagen a otra. Si no se especifica srcImage, se usa como fuente. Si las regiones de origen y destino no son del mismo tamaño, automáticamente redimensionará los píxeles de origen para que se ajusten a la región de destino especificada.
mask__description__0 = Enmascara parte de una imagen para que no se muestre cargando otra imagen y usando su canal alfa como canal alfa para esta imagen.
filter__description__0 = Aplica un filtro de imagen a un <a href="#/p5.Image">p5.Image</a>
blend__description__0 = Copia una región de píxeles de una imagen a otra, utilizando un modo de blend específico para realizar la operación.
save__description__0 = Guarda la imagen en un archivo y obliga al navegador a descargarla. Acepta dos cadenas para nombre de archivo y extensión de archivo Admite png (predeterminado), jpg y gif  Tenga en cuenta que el archivo solo se descargará como un GIF animado si la p5.Image se cargó desde un archivo GIF.
reset__description__0 = Inicia un GIF animado en el estado inicial.
getCurrentFrame__description__0 = Obtiene el índice del marco que está visible actualmente en un GIF animado.
setFrame__description__0 = Establece el índice del marco que está visible actualmente en un GIF animado
numFrames__description__0 = Devuelve el número de fotogramas en un GIF animado
play__description__0 = Reproduce un GIF animado que se detuvo con <a href="#/p5.Image/pause">pause()</a>
pause__description__0 = Pausa un GIF animado.
delay__description__0 = Cambia el retraso entre fotogramas en un GIF animado. Hay un segundo parámetro opcional que indica un índice para una trama específica que debería tener su retraso modificado. Si no se proporciona ningún índice, todos los cuadros tendrán el nuevo retraso.
