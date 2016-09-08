# General

Ejemplo
Descripción
Sintaxis
Parámetros
Clase
Retorno

Si ves cualquier error o tienes sugerencias, por favor escríbenos.

¿Encontraste algún error? X está documentado y definido en el archivo X. Por favor siéntete libre de "editar el archivo" y hacer un pull request.

# Color

## Creación & Lectura

### alpha()

// Asignarle a la variable "value" el valor 102

Extrae el valor alpha de un color o un arreglo de pixeles.

Objeto: objeto p5.Color o arreglo de pixeles

### blue()

// Definir el color "c"
// Usar la variable "c" como color de relleno
// Dibujar el rectángulo izquierdo

// Obtener el azul de "c"
// Imprimir ("220.0")
// Usar "blueValue" como nuevo color de relleno
// Dibujar rectángulo derecho

Extrae la cantidad de azul de un color o un arreglo de pixeles.

Objeto: objeto p5.Color o arreglo de pixeles

### brightness()

// Asignarle a la variable "value" el valor 255

Extrae el valor del brillo HSB de un color o un arreglo de pixeles.

Objeto: objeto p5.Color o arreglo de pixeles

### color()

// Definir el color "c"
// Usar la variable "c" como color de relleno
// No dibujar el trazo alrededor de las figuras
// Dibujar un rectángulo

// Definir el color "c"
// Usar la variable "c" como color de relleno
// No dibujar el trazo alrededor de las figuras
// Dibujar el círculo izquierdo
// Al usar solo un valor con color()
// se genera un valor en escala de grises.
// Actualizar "c" con el valor en escala de grises
// Usar el nuevo valor de "c" como color de relleno
// Dibujar el círculo derecho

// Se pueden usar colores SVG & CSS
// Usar la variable "c" como color de relleno
// No dibujar el trazo alrededor de las figuras
// Dibujar un rectángulo

// También se pueden usar códigos hexadecimales
// No dibujar el trazo alrededor de las figuras
// Usar la variable "c" como color de relleno
// Dibujar un rectángulo
// Usar el nuevo valor de "c" como color de relleno
// Dibujar un rectángulo

// Strings de color RGB y RGBA también son aceptados.
// Los colores usados aquí son todos iguales (azul sólido)
// No dibujar el trazo alrededor de las figuras
// Usar la variable "c" como color de relleno
// Dibujar un rectángulo
// Usar el nuevo valor de "c" como color de relleno
// Dibujar un rectángulo
// Usar el nuevo valor de "c" como color de relleno
// Dibujar un rectángulo
// Usar el nuevo valor de "c" como color de relleno
// Dibujar un rectángulo

// También se pueden definir colores en formato HSL
// Usar la variable "c" como color de relleno
// No dibujar el trazo alrededor de las figuras
// Dibujar un rectángulo
// Usar el nuevo valor de "c" como color de relleno
// Dibujar un rectángulo

// El formato HSB de color también es soportado.
// No dibujar el trazo alrededor de las figuras
// Usar la variable "c" como color de relleno
// Dibujar un rectángulo
// Usar el nuevo valor de "c" como color de relleno
// Dibujar un rectángulo

// Declarar el color "c"
// No dibujar el trazo alrededor de las figuras
// Si no se especifica el formato de color con colorMode
// entonces se usa por defecto RGB en el rango 0-255.
// Asignarle un valor al color "c"
// Usar la variable "c" como color de relleno
// Dibujar el rectángulo izquierdo
// Usar HSB en el rango 0-100
// Asignarle un nuevo valor a la variable "c"
// Usar el nuevo valor de "c" como color de relleno
// Dibujar el rectángulo derecho

Crea colores para almacenar en variables de tipo color. Los parámetros son interpretados como valores RGB o HSB dependiendo del modo de color actual definido con colorMode(). El modo por defecto es RGB con valores entre 0 y 255, y por la tanto, la llamada a la función color(255, 204, 0) arrojará un color amarillo brillante.

Notar que si solo se le entrega un valor a color(), será interpretado como un valor en escala de grises. Añade un segundo valor, y será usado para transparencia alpha. Cuando se especifican tres valores, son interpretados como valores RGB o HSB. Añadir un cuarto valor aplica transparencia alpha. Si se da un parámetro de tipo String será interpretado como un String de color compatible en CSS.

Los colores son almacenados como números o arreglos.

gray: número|String: número especificando valor entre blanco y negro.

alpha: valor alpha relativo al rango de color actual (por defecto es 0-100).

v1: número|String: valor de rojo o hue relativo al rango de color actual.

v2: número|String: valor de verde o saturación relativo al rango de color actual.

v3: número|String: valor de azul o brillo relativo al rango de color actual.

Arreglo: color resultante.

### green()

// Declarar el color "c"
// Usar la variable "c" como color de relleno
// Dibujar el rectángulo izquierdo

// Obtener el verde de "c"
// Imprimir "75.0"
// Usar "greenValue" como nuevo color de relleno
// Dibujar el rectángulo derecho

Extrae la cantidad de verde de un color o un arreglo de pixeles.

Objeto: objeto p5.Color o arreglo de pixeles

### hue()

// Asignar a "value" el valor "0"

Extrae el valor de hue de un color o un arreglo de pixeles.

Hue existe tanto en HSB como HSL. Esta función retorna el hue normalizado según HSB cuando su argumento es un objeto de color tipo HSB (o cuando es un arreglo de pixeles en modo de color HSB), pero por defecto retornará el valor normalizado según HSL. (Los valores solo serán diferentes si la configuración de hue máxima para cada sistema es distinta).

Objeto: objeto p5.Color o arreglo de pixeles


### lerpColor()

// Prueba cambiando a HSB.

Combina dos colores para encontrar un tercer color intermedio. El parámetro amt es la cantidad a interpolar entre ambos valores, donde 0 es igual al primer color, 0.1 es muy cercano al primer color, 0.5 es a la mitad entre ambos, etc. Un valor menor a 0 será tratado como 0. Del mismo modo, valores mayores que uno serán tratados como 1. Esto es distinto al comportamiento de lerp(), pero es necesario porque de otra forma estos números fuera de rango producirián colores raros y no esperados.

La manera en que los colores son interpolados depende del modo de color actual.

c1: Arreglo|número: interpola desde este color

c2: Arreglo|número: interpola hacia este color

amt: Número: número entre 0 y 1

Arreglo|número: color interpolado

### lightness()

// Asignar a "value" el valor "0"

Extrae la claridad (Lightness) HSL de un color o arreglo de pixeles.

Objeto: objeto p5.Color o arreglo de pixeles

### red()

// Declarar el color "c"
// Usar la variable "c" como color de relleno
// Dibujar el rectángulo izquierdo

// Obtener el rojo de "c"
// Imprimir "255.0"
// Usar "redValue" como nuevo color de relleno
// Dibujar el rectángulo derecho

Extrae la cantidad de rojo de un color o un arreglo de pixeles.

Objeto: objeto p5.Color o arreglo de pixeles

### saturation()

// Asignar a "value" el valor 126

Extrae la saturación HSL de un color o arreglo de pixeles.

La saturación tiene escalas distintas en HSB y HSL. Esta función retornará la saturación HSB cuando el argumento sea un objeto tipo color en modo HSB (o un arreglo de pixeles cuando el modo de color sea HSB), pero por defecto retornará la saturación HSL.

Objeto: objeto p5.Color o arreglo de pixeles

## Configuración

### background()

// Valor entero en escala de grises

// Valores enteros RGB

// Valores enteros HSB

// String de nombre de color SVG/CSS

// Notación RGB hexadecimal de tres dígitos

// Notación RGB hexadecimal de seis dígitos

// Notación en enteros RGB

// Notación en enteros RGBA

// Notación en porcentajes RGB

// Notación en porcentajes RGBA

// Objeto tipo p5 color

La función background() define el color usado como fondo del lienzo p5.js. El fondo por defecto es gris claro. Esta función es típicamente usada dentro de draw() para despejar o borrar la ventana mostrada al inicio de cada cuadro, pero puede ser usada dentro de setup() para definir el fondo en el primer cuadro de la animación o si el fondo solo necesita ser definido una vez.

p5.Color: cualquier valor creado con la función color()

Número: opacidad del fondo relativo al rango de color actual (por defecto es 0-100).

String: string de color, formatos posibles: enteros rgb() o rgba(), porcentajes rgb() o rgba(), hex 3 dígitos, hex 6 dígitos

Número: especifica un valor entre blanco y negro

Número: valor de rojo o hue (dependiendo del modo de color actual).

Número: valor de verde o saturación (dependiendo del modo de color actual).

Número: valor de azul o brillo (dependiendo del modo de color actual).

p5.Image: imagen creada con loadImage() o createImage(), para ser definida como fondo (debe ser del mismo tamaño que la ventana del bosquejo).

### clear()

//Despejar o borrar la pantalla al presionar el ratón

Borra el contenido de los pixeles dentro un buffer. Esta función solo funciona con objetos p5.Canvas creado con la función createCanvas(), no funcionará con la ventana principal. A diferencia del contexto gráfico principal, los pixeles en áreas adicionales creadas con la función createGraphics() pueden ser entera o parcialmente transparentes. Esta función borra todo para hacer todos los pixeles 100% transparentes.

### colorMode()

colorMode() cambia la forma en que p5.js interpreta datos de color. Por defecto, los parámetros para fill(), stroke(), background() y color() son definidos como valores entre 0 y 255 usando el modelo de colores RGB. Esto es equivalente a definir la configuración como colorMode(RGB, 255). Definir colorMode(HSB) te permite usar el sistema HSB en vez del por defecto. Por defecto, esto es colorMode(HSB, 360, 100, 100, 1). También puedes usar HSL.

Nota: los objetos de color existentes recuerdan el modo en que fueron creados, así que puedes hacer cambios de modo según tu preferencia sin afectar su apariencia.

Constante: RGB o HSB, correspondiendo a Red/Green/Blue y Hue/Saturation/Brighness (o Lightness).

Número: valor de rojo o hue dependiendo del modo de color actual, o rango para todos los valores.

Número: valor de verde o saturación, dependiendo del modo de color actual.

Número: valor de azul o brillo, dependiendo del modo de color actual.

Número: rango para alpha.

### fill()

// Valor entero en escala de grises

// Valores enteros RGB

// Valores enteros HSB

// String de nombre de color SVG/CSS

// Notación RGB hexadecimal de tres dígitos

// Notación RGB hexadecimal de seis dígitos

// Notación en enteros RGB

// Notación en enteros RGBA

// Notación en porcentajes RGB

// Notación en porcentajes RGBA

// Objeto tipo p5 color

Define el color usado para rellenar figuras. Por ejemplo, si ejecutas fill(204, 102, 0), todas las figuras a continuación serán rellenadas de color naranja. Este color se especifica en términos de colores RGB o HSB dependiendo del actual modo de color. (El modo por defecto es RGB, con cada valor en el rango 0 a 255).

Número|Arreglo|String|p5.Color: valor de gris, rojo o hue (dependiendo del modo de color actual), o arreglo de color, o String de color CSS.

Número: valor de verde o saturación, dependiendo del modo de color actual.

Número: valor de azul o brillo, dependiendo del modo de color actual.

Número: opacidad del fondo

### noFill()

Desactiva el relleno de las figuras geométricas. Si tanto noStroke() como noFill() son ejecutdas, nada será dibujado en pantalla.

### noStroke()

Desactiva el dibujo del borde de las figuras geométricas. Si tanto noStroke() como noFill() son ejecutdas, nada será dibujado en pantalla.

### stroke()

// Valor entero en escala de grises

// Valores enteros RGB

// Valores enteros HSB

// String de nombre de color SVG/CSS

// Notación RGB hexadecimal de tres dígitos

// Notación RGB hexadecimal de seis dígitos

// Notación en enteros RGB

// Notación en enteros RGBA

// Notación en porcentajes RGB

// Notación en porcentajes RGBA

// Objeto tipo p5 color

Define el color usado para dibujar el borde de las figuras. Este color se especifica en términos de colores RGB o HSB dependiendo del actual modo de color. (El modo por defecto es RGB, con cada valor en el rango 0 a 255).

Esta función soporta como argumento un String, que puede ser un color RGB, RGBA y CSS hexadecimal. Un objeto tipo p5 Color puede también ser provisto como argumento.

Número|Arreglo|String|p5.Color: valor de gris, rojo o hue (dependiendo del modo de color actual), o arreglo de color, o String de color CSS

Número: valor de verde o saturación, dependiendo del modo de color actual

Número: valor de azul o brillo, dependiendo del modo de color actual

Número: opacidad del fondo

# Figura

## Primitivas 2D

### arc()

Dibuja un arco en la pantalla. Si es llamado con solo los primeros seis parámetros (a, b, c, d, inicio, fin), el arco será dibujado como un pastel abierto. Si se define un modo, el arco será dibujado abierto, como cuerda o como torta, según lo especificado. El origen puede ser modificado con la función ellipseMode().

Notar que al dibujar un círculo completo (ejemplo, entre 0 y TWO_PI) no aparecerá nada en la pantalla, porque 0 y TWO_PI son la misma posición. La mejor manera de manejar esto es usando la función ellipse() para crear una elipse cerrada, y usar la función arc() solo para dibujar partes de una elipse.

Número: coordenada x del arco de elipse

Número: coordenada y del arco de elipse

Número: ancho del arco del arco de elipse por defecto

Número: altura del arco del arco de elipse por defecto

Número: ángulo inicial del arco, especificado en radianes

Número: ángulo final del arco, especificado en radianes

Constante: parámetro opcional para determinar el modo de dibujo del arco

Objeto: el objeto p5

### ellipse()

Dibuja una elipse (óvalo) en la pantalla. Una elipse con igual ancho y altura es un círculo. Por defecto, los primeros dos parámetros definen la ubicación y los parámetros tercero y cuarto definen el ancho y la altura de la figura. Si no se especifica una altura, el valor del ancho es usado para tanto el ancho como la altura. El origen puede ser cambiado con la función ellipseMode().

Número: coordenada x de la elipse

Número: coordenada y de la elipse

Número: ancho de la elipse

Número: altura de la elipse

Objeto: el objeto p5

### line()

Dibuja una línea (un camino directo entre dos puntos) en la pantalla. La versión de line() con cuatro parámetros dibuja la línea en 2D. Para asignarle un color a la línea, usa la función stroke(). Una línea no puede ser rellenada, por lo que la función fill() no afectará el color de una línea. Las líneas 2D son dibujadas con un ancho de un pixel por defecto, pero esto puede ser cambiado con la función strokeWeight().

Número: la coordenada x del primer punto

Número: la coordenada y del primer punto

Número: la coordenada x del segundo punto

Número: la coordenada y del segundo punto

Objeto: el objeto p5

### point()

Dibuja un punto, una coordenada en el espacio de dimensión un pixel. El primer parámetro es el valor horizontal del punto, el segundo valor es el valor vertical del punto. El color del punto es determinado por la función stroke().

Número: la coordenada x

Número: la coordenada y

Objeto: el objeto p5

### quad()

Dibuja un cuadrilátero, un polígono de cuatro lados. Es similar a un rectángulo, pero los ángulos entre sus bordes no están limitados a 90 grados. El primer par de parámetros (x1, y1) define el primer vértice y los pares siguientes deben seguir en orden según las manecillas del reloj o en contra, alrededor de la figura definida.

Número: la coordenada x del primer punto

Número: la coordenada y del primer punto

Número: la coordenada x del segundo punto

Número: la coordenada y del segundo punto

Número: la coordenada x del tercer punto

Número: la coordenada y del tercer punto

Número: la coordenada x del cuarto punto

Número: la coordenada y del cuarto punto

Objeto: el objeto p5

### rect()

//Dibuja un rectángulo en la posición (30, 20)
// con ancho y alto de 55.

//Dibuja un rectángulo en la posición (30, 20)
// con ancho y alto de 55 y radio de 20.

//Dibuja un rectángulo en la posición (30, 20)
// con ancho y alto de 55 y los siguientes radios:
// superior-izquierdo: 20, superior-derecho: 15
// inferior-derecho: 10, inferior-izquierdo: 5
// siguen las manecillas del reloj

Dibuja un rectángulo en la pantalla. Un rectángulo es una figura de cuatro lados, con cada ángulo entre bordes de 90 grados. Por defecto, los dos primeros parámetros definen la ubicación de la esquina superior-izquierda, el tercero define el ancho y el cuarto define la altura. La manera en que estos parámetros son interpretados, sin embargo, puede ser modificada con la función rectMode().

Los parámetros quinto, sexto y octavo, si son especificados, determinan los radios de las esquinas superior-izquierda, superior-derecha, inferior-derecha e inferior-derecha, respectivamente. Si se omite un parámetro de radio de esquina, se toma el valor del radio de esquina previo en la lista de parámetros.

Número: coordenada x del rectángulo

Número: coordenada y del rectángulo

Número: ancho del rectángulo

Número: altura del rectángulo

Número: radio opcional de la esquina superior-izquierda

Número: radio opcional de la esquina superior-derecha

Número: radio opcional de la esquina inferior-derecha

Número: radio opcional de la esquina inferior-izquierda

Número:

Número:

### triangle()

Un triángulo es un plano creado por la conexión de tres puntos. Los primeros dos argumentos especifican el primer punto, los siguientes dos argumentos especifican el segundo punto y los últimos dos especifican el tercer punto.

Número: coordenada x del primer punto

Número: coordenada y del primer punto

Número: coordenada x del segundo punto

Número: coordenada y del segundo punto

Número: coordenada x del tercer punto

Número: coordenada y del tercer punto

Objeto: el objeto p5

## Atributos

## Curvas

## Vértices

## Modelos 3D

## Primitvas 3D

# Constantes

### HALF_PI
### PI
### QUARTER_PI
### TAU
### TWO_PI

# Estructura

### preload()
### setup()
### draw()
### remove()
### noLoop()
### loop()
### push()
### pop()
### redraw()

# Ambiente

### println()
### frameCount()
### focused
### cursor()
### frameRate()
### noCursor()
### displayWidth
### displayHeight
### windowWidth
### windowHeight
### windowResized
### width
### height
### fullscreen()
### pixelDensity()
### displayDensity()
### getUrl()
### getUrlPath()
### getUrlParams()

# DOM

### p5.Element

# Render

# Transformar

# Eventos

## Aceleración
## Teclado
## Ratón
## Toque

# Imagen

### createImage()
### saveCanvas()
### saveFrames()
### p5.Image

## Cargar y mostrar

## Pixeles

## Entrada y salida

## Entrada

## Salida

## Tabla

## Hora y fecha

## XML

# Matemáticas

### createVector()
### p5.Vector

## Cálculos

## Ruido

## Trigonometría

## Aleatoreidad

# Tipografía

## Atributos

## Cargar y mostrar

## Fuente

# Datos

## Funciones de arreglos

## Conversión

## Funciones de String

# Luces, cámara

## Cámara

## Luces

## Material

### p5.RendererGL
