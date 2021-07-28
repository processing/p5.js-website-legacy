description__0 = This is the p5 instance constructor.
description__1 = A p5 instance holds all the properties and methods related to a p5 sketch. It expects an incoming sketch closure and it can also take an optional node parameter for attaching the generated p5 canvas to a node. The sketch closure takes the newly created p5 instance as its sole argument and may optionally set <a href="#/p5/preload">preload()</a>, <a href="#/p5/setup">setup()</a>, and/or <a href="#/p5/draw">draw()</a> properties on it for running a sketch.
description__2 = A p5 sketch can run in "global" or "instance" mode: "global" - all properties and methods are attached to the window "instance" - all properties and methods are bound to this p5 object
returns = P5: a p5 instance
params__sketch = Function: a closure that can set optional <a href="#/p5/preload">preload()</a>,  <a href="#/p5/setup">setup()</a>, and/or <a href="#/p5/draw">draw()</a> properties on the  given p5 instance
params__node = HTMLElement: (Optional) element to attach canvas to
describe__description__0 = Creates a screen reader accessible description for the canvas. The first parameter should be a string with a description of the canvas. The second parameter is optional. If specified, it determines how the description is displayed.
describe__description__1 = <code class="language-javascript">describe(text, LABEL)</code> displays the description to all users as a <a href="https://en.wikipedia.org/wiki/Museum_label" target="_blank"> tombstone or exhibit label/caption</a> in a <code class="language-javascript"><div class="p5Label"></div></code> adjacent to the canvas. You can style it as you wish in your CSS.
describe__description__2 = <code class="language-javascript">describe(text, FALLBACK)</code> makes the description accessible to screen-reader users only, in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a>. If a second parameter is not specified, by default, the description will only be available to screen-reader users.
describe__params__text = String: description of the canvas
describe__params__display = Constant: (Optional) either LABEL or FALLBACK (Optional)
describeElement__description__0 = This function creates a screen-reader accessible description for elements —shapes or groups of shapes that create meaning together— in the canvas. The first paramater should be the name of the element. The second parameter should be a string with a description of the element. The third parameter is optional. If specified, it determines how the element description is displayed.
describeElement__description__1 = <code class="language-javascript">describeElement(name, text, LABEL)</code> displays the element description to all users as a <a href="https://en.wikipedia.org/wiki/Museum_label" target="_blank"> tombstone or exhibit label/caption</a> in a <code class="language-javascript"><div class="p5Label"></div></code> adjacent to the canvas. You can style it as you wish in your CSS.
describeElement__description__2 = <code class="language-javascript">describeElement(name, text, FALLBACK)</code> makes the element description accessible to screen-reader users only, in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a>. If a second parameter is not specified, by default, the element description will only be available to screen-reader users.
describeElement__params__name = String: name of the element
describeElement__params__text = String: description of the element
describeElement__params__display = Constant: (Optional) either LABEL or FALLBACK (Optional)
textOutput__description__0 = <code class="language-javascript">textOutput()</code> creates a screenreader accessible output that describes the shapes present on the canvas. The general description of the canvas includes canvas size, canvas color, and number of elements in the canvas (example: 'Your output is a, 400 by 400 pixels, lavender blue canvas containing the following 4 shapes:'). This description is followed by a list of shapes where the color, position, and area of each shape are described (example: "orange ellipse at top left covering 1% of the canvas"). Each element can be selected to get more details. A table of elements is also provided. In this table, shape, color, location, coordinates and area are described (example: "orange ellipse location=top left area=2").
textOutput__description__1 = <code class="language-javascript">textOutput()</code> and <code class="language-javascript">texOutput(FALLBACK)</code> make the output available in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a> which is accessible to screen readers. <code class="language-javascript">textOutput(LABEL)</code> creates an additional div with the output adjacent to the canvas, this is useful for non-screen reader users that might want to display the output outside of the canvas' sub DOM as they code. However, using LABEL will create unnecessary redundancy for screen reader users. We recommend using LABEL only as part of the development process of a sketch and removing it before publishing or sharing with screen reader users.
textOutput__params__display = Constant: (Optional) either FALLBACK or LABEL (Optional)
gridOutput__description__0 = <code class="language-javascript">gridOutput()</code> lays out the content of the canvas in the form of a grid (html table) based on the spatial location of each shape. A brief description of the canvas is available before the table output. This description includes: color of the background, size of the canvas, number of objects, and object types (example: "lavender blue canvas is 200 by 200 and contains 4 objects - 3 ellipses 1 rectangle"). The grid describes the content spatially, each element is placed on a cell of the table depending on its position. Within each cell an element the color and type of shape of that element are available (example: "orange ellipse"). These descriptions can be selected individually to get more details. A list of elements where shape, color, location, and area are described (example: "orange ellipse location=top left area=1%") is also available.
gridOutput__description__1 = <code class="language-javascript">gridOutput()</code> and <code class="language-javascript">gridOutput(FALLBACK)</code> make the output available in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a> which is accessible to screen readers. <code class="language-javascript">gridOutput(LABEL)</code> creates an additional div with the output adjacent to the canvas, this is useful for non-screen reader users that might want to display the output outside of the canvas' sub DOM as they code. However, using LABEL will create unnecessary redundancy for screen reader users. We recommend using LABEL only as part of the development process of a sketch and removing it before publishing or sharing with screen reader users.
gridOutput__params__display = Constant: (Optional) either FALLBACK or LABEL (Optional)
alpha__description__0 = Extrae el valor de alpha de un color o de un arreglo de pixeles.
alpha__returns = el objeto p5
alpha__params__color = Objeto: objeto p5.Color o arreglo de pixeles
blue__description__0 = Extrae el valor de azul de un color o de un arreglo de pixeles.
blue__returns = el objeto p5
blue__params__color = Objeto: objeto p5.Color o arreglo de pixeles
brightness__description__0 = Extrae el valor de brillo HSB de un color o de un arreglo de pixeles.
brightness__returns = el objeto p5
brightness__params__color = Objeto: objeto p5.Color o arreglo de pixeles
color__description__0 = Crea colores para ser almacenados en variables del tipo color. Los parámetros son interpretados como valores RGB o HSB, dependiendo del modo actual de color según colorMode)(). El modo por defecto es RGB con valores entre 0 y 255 y, por lo tanto, la función color(255, 204, 0) retorna un color amarillo brillante. Nota que si solo se provee un valor a la función color(), será interpretado como un valor en escala de grises. Añade un segundo valor, y será usado como transparencia alpha. Cuando se especifican tres valores, son interpretados como valores RGB o HSB. Al añadir un cuarto valor se aplica transparencia alpha. Si se provee solo un parámetro de tipo string, será interpretado como un string de color compatible con CSS.Los colores son almacenados como números o arreglos.
color__description__1 = Note that if only one value is provided to <a href="#/p5/color">color()</a>, it will be interpreted as a grayscale value. Add a second value, and it will be used for alpha transparency. When three values are specified, they are interpreted as either RGB or HSB values. Adding a fourth value applies alpha transparency.
color__description__2 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
color__returns = Arreglo: color resultante
color__params__gray = Número|String: número especificando el valor entre blanco y negro.
color__params__alpha = Número: valor de alpha relativo al rango de color actual (por defecto es 0-255)
color__params__v1 = Número|String: valor de rojo o tinte relativo al rango de color actual, o un string de color
color__params__v2 = Número: valor de verde o saturación relativo al rango de color actual
color__params__v3 = Número: valor de azul o brillo relativo al rango de color actual
color__params__value = String: a color string
color__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
color__params__color = p5.Color
green__description__0 = Extrae el valor de verde de un color o de un arreglo de pixeles.
green__returns = el objeto p5
green__params__color = Objeto: objeto p5.Color o arreglo de pixeles
hue__description__0 = Extrae el valor de tinte de un color o de un arreglo de pixeles. El tinte (hue) existe en HSB y HSL. Esta función retorna el tinte normalizado HSB que cuando se le provee un objeto de color HSB (o cuando se le provee un arreglo de pixeles mientras el modo de color es HSB), pero por defecto retornará el tinte normalizado según HSB en otro caso. (Estos valores solo son diferentes si la configuración de valor de tinte máximo de cada sistema es diferente.)
hue__description__1 = Hue exists in both HSB and HSL. This function will return the HSB-normalized hue when supplied with an HSB color object (or when supplied with a pixel array while the color mode is HSB), but will default to the HSL-normalized hue otherwise. (The values will only be different if the maximum hue setting for each system is different.)
hue__returns = el objeto p5
hue__params__color = Objeto: objeto p5.Color o arreglo de pixeles
lerpColor__description__0 = Mezcla dos colores para encontrar un tercer color según la combinación de ambos. El parámetro amt es la cantidad a interpolar entre los dos valores, donde 0.0 es igual al primer color, 0.1 es muy cercano al primer color, 0.5 está a medio camino entre ambos, etc. Un valor menor que 0 será tratado como 0. Del mismo modo, valores sobre 1 serán tratados como 1. Esto es distinto al comportamiento de lerp(), pero necesario porque de otra manera los números fuera de rango producirían colores no esperados y extraños. La manera en que los colores son interpolados depende del modo de color actual.
lerpColor__description__1 = The way that colors are interpolated depends on the current color mode.
lerpColor__returns = Arreglo/Número: color interpolado
lerpColor__params__c1 = Arreglo/Número: interpola desde este color
lerpColor__params__c2 = Arreglo/Número: interpola hacia este color
lerpColor__params__amt = Número: número entre 0 y 1
lightness__description__0 = Extrae el valor de luminosidad HSL de un color o de un arreglo de pixeles.
lightness__returns = el objeto p5
lightness__params__color = Objeto: objeto p5.Color o arreglo de pixeles
red__description__0 = Extrae el valor de rojo de un color o de un arreglo de pixeles.
red__returns = el objeto p5
red__params__color = Objeto: objeto p5.Color o arreglo de pixeles
saturation__description__0 = Extrae el valor de saturación de un color o de un arreglo de pixeles. La saturación es escalada en HSB y HSL de forma distinta. Esta función retornará la saturación HSB cuando le sea provisto un objeto de color HSB (o cuando le sea provisto un arreglo de pixeles mientras el modo de color es HSB), pero por defecto retornará saturación HSL.
saturation__description__1 = Saturation is scaled differently in HSB and HSL. This function will return the HSB saturation when supplied with an HSB color object (or when supplied with a pixel array while the color mode is HSB), but will default to the HSL saturation otherwise.
saturation__returns = el objeto p5
saturation__params__color = Objeto: objeto p5.Color o arreglo de pixeles
background__description__0 = La función background() define el color usado como fondo del lienzo p5.js. El fondo por defecto es gris claro. Esta función es típicamente usada dentro de draw() para despejar o borrar la ventana mostrada al inicio de cada cuadro, pero puede ser usada dentro de setup() para definir el fondo en el primer cuadro de la animación o si el fondo solo necesita ser definido una vez.
background__description__1 = The color is either specified in terms of the RGB, HSB, or HSL color depending on the current <a href="#/p5/colorMode">colorMode</a>. (The default color space is RGB, with each value in the range from 0 to 255). The alpha range by default is also 0 to 255.
background__description__2 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
background__description__3 = A <a href="#/p5.Color">p5.Color</a> object can also be provided to set the background color.
background__description__4 = A <a href="#/p5.Image">p5.Image</a> can also be provided to set the background image.
background__params__color = Color: cualquier valor creado con la función color()
background__params__colorstring = colorstring: string de color, formatos posibles: enteros rgb() o rgba(), porcentajes rgb() o rgba(), hex 3 dígitos, hex 6 dígitos
background__params__a = Número: opacidad del fondo relativo al rango de color actual (por defecto es 0-255)
background__params__gray = Número: especifica un valor entre blanco y negro
background__params__v1 = Número: valor de rojo o hue (dependiendo del modo de color actual)
background__params__v2 = Número: valor de verde o saturación (dependiendo del modo de color actual)
background__params__v3 = Número: valor de azul o brillo (dependiendo del modo de color actual)
background__params__values = Number[]: an array containing the red, green, blue  and alpha components of the color
background__params__image = p5.Image: imagen creada con loadImage() o createImage(), para ser definida como fondo (debe ser del mismo tamaño que la ventana del bosquejo)
clear__description__0 = Borra los pixeles del buffer. Esta función solo funciona en objetos p5.Canvas creados con la función createCanvas(); no funcionará con la ventana principal. A diferencia del contexto principal de gráficas, los pixeles en las áreas gráficas adicionales creadas con createGraphics() pueden ser entera o parcialmente transparentes. Esta función borra todo para hacer los pixeles 100% transparentes.
colorMode__description__0 = colorMode() cambia la manera en que p5.js interpreta los datos de color. Por defecto, los parámetros de fill(), stroke(), background() y color() son definidos por valores entre 0 y 255 en modo RGB. Esto es equivalente a definir el modo de color según colorMode(RGB, 255). Definir el modo de color en colorMode(HSB) permite usar el sistema HSB. Por defecto, este modo de color es colorMode(HSB, 360, 100, 100, 1). También se puede usar HSL. Nota: los objetos de color existentes recuerdan el modo en que fueron creados, por lo que puedes cambiar el modo como quieras, sin afectar su apariencia.
colorMode__description__1 = Note: existing color objects remember the mode that they were created in, so you can change modes as you like without affecting their appearance.
colorMode__params__mode = Constante: RGB o HSB, correspondiente a Rojo/Verde/Azul o tinte/saturación/brillo (o luminosidad)
colorMode__params__max = Number: (Optional) range for all values
colorMode__params__max1 = Número: rango de rojo o tinte, dependiendo del modo de color actual, o rango para todos los valores
colorMode__params__max2 = Número: rango de verde o saturación, dependiendo del modo de color actual.
colorMode__params__max3 = Número: rango de azul o brillo/luminosidad, dependiendo del modo de color actual.
colorMode__params__maxA = Número: rango de transparencia alpha
fill__description__0 = Define el color usado para el relleno de figuras geométricas. Por ejemplo, si ejecutas fill(204, 102, 0), todas las figuras a continuación tendrán relleno naranja. Este color es especificado en términos de color RGB o HSB, dependiendo del modo de color según colorMode() (el dominio de color por defecto es RGB, con cada valor en el rango entre 0 y 255). Si se provee un argumento tipo string, los tipos RGB, RGBA y CSS hexadecimal están soportados. Un objeto Color p5 puede ser provisto para definir el color del relleno.
fill__description__1 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
fill__description__2 = A p5 <a href="#/p5.Color">Color</a> object can also be provided to set the fill color.
fill__params__v1 = Número|Arreglo|String|p5.Color: valor de gris, rojo, tinte (dependiendo del modo de color actual), o arreglo de color, o string de color CSS.
fill__params__v2 = Número: valor de verde o saturación (dependiendo del modo de color actual)
fill__params__v3 = Número: valor de azul o brillo (dependiendo del modo de color actual)
fill__params__alpha = Número: opacidad del fondo
fill__params__value = String: a color string
fill__params__gray = Number: a gray value
fill__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
fill__params__color = p5.Color: the fill color
noFill__description__0 = Deshabilita el relleno de figuras geométricas. Si tanto noStroke() como noFill() son ejecutados, nada será dibujado en pantalla.
noStroke__description__0 = Deshabilita el dibujo de los trazos (bordes). Si tanto noStroke() como noFill() son ejecutados, nada será dibujado en pantalla.
stroke__description__0 = Define el color usado para dibujar líneas y bordes de figuras. Este color especificado en términos de color RGB o HSB, dependiendo del modo de color actual según colorMode() (el dominio de color por defecto es RGB, con cada valor en el rango entre 0 y 255). Si se provee un argumento tipo string, los tipos RGB, RGBA y CSS hexadecimal están soportados. Un objeto Color p5 puede ser provisto para definir el color del trazado.
stroke__description__1 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
stroke__description__2 = A p5 <a href="#/p5.Color">Color</a> object can also be provided to set the stroke color.
stroke__params__v1 = Número|Arreglo|String|p5.Color: valor de gris, rojo, tinte (dependiendo del modo de color actual), o arreglo de color, o string de color CSS.
stroke__params__v2 = Número: valor de verde o saturación (dependiendo del modo de color actual)
stroke__params__v3 = Número: valor de azul o brillo (dependiendo del modo de color actual)
stroke__params__alpha = Número: opacidad del fondo
stroke__params__value = String: a color string
stroke__params__gray = Number: a gray value
stroke__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
stroke__params__color = p5.Color: the stroke color
erase__description__0 = All drawing that follows <a href="#/p5/erase">erase()</a> will subtract from the canvas.Erased areas will reveal the web page underneath the canvas.Erasing can be canceled with <a href="#/p5/noErase">noErase()</a>.
erase__description__1 = Drawing done with <a href="#/p5/image">image()</a> and <a href="#/p5/background"> background()</a> in between <a href="#/p5/erase">erase()</a> and <a href="#/p5/noErase">noErase()</a> will not erase the canvas but works as usual.
erase__params__strengthFill = Number: (Optional) A number (0-255) for the strength of erasing for a shape's fill.  This will default to 255 when no argument is given, which  is full strength.
erase__params__strengthStroke = Number: (Optional) A number (0-255) for the strength of erasing for a shape's stroke.  This will default to 255 when no argument is given, which  is full strength.
noErase__description__0 = Ends erasing that was started with <a href="#/p5/erase">erase()</a>. The <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, and <a href="#/p5/blendMode">blendMode()</a> settings will return to what they were prior to calling <a href="#/p5/erase">erase()</a>.
arc__description__0 = Dibuja un arco en la pantalla. Si se llama con solo a, b, c, d, start y stop, el arco se dibuja como un pastel abierto. Si el modo se provee, el arco será dibujado abierto, o como acorde, o como pastel, según lo especificado. El origen puede ser cambiado con la función ellipseMode(). Nota que si dibujas un círculo completo (ej: 0 a TWO_PI) aparecerá en blanco, porque 0 y TWO_PI son la misma posición en el círculo unitario. La mejor manera de manejar esto es usar la función ellipse() para una elipse cerrada, y la función arc() para generar solo secciones de una elipse.
arc__description__1 = The arc is always drawn clockwise from wherever start falls to wherever stop falls on the ellipse. Adding or subtracting TWO_PI to either angle does not change where they fall. If both start and stop fall at the same place, a full ellipse will be drawn. Be aware that the y-axis increases in the downward direction, therefore angles are measured clockwise from the positive x-direction ("3 o'clock").
arc__params__x = Número: coordenada x del arco de elipse.
arc__params__y = Número: coordenada y del arco de elipse.
arc__params__w = Número: ancho del arco de elipse.
arc__params__h = Número: altura del arco de elipse.
arc__params__start = Número: ángulo inicial del arco de elipse.
arc__params__stop = Número: ángulo final del arco de elipse.
arc__params__mode = Constante: parámetro opcional para determinar la manera de dibujar el arco.
arc__params__detail = Number: (Optional) optional parameter for WebGL mode only. This is to  specify the number of vertices that makes up the  perimeter of the arc. Default value is 25.
ellipse__description__0 = Dibuja una elipse (óvalo)  en la pantalla. Una elipse con igual ancho y altura es un círculo. Por defecto, los primeros dos parámetros definen la ubicación, y el tercero y cuarto definen el ancho y altura de la figura. Si no especifica una altura, el valor del ancho es usado como ancho y altura. El origen puede ser cambiado con la función ellipseMode().
ellipse__description__1 = An ellipse with equal width and height is a circle. The origin may be changed with the <a href="#/p5/ellipseMode">ellipseMode()</a> function.
ellipse__params__x = Número: coordenada x de la elipse.
ellipse__params__y = Número: coordenada y de la elipse.
ellipse__params__w = Número: ancho de la elipse.
ellipse__params__h = Número: altura de la elipse.
ellipse__params__detail = Integer: number of radial sectors to draw (for WebGL mode)
circle__description__0 = Draws a circle to the screen. A circle is a simple closed shape.It is the set of all points in a plane that are at a given distance from a given point, the centre.This function is a special case of the ellipse() function, where the width and height of the ellipse are the same. Height and width of the ellipse correspond to the diameter of the circle. By default, the first two parameters set the location of the centre of the circle, the third sets the diameter of the circle.
circle__params__x = Number: x-coordinate of the centre of the circle.
circle__params__y = Number: y-coordinate of the centre of the circle.
circle__params__d = Number: diameter of the circle.
line__description__0 = Dibuja una línea (un camino directo entre dos puntos) en la pantalla. La versión de line() con cuatro parámetros dibuja la línea en 2D. Para darle color a una línea, usa la función stroke(). Una línea no puede ser rellenada, por lo que la función fill() no afectará el color de una línea. Las líneas 2D son dibujadas con una ancho de un pixel por defecto, pero esto puede ser cambiado con la función strokeWeight().
line__params__x1 = Número: coordenada x del primer punto.
line__params__y1 = Número: coordenada y del primer punto.
line__params__x2 = Número: coordenada x del segundo punto.
line__params__y2 = Número: coordenada y del segundo punto.
line__params__z1 = Number: the z-coordinate of the first point
line__params__z2 = Number: the z-coordinate of the second point
point__description__0 = Dibuja un punto, una coordenada en el espacio de un pixel de dimensión. El primer parámetro es la coordenada horizontal del punto, el segundo valor es la coordenada vertical del punto. El color del punto es determinado por el trazado actual con la función stroke().
point__params__x = Número: coordenada x.
point__params__y = Número: coordenada y .
point__params__z = Number: (Optional) the z-coordinate (for WebGL mode)
point__params__coordinate_vector = p5.Vector: the coordinate vector
quad__description__0 = Dibuja un cuadrilátero, un polígono de cuatro lados. Es similar a un rectángulo, pero los ángulos entre sus bordes no están limitados a noventa grados. El primer par de parámetros (x1, y1) corresponde a las coordenadas del primer vértice y los pares siguientes deben seguir en el mismo orden, según las manecillas del reloj o en contra, alrededor de la figura a definir.
quad__params__x1 = Número: coordenada x del primer punto.
quad__params__y1 = Número: coordenada y del primer punto.
quad__params__x2 = Número: coordenada x del segundo punto.
quad__params__y2 = Número: coordenada y del segundo punto.
quad__params__x3 = Número: coordenada x del tercer punto.
quad__params__y3 = Número: coordenada y del tercer punto.
quad__params__x4 = Número: coordenada x del cuarto punto.
quad__params__y4 = Número: coordenada y del cuarto punto.
quad__params__detailX = Integer: (Optional) number of segments in the x-direction
quad__params__detailY = Integer: (Optional) number of segments in the y-direction
quad__params__z1 = Number: the z-coordinate of the first point
quad__params__z2 = Number: the z-coordinate of the second point
quad__params__z3 = Number: the z-coordinate of the third point
quad__params__z4 = Number: the z-coordinate of the fourth point
rect__description__0 = Dibuja un rectángulo en la pantalla. Un rectángulo es una figura de cuatro lados con cada ángulo interior de noventa grados. Por defecto, los dos primeros parámetros definen la ubicación de la esquina superior izquierda, el tercero el ancho y el cuarto la altura. La manera en que estos parámetros son interpretados, sin embargo, puede ser cambiado con la función rectMode(). Los parámetros quinto, sexto, séptimo y octavo, si son especificados, determinan el radio de la esquina superior derecha, superior izquierda, inferior derecha e inferior izquierda, respectivamente. Si se omite un parámetro de radio de esquina, se usa el radio especificado por el valor anterior en la lista.
rect__description__1 = The fifth, sixth, seventh and eighth parameters, if specified, determine corner radius for the top-left, top-right, lower-right and lower-left corners, respectively. An omitted corner radius parameter is set to the value of the previously specified radius value in the parameter list.
rect__params__x = Número: coordenada x del rectángulo.
rect__params__y = Número: coordenada y del rectángulo.
rect__params__w = Número: ancho del rectángulo.
rect__params__h = Número: altura del rectángulo.
rect__params__tl = Número: radio opcional de la esquina superior izquierda.
rect__params__tr = Número: radio opcional de la esquina superior derecha.
rect__params__br = Número: radio opcional de la esquina inferior derecha.
rect__params__bl = Número: radio opcional de la esquina inferior izquierda.
rect__params__detailX = Número:
rect__params__detailY = Número:
square__description__0 = Draws a square to the screen. A square is a four-sided shape with every angle at ninety degrees, and equal side size. This function is a special case of the rect() function, where the width and height are the same, and the parameter is called "s" for side size. By default, the first two parameters set the location of the upper-left corner, the third sets the side size of the square. The way these parameters are interpreted, may be changed with the <a href="#/p5/rectMode">rectMode()</a> function.
square__description__1 = The fourth, fifth, sixth and seventh parameters, if specified, determine corner radius for the top-left, top-right, lower-right and lower-left corners, respectively. An omitted corner radius parameter is set to the value of the previously specified radius value in the parameter list.
square__params__x = Number: x-coordinate of the square.
square__params__y = Number: y-coordinate of the square.
square__params__s = Number: side size of the square.
square__params__tl = Number: (Optional) optional radius of top-left corner.
square__params__tr = Number: (Optional) optional radius of top-right corner.
square__params__br = Number: (Optional) optional radius of bottom-right corner.
square__params__bl = Number: (Optional) optional radius of bottom-left corner.
triangle__description__0 = Un triángulo es un plano creado por la conexión de tres puntos. Los primeros dos argumentos especifican el primer punto, los parámetros centrales especifican el segundo punto, y los dos últimos parámetros especifican el tercer punto.
triangle__params__x1 = Número: coordenada x del primer punto.
triangle__params__y1 = Número: coordenada y del primer punto.
triangle__params__x2 = Número: coordenada x del segundo punto.
triangle__params__y2 = Número: coordenada y del segundo punto.
triangle__params__x3 = Número: coordenada x del tercer punto.
triangle__params__y3 = Número: coordenada y del tercer punto.
ellipseMode__description__0 = Modifica la ubicación de donde las elipses son dibujadas, cambiando la manera en que los parámetros dados a ellipse() son interpretados. El modo por defecto es ellipseMode(CENTER), que interpreta los dos primeros parámetros de ellipse() como el centro de la figura, mientras que los parámetros tercero y cuarto son el ancho y la altura. ellipseMode(RADIUS) también usa los dos primeros parámetros de ellipse() como el punto central de la figura, pero usa los parámetros tercero y cuarto para especificar la mitad del ancho y la altura de la figura. ellipseMode(CORNER) interpreta los dos primeros parámetros de ellipse() como la esquina superior izquierda de la figura, mientras que los parámetros tercero y cuarto son el ancho y la altura. ellipseMode(CORNERS) interpreta los dos primeros parámetros de ellipse() como la ubicación de una esquina del rectángulo contenedor de la elipse, y los parámetros tercero y cuarto como la ubicación de la esquina opuesta. El parámetro debe ser escrito en MAYÚSCULAS porque Javascript es una lenguaje de programación que distingue entre mayúsculas y minúsculas.
ellipseMode__description__1 = The default mode is CENTER, in which the first two parameters are interpreted as the shape's center point's x and y coordinates respectively, while the third and fourth parameters are its width and height.
ellipseMode__description__2 = ellipseMode(RADIUS) also uses the first two parameters as the shape's center point's x and y coordinates, but uses the third and fourth parameters to specify half of the shapes's width and height.
ellipseMode__description__3 = ellipseMode(CORNER) interprets the first two parameters as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
ellipseMode__description__4 = ellipseMode(CORNERS) interprets the first two parameters as the location of one corner of the ellipse's bounding box, and the third and fourth parameters as the location of the opposite corner.
ellipseMode__description__5 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
ellipseMode__params__mode = Constante: puede ser CENTER, RADIUS, CORNER, o CORNERS.
noSmooth__description__0 = Dibuja las figuras geométricas con bordes no suaves (aliasing). Notar que smooth() está activo por defecto, así que es necesario ejectuar noSmooth() para deshabilitar el suavizado de las figuras geométricas, imágenes y tipografías.
rectMode__description__0 = Modifica la ubicación en que los rectángulos son dibujados, cambiando la manera en que los parámetros dados a rect() son interpretados. El modo por defecto es rectMode(CORNER), que interpreta los primeros dos parámetros de rect() como la esquina superior izquierda de la figura, mientras que los parámetros tercero y cuarto son su ancho y altura. rectMode(CORNERS) interpreta los dos primeros parámetros de rect() como la ubicación de una esquina, y los parámetros tercero y cuarto como la ubicación de la esquina opuesta. rectMode(CENTER) interpreta los dos primeros parámetros de rect() como el punto central de la figura, mientas que los parámetros tercero y cuarto son su ancho y altura. rectMode(RADIUS) también usa los dos primeros parámetros de rect()= como el punto central de la figura, pero usa los parámetros tercero y cuarto para especificar la mitad del ancho y la altura de la figura. Los parámetros deben ser escritos en MAYÚSCULAS porque Javascript es un lenguaje que distingue entre mayúsculas y minúsculas.
rectMode__description__1 = The default mode is CORNER, which interprets the first two parameters as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
rectMode__description__2 = rectMode(CORNERS) interprets the first two parameters as the location of one of the corners, and the third and fourth parameters as the location of the diagonally opposite corner. Note, the rectangle is drawn between the coordinates, so it is not neccesary that the first corner be the upper left corner.
rectMode__description__3 = rectMode(CENTER) interprets the first two parameters as the shape's center point, while the third and fourth parameters are its width and height.
rectMode__description__4 = rectMode(RADIUS) also uses the first two parameters as the shape's center point, but uses the third and fourth parameters to specify half of the shape's width and height respectively.
rectMode__description__5 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
rectMode__params__mode = Constante: puede ser CORNER, CORNERS, CENTER, o RADIUS.
smooth__description__0 = Dibuja todas las figuras geométricas con bordes suaves (sin aliasing). smooth() también mejorará la calidad de las imágenes cuyo tamaño ha sido modificado. Notar que smooth() está activo por defecto; noSmooth() puede ser usado para deshabilitar el suavizado de las figuras geométricas, imágenes y tipografía.
strokeCap__description__0 = Define el estilo de rendering de los extremos de las líneas. Estos extremos pueden ser cuadrados, extendidos o redondeados, cada uno de estos especifados con los parámetros correspondientes: SQUARE, PROJECT, y ROUND. El extremo por defecto es redonedeado (ROUND).
strokeCap__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeCap__params__cap = Constante: puede ser SQUARE, PROJECT, o ROUND.
strokeJoin__description__0 = Define el estilo de las uniones que conectan segmentos de líneas. Estas uniones pueden ser tipo inglete, biseladas o redondeadas, y especificadas con los parámetros correspondientes: MITER, BEVEL, y ROUND. La unión por defecto es MITER.
strokeJoin__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeJoin__params__join = Constante: puede ser MITER, BEVEL, o ROUND.
strokeWeight__description__0 = Define el ancho del trazo usado para dibujar líneas, puntos y los bordes de las figuras geométricas. Todos los anchos son medidos en pixeles.
strokeWeight__params__weight = Número: el peso (en pixeles) del trazado
bezier__description__0 = Dibuja una curva Bezier cúbica en la pantalla. Estas curvas están definidas por una serie de puntos ancla y de control. Los primeros dos parámetros especifican el primer punto ancla y los dos últimos especifican el otro punto ancla, que se convierten en los puntos primero y último de la curva. Los parámetros en el medio especifican los dos puntos de control que definen la forma de la curva. De forma aproximada, los puntos de control atraen la curva hacia ellos. Las curvas Bezier fueron desarrolladas por el ingeniero automotriz Pierre Bezier, y son comúnmente usadas en gráficas computacionales para definir curvas de pendiente suave. Ver también curve().
bezier__description__1 = Bezier curves were developed by French automotive engineer Pierre Bezier, and are commonly used in computer graphics to define gently sloping curves. See also <a href="#/p5/curve">curve()</a>.
bezier__params__x1 = Número: coordenada x del primer punto ancla
bezier__params__y1 = Número: coordenada y del primer punto ancla
bezier__params__x2 = Número: coordenada y del primer punto de control
bezier__params__y2 = Número: coordenada x del segundo punto de control
bezier__params__x3 = Número: coordenada x del segundo punto ancla
bezier__params__y3 = Número: coordenada y del segundo punto ancla
bezier__params__x4 = Número: coordenada z del primer punto de control
bezier__params__y4 = Número: coordenada z del segundo punto ancla
bezier__params__z1 = Número: coordenada x del primer punto de control
bezier__params__z2 = Número: coordenada y del segundo punto de control
bezier__params__z3 = Número: coordenada z del primer punto ancla
bezier__params__z4 = Número: coordenada z del segundo punto de control
bezierDetail__description__0 = Sets the resolution at which Bezier's curve is displayed. The default value is 20.
bezierDetail__description__1 = Note, This function is only useful when using the WEBGL renderer as the default canvas renderer does not use this information.
bezierDetail__params__detail = Number: resolution of the curves
bezierPoint__description__0 = Evalua la curva Bezier en la posición t para los puntos a, b, c, d. Los parámetros a y d son los puntos primero y último de la curva, mientras que b y c son los puntos de control. El parámetro final t varía entre 0 y 1. Esto puede ser realizado una vez con las coordenadas x y una segunda vez con las coordenadas y para obtener la ubicación de la curva Bezier en t.
bezierPoint__returns = el valor de la curva Bezier en la posición t
bezierPoint__params__a = Número: coordenada del primer punto de la curva
bezierPoint__params__b = Número: coordenada del primer punto de control de la curva
bezierPoint__params__c = Número: coordenada del segundo punto de control de la curva
bezierPoint__params__d = Número: coordenada del segundo punto de la curva
bezierPoint__params__t = Número: valor entre 0 y 1
bezierTangent__description__0 = Evalua la tangente de la curva Bezier en la posición t para los puntos a, b, c, d. Los parámetros a y d son los puntos primero y último de la curva, mientras que b y c son los puntos de control. El parámetro final t varía entre 0  1.
bezierTangent__returns = la tangente en la posición t
bezierTangent__params__a = Número: coordenada del primer punto de la curva
bezierTangent__params__b = Número: coordenada del primer punto de control de la curva
bezierTangent__params__c = Número: coordenada del segundo punto de control de la curva
bezierTangent__params__d = Número: coordenada del segundo punto de la curva
bezierTangent__params__t = Número: valor entre 0 y 1
curve__description__0 = Dibuja una línea curva en la pantalla entre dos puntos, dados como los cuatro parámetros centrales. Los dos primeros puntos son un punto de control, como si la curva viniera desde este punto, aunque no sea dibujado. Los dos últimos parámetros de forma similar describen el otro punto de control. SE pueden cerar curvas más largas, por medio del posicionamiento de varias funciones curve() juntas o usando curveVertex(). Una función adicional llamada curveTightness() provee control de la calidad visual de la curva. La función curve() es una implementación de la Catmull-Rom spline.
curve__params__x1 = Número: coordenada x del punto de control inicial
curve__params__y1 = Número: coordenada y del punto de control inicial
curve__params__x2 = Número: coordenada y del primer punto
curve__params__y2 = Número: coordenada x del segundo punto
curve__params__x3 = Número: coordenada x del punto de control final
curve__params__y3 = Número: coordenada y del punto de control final
curve__params__x4 = Número: coordenada z del primer punto
curve__params__y4 = Número: coordenada z del segundo punto
curve__params__z1 = Número: coordenada x del primer punto
curve__params__z2 = Número: coordenada y del segundo punto
curve__params__z3 = Número: coordenada z del punto de control inicial
curve__params__z4 = Número: coordenada z del punto de control final
curveDetail__description__0 = Sets the resolution at which curves display. The default value is 20 while the minimum value is 3.
curveDetail__description__1 = This function is only useful when using the WEBGL renderer as the default canvas renderer does not use this information.
curveDetail__params__resolution = Number: resolution of the curves
curveTightness__description__0 = Modifica la calidad de las formas creadas con curve() y curveVertex(). El parámetro tightness (tirantez) determina cómo la curva calza con los vértices. El valor 0.0 es el valor por defecto (este valor define las curvas Spline Catmull-Rom) y el valor 1.0 conecta todos los puntos con líneas rectas. Valores en el rango entre -5.0 y 5.0 deformarán las curvas pero las dejarán reconocibles, y a medida que los valores crecen en magnitud, se continuarán deformando.
curveTightness__params__amount = Número: deformación de los vértices originales
curvePoint__description__0 = Evalua la curva en la posición t para los puntos a, b, c, d. El parámetro t varía entre 0 y 1, los puntos a y d son puntos en la cruva, y b y c son los puntos de control. Esto puede ser hecho una vez con las coordenadas x y una segunda vez con las coordenadas y para obtener la ubicación de la curva en t.
curvePoint__returns = el objeto p5
curvePoint__params__a = Número: coordenada del primer punto de la curva
curvePoint__params__b = Número: coordenada del primer punto de control de la curva
curvePoint__params__c = Número: coordenada del segundo punto de control de la curva
curvePoint__params__d = Número: coordenada del segundo punto de la curva
curvePoint__params__t = Número: valor entre 0 y 1
curveTangent__description__0 = Evalua la tangente de la curva en la posición t para los puntos a, b, c, d. El parámetro t varía entre 0 y 1, a y d son los puntos de la curva, b y c son los puntos de control.
curveTangent__returns = la tangente en la posición t
curveTangent__params__a = Número: coordenada del primer punto de la curva
curveTangent__params__b = Número: coordenada del primer punto de control de la curva
curveTangent__params__c = Número: coordenada del segundo punto de control de la curva
curveTangent__params__d = Número: coordenada del segundo punto de la curva
curveTangent__params__t = Número: valor entre 0 y 1
beginContour__description__0 = Usa las funciones beginContour() y endContour() para crear figuras negativas dentro de figuras como el centro de la letra 'O'. beginContour() empieza la grabación de los vértices para la figura y endContour() finaliza la grabación. Los vértices que definen una figura negativa deben ser definidos en la dirección opuesta a la figura exterior. Primero dibuja los vértices de la figura exterior en el orden de las manecillas del reloj, y luego para figuras internas, dibuja vértices en el sentido contrario a las manecillas del reloj. Estas funciones solo pueden ser usadas dentro de un par beginShape()/endShape() y transformaciones como translate(), rotate(), y scale() no funcionan dentro de un par beginContour()/endContour(). Tampoco es posible usar otras figuras, como elupse() o rect() dentro.
beginContour__description__1 = These functions can only be used within a <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> pair and transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within a <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a> pair. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within.
beginShape__description__0 = El uso de las funciones beginShape() y endShape() permiten la creación de figuras más complejas. beginShape() empieza la grabación de vértices para una figura, mientras que endShape() termina la grabación. El valor del parámetro kind (tipo) define qué tipo de figuras serán creadas a partir de los vértices. Si no se especifica un modo, la figura puede ser cualquier polígono irregular. Los parámetros disponibles para beginShape() son POINTS, LINES, TRIANGLES, TRIANGLE_FAN, TRIANGLE_STRIP, QUADS, y QUAD_STRIP. Después de llamar a la función beginShape(), debe ser seguida por una serie de comandos vertex(). Para detener el dibujo de la figura, ejecuta endShape(). Cada figura será dibujada con el color de trazo y el color de relleno actual. Transformaciones como translate(), rotate(), y scale() no funcionan dentro de beginShape(). Tampoco es posible usar otras figuras como ellipse() o rect() dentro de beginShape().
beginShape__description__1 = The parameters available for <a href="#/p5/beginShape">beginShape()</a> are:
beginShape__description__2 = POINTS Draw a series of points
beginShape__description__3 = LINES Draw a series of unconnected line segments (individual lines)
beginShape__description__4 = TRIANGLES Draw a series of separate triangles
beginShape__description__5 = TRIANGLE_FAN Draw a series of connected triangles sharing the first vertex in a fan-like fashion
beginShape__description__6 = TRIANGLE_STRIP Draw a series of connected triangles in strip fashion
beginShape__description__7 = QUADS Draw a series of seperate quad
beginShape__description__8 = QUAD_STRIP Draw quad strip using adjacent edges to form the next quad
beginShape__description__9 = TESS (WebGl only) Handle irregular polygon for filling curve by explicit tessellation
beginShape__description__10 = After calling the <a href="#/p5/beginShape">beginShape()</a> function, a series of <a href="#/p5/vertex">vertex()</a> commands must follow. To stop drawing the shape, call <a href="#/p5/endShape">endShape()</a>. Each shape will be outlined with the current stroke color and filled with the fill color.
beginShape__description__11 = Transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within <a href="#/p5/beginShape">beginShape()</a>. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within <a href="#/p5/beginShape">beginShape()</a>.
beginShape__params__kind = Constante: puede ser POINTS, LINES, TRIANGLES, TRIANGLE_FAN TRIANGLE_STRIP, QUADS, o QUAD_STRIP
bezierVertex__description__0 = Especifica las coordenadas de un vértice para una curva Bezier. Cada llamada a la función bezierVertex() define la posición de dos puntos de control y un punto ancla de una curva Bezier, añadiendo un nuevo segmento a la línea o figura. La primera vez que bezierVertex() es usada dentro de una llamada a beginShape(), debe ser antecedida por una llamada a la función vertex() para definir el primer punto ancla. Esta función debe ser usada entre beginShape() y endShape() y solo cuando no se ha especificado el parámetro MODE (modo) a beginShape().
bezierVertex__description__1 = The first time bezierVertex() is used within a <a href="#/p5/beginShape">beginShape()</a> call, it must be prefaced with a call to <a href="#/p5/vertex">vertex()</a> to set the first anchor point. This function must be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE or POINTS parameter specified to <a href="#/p5/beginShape">beginShape()</a>.
bezierVertex__params__x2 = Número: coordenada x del primer punto de control la curva
bezierVertex__params__y2 = Número: coordenada y del primer punto de control la curva
bezierVertex__params__x3 = Número: coordenada x del segundo punto de control la curva
bezierVertex__params__y3 = Número: coordenada y del segundo punto de control la curva
bezierVertex__params__x4 = Número: coordenada x del primer punto ancla
bezierVertex__params__y4 = Número: coordenada y del primer punto ancla
bezierVertex__params__z2 = Number: z-coordinate for the first control point (for WebGL mode)
bezierVertex__params__z3 = Number: z-coordinate for the second control point (for WebGL mode)
bezierVertex__params__z4 = Number: z-coordinate for the anchor point (for WebGL mode)
curveVertex__description__0 = Especifica las coordenadas de un vértice para una curva. Esta función solo puede ser usada entre beginShape() y endShape() y cuando no se ha especificado el parámetro MODE en la función beginShape(). Los puntos primero y último en una serie de líneas curveVertex() serán usados para guiar el inicio y final de una curva. Un mínimo de cuatro puntos es requerido para dibujar una pequeña curva entre los puntos segundo y tercero, Añadir un quinto punto con curveVertex() dibujará la curva entre los puntos segundo, tercero y cuarto. La función curveVertex() es una implementación de las splines de Catmull-Rom.
curveVertex__description__1 = The first and last points in a series of curveVertex() lines will be used to guide the beginning and end of a the curve. A minimum of four points is required to draw a tiny curve between the second and third points. Adding a fifth point with curveVertex() will draw the curve between the second, third, and fourth points. The curveVertex() function is an implementation of Catmull-Rom splines.
curveVertex__params__x = Número: coordenada x del vértice
curveVertex__params__y = Número: coordenada y del vértice
curveVertex__params__z = Number: (Optional) z-coordinate of the vertex (for WebGL mode)
endContour__description__0 = Usa las funciones beginContour() y endContour() para crear figuras negativas dentro de figuras como el centro de la letra 'O'. beginContour() empieza la grabación de los vértices para la figura y endContour() finaliza la grabación. Los vértices que definen una figura negativa deben ser definidos en la dirección opuesta a la figura exterior. Primero dibuja los vértices de la figura exterior en el orden de las manecillas del reloj, y luego para figuras internas, dibuja vértices en el sentido contrario a las manecillas del reloj. Estas funciones solo pueden ser usadas dentro de un par beginShape()/endShape() y transformaciones como translate(), rotate(), y scale() no funcionan dentro de un par beginContour()/endContour(). Tampoco es posible usar otras figuras, como elupse() o rect() dentro.
endContour__description__1 = These functions can only be used within a <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> pair and transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within a <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a> pair. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within.
endShape__description__0 = La función endShape() es compañera de la función beginShape() y solo puede ser ejecutada tras la ejecución de beginShape(). Cuando endshape() es ejecutada, todos los datos de imagen definidos desde la llamada anterior a beginShape() son escritos en el buffer de imagen. La constante CLOSE se usa como valor para el parámetro MODE para cerrar la figura (para conectar el comienzo con el final).
endShape__params__mode = Constante: usa CLOSE para cerrar la figura.
quadraticVertex__description__0 = Especifica las coordenadas de vértices par curvas Bezier cuadráticas. Cada llamada a quadraticVertex() define la posición de uno de los puntos de control y ancla de una curva Bezier, añadiendo un nuevo segmento a la línea o figura. La primera vez que quadraticVertex() es usada dentro de una llamada a beginShape(), debe ser precedida por una llamada a la función vertex() para definir el primer punto ancla. Esta función debe ser usada entre un par beginShape() y endShape() y solo cuando no se ha especificado el parámetro MODE de beginShape().
quadraticVertex__description__1 = This function must be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE or POINTS parameter specified to <a href="#/p5/beginShape">beginShape()</a>.
quadraticVertex__params__cx = Número: coordenada x del punto de control
quadraticVertex__params__cy = Número: coordenada y del punto de control
quadraticVertex__params__x3 = Número: coordenada x del punto ancla
quadraticVertex__params__y3 = Número: coordenada y del punto ancla
quadraticVertex__params__cz = Number: z-coordinate for the control point (for WebGL mode)
quadraticVertex__params__z3 = Number: z-coordinate for the anchor point (for WebGL mode)
vertex__description__0 = Todas las figuras son construidas mediante la conexión de una serie de vértices. vertex() es usado para especificar las coordenadas de los vértices para puntos, líneas, triángulos, cuadriláteros y polígonos. Es usada exclusivamente dentro de un par de funciones beginShape() y endShape().
vertex__params__x = Número: coordenada x del vértice
vertex__params__y = Número: coordenada y del vértice
vertex__params__z = Number: z-coordinate of the vertex
vertex__params__u = Number: (Optional) the vertex's texture u-coordinate
vertex__params__v = Number: (Optional) the vertex's texture v-coordinate
normal__description__0 = Sets the 3d vertex normal to use for subsequent vertices drawn with <a href="#/p5/vertex">vertex()</a>. A normal is a vector that is generally nearly perpendicular to a shape's surface which controls how much light will be reflected from that part of the surface.
normal__params__vector = Vector: A p5.Vector representing the vertex normal.
normal__params__x = Number: The x component of the vertex normal.
normal__params__y = Number: The y component of the vertex normal.
normal__params__z = Number: The z component of the vertex normal.
VERSION__description__0 = Version of this p5.js.
P2D__description__0 = The default, two-dimensional renderer.
WEBGL__description__0 = One of the two render modes in p5.js: P2D (default renderer) and WEBGL Enables 3D render by introducing the third dimension: Z
HALF_PI__description__0 = HALF_PI es una constante matemática de valor 1.57079632679489661923. Es la mitad de la razón entre la circunferencia de un círculo y su diámetro. Es útil en combinación con las funciones trigonométricas sin() y cos().
PI__description__0 = PI es una constante matemática de valor 3.14159265358979323846. Es la razón entre la circunferencia de un círculo y su diámetro. Es útil en combinación con las funciones trigonométricas sin() y cos().
QUARTER_PI__description__0 = QUARTER_PI es una constante matemática de valor 0.7853982. Es un cuarto de la razón entre la circunferencia de un círculo y su diámetro. Es útil en combinación con las funciones trigonométricas sin() y cos().
TAU__description__0 = TAU es un alias de TWO_PI, una constante matemática de valor 6.28318530717958647693. Es el doble de la razón entre la circunferencia de un círculo y su diámetro. Es útil en combinación con las funciones trigonométricas sin() y cos().
TWO_PI__description__0 = TWO_PI es una constante matemática de valor 6.28318530717958647693. Es el doble de la razón entre la circunferencia de un círculo y su diámetro. Es útil en combinación con las funciones trigonométricas sin() y cos().
DEGREES__description__0 = Constant to be used with <a href="#/p5/angleMode">angleMode()</a> function, to set the mode which p5.js interprets and calculates angles (either DEGREES or RADIANS).
RADIANS__description__0 = Constant to be used with <a href="#/p5/angleMode">angleMode()</a> function, to set the mode which p5.js interprets and calculates angles (either RADIANS or DEGREES).
HSB__description__0 = HSB (hue, saturation, brightness) is a type of color model. You can learn more about it at <a href="https://learnui.design/blog/the-hsb-color-system-practicioners-primer.html">HSB</a>.
AUTO__description__0 = AUTO allows us to automatically set the width or height of an element (but not both), based on the current height and width of the element. Only one parameter can be passed to the <a href="/#/p5.Element/size">size</a> function as AUTO, at a time.
print__description__0 = La función print() escribe en la consola del navegador. Esta función es a menudo de ayuda para observar los datos que un programa está produciendo. Esta función crea una nueva línea de texto por cada ejecución de la función. Elementos individuales pueden ser separados por comillas ('') y unidos con el operador de adición (+). Aunque print() es similar a console.log(), no llama a console.log() directamente, para simular una manera más simple de entender el comportamiento del programa. Por esto mismo, es más lento. Para resultados más rápidos, usar directamente console.log().
print__description__1 = Note that calling print() without any arguments invokes the window.print() function which opens the browser's print dialog. To print a blank line to console you can write print('\n').
print__params__contents = Cualquiera: cualquier combinación de número, string, objeto, boolean o arreglo a imprimir
frameCount__description__0 = La variable de sistema frameCount contiene el número de cuadros (frames) que se han mostrado desde que el programa empezó a ejecutarse. Dentro de setup() el valor es 0, después de la primera iteración de draw() es 1, etc.
deltaTime__description__0 = The system variable <a href="#/p5/deltaTime">deltaTime</a> contains the time difference between the beginning of the previous frame and the beginning of the current frame in milliseconds.
deltaTime__description__1 = This variable is useful for creating time sensitive animation or physics calculation that should stay constant regardless of frame rate.
focused__description__0 = Confirma si la ventana de un programa de p5.js está en foco, lo que significa que el bosquejo aceptará entradas desde el ratón o teclado. Esta variable es verdadera (true) si la ventana está en foco y falsa (false) si no.
cursor__description__0 = Define el cursor como un símbolo predeterminado o una imagen, o hace el cursor visible si es que estaba escondido. Si estás tratando de asignar una imagen al cursor, el tamaño recomendado es 16x16 o 32x32 pixeles. No es posible cargar una imagen al cursor si estás exportando tu programa a la Web, y no todos los modos funcionan con todos los navegadores. Los valores de los parámetros x e y deben ser menores a la dimensión de la imagen.
cursor__params__type = Número|Constante: puede ser ARROW, CROSS, HAND, MOVE, TEXT, o WAIT, o la dirección de una imagen
cursor__params__x = Número: el punto activo horizontal del cursor
cursor__params__y = Número: el punto activo vertical del cursor
frameRate__description__0 = Especifica el número de cuadros mostrados por segundo. Por ejemplo, la llamada a la función frameRate(30), tratará de refrescar 30 veces por segundo. Si el procesador no es lo suficientemente rápido para mantener la tasa especificada, la tasa de cuadros por segundo no será lograda. Definir la tasa de cuadros por segundo dentro de setup() es lo recomendable. La tasa por defecto es de 60 veces por segundo. Esto es lo mismo que setFrameRate(val). Llamar a la función frameRate() sin argumentos retorna la tasa actual. Esto es lo mismo que getFrameRate(). Llamar a la función frameRate() con arugmentos que no son de tipo número o no son positivos también retornarán la tasa actual.
frameRate__description__1 = Calling <a href="#/p5/frameRate">frameRate()</a> with no arguments returns the current framerate. The draw function must run at least once before it will return a value. This is the same as <a href="#/p5/getFrameRate">getFrameRate()</a>.
frameRate__description__2 = Calling <a href="#/p5/frameRate">frameRate()</a> with arguments that are not of the type numbers or are non positive also returns current framerate.
frameRate__params__fps = Número: número de cuadros a ser mostrados cada segundo.
noCursor__description__0 = Esconde el cursor.
displayWidth__description__0 = Variable de sistema que almacena el ancho de la pantalla mostrada. Esto es usado para correr un programa a pantalla completa en cualquier dimensión de pantalla.
displayHeight__description__0 = Variable de sistema que almacena la altura de la pantalla mostrada. Esto es usado para correr un programa a pantalla completa en cualquier dimensión de pantalla.
windowWidth__description__0 = Variable de sistema que almacena el ancho interior de la ventana del navegador, equivale a window.innerWidth.
windowHeight__description__0 = Variable de sistema que almacena la altura interior de la ventana del navegador, equivale a window.innerHeight.
windowResized__description__0 = La función windowResized() es llamada cada vez que la ventana del navegador cambia de tamaño. Es un buen lugar para cambiar las dimensiones del lienzo o hacer cualquier otro ajuste necesario para acomodar las nuevas dimensiones de la ventana.
windowResized__params__event = Object: (Optional) optional Event callback argument.
width__description__0 = Variable de sistema que almacena el ancho del lienzo dibujado. Este valor es definido por el primer parámetro de la función createCanvas(). Por ejemplo, la llamada a la función (320, 240) define la variable width al valor 320. El valor por defecto de ancho es de 100 si es que createCanvas() no ha sido usado en el programa.
height__description__0 = ariable de sistema que almacena la altura del lienzo dibujado. Este valor es definido por el primer parámetro de la función createCanvas(). Por ejemplo, la llamada a la función (320, 240) define la variable width al valor 240. El valor por defecto de ancho es de 100 si es que createCanvas() no ha sido usado en el programa.
fullscreen__description__0 = Si se da un argumento, define que el bosquejo esté a pantalla completa basado en el valor del argumento. Si no se da un argumento, retorna el estado actual de pantalla completa. Notar que debido a restricciones del navegador esto solo puede ser llamado con una entrada de parte del usuario, por ejemplo, cuando se presiona el ratón como en el ejemplo.
fullscreen__returns = Boolean: estado de pantalla completa actual
fullscreen__params__val = Boolean: define si el bosquejo debe estar a pantalla completa o no.
pixelDensity__description__0 = Define el escalamiento de pixeles para monitores de alta densidad de pixeles. Por defecto, la densidad de pixeles es definida para calzar con la densidad del monitor, ejecuta pixelDensity() para que no sea así. Llamar a pixelDensity() sin argumentos retorna la densidad de pixeles actual del bosquejo.
pixelDensity__params__val = Número: si es que el bosquejo debe ser escalado y cuánto.
displayDensity__description__0 = Retorna la densidad de pixeles del monitor actual en que el bosquejo está corriendo.
displayDensity__returns = Número: la densidad de pixeles actual del monitor
getURL__description__0 = Retorna la URL actual.
getURL__returns = String: URL
getURLPath__description__0 = Retorna la dirección URL como un arreglo
getURLPath__returns = Arreglo: los componentes de la dirección
getURLParams__description__0 = Retorna los parámetros de la URL actual como un objeto.
getURLParams__returns = Objeto: parámetros de la URL
preload__description__0 = La función preload() es ejecutada antes de setup(), es usada para manejar la carga asíncrona de archivos externos. Si se define una función preload(), setup() esperará hasta que las llamadas a funciones load hayan terminado. Solo se deben incluir instrucciones de carga dentro de preload() (loadImage, loadJSON, loadFont, loadStrings, etc).
preload__description__1 = By default the text "loading..." will be displayed. To make your own loading page, include an HTML element with id "p5_loading" in your page. More information <a href="http://bit.ly/2kQ6Nio">here</a>.
setup__description__0 = La función setup() es ejecutada una vez, cuando el programa empieza. Es usada para definir propiedades iniciales como amaño de la pantalla y color de fondo y para cargar medios como imágenes y tipografías cuando el programa empieza. Solo puede haber una función setup() en cada programa y no debe ser llamada después de su ejecución inicial. Nota: las variables declaradas dentro de setup() no son accesibles dentro de otras funciones, como draw().
setup__description__1 = Note: Variables declared within <a href="#/p5/setup">setup()</a> are not accessible within other functions, including <a href="#/p5/draw">draw()</a>.
draw__description__0 = La función draw() es ejecutada después de setup(), y ejecuta contínuamente las líneas de código dentro de su bloque hasta que el programa es detenido o se ejecuta la función noLoop(). Notar que si noLoop() es ejecutada dentro de setup(), draw() igualmente será ejecutado una vez antes de parar. La función draw() es ejecutada automáticamente y nunca debiera ser ejecutada explícitamente. Siempre debería ser controlada con noLoop(), redraw() y loop(). Después de que noLoop() detiene la ejecución del código dentro de draw(), redraw() causa que el código dentro de draw() se ejecute una vez, y loop() causa que el código dentro de draw() siga ejecutándose de forma continua. El número de veces que draw() se ejecuta por segundo puede ser controlado con la función frameRate(). Solo puede haber una función draw() en cada bosquejo, y draw() solo debe existir si quieres que el código corra de forma continua, o para procesar eventos como mousePressed(). Algunas veces, podrías querer ejecutar una función draw() vacía, como se mostró en el ejemplo más arriba. Es importante notar que el sistema de coordenadas de dibujo será reiniciado al principio de cada ejecución de la función draw(). Si cualquier transformación es hecha dentro de draw() (por ejemplo: escalar, rotar, trasladar), sus efectos serán anulados al principio de cada ejecución de draw(), así que las transformaciones no se acumulan en el tiempo. Por el otro lado, el estilo aplicado (color de relleno, color de trazado) sí se mantendrá en efecto.
draw__description__1 = It should always be controlled with <a href="#/p5/noLoop">noLoop()</a>, <a href="#/p5/redraw">redraw()</a> and <a href="#/p5/loop">loop()</a>. After <a href="#/p5/noLoop">noLoop()</a> stops the code in <a href="#/p5/draw">draw()</a> from executing, <a href="#/p5/redraw">redraw()</a> causes the code inside <a href="#/p5/draw">draw()</a> to execute once, and <a href="#/p5/loop">loop()</a> will cause the code inside <a href="#/p5/draw">draw()</a> to resume executing continuously.
draw__description__2 = The number of times <a href="#/p5/draw">draw()</a> executes in each second may be controlled with the <a href="#/p5/frameRate">frameRate()</a> function.
draw__description__3 = There can only be one <a href="#/p5/draw">draw()</a> function for each sketch, and <a href="#/p5/draw">draw()</a> must exist if you want the code to run continuously, or to process events such as <a href="#/p5/mousePressed">mousePressed()</a>. Sometimes, you might have an empty call to <a href="#/p5/draw">draw()</a> in your program, as shown in the above example.
draw__description__4 = It is important to note that the drawing coordinate system will be reset at the beginning of each <a href="#/p5/draw">draw()</a> call. If any transformations are performed within <a href="#/p5/draw">draw()</a> (ex: scale, rotate, translate), their effects will be undone at the beginning of <a href="#/p5/draw">draw()</a>, so transformations will not accumulate over time. On the other hand, styling applied (ex: fill, stroke, etc) will remain in effect.
remove__description__0 = Remueve el bosquejo de p5 completamente. Esto removerá el lienzo y cualquier otro elemento creado por p5.js. También detendrá el bucle de dibujo y desvinculará cualquier propiedad o método global de la ventana. Dejará una variable p5 en caso que quieras crear un nuevo bosquejo p5. Si quieres, puedes definir p5 = null para borrar esta variable.
disableFriendlyErrors__description__0 = Allows for the friendly error system (FES) to be turned off when creating a sketch, which can give a significant boost to performance when needed. See <a href='https://github.com/processing/p5.js/wiki/Optimizing-p5.js-Code-for-Performance#disable-the-friendly-error-system-fes'> disabling the friendly error system</a>.
let__description__0 = Creates and names a new variable. A variable is a container for a value.
let__description__1 = Variables that are declared with <a href="#/p5/let">let</a> will have block-scope. This means that the variable only exists within the <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block"> block</a> that it is created within.
let__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let">the MDN entry</a>: Declares a block scope local variable, optionally initializing it to a value.
const__description__0 = Creates and names a new constant. Like a variable created with <a href="#/p5/let">let</a>, a constant that is created with <a href="#/p5/const">const</a> is a container for a value, however constants cannot be reassigned once they are declared. Although it is noteworthy that for non-primitive data types like objects & arrays, their elements can still be changeable. So if a variable is assigned an array, you can still add or remove elements from the array but cannot reassign another array to it. Also unlike <code>let</code>, you cannot declare variables without value using const.
const__description__1 = Constants have block-scope. This means that the constant only exists within the <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block"> block</a> that it is created within. A constant cannot be redeclared within a scope in which it already exists.
const__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const">the MDN entry</a>: Declares a read-only named constant. Constants are block-scoped, much like variables defined using the 'let' statement. The value of a constant can't be changed through reassignment, and it can't be redeclared.
===__description__0 = The strict equality operator <a href="#/p5/===">===</a> checks to see if two values are equal and of the same type.
===__description__1 = A comparison expression always evaluates to a <a href="#/p5/boolean">boolean</a>.
===__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators">the MDN entry</a>: The non-identity operator returns true if the operands are not equal and/or not of the same type.
===__description__3 = Note: In some examples around the web you may see a double-equals-sign <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators#Equality">==</a>, used for comparison instead. This is the non-strict equality operator in Javascript. This will convert the two values being compared to the same type before comparing them.
>__description__0 = The greater than operator <a href="#/p5/>">></a> evaluates to true if the left value is greater than the right value. <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators"> There is more info on comparison operators on MDN.</a>
>=__description__0 = The greater than or equal to operator <a href="#/p5/>=">>=</a> evaluates to true if the left value is greater than or equal to the right value.
>=__description__1 = <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators">There is more info on comparison operators on MDN.</a>
<__description__0 = The less than operator <a href="#/p5/<"><</a> evaluates to true if the left value is less than the right value.
<__description__1 = <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators">There is more info on comparison operators on MDN.</a>
<=__description__0 = The less than or equal to operator <a href="#/p5/<="><=</a> evaluates to true if the left value is less than or equal to the right value.
<=__description__1 = <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators">There is more info on comparison operators on MDN.</a>
if-else__description__0 = The <a href="#/p5/if-else">if-else</a> statement helps control the flow of your code.
if-else__description__1 = A condition is placed between the parenthesis following 'if', when that condition evalues to <a href="https://developer.mozilla.org/en-US/docs/Glossary/truthy">truthy</a>, the code between the following curly braces is run. Alternatively, when the condition evaluates to <a href="https://developer.mozilla.org/en-US/docs/Glossary/Falsy">falsy</a>, the code between the curly braces of 'else' block is run instead. Writing an else block is optional.
if-else__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else">the MDN entry</a>: The 'if' statement executes a statement if a specified condition is truthy. If the condition is falsy, another statement can be executed
function__description__0 = Creates and names a <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions">function</a>. A <a href="#/p5/function">function</a> is a set of statements that perform a task.
function__description__1 = Optionally, functions can have parameters. <a href="https://developer.mozilla.org/en-US/docs/Glossary/Parameter">Parameters</a> are variables that are scoped to the function, that can be assigned a value when calling the function.Multiple parameters can be given by seperating them with commas.
function__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function">the MDN entry</a>: Declares a function with the specified parameters.
return__description__0 = Specifies the value to be returned by a function. For more info checkout <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/return"> the MDN entry for return</a>.
boolean__description__0 = Convierte un número o string a su representación en boolean. Para números, cualquier valor distinto de cero (positivo o ne gativo), evalua a true, mientras que cero evalua a falso. Para un string, el valor true evalua a true, mientras que cualquier otro valor evalua a falso. Cuando un arreglo de números o strings es introducido, entonces un arreglo de booleans de la misma longitud es retornado.
boolean__returns = Boolean: representación en formato boolean del valor
boolean__params__n = String|Boolean|Número|Arreglo: valor a procesar
string__description__0 = A <a href="#/p5/string">string</a> is one of the 7 <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Primitive_values">primitive data types</a> in Javascript. A string is a series of text characters. In Javascript, a string value must be surrounded by either single-quotation marks(') or double-quotation marks(").
string__description__1 = From <a href="https://developer.mozilla.org/en-US/docs/Glossary/string">the MDN entry</a>: A string is a sequence of characters used to represent text.
number__description__0 = A <a href="#/p5/number">number</a> is one of the 7 <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Primitive_values">primitive data types</a> in Javascript. A number can be a whole number or a decimal number.
number__description__1 = <a href="https://developer.mozilla.org/en-US/docs/Glossary/number">The MDN entry for number</a>
object__description__0 = From <a href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Basics">MDN's object basics</a>:  An <a href="#/p5/object">object</a> is a collection of related data and/or  functionality (which usually consists of several variables and functions —  which are called properties and methods when they are inside objects.)
class__description__0 = Creates and names a <a href="#/p5/class">class</a> which is a template for the creation of <a href="#/p5/objects">objects</a>.
class__description__1 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/class">the MDN entry</a>: The class declaration creates a new Class with a given name using prototype-based inheritance.
for__description__0 = <a href="#/p5/for">for</a> creates a loop that is useful for executing one section of code multiple times.
for__description__1 = A 'for loop' consists of three different expressions inside of a parenthesis, all of which are optional.These expressions are used to control the number of times the loop is run.The first expression is a statement that is used to set the initial state for the loop.The second expression is a condition that you would like to check before each loop. If this expression returns false then the loop will exit.The third expression is executed at the end of each loop. These expression are separated by ; (semi-colon).In case of an empty expression, only a semi-colon is written.
for__description__2 = The code inside of the loop body (in between the curly braces) is executed between the evaluation of the second and third expression.
for__description__3 = As with any loop, it is important to ensure that the loop can 'exit', or that the test condition will eventually evaluate to false. The test condition with a <a href="#/p5/for">for</a> loop is the second expression detailed above. Ensuring that this expression can eventually become false ensures that your loop doesn't attempt to run an infinite amount of times, which can crash your browser.
for__description__4 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for">the MDN entry</a>: Creates a loop that executes a specified statement until the test condition evaluates to false. The condition is evaluated after executing the statement, resulting in the specified statement executing at least once.
while__description__0 = <a href="#/p5/while">while</a> creates a loop that is useful for executing one section of code multiple times.
while__description__1 = With a 'while loop', the code inside of the loop body (between the curly braces) is run repeatedly until the test condition (inside of the parenthesis) evaluates to false. The condition is tested before executing the code body with <a href="#/p5/while">while</a>, so if the condition is initially false the loop body, or statement, will never execute.
while__description__2 = As with any loop, it is important to ensure that the loop can 'exit', or that the test condition will eventually evaluate to false. This is to keep your loop from trying to run an infinite amount of times, which can crash your browser.
while__description__3 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/while">the MDN entry</a>: The while statement creates a loop that executes a specified statement as long as the test condition evaluates to true.The condition is evaluated before executing the statement.
createCanvas__description__0 = Crea un elemento canvas en el documento, y define sus dimensiones medidas en pixeles. Este método debe ser llamado solo una vez al comienzo de la función setup(). Llamar a la función createCanvas() más de una vez en un bosquejo puede resultar en comportamientos impredecibles. Si quieres más de un lienzo donde dibujar, debes usar la función createGraphics() (escondido por defecto, pero puede ser mostrado), Las variables de sistema width (ancho) y height (altura) son definidas por los parámetros pasados a la función. Si createCanvas() no es usado, la ventana tendrá un tamaño por defecto de 100 x 100 pixeles. Para más maneras de posicionar el lienzo, ver la sección de posición del lienzo.
createCanvas__description__1 = Important note: in 2D mode (i.e. when <code>p5.Renderer</code> is not set) the origin (0,0) is positioned at the top left of the screen. In 3D mode (i.e. when <code>p5.Renderer</code> is set to <code>WEBGL</code>), the origin is positioned at the center of the canvas. See <a href="https://github.com/processing/p5.js/issues/1545">this issue</a> for more information.
createCanvas__description__2 = The system variables width and height are set by the parameters passed to this function. If <a href="#/p5/createCanvas">createCanvas()</a> is not used, the window will be given a default size of 100x100 pixels.
createCanvas__description__3 = For more ways to position the canvas, see the <a href='https://github.com/processing/p5.js/wiki/Positioning-your-canvas'> positioning the canvas</a> wiki page.
createCanvas__returns = Objeto: lienzo generado
createCanvas__params__w = Número: ancho del lienzo
createCanvas__params__h = Número: altura del lienzo
createCanvas__params__renderer = Constante: P2D o WEBGL
resizeCanvas__description__0 = Redimensiona el linezo al ancho y la altura dados. El lienzo será borrado y la función draw() será llamada inmediatamente, permitiendo que el bosquejo se ajuste al nuevo lienzo
resizeCanvas__params__w = Number: width of the canvas
resizeCanvas__params__h = Number: height of the canvas
resizeCanvas__params__noRedraw = Boolean: (Optional) don't redraw the canvas immediately
noCanvas__description__0 = Remueve el lienzo por defecto para un bosquejo de p5 que no requiere un lienzo.
createGraphics__description__0 = Crea y retorna un nuevo objeto p5.Renderer. Usa esta clase si necesitas dibujar fuera de pantalla en un buffer gráfico. Los dos parámetros definen el ancho y la altura en pixeles.
createGraphics__returns = buffer gráfico fuera de pantalla
createGraphics__params__w = Número: ancho del buffer gráfico fuera de pantalla
createGraphics__params__h = Número: altura del buffer gráfico fuera de pantalla
createGraphics__params__renderer = Constante: P2D o WEBGL, si no se define es P2D por defecto
blendMode__description__0 = Combina los pixeles en la ventana según el modo definido. Existen distintas maneras de combinar los pixeles de la fuente (A) con los ya existentes en la pantalla mostrada (B). TODO
blendMode__description__1 = <em>(2D)</em> indicates that this blend mode <b>only</b> works in the 2D renderer. <em>(3D)</em> indicates that this blend mode <b>only</b> works in the WEBGL renderer.
blendMode__params__mode = Constante: modo de combinar del lienzo
drawingContext__description__0 = The p5.js API provides a lot of functionality for creating graphics, but there is some native HTML5 Canvas functionality that is not exposed by p5. You can still call it directly using the variable <code>drawingContext</code>, as in the example shown. This is the equivalent of calling <code>canvas.getContext('2d');</code> or <code>canvas.getContext('webgl');</code>. See this <a href="https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D"> reference for the native canvas API</a> for possible drawing functions you can call.
noLoop__description__0 = Detiene la ejecución continua del código de draw() de p5.js. Si se llama a la función loop(), el código dentro de draw() empieza a correr de forma continua nuevamente. Si se usa noLoop() dentro de setup(), debe ser la última línea de código dentro del bloque. Cuando se usa noLoop(), no es posible manipular o acceder a la pantalla dentro de las funciones que manejan eventos como mousePressed() o keyPressed(). En vez de eso, usa estas funciones para llamar a redraw() o loop(), que permitirán la ejecución de draw(), lo que permite el refresco correcto de la pantalla. Esto significa que cuando noLoop() ha sido ejecutado, no se sigue dibujando, y funciones como saveFrame() o loadPixels() no se pueden usar. Notar que si el bosquejo es escalado, redraw() será llamado para actualizar el bosquejo, incluso si noLoop() ha sido ejecutada. Por otro lado, el bosquejo entrará a un estado singular, hasta que loop() sea ejecutado.
noLoop__description__1 = When <a href="#/p5/noLoop">noLoop()</a> is used, it's not possible to manipulate or access the screen inside event handling functions such as <a href="#/p5/mousePressed">mousePressed()</a> or <a href="#/p5/keyPressed">keyPressed()</a>. Instead, use those functions to call <a href="#/p5/redraw">redraw()</a> or <a href="#/p5/loop">loop()</a>, which will run <a href="#/p5/draw">draw()</a>, which can update the screen properly. This means that when <a href="#/p5/noLoop">noLoop()</a> has been called, no drawing can happen, and functions like <a href="#/p5/saveFrames">saveFrames()</a> or <a href="#/p5/loadPixels">loadPixels()</a> may not be used.
noLoop__description__2 = Note that if the sketch is resized, <a href="#/p5/redraw">redraw()</a> will be called to update the sketch, even after <a href="#/p5/noLoop">noLoop()</a> has been specified. Otherwise, the sketch would enter an odd state until <a href="#/p5/loop">loop()</a> was called.
noLoop__description__3 = Use <a href="#/p5/isLooping">isLooping()</a> to check current state of loop().
loop__description__0 = Por defecto, p5.js repite de forma continua la función draw(), ejecutado el código dentro de su bloque. Sin embargo, el bucle de dibujo puede ser detenido llamando a la función noLoop(). En ese caso, el bucle de draw() puede ser retomado con loop().
loop__description__1 = Avoid calling loop() from inside setup().
loop__description__2 = Use <a href="#/p5/isLooping">isLooping()</a> to check current state of loop().
isLooping__description__0 = By default, p5.js loops through <a href="#/p5/draw">draw()</a> continuously, executing the code within it. If the sketch is stopped with <a href="#/p5/noLoop">noLoop()</a> or resumed with <a href="#/p5/loop">loop()</a>, isLooping() returns the current state for use within custom event handlers.
push__description__0 = La función push() graba la configuración actual de estilo de dibujo, y pop() restaura esta configuración. Notar que estas funciones siempre son usadas en conjunto. Permiten cambiar las configuraciones de estilo y transformaciones y luego volver a lo que tenías. Cuando un nuevo estado es iniciado con push(), construye encima de la información actual de estilo y transformación. Las funciones push() y pop() pueden ser embebidas para proveer más control (ver el segundo ejemplo para una demostración). push() almacena información relacionada a la configuración de estado de transformación y de estulo actual, controlada por las siguientes funciones: fill(), stroke(), tint(), strokeWeight(), strokeCap(), strokeJoin(), imageMode(), rectMode(), ellipseMode(), colorMode(), textAlign(), textFont(), textMode(), textSize(), textLeading().
push__description__1 = <a href="#/p5/push">push()</a> stores information related to the current transformation state and style settings controlled by the following functions: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a>, <a href="#/p5/noiseSeed">noiseSeed()</a>.
push__description__2 = In WEBGL mode additional style settings are stored. These are controlled by the following functions: <a href="#/p5/setCamera">setCamera()</a>, <a href="#/p5/ambientLight">ambientLight()</a>, <a href="#/p5/directionalLight">directionalLight()</a>, <a href="#/p5/pointLight">pointLight()</a>, <a href="#/p5/texture">texture()</a>, <a href="#/p5/specularMaterial">specularMaterial()</a>, <a href="#/p5/shininess">shininess()</a>, <a href="#/p5/normalMaterial">normalMaterial()</a> and <a href="#/p5/shader">shader()</a>.
pop__description__0 = La función push() graba la configuración actual de estilo de dibujo, y pop() restaura esta configuración. Notar que estas funciones siempre son usadas en conjunto. Permiten cambiar las configuraciones de estilo y transformaciones y luego volver a lo que tenías. Cuando un nuevo estado es iniciado con push(), construye encima de la información actual de estilo y transformación. Las funciones push() y pop() pueden ser embebidas para proveer más control (ver el segundo ejemplo para una demostración). push() almacena información relacionada a la configuración de estado de transformación y de estulo actual, controlada por las siguientes funciones: fill(), stroke(), tint(), strokeWeight(), strokeCap(), strokeJoin(), imageMode(), rectMode(), ellipseMode(), colorMode(), textAlign(), textFont(), textMode(), textSize(), textLeading().
pop__description__1 = <a href="#/p5/push">push()</a> stores information related to the current transformation state and style settings controlled by the following functions: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a>, <a href="#/p5/noiseSeed">noiseSeed()</a>.
pop__description__2 = In WEBGL mode additional style settings are stored. These are controlled by the following functions: <a href="#/p5/setCamera">setCamera()</a>, <a href="#/p5/ambientLight">ambientLight()</a>, <a href="#/p5/directionalLight">directionalLight()</a>, <a href="#/p5/pointLight">pointLight()</a>, <a href="#/p5/texture">texture()</a>, <a href="#/p5/specularMaterial">specularMaterial()</a>, <a href="#/p5/shininess">shininess()</a>, <a href="#/p5/normalMaterial">normalMaterial()</a> and <a href="#/p5/shader">shader()</a>.
redraw__description__0 = Ejecuta una vez el código dentro de la función draw(). Esta función permite al programa actualizar la ventana mostrada solamente cuando es necesario, por ejemplo, cuando un evento registrado por mousePressed() o keyPressed() ocurre. En la estructura de un programa, solo hace sentido llamar a redraw() dentro de eventos como mousePressed(). Esto es porque redraw() no hace que draw() se ejecute de forma inmediata (solo define una indicación de que se necesita un refresco). La función redraw() no funciona de forma correcta cuando se llama dentro de la función draw(). Para habilitar y deshabilitar animaciones, usa las funcioens loop() y noLoop(). Adicionalmente, puedes definir el número de veces que se dibuja por cada llamada a este método. Para esto, añade un entero como parámetro único a la función, que señale cuántas veces se requiere dibujar.
redraw__description__1 = In structuring a program, it only makes sense to call <a href="#/p5/redraw">redraw()</a> within events such as <a href="#/p5/mousePressed">mousePressed()</a>. This is because <a href="#/p5/redraw">redraw()</a> does not run <a href="#/p5/draw">draw()</a> immediately (it only sets a flag that indicates an update is needed).
redraw__description__2 = The <a href="#/p5/redraw">redraw()</a> function does not work properly when called inside <a href="#/p5/draw">draw()</a>.To enable/disable animations, use <a href="#/p5/loop">loop()</a> and <a href="#/p5/noLoop">noLoop()</a>.
redraw__description__3 = In addition you can set the number of redraws per method call. Just add an integer as single parameter for the number of redraws.
redraw__params__n = Entero: redibuja n-veces. Por defecto el valor es 1
p5__description__0 = The <code>p5()</code> constructor enables you to activate "instance mode" instead of normal "global mode". This is an advanced topic. A short description and example is included below. Please see <a target="blank" href="https://www.youtube.com/watch?v=Su792jEauZg&feature=youtu.be"> Dan Shiffman's Coding Train video tutorial</a> or this <a target="blank" href="https://github.com/processing/p5.js/wiki/p5.js-overview#instantiation--namespace">tutorial page</a> for more info.
p5__description__1 = By default, all p5.js functions are in the global namespace (i.e. bound to the window object), meaning you can call them simply <code>ellipse()</code>, <code>fill()</code>, etc. However, this might be inconvenient if you are mixing with other JS libraries (synchronously or asynchronously) or writing long programs of your own. p5.js currently supports a way around this problem called "instance mode". In instance mode, all p5 functions are bound up in a single variable instead of polluting your global namespace.
p5__description__2 = Optionally, you can specify a default container for the canvas and any other elements to append to with a second argument. You can give the ID of an element in your html, or an html node itself.
p5__description__3 = Note that creating instances like this also allows you to have more than one p5 sketch on a single web page, as they will each be wrapped up with their own set up variables. Of course, you could also use iframes to have multiple sketches in global mode.
p5__params__sketch = Object: a function containing a p5.js sketch
p5__params__node = String|Object: ID or pointer to HTML DOM node to contain sketch in
applyMatrix__description__0 = Multiplica la matriz actual por la especificada según los parámetros. Esto es muy lento porque tratará de calcular el inverso de la transformada, así que evítalo cuando sea posible
applyMatrix__description__1 = The naming of the arguments here follows the naming of the <a href= "https://html.spec.whatwg.org/multipage/canvas.html#dom-context-2d-transform"> WHATWG specification</a> and corresponds to a transformation matrix of the form: <blockquote>
applyMatrix__description__2 = <img style="max-width: 150px" src="assets/transformation-matrix.png" alt="The transformation matrix used when applyMatrix is called"/> </blockquote>
applyMatrix__params__a = Número: números que definen la matriz 3x2 a multiplicar
applyMatrix__params__b = Número: números que definen la matriz 3x2 a multiplicar
applyMatrix__params__c = Número: números que definen la matriz 3x2 a multiplicar
applyMatrix__params__d = Número: números que definen la matriz 3x2 a multiplicar
applyMatrix__params__e = Número: números que definen la matriz 3x2 a multiplicar
applyMatrix__params__f = Número: números que definen la matriz 3x2 a multiplicar
resetMatrix__description__0 = Reemplaza la matriz actual con la matriz identidad
rotate__description__0 = Rota una figura según el monto especificado por el parámetro ángulo. Esta función toma en cuenta el modo de ángulo definido por angleMode(), así que los ángulos pueden ser ingresados en radianes o grados. Los objetos son siempre rotados según su posición relativa al origen y los números positivos rotan en la dirección de las manecillas del reloj. Las transformaciones se aplican a todo lo que ocurre de forma posterior y las subsecuentes llamadas a la función acumulan el efecto. Por ejemplo, llamar a la función rotate(HALF_PI) y luego rotate(HALF_PI) equivale a una llamada a rotate(PI). Todas las transformaciones son anuladas cuando la función draw() comienza nuevamente. Técnicamente, rotate() multiplica la matriz de transformación actual por una matriz de rotación. Esta función puede ser controlada además con las funciones push() y pop().
rotate__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling rotate(HALF_PI) and then rotate(HALF_PI) is the same as rotate(PI). All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotate__description__2 = Technically, <a href="#/p5/rotate">rotate()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
rotate__params__angle = Ángulo: el ángulo de rotación, especificado en radianes o grados, dependiendo de angleMode()
rotate__params__axis = p5.Vector|Arreglo: eje sobre el que se rota
rotateX__description__0 = Rota en torno al eje X
rotateX__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateX__params__angle = Número: ángulo en radianes
rotateY__description__0 = Rota en torno al eje Y
rotateY__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateY__params__angle = Número: ángulo en radianes
rotateZ__description__0 = Rota en torno al eje Z,. Sólo disponible en el modo WEBGL.
rotateZ__description__1 = This method works in WEBGL mode only.
rotateZ__description__2 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateZ__params__angle = Número: ángulo en radianes
scale__description__0 = Aumenta o decrementa el tamaño de una figura por medio de expandir o contraer sus vértices. Los objetos siempre escalan desde su origen relativo al sistema de coordenadas. Los valores de escalamiento son porcentajes decimales. Por ejemplo, la llamada a la función scale(2.0) aumenta la dimensión de una figura en un 200%. Las transformaciones se aplican a todo lo que ocurre después y llamadas subsecuentes a la función multiplican el efecto. Por ejemplo, llamar a scale(2.0) y luego a scale(1.5) equivale a llamar a scale(3.0). Si la función scale() es llamad dentro de draw(), la transformación es anulada cuando el bucle empieza nuevamente. El uso de esta función con el parámetro z está solo disponible en el modo WEBGL. Esta función puede también ser controlada con las funciones push() y pop().
scale__description__1 = Transformations apply to everything that happens after and subsequent calls to the function multiply the effect. For example, calling scale(2.0) and then scale(1.5) is the same as scale(3.0). If <a href="#/p5/scale">scale()</a> is called within <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
scale__description__2 = Using this function with the z parameter is only available in WEBGL mode. This function can be further controlled with <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
scale__params__s = Número | p5.Vector| Arreglo: porcentaje a escalar del objeto, o porcentaje a esacalar del objeto en el eje x si se dan múltiples argumentos
scale__params__y = Número: porcentaje a escalar el objeto en el eje y
scale__params__z = Número: porcentaje a escalar el objeto en el eje z (sólo en modo WEBGL)
scale__params__scales = p5.Vector|Number[]: per-axis percents to scale the object
shearX__description__0 = Corta la figura en torno al eje x según el monto especificado por el parámetro ángulo. Los ángulos deben ser especificados según el modo actual de ángulo angleMode(). Los objetos son siempre cortados según su posición relativa al origen y los números positivos cortan los objetos en la dirección de las manecillas del reloj. Las transformaciones aplican a todo lo que ocurre después y llamadas posteriores a la misma función acumulan el efecto. Por ejemplo, llamar a shearX(PI/2) y luego a shearX(PI/2) equivale a llamar a shearX(PI). Si shearX() es llamado dentro de draw(), la transformación es anulada cuando el bucle empieza nuevamente. Técnicamente, shearX() multiplica la matriz de transformación actual por una matriz de rotación. La función puede ser controlada con las funciones push() y pop().
shearX__description__1 = Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling shearX(PI/2) and then shearX(PI/2) is the same as shearX(PI). If <a href="#/p5/shearX">shearX()</a> is called within the <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
shearX__description__2 = Technically, <a href="#/p5/shearX">shearX()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions.
shearX__params__angle = Número: ángulo de corte especificado en radianes o grados, dependiendo del modo de ángulo actual angleMode()
shearY__description__0 = Corta la figura en torno al eje y según el monto especificado por el parámetro ángulo. Los ángulos deben ser especificados según el modo actual de ángulo angleMode(). Los objetos son siempre cortados según su posición relativa al origen y los números positivos cortan los objetos en la dirección de las manecillas del reloj. Las transformaciones aplican a todo lo que ocurre después y llamadas posteriores a la misma función acumulan el efecto. Por ejemplo, llamar a shearY(PI/2) y luego a shearY(PI/2) equivale a llamar a shearY(PI). Si shearY() es llamado dentro de draw(), la transformación es anulada cuando el bucle empieza nuevamente. Técnicamente, shearY() multiplica la matriz de transformación actual por una matriz de rotación. La función puede ser controlada con las funciones push() y pop().
shearY__description__1 = Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling shearY(PI/2) and then shearY(PI/2) is the same as shearY(PI). If <a href="#/p5/shearY">shearY()</a> is called within the <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
shearY__description__2 = Technically, <a href="#/p5/shearY">shearY()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions.
shearY__params__angle = Número: ángulo de corte especificado en radianes o grados, dependiendo del modo de ángulo actual angleMode()
translate__description__0 = Especifica una cantidad a desplazar los objetos dentro de la ventana mostrada. El parámetro x especifica la traslación de izquierda a derecha, el parámetro y especifica la traslación de arriba a abajo. Las transformaciones son acumulativas y aplican a todo lo que ocurre después y llamadas posteriores a la misma función acumulan el efecto. Por ejemplo, llamar a translate(50, 0) y luego a translate(20, 0) equivale a llamar a translate(70, 0). Si translate() es llamado dentro de draw(), la transformación es anulada cada vez que el bucle empieza nuevamente. Esta función peude ser controlada con las funciones push() y pop().
translate__description__1 = Transformations are cumulative and apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling translate(50, 0) and then translate(20, 0) is the same as translate(70, 0). If <a href="#/p5/translate">translate()</a> is called within <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again. This function can be further controlled by using <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
translate__params__x = Número: traslación izquierda-derecha
translate__params__y = Número: traslación arriba-abajo
translate__params__z = Número: traslación adelante-atrás (solo en modo WEBGL)
translate__params__vector = p5.Vector: the vector to translate by
storeItem__description__0 = Stores a value in local storage under the key name.  Local storage is saved in the browser and persists  between browsing sessions and page reloads.  The key can be the name of the variable but doesn't  have to be. To retrieve stored items  see <a href="#/p5/getItem">getItem</a>. Sensitive data such as passwords or personal information  should not be stored in local storage.
storeItem__params__key = String
storeItem__params__value = String|Number|Object|Boolean|p5.Color|p5.Vector
getItem__description__0 = Returns the value of an item that was stored in local storage  using storeItem()
getItem__returns = Number|Object|String|Boolean|p5.Color|p5.Vector: Value of stored item
getItem__params__key = String: name that you wish to use to store in local storage
clearStorage__description__0 = Clears all local storage items set with storeItem()  for the current domain.
removeItem__description__0 = Removes an item that was stored with storeItem()
removeItem__params__key = String
createStringDict__description__0 = Creates a new instance of p5.StringDict using the key-value pair  or the object you provide.
createStringDict__returns = p5.StringDict:
createStringDict__params__key = String
createStringDict__params__value = String
createStringDict__params__object = Object: object
createNumberDict__description__0 = Creates a new instance of <a href="#/p5.NumberDict">p5.NumberDict</a> using the key-value pair  or object you provide.
createNumberDict__returns = p5.NumberDict:
createNumberDict__params__key = Number
createNumberDict__params__value = Number
createNumberDict__params__object = Object: object
select__description__0 = Searches the page for the first element that matches the given CSS selector string (can be an ID, class, tag name or a combination) and returns it as a <a href="#/p5.Element">p5.Element</a>. The DOM node itself can be accessed with .elt. Returns null if none found. You can also specify a container to search within.
select__returns = p5.Element|null: <a href="#/p5.Element">p5.Element</a> containing node found
select__params__selectors = String: CSS selector string of element to search for
select__params__container = String|p5.Element|HTMLElement: (Optional) CSS selector string, <a href="#/p5.Element">p5.Element</a>, or  HTML element to search within
selectAll__description__0 = Searches the page for elements that match the given CSS selector string (can be an ID a class, tag name or a combination) and returns them as <a href="#/p5.Element">p5.Element</a>s in an array. The DOM node itself can be accessed with .elt. Returns an empty array if none found. You can also specify a container to search within.
selectAll__returns = p5.Element[]: Array of <a href="#/p5.Element">p5.Element</a>s containing nodes found
selectAll__params__selectors = String: CSS selector string of elements to search for
selectAll__params__container = String|p5.Element|HTMLElement: (Optional) CSS selector string, <a href="#/p5.Element">p5.Element</a>  , or HTML element to search within
removeElements__description__0 = Removes all elements created by p5, except any canvas / graphics elements created by <a href="#/p5/createCanvas">createCanvas</a> or <a href="#/p5/createGraphics">createGraphics</a>. Event handlers are removed, and element is removed from the DOM.
changed__description__0 = The .<a href="#/p5.Element/changed">changed()</a> function is called when the value of an element changes. This can be used to attach an element specific event listener.
changed__params__fxn = Function|Boolean: function to be fired when the value of  an element changes.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
input__description__0 = The .<a href="#/p5.Element/input">input()</a> function is called when any user input is detected with an element. The input event is often used to detect keystrokes in a input element, or changes on a slider element. This can be used to attach an element specific event listener.
input__params__fxn = Function|Boolean: function to be fired when any user input is  detected within the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
createDiv__description__0 = Creates a <div></div> element in the DOM with given inner HTML.
createDiv__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createDiv__params__html = String: (Optional) inner HTML for element created
createP__description__0 = Creates a
createP__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createP__params__html = String: (Optional) inner HTML for element created
createSpan__description__0 = Creates a <span></span> element in the DOM with given inner HTML.
createSpan__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createSpan__params__html = String: (Optional) inner HTML for element created
createImg__description__0 = Creates an <img> element in the DOM with given src and alternate text.
createImg__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createImg__params__src = String: src path or url for image
createImg__params__alt = String: <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Img#Attributes">alternate text</a> to be used if image does not load. You can use also an empty string (<code>""</code>) if that an image is not intended to be viewed.
createImg__params__crossOrigin = String: <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_settings_attributes">crossOrigin property</a> of the <code>img</code> element; use either 'anonymous' or 'use-credentials' to retrieve the image with cross-origin access (for later use with <code>canvas</code>. if an empty string(<code>""</code>) is passed, CORS is not used
createImg__params__successCallback = Function: (Optional) callback to be called once image data is loaded with the <a href="#/p5.Element">p5.Element</a> as argument
createA__description__0 = Creates an <a></a> element in the DOM for including a hyperlink.
createA__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createA__params__href = String: url of page to link to
createA__params__html = String: inner html of link element to display
createA__params__target = String: (Optional) target where new link should open,  could be _blank, _self, _parent, _top.
createSlider__description__0 = Creates a slider <input></input> element in the DOM. Use .size() to set the display length of the slider.
createSlider__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createSlider__params__min = Number: minimum value of the slider
createSlider__params__max = Number: maximum value of the slider
createSlider__params__value = Number: (Optional) default value of the slider
createSlider__params__step = Number: (Optional) step size for each tick of the slider (if step is set to 0, the slider will move continuously from the minimum to the maximum value)
createButton__description__0 = Creates a <button></button> element in the DOM. Use .size() to set the display size of the button. Use .mousePressed() to specify behavior on press.
createButton__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createButton__params__label = String: label displayed on the button
createButton__params__value = String: (Optional) value of the button
createCheckbox__description__0 = Creates a checkbox <input></input> element in the DOM. Calling .checked() on a checkbox returns if it is checked or not
createCheckbox__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createCheckbox__params__label = String: (Optional) label displayed after checkbox
createCheckbox__params__value = Boolean: (Optional) value of the checkbox; checked is true, unchecked is false
createSelect__description__0 = Creates a dropdown menu <select></select> element in the DOM. It also helps to assign select-box methods to <a href="#/p5.Element">p5.Element</a> when selecting existing select box. <ul> <li><code>.option(name, [value])</code> can be used to set options for the select after it is created.</li> <li><code>.value()</code> will return the currently selected option.</li> <li><code>.selected()</code> will return current dropdown element which is an instance of <a href="#/p5.Element">p5.Element</a></li> <li><code>.selected(value)</code> can be used to make given option selected by default when the page first loads.</li> <li><code>.disable()</code> marks whole of dropdown element as disabled.</li> <li><code>.disable(value)</code> marks given option as disabled</li> </ul>
createSelect__returns = p5.Element:
createSelect__params__multiple = Boolean: (Optional) true if dropdown should support multiple selections
createSelect__params__existing = Object: DOM select element
createRadio__description__0 = Creates a radio button element in the DOM.It also helps existing radio buttons assign methods of <a href="#/p5.Element/">p5.Element</a>. <ul> <li><code>.option(value, [label])</code> can be used to create a new option for the element. If an option with a value already exists, it will be returned. Optionally, a label can be provided as second argument for the option.</li> <li><code>.remove(value)</code> can be used to remove an option for the element.</li> <li><code>.value()</code> method will return the currently selected value.</li> <li><code>.selected()</code> method will return the currently selected input element.</li> <li><code>.selected(value)</code> method will select the option and return it.</li> <li><code>.disable(Boolean)</code> method will enable/disable the whole radio button element.</li> </ul>
createRadio__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createRadio__params__containerElement = Object: An container HTML Element either a div or span inside which all existing radio inputs will be considered as options.
createRadio__params__name = String: (Optional) A name parameter for each Input Element.
createColorPicker__description__0 = Creates a colorPicker element in the DOM for color input. The .value() method will return a hex string (#rrggbb) of the color. The .color() method will return a p5.Color object with the current chosen color.
createColorPicker__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createColorPicker__params__value = String|p5.Color: (Optional) default color of element
createInput__description__0 = Creates an <input></input> element in the DOM for text input. Use .<a href="#/p5.Element/size">size()</a> to set the display length of the box.
createInput__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createInput__params__value = String: default value of the input box
createInput__params__type = String: (Optional) type of text, ie text, password etc. Defaults to text.  Needs a value to be specified first.
createFileInput__description__0 = Creates an <input></input> element in the DOM of type 'file'. This allows users to select local files for use in a sketch.
createFileInput__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created DOM element
createFileInput__params__callback = Function: callback function for when a file is loaded
createFileInput__params__multiple = Boolean: (Optional) optional, to allow multiple files to be selected
createVideo__description__0 = Creates an HTML5 <video> element in the DOM for simple playback of audio/video. Shown by default, can be hidden with .<a href="#/p5.Element/hide">hide()</a> and drawn into canvas using <a href="#/p5/image">image()</a>. The first parameter can be either a single string path to a video file, or an array of string paths to different formats of the same video. This is useful for ensuring that your video can play across different browsers, as each supports different formats. See <a href='https://developer.mozilla.org/en-US/docs/Web/HTML/Supported_media_formats'>this page</a> for further information about supported formats.
createVideo__returns = p5.MediaElement: pointer to video <a href="#/p5.Element">p5.Element</a>
createVideo__params__src = String|String[]: path to a video file, or array of paths for  supporting different browsers
createVideo__params__callback = Function: (Optional) callback function to be called upon  'canplaythrough' event fire, that is, when the  browser can play the media, and estimates that  enough data has been loaded to play the media  up to its end without having to stop for  further buffering of content
createAudio__description__0 = Creates a hidden HTML5 <audio> element in the DOM for simple audio playback. The first parameter can be either a single string path to a audio file, or an array of string paths to different formats of the same audio. This is useful for ensuring that your audio can play across different browsers, as each supports different formats. See <a href='https://developer.mozilla.org/en-US/docs/Web/HTML/Supported_media_formats'>this page for further information about supported formats</a>.
createAudio__returns = p5.MediaElement: pointer to audio <a href="#/p5.Element">p5.Element</a>
createAudio__params__src = String|String[]: (Optional) path to an audio file, or array of paths  for supporting different browsers
createAudio__params__callback = Function: (Optional) callback function to be called upon  'canplaythrough' event fire, that is, when the  browser can play the media, and estimates that  enough data has been loaded to play the media  up to its end without having to stop for  further buffering of content
createCapture__description__0 = Creates a new HTML5 <video> element that contains the audio/video feed from a webcam. The element is separate from the canvas and is displayed by default. The element can be hidden using .<a href="#/p5.Element/hide">hide()</a>. The feed can be drawn onto the canvas using <a href="#/p5/image">image()</a>. The loadedmetadata property can be used to detect when the element has fully loaded (see second example).
createCapture__description__1 = More specific properties of the feed can be passing in a Constraints object. See the <a href='http://w3c.github.io/mediacapture-main/getusermedia.html#media-track-constraints'> W3C spec</a> for possible properties. Note that not all of these are supported by all browsers.
createCapture__description__2 = <em>Security note</em>: A new browser security specification requires that getUserMedia, which is behind <a href="#/p5/createCapture">createCapture()</a>, only works when you're running the code locally, or on HTTPS. Learn more <a href='http://stackoverflow.com/questions/34197653/getusermedia-in-chrome-47-without-using-https'>here</a> and <a href='https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia'>here</a>.
createCapture__returns = p5.Element: capture video <a href="#/p5.Element">p5.Element</a>
createCapture__params__type = String|Constant|Object: type of capture, either VIDEO or  AUDIO if none specified, default both,  or a Constraints object
createCapture__params__callback = Function: (Optional) function to be called once  stream has loaded
createElement__description__0 = Creates element with given tag in the DOM with given content.
createElement__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createElement__params__tag = String: tag for the new element
createElement__params__content = String: (Optional) html content to be inserted into the element
deviceOrientation__description__0 = La variable de sistema deviceOrientation siempre contiene la orientación del dispositivo. El valor de esta variable será o landscape (paisaje) o portrait (retrato). Si la información no está disponible, su valor será undefined.
accelerationX__description__0 = La variable de sistema accelerationX siempré contiene la aceleración del dispositivo en el eje X. El valor es representado en unidades de metros por segundo al cuadrado.
accelerationY__description__0 = La variable de sistema accelerationX siempré contiene la aceleración del dispositivo en el eje Y. El valor es representado en unidades de metros por segundo al cuadrado.
accelerationZ__description__0 = La variable de sistema accelerationX siempré contiene la aceleración del dispositivo en el eje Z. El valor es representado en unidades de metros por segundo al cuadrado.
pAccelerationX__description__0 = La variable de sistema pAccelerationX siempré contiene la aceleración del dispositivo en el eje X, del cuadro anterior al cuadro actual. El valor es representado en unidades de metros por segundo al cuadrado.
pAccelerationY__description__0 = La variable de sistema pAccelerationY siempré contiene la aceleración del dispositivo en el eje Y, del cuadro anterior al cuadro actual. El valor es representado en unidades de metros por segundo al cuadrado.
pAccelerationZ__description__0 = La variable de sistema pAccelerationZ siempré contiene la aceleración del dispositivo en el eje Z, del cuadro anterior al cuadro actual. El valor es representado en unidades de metros por segundo al cuadrado.
rotationX__description__0 = La variable de sistema rotationX siempre contiene la rotación del dispositivo en el eje x. El valor está representado entre 0 y  +/-180 grados. Nota: el orden en que las rotaciones son llamadas es importante, por ejemplo, si se usan juntas, deben ser llamadas en el orden Z-X-Y, en caso contrario podría haber un comportamiento errado.
rotationX__description__1 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
rotationY__description__0 = La variable de sistema rotationX siempre contiene la rotación del dispositivo en el eje x. El valor está representado entre 0 y  +/-180 grados. Nota: el orden en que las rotaciones son llamadas es importante, por ejemplo, si se usan juntas, deben ser llamadas en el orden Z-X-Y, en caso contrario podría haber un comportamiento errado.
rotationY__description__1 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
rotationZ__description__0 = La variable de sistema rotationX siempre contiene la rotación del dispositivo en el eje y. El valor está representado entre 0 y  360 grados. A diferencia de rotationX y rotationY, esta variable está solo disponible en dispositivos equipados con una brújula interna. Nota: el orden en que las rotaciones son llamadas es importante, por ejemplo, si se usan juntas, deben ser llamadas en el orden Z-X-Y, en caso contrario podría haber un comportamiento errado.
rotationZ__description__1 = Unlike rotationX and rotationY, this variable is available for devices with a built-in compass only.
rotationZ__description__2 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
pRotationX__description__0 = La variable de sistema pRotationX siempre contiene la rotación del dispositivo en el eje x, en el cuadro anterior al actual. El valor está representado entre 0 y  +/-180 grados. pRotationX puede ser usado en conjunto con rotationX para determinar la dirección de rotación del dispositivo a lo largo del eje x.
pRotationX__description__1 = pRotationX can also be used with rotationX to determine the rotate direction of the device along the X-axis.
pRotationY__description__0 = La variable de sistema pRotationY siempre contiene la rotación del dispositivo en el eje x, en el cuadro anterior al actual. El valor está representado entre 0 y  +/-90 grados. pRotationY puede ser usado en conjunto con rotationY para determinar la dirección de rotación del dispositivo a lo largo del eje y.
pRotationY__description__1 = pRotationY can also be used with rotationY to determine the rotate direction of the device along the Y-axis.
pRotationZ__description__0 = La variable de sistema pRotationZ siempre contiene la rotación del dispositivo en el eje z, en el cuadro anterior al actual. El valor está representado entre 0 y 359 grados. pRotationZ puede ser usado en conjunto con rotationZ para determinar la dirección de rotación del dispositivo a lo largo del eje z.
pRotationZ__description__1 = pRotationZ can also be used with rotationZ to determine the rotate direction of the device along the Z-axis.
turnAxis__description__0 = When a device is rotated, the axis that triggers the <a href="#/p5/deviceTurned">deviceTurned()</a> method is stored in the turnAxis variable. The turnAxis variable is only defined within the scope of deviceTurned().
setMoveThreshold__description__0 = La función setMoveThreshold() es usada para definir el umbral para detectar movimiento de la función deviceMoved(). El valor umbral por defecto es 0.5
setMoveThreshold__params__value = Número: el valor umbral
setShakeThreshold__description__0 = La función setShakeThreshold() es usada para definir el umbral para detectar agitamiento de la función deviceShaken(). El valor umbral por defecto es 30.
setShakeThreshold__params__value = Número: el valor umbral
deviceMoved__description__0 = La función deviceMoved() es llamada cuando el dispositivo es movido en una cantidad mayor al valor umbral en el eje X, Y o Z. El valor umbral por defecto es 0.5
deviceTurned__description__0 = La función deviceTurned() es llamada cuando el dispositivo es girado en más de 90 grados de modo continuo. El eje que gatilla la función deviceTurned() es almacenado en la variable turnAxis. El método deviceTurned() puede ser restringido para gatillar en cualquier eje: X, Y o Z, comparando la variable turnAxis con X, Y o Z.
deviceTurned__description__1 = The axis that triggers the <a href="#/p5/deviceTurned">deviceTurned()</a> method is stored in the turnAxis variable. The <a href="#/p5/deviceTurned">deviceTurned()</a> method can be locked to trigger on any axis: X, Y or Z by comparing the turnAxis variable to 'X', 'Y' or 'Z'.
deviceShaken__description__0 = La función deviceShaken() es llamada cuando la aceleración total de los cambios de accelerationX y accelerationY son mayores al valor umbral. El valor umbral por defecto es 30
keyIsPressed__description__0 = La variable boolean de sistema keyIsPressed es verdadera (true) cuando cualquier tecla es presionada y falsa (false) si no hay ninguna tecla presionada
key__description__0 = La variable de sistema key siempre contiene el valor más reciente de la tecla del teclado presionada. Para tener los mejores resultados, es mejor usarla dentro de la función keyTyped(). Para teclas sin valor ASCII, usa la variable keyCode
keyCode__description__0 = La variable keyCode es usada para detectar teclas especiales, como BACKSPACE, DELETE, ENTER, RETURN, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW. También puedes revisar las teclas especiales buscando el código keyCode de cualquier tecla en internet.
keyPressed__description__0 = La función keyPressed() es llamada una vez cada vez que una tecla es presionada. El código keyCode de la tecla presionada es almacenado en la variable keyCode. Para las teclas sin valor ASCII, usa la variable keyCode.  Puedes comprobar si la variable keyCode es igual a BACKSPACE, DELETE, ENTER, RETURN, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW. Para las teclas con valor ASCII que son presionadas, el valor es almacenado en la variable key. Sin embargo, no distingue entre letras mayúsculas y minúsculas. Por esta razón, es recomendable usar la función keyTyped() para leer la variable key, que sí distingue entre mayúsculas y minúsculas. Por la forma en que los sistemas operativos manejan la repetición de teclas, mantener presionada una tecla puede causar múltiples llamadas a keyTyped() (y también keyReleased()). La tasa de repetición es definida por el sistema operativo y según cómo cada computador está configurado. Los navegadores tienen distintos comportamientos por defecto asociados a distintos eventos gatillados por teclas. Para prevenir cualquier comportamiento por defecto para este evento, añade return false al final de este método.
keyPressed__description__1 = For non-ASCII keys, use the keyCode variable. You can check if the keyCode equals BACKSPACE, DELETE, ENTER, RETURN, TAB, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW.
keyPressed__description__2 = For ASCII keys, the key that was pressed is stored in the key variable. However, it does not distinguish between uppercase and lowercase. For this reason, it is recommended to use <a href="#/p5/keyTyped">keyTyped()</a> to read the key variable, in which the case of the variable will be distinguished.
keyPressed__description__3 = Because of how operating systems handle key repeats, holding down a key may cause multiple calls to <a href="#/p5/keyTyped">keyTyped()</a> (and <a href="#/p5/keyReleased">keyReleased()</a> as well). The rate of repeat is set by the operating system and how each computer is configured. Browsers may have different default behaviors attached to various key events. To prevent any default behavior for this event, add "return false" to the end of the method.
keyPressed__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyReleased__description__0 = La función keyReleased() es llamada una vez cada vez que una tecla es soltada. Ver key y keyCode para más información. Los navegadores tienen distintos comportamientos por defecto asociados a distintos eventos gatillados por teclas. Para prevenir cualquier comportamiento por defecto para este evento, añade return false al final de este método.
keyReleased__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyTyped__description__0 = la función keyTyped es llamada cava vez que una tecla es presionada, excepto cuando son presionadas la steclas de acción como Ctrl, Shift y Alt, que son ignoradas. La tecla presionada más reciente será almacenada en la variable key. Por la forma en que los sistemas operativos manejan la repetición de teclas, mantener presionada una tecla puede causar múltiples llamadas a keyTyped() (y también keyReleased()). La tasa de repetición es definida por el sistema operativo y según cómo cada computador está configurado. Los navegadores tienen distintos comportamientos por defecto asociados a distintos eventos gatillados por teclas. Para prevenir cualquier comportamiento por defecto para este evento, añade return false al final de este método.
keyTyped__description__1 = Because of how operating systems handle key repeats, holding down a key will cause multiple calls to <a href="#/p5/keyTyped">keyTyped()</a> (and <a href="#/p5/keyReleased">keyReleased()</a> as well). The rate of repeat is set by the operating system and how each computer is configured. Browsers may have different default behaviors attached to various key events. To prevent any default behavior for this event, add "return false" to the end of the method.
keyTyped__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyIsDown__description__0 = La función keyIsDown() comprueba si la tecla está presionada. Puede ser usada si tienes un objeto que se mueve, y quieres que varias teclas sean capaces de afectar este comportamiento de manera simultánea, como cuando mueves una imagen de forma diagonal. Puedes ingresar cualquier número representando el código de tecla keyCode de la tecla, o usar cualquier de los nombres de la variable keyCode.
keyIsDown__returns = el objeto p5
keyIsDown__params__code = Número: la tecla a buscar
movedX__description__0 = The variable movedX contains the horizontal movement of the mouse since the last frame
movedY__description__0 = The variable movedY contains the vertical movement of the mouse since the last frame
mouseX__description__0 = La variable de sistema mouseX siempre contiene la posición horizontal actual del ratón, relativa al origen (0, 0) del lienzo.
mouseY__description__0 = La variable de sistema mouseY siempre contiene la posición vertical actual del ratón, relativa al origen (0, 0) del lienzo.
pmouseX__description__0 = La variable de sistema pmouseX siempre contiene la posición horizontal actual del ratón, en el cuadro anterior al actual, relativa al origen (0, 0) del lienzo.
pmouseY__description__0 = La variable de sistema pmouseY siempre contiene la posición vertical actual del ratón, en el cuadro anterior al actual, relativa al origen (0, 0) del lienzo.
winMouseX__description__0 = La variable de sistema winMouseX siempre contiene la posición horizontal actual del ratón, relativa al origen (0, 0) de la ventana del navegador.
winMouseY__description__0 = La variable de sistema winMouseY siempre contiene la posición vertical actual del ratón, relativa al origen (0, 0) de la ventana del navegador.
pwinMouseX__description__0 = La variable de sistema pwinMouseX siempre contiene la posición horizontal actual del ratón, en el cuadro anterior al actual, relativa al origen (0, 0) de la ventana del navegador.
pwinMouseY__description__0 = La variable de sistema pwinMouseY siempre contiene la posición vertical actual del ratón, en el cuadro anterior al actual, relativa al origen (0, 0) de la ventana del navegador.
mouseButton__description__0 = P5.js automáticamente rastrea si el botón del ratón está presionado y cuál botón está presionado. El valor de la variable de sistema mouseButton es o LEFT, RIGHT o CENTER dependiendo de cual fue el último botón presionado. Advertencia: diferentes navegadores pueden diferir.
mouseIsPressed__description__0 = La variable boolean de sistema mouseIsPressed es verdadera (true) si el ratón está siendo presionado, y falsa (false) en caso contrario.
mouseMoved__description__0 = La función mouseMoved() es llamada cada vez que el ratón se mueve y un botón del ratón no está siendo presionado. Los navegadores pueden tener comportamientos por defecto asociados a distintos eventos del ratón. Para prevenir cualquier comportamiento por defecto, añade return false como última línea de este método.
mouseMoved__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseDragged__description__0 = La función mouseDragged() es llamada cada vez que el ratón se mueve y un botón del ratón está siendo presionado. Los navegadores pueden tener comportamientos por defecto asociados a distintos eventos del ratón. Para prevenir cualquier comportamiento por defecto, añade return false como última línea de este método.
mouseDragged__params__event = Object: (Optional) optional MouseEvent callback argument.
mousePressed__description__0 = La función mousePressed() es llamada cada vez que un botón del ratón está siendo presionado. La variable mouseButton (ver la referencia) puede ser usada para determinar cual botón está siendo presionado. Si no se define una función mousePressed(), la función touchStarted() será llamada en su reemplazo, si es que está definida. Los navegadores pueden tener comportamientos por defecto asociados a distintos eventos del ratón. Para prevenir cualquier comportamiento por defecto, añade return false como última línea de este método.
mousePressed__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseReleased__description__0 = La función mouseReleased() es llamada cada vez que un botón del ratón es soltado. Si no se define una función mouseReleased(), la función touchEnded() será llamada en su reemplazo, si es que está definida. Los navegadores pueden tener comportamientos por defecto asociados a distintos eventos del ratón. Para prevenir cualquier comportamiento por defecto, añade return false como última línea de este método.
mouseReleased__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseClicked__description__0 = La función mouseClicked() es llamada cada vez que un botón del ratón es presionado y luego soltado. Los navegadores pueden tener comportamientos por defecto asociados a distintos eventos del ratón. Para prevenir cualquier comportamiento por defecto, añade return false como última línea de este método.
mouseClicked__params__event = Object: (Optional) optional MouseEvent callback argument.
doubleClicked__description__0 = The <a href="#/p5/doubleClicked">doubleClicked()</a> function is executed every time a event listener has detected a dblclick event which is a part of the DOM L3 specification. The doubleClicked event is fired when a pointing device button (usually a mouse's primary button) is clicked twice on a single element. For more info on the dblclick event refer to mozilla's documentation here: <a href="https://developer.mozilla.org/en-US/docs/Web/Events/dblclick">https://developer.mozilla.org/en-US/docs/Web/Events/dblclick</a>
doubleClicked__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseWheel__description__0 = La función mouseWheel() es llamada cada vez que se detecta un evento de rueda de ratón vertical, ya sea gatillado por un ratón o por un touchpad. La propiedad event.delta retorna el monto que el ratón ha avanzado. Estos valores pueden ser positivos o negativos, dependiendo de la dirección de navegación (en OS X con natural scrolling, los signos son invertidos).  Los navegadores pueden tener comportamientos por defecto asociados a distintos eventos del ratón. Para prevenir cualquier comportamiento por defecto, añade return false como última línea de este método. Debido al soporte actual del evento wheel en Safari, la función podría solo funcionar si return false es incluido cuando se usa Safari.
mouseWheel__params__event = Object: (Optional) optional WheelEvent callback argument.
requestPointerLock__description__0 = The function <a href="#/p5/requestPointerLock">requestPointerLock()</a> locks the pointer to its current position and makes it invisible. Use <a href="#/p5/movedX">movedX</a> and <a href="#/p5/movedY">movedY</a> to get the difference the mouse was moved since the last call of draw. Note that not all browsers support this feature. This enables you to create experiences that aren't limited by the mouse moving out of the screen even if it is repeatedly moved into one direction. For example, a first person perspective experience.
exitPointerLock__description__0 = The function <a href="#/p5/exitPointerLock">exitPointerLock()</a> exits a previously triggered <a href="#/p5/requestPointerLock">pointer Lock</a> for example to make ui elements usable etc
touches__description__0 = The system variable touches[] contains an array of the positions of all current touch points, relative to (0, 0) of the canvas, and IDs identifying a unique touch as it moves. Each element in the array is an object with x, y, and id properties.
touches__description__1 = The touches[] array is not supported on Safari and IE on touch-based desktops (laptops).
touchStarted__description__0 = La función touchStarted() es llamada una vez, cada vez que un toque nuevo es registrado. Si la función touchStarted() no ha sido definida, la función mouseIsPressed() será llamada en su lugar, si es que está definida. Los navegadores tienen distintos comportamientos por defecto asociados a distintos eventos gatillados por toque. Para prevenir cualquier comportamiento por defecto para este evento, añade return false al final de este método.
touchStarted__params__event = Object: (Optional) optional TouchEvent callback argument.
touchMoved__description__0 = La función touchStarted() es llamada una vez, cada vez que es registrado el movimiento de un toque. Si la función touchMoved() no ha sido definida, la función mouseDragged() será llamada en su lugar, si es que está definida. Los navegadores tienen distintos comportamientos por defecto asociados a distintos eventos gatillados por toque. Para prevenir cualquier comportamiento por defecto para este evento, añade return false al final de este método.
touchMoved__params__event = Object: (Optional) optional TouchEvent callback argument.
touchEnded__description__0 = La función touchEnded() es llamada una vez, cada vez que un toque finaliza. Si la función touchEnded() no ha sido definida, la función mouseReleased() será llamada en su lugar, si es que está definida. Los navegadores tienen distintos comportamientos por defecto asociados a distintos eventos gatillados por toque. Para prevenir cualquier comportamiento por defecto para este evento, añade return false al final de este método.
touchEnded__params__event = Object: (Optional) optional TouchEvent callback argument.
createImage__description__0 = Crea una nueva p5.Image (el tipo de datos para almacenar imágenes). Esto provee un nuevo buffer de pixeles para jugar. Define el tamaño del buffer con los parámetros de ancho y altuar. .pixels da acceso a un arreglo conteniendo los valores de todos los pixeles en la ventana mostrada. Estos valores son números. Este arreglo es del tamaño (incluyendo un factor apropiado de pixelDensity) de la ventana mostrada x4, representando los valroes R, G, B, A en orden para cada pixel., moviendo de izquierda a derecha en cada fila, y luego bajando de columna. Ver .pixels para mayor información. Podría ser más simple usar set() y get(). Antes de acceder a los pixeles de una imagen, los datos deben ser cargados con la función loadPixels(). Después de que el arreglo de datos ha sido modificado, la función updatePixels() debe ejecutarse para actualizar los cambios.
createImage__description__1 = .<a href="#/p5.Image/pixels">pixels</a> gives access to an array containing the values for all the pixels in the display window. These values are numbers. This array is the size (including an appropriate factor for the <a href="#/p5/pixelDensity">pixelDensity</a>) of the display window x4, representing the R, G, B, A values in order for each pixel, moving from left to right across each row, then down each column. See .<a href="#/p5.Image/pixels">pixels</a> for more info. It may also be simpler to use <a href="#/p5.Image/set">set()</a> or <a href="#/p5.Image/get">get()</a>.
createImage__description__2 = Before accessing the pixels of an image, the data must loaded with the <a href="#/p5.Image/loadPixels">loadPixels()</a> function. After the array data has been modified, the <a href="#/p5.Image/updatePixels">updatePixels()</a> function must be run to update the changes.
createImage__returns = el objeto p5
createImage__params__width = Entero: ancho en pixeles
createImage__params__height = Entero: altura en pixeles
saveCanvas__description__0 = Graba el lienzo actual como una imagen. En Safari, esto abrirá la imagen en la ventana y el usuario deberá proveer su propio nombre de archivo. Otros navegadores o grabarán el archivo de inmediato, o abrirán una ventana de diálogo.
saveCanvas__params__selectedCanvas = Canvas seleccionado: una variable representando un canvas HTML5 específico (opcional)
saveCanvas__params__filename = String
saveCanvas__params__extension = String: jpg o png
saveFrames__description__0 = Captura una secuencia de cuadros que pueden ser usados para crear una película. Acepta una función callback. Por ejemplo, puedes querer mandar los cuadros a un servidor donde pueden ser almacenados o convertidos en una película. Si no se provee una función callback, el navegador abrirá varios diálogos tratando de descargar todas las imágenes que han sido creadas. Con una función callback provista, los datos de imagen no son grabados por defecto, sino que son pasados como argumento a la función callback como un arreglo de objetos, con el tamaño del arreglo siendo igual al número total de cuadros.
saveFrames__description__1 = Note that <a href="#/p5.Image/saveFrames">saveFrames()</a> will only save the first 15 frames of an animation. To export longer animations, you might look into a library like <a href="https://github.com/spite/ccapture.js/">ccapture.js</a>.
saveFrames__params__filename = String:
saveFrames__params__extension = String: jpg o png
saveFrames__params__duration = Número: duración en segundos para grabar los cuadros
saveFrames__params__framerate = Número: tasa de cuadros por segundo a grabar
saveFrames__params__callback = Función: una función callback que será ejecutada para manejar los datos de imagen. Esta función deberá aceptar un arreglo como argumento. El arreglo contendrá el número especificado de cuadros como objetos. Cada objeto tiene tres propiedades: datos de imagen imageData, nombre del archivo y extensión
loadImage__description__0 = Carga una imagen desde una ruta de archivo y crea un objeto p5.Image. La imagen puede no estar inmediatamente disponible para render. Si quieres asegurarte que esté lista antes de hacer algo con ella, ubica la función loadImage() dentro de preload(). También puedes proveer una función callback para manejar la imagen cuando esté lista. La ruta a la imagen debe ser relativa al archivo HTML de tu bosquejo. Cargar desde una URL u otra ubicación remota podría estar bloqueado por las opciones de seguridad del navegador.
loadImage__description__1 = The image may not be immediately available for rendering. If you want to ensure that the image is ready before doing anything with it, place the <a href="#/p5/loadImage">loadImage()</a> call in <a href="#/p5/preload">preload()</a>. You may also supply a callback function to handle the image when it's ready.
loadImage__description__2 = The path to the image should be relative to the HTML file that links in your sketch. Loading an image from a URL or other remote location may be blocked due to your browser's built-in security.
loadImage__description__3 = You can also pass in a string of a base64 encoded image as an alternative to the file path. Remember to add "data:image/png;base64," in front of the string.
loadImage__returns = el objeto p5
loadImage__params__path = String: ruta de la imagen a cargar
loadImage__params__successCallback = Función(p5.Image): función a ser llamada una vez que la imagen sea cargada. Le será pasado el objeto p5.Image
loadImage__params__failureCallback = Función(evento): llamada con el evento error si es que la carga de la imagen falla.
image__description__0 = Dibuja una imagen en el lienzo principal del bosquejo p5.js.
image__description__1 = This function can be used with different numbers of parameters. The simplest use requires only three parameters: img, x, and y—where (x, y) is the position of the image. Two more parameters can optionally be added to specify the width and height of the image.
image__description__2 = This function can also be used with all eight Number parameters. To differentiate between all these parameters, p5.js uses the language of "destination rectangle" (which corresponds to "dx", "dy", etc.) and "source image" (which corresponds to "sx", "sy", etc.) below. Specifying the "source image" dimensions can be useful when you want to display a subsection of the source image instead of the whole thing. Here's a diagram to explain further: <img src="assets/drawImage.png"></img>
image__params__img = p5.Image: la imagen a mostrar
image__params__x = Número: la coordenada x donde se ubicará la esquina superior de la imagen
image__params__y = Número: la coordenada y donde se ubicará la esquina superior de la imagen
image__params__width = Número: ancho de la imagen a dibujar
image__params__height = Número: altura de la imagen a dibujar
image__params__dx = Número: la coordenada x en el lienzo de destino donde se ubicará la esquina superior izquierda de la imagen
image__params__dy = Número: la coordenada y en el lienzo de destino donde se ubicará la esquina superior izquierda de la imagen
image__params__dWidth = Número: ancho de la imagen a dibujar en el lienzo de destino
image__params__dHeight = Número: altura de la imagen a dibujar en el lienzo de destino
image__params__sx = Número: la coordenada x de la esquina superior izquierda del subrectángulo de la imagen original a dibujar en el lienzo de destino
image__params__sy = Número: la coordenada y de la esquina superior izquierda del subrectángulo de la imagen original a dibujar en el lienzo de destino
image__params__sWidth = Número: el ancho del subrectángulo de la imagen original a dibujar en el lienzo de destino
image__params__sHeight = Número: la altura del subrectángulo de la imagen original a dibujar en el lienzo de destino
tint__description__0 = Define el valor de relleno para mostrar imágenes. Las imágenes pueden ser teñidas en colores específicos o hacerse transparentes al incluir un valor alpha. Para aplicar transparencia a una imagen sin afectar su color, usa blanco como color de teñido y especifica un valor alpha. Por ejemplo, tint(255, 128) hará una imagen 50% transparente (asumiendo el rango alpha por defecto entre 0 y 255, el que puede ser modificado con la función colorMode()). El valor del parámetro gris debe ser menor o igual al actual valor máximo según lo especificado por colorMode(). El valor máximo por defecto es 255.
tint__description__1 = To apply transparency to an image without affecting its color, use white as the tint color and specify an alpha value. For instance, tint(255, 128) will make an image 50% transparent (assuming the default alpha range of 0-255, which can be changed with <a href="#/p5/colorMode">colorMode()</a>).
tint__description__2 = The value for the gray parameter must be less than or equal to the current maximum value as specified by <a href="#/p5/colorMode">colorMode()</a>. The default maximum value is 255.
tint__params__v1 = Número|Arreglo: valor de gris, rojo o tinte (dependiendo del modo de color actual), o un arreglo de colores
tint__params__v2 = Número|Arreglo: valor de verde o saturación (dependiendo del modo de color actual)
tint__params__v3 = Número|Arreglo: valor de azul o brillo (dependiendo del modo de color actual)
tint__params__alpha = Número|Arreglo: opacidad del fondo
tint__params__value = String: a color string
tint__params__gray = Number: a gray value
tint__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
tint__params__color = p5.Color: the tint color
noTint__description__0 = Remueve el valor actual de relleno para mostrar imágenes y revierte a mostrar las imágenes con sus colores originales.
imageMode__description__0 = Define el modo de imagen. Modifica la ubicación desde la que las imágenes son dibujadas, por medio de cambiar la manera en que los parámetros dados a image() son interpretados. El modo por defecto es imageMode(CORNER), que interpreta los paráemtros segundo y tercero de image() como la posición de la esquina superior izquierda de la imagen. Si se dan dos parámetros adicionales, son usados para definir el ancho y la altura la imagen. imageMode(CORNERS) interpreta los paráemtros segundo y tercero de image() como la ubicación de una esquina, y los parámetros cuarto y quinto como la ubicación de la esquina opuesta. imageMode(CENTER) interpreta los parámetros segundo y tercero de image() como el punto central de la imagen. Si dos parámetros adicionales son especificados, son usados para definir el ancho y la altura de la imagen.
imageMode__description__1 = imageMode(CORNERS) interprets the second and third parameters of <a href="#/p5/image">image()</a> as the location of one corner, and the fourth and fifth parameters as the opposite corner.
imageMode__description__2 = imageMode(CENTER) interprets the second and third parameters of <a href="#/p5/image">image()</a> as the image's center point. If two additional parameters are specified, they are used to set the image's width and height.
imageMode__params__mode = Constante: puede ser CORNER, CORNERS, o CENTER
pixels__description__0 = <a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference /Global_Objects/Uint8ClampedArray' target='_blank'>Uint8ClampedArray</a> containing the values for all the pixels in the display window. These values are numbers. This array is the size (include an appropriate factor for <a href="#/p5/pixelDensity">pixelDensity</a>) of the display window x4, representing the R, G, B, A values in order for each pixel, moving from left to right across each row, then down each column. Retina and other high density displays will have more pixels[] (by a factor of pixelDensity^2). For example, if the image is 100x100 pixels, there will be 40,000. On a retina display, there will be 160,000.
pixels__description__1 = The first four values (indices 0-3) in the array will be the R, G, B, A values of the pixel at (0, 0). The second four values (indices 4-7) will contain the R, G, B, A values of the pixel at (1, 0). More generally, to set values for a pixel at (x, y): <pre><code class="language-javascript">let d = pixelDensity(); for (let i = 0; i < d; i++) {"{"}  for (let j = 0; j < d; j++) {"{"}  // loop over  index = 4 * ((y * d + j) * width * d + (x * d + i));  pixels[index] = r;  pixels[index+1] = g;  pixels[index+2] = b;  pixels[index+3] = a;  {"}"} {"}"}</code></pre>
pixels__description__2 = While the above method is complex, it is flexible enough to work with any pixelDensity. Note that <a href="#/p5/set">set()</a> will automatically take care of setting all the appropriate values in <a href="#/p5/pixels">pixels[]</a> for a given (x, y) at any pixelDensity, but the performance may not be as fast when lots of modifications are made to the pixel array.
pixels__description__3 = Before accessing this array, the data must loaded with the <a href="#/p5/loadPixels">loadPixels()</a> function. After the array data has been modified, the <a href="#/p5/updatePixels">updatePixels()</a> function must be run to update the changes.
pixels__description__4 = Note that this is not a standard javascript array. This means that standard javascript functions such as <a href="#/p5/slice">slice()</a> or <a href="#/p5/arrayCopy">arrayCopy()</a> do not work.
blend__description__0 = Copia una región de pixeles de una imagen a otra, usando un modo específico de mezcla para hacer la operación. Los modos disponibles de mezcla son: BLEND | DARKEST | LIGHTEST | DIFFERENCE | MULTIPLY| EXCLUSION | SCREEN | REPLACE | OVERLAY | HARD_LIGHT | SOFT_LIGHT | DODGE | BURN | ADD | NORMAL
blend__params__srcImage = p5.Image: imagen fuente
blend__params__sx = Entero: coordenada x de la esquina superior izquierda de la fuente
blend__params__sy = Entero: coordenada y de la esquina superior izquierda de la fuente
blend__params__sw = Entero: ancho de la imagen fuente
blend__params__sh = Entero: altura de la imagen fuente
blend__params__dx = Entero: coordenada x de la esquina superior izquierda del destino
blend__params__dy = Entero: coordenada y de la esquina superior izquierda del destino
blend__params__dw = Entero: ancho de la imagen destino
blend__params__dh = Entero: altura de la imagen destino
blend__params__blendMode = Constante: el modo de mezcla
copy__description__0 = Copia una región del lienzo a otra región del lienzo desde una imagen usada como el parámetro srcImage en el lienzo. Si la fuente y el destino no son del mismo tamaño, automáticamente redimensionará los pixeles de la fuente para calzar con la región especificada como destino.
copy__params__srcImage = p5.Image: imagen fuente
copy__params__sx = Entero: coordenada x de la esquina superior izquierda de la fuente
copy__params__sy = Entero: coordenada y de la esquina superior izquierda de la fuente
copy__params__sw = Entero: ancho de la imagen fuente
copy__params__sh = Entero: altura de la imagen fuente
copy__params__dx = Entero: coordenada x de la esquina superior izquierda de destino
copy__params__dy = Entero: coordenada y de la esquina superior izquierda de destino
copy__params__dw = Entero: ancho de la imagen de destino
copy__params__dh = Entero: altura de la imagen de destino
filter__description__0 = Aplica un filtro al lienzo. Las opciones posibles son: THRESHOLD, que convierte la imagen a pixeles blancos y negros dependiendo de si están arriba o abajo del umbral definido por el parámetro. El parámetro debe estar entre 0.0 (negro) y 1.0 (blanco). Si no se especifica ningún valor, el valor por defecto es 0.5. GRAY, convierte cualquier color en la imagen a un equivalente en la escala de grises, no tiene parámetros. OPAQUE, hace que el canal alpha sea totalmente opaco, no tiene parámetros. INVERT, hace que cada pixel tenga su valor inverso, no tiene parámetros. POSTERIZE, limita cada canal de la imagen a un número de colores especificado como parámetro. El parámetro puede definir entre 2 y 255 valores, pero los resultados más notorios se dan con valores bajos. BLUR, hace que la imagen sea borrosa con un proceso Gaussiano, siendo el parámetro el nivel de cuán borroso es el resultado, si no se usa ningún parámetro, el parámetro por defecto es 1, a mayores valores es más borroso el resultado. ERODE, reduce las áreas claras, no tiene parámetros. DILATE, aumenta las áreas claras, no tiene parámetros.
filter__description__1 = THRESHOLD Converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. The parameter must be between 0.0 (black) and 1.0 (white). If no level is specified, 0.5 is used.
filter__description__2 = GRAY Converts any colors in the image to grayscale equivalents. No parameter is used.
filter__description__3 = OPAQUE Sets the alpha channel to entirely opaque. No parameter is used.
filter__description__4 = INVERT Sets each pixel to its inverse value. No parameter is used.
filter__description__5 = POSTERIZE Limits each channel of the image to the number of colors specified as the parameter. The parameter can be set to values between 2 and 255, but results are most noticeable in the lower ranges.
filter__description__6 = BLUR Executes a Gaussian blur with the level parameter specifying the extent of the blurring. If no parameter is used, the blur is equivalent to Gaussian blur of radius 1. Larger values increase the blur.
filter__description__7 = ERODE Reduces the light areas. No parameter is used.
filter__description__8 = DILATE Increases the light areas. No parameter is used.
filter__description__9 = filter() does not work in WEBGL mode. A similar effect can be achieved in WEBGL mode using custom shaders. Adam Ferriss has written a <a href="https://github.com/aferriss/p5jsShaderExamples" target='_blank'>selection of shader examples</a> that contains many of the effects present in the filter examples.
filter__params__filterType = Constante:
filter__params__filterParam = Número: un parámetro opcional único a cada filtro, ver más arriba
get__description__0 = Retorna un arreglo de valores RGBA por cada pixel o toma una sección de una imagen. Si no especifican parámetros, se retorna la imagen entera. Usa los parámetros x e y para obtener el valor de un pixel. Toma una sección de la ventana mostrada si especificas los parámetros adicionales w y h. Cuando se obtiene una imagen, los parámetros x e y definen las coordenadas de la esquina superior izquierda de la imagen, sin importar el actual mode imagen definido por imageMode(). Si el pixel solicitado está fuera de la imagen, se retorna el valor [0, 0, 0, 255]. Para obtener los números escalados según los rangoes de color actuales y tomar en cuenta el modo de color según colorMode(), usa getColor() en vez de get(). Tomar el valor de un pixel con get(x, y) es fácil, pero no tan rápido como tomar los datos directamente desde pixels[]. La instrucción equivalente a get(x, y) usando pixels[] con densidad de pixeles d es  var off = (y width + x) d * 4; [pixels[off], pixels[off+1], pixels[off+2], pixels[off+3]]. Ver la referencia de pixels[] para mayor información.
get__description__1 = Returns an array of [R,G,B,A] values for any pixel or grabs a section of an image. If no parameters are specified, the entire image is returned. Use the x and y parameters to get the value of one pixel. Get a section of the display window by specifying additional w and h parameters. When getting an image, the x and y parameters define the coordinates for the upper-left corner of the image, regardless of the current <a href="#/p5/imageMode">imageMode()</a>.
get__description__2 = Getting the color of a single pixel with get(x, y) is easy, but not as fast as grabbing the data directly from <a href="#/p5/pixels">pixels[]</a>. The equivalent statement to get(x, y) using <a href="#/p5/pixels">pixels[]</a> with pixel density d is <pre><code class="language-javascript">let x, y, d; // set these to the coordinates let off = (y * width + x) * d * 4; let components = [  pixels[off],  pixels[off + 1],  pixels[off + 2],  pixels[off + 3] ]; print(components);</code></pre>
get__description__3 = See the reference for <a href="#/p5/pixels">pixels[]</a> for more information.
get__description__4 = If you want to extract an array of colors or a subimage from an p5.Image object, take a look at <a href="#/p5.Image/get">p5.Image.get()</a>
get__returns = Arreglo|p5.Image: valores de pixel en la posición (x, y) en formato arreglo RGBAs o p5.Image
get__params__x = Número: coordenada x del pixel
get__params__y = Número: coordenada y del pixel
get__params__w = Número: ancho
get__params__h = Número: altura
loadPixels__description__0 = Carga los datos de los pixeles en pantalla al arreglo pixels[]. Esta función siempre debe ser llamada antes de leer o escribir en el arreglo pixels[]
set__description__0 = Cambia el color de cualquier pixel, o pone una imagen directamente en la ventana. Los parámetros x e y especifican el pixel a cambiar y c especifica el valor del color. Puede ser un objeto p5.Color o un arreglo de pixeles RGBA. También puede ser un valor único en escala de grises. Cuando se define una imagen, los parámetros x e y definen las coordenadas de la esquina superior izquierda de la imagen, sin importar el modo actual de imagen según imageMode(). Después de usar set(), debes llamar a updatePixels()' para que tus cambios aparezcan. Esta función debería ser llamada una vez que todos los pixeles han sido definidos. Definir el color de un solo pixel con set(x, y) es fácil, pero es tan rápido como poner los datos directamente en el arreglo pixels[]. Definir los valores de pixels[] directamente puede ser complicado cuando se trabaja con un monitor retina, pero tendrá un mejor desempeño cuando muchos pixeles necesiten ser definidos directamente en cada iteración. Ver la referencia de pixels[] para mayor información.
set__description__1 = After using <a href="#/p5/set">set()</a>, you must call <a href="#/p5/updatePixels">updatePixels()</a> for your changes to appear. This should be called once all pixels have been set, and must be called before calling .<a href="#/p5/get">get()</a> or drawing the image.
set__description__2 = Setting the color of a single pixel with set(x, y) is easy, but not as fast as putting the data directly into <a href="#/p5/pixels">pixels[]</a>. Setting the <a href="#/p5/pixels">pixels[]</a> values directly may be complicated when working with a retina display, but will perform better when lots of pixels need to be set directly on every loop. See the reference for <a href="#/p5/pixels">pixels[]</a> for more information.
set__params__x = Número: coordenada x del pixel
set__params__y = Número: coordenada y del pixel
set__params__c = Número|Arreglo|Objeto: inserta un valor en escala de grises | un arreglo de pixeles | un objeto p5.Color | un objeto p5.Image a copiar
updatePixels__description__0 = Actualiza la ventana mostrada con los datos del arreglo pixels[]. Se usa en conjunto con loadPixels(). Si solo estás leyendo pixeles desde el arreglo, no hay necesidad de llamar a updatePixels() - actualizar es solo necesario para aplicar cambios. updatePixels() debe ser llamada cada vez que el arreglo de pixeles es manipulado o si se llama a la función set().
updatePixels__params__x = Número: coordenada x de la esquina superior izquierda de la región a actualizar
updatePixels__params__y = Número: coordenada y de la esquina superior izquierda de la región a actualizar
updatePixels__params__w = Número: ancho de la región a actualizar
updatePixels__params__h = Número: altura de la región a actualizar
loadJSON__description__0 = Carga un archivo JSON desde un archivo o una URL, y retorna un objeto o un arreglo. Este método es asíncrono, lo que significa que puede que no termine antes que se ejecute la siguiente línea en tu bosquejo.
loadJSON__description__1 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. JSONP is supported via a polyfill and you can pass in as the second argument an object with definitions of the json callback following the syntax specified <a href="https://github.com/camsong/ fetch-jsonp">here</a>.
loadJSON__description__2 = This method is suitable for fetching files up to size of 64MB.
loadJSON__returns = Objeto|Arreglo: datos JSON
loadJSON__params__path = String: nombre de archivo o URL a cargar
loadJSON__params__jsonpOptions = Object: (Optional) options object for jsonp related settings
loadJSON__params__datatype = Función: función a ser ejecutada después de que loadJSON() finalice, los datos son pasados como primer argumento
loadJSON__params__callback = Función: función a ser ejecutada si es que hay un error, la respuesta es pasada como primer argumento
loadJSON__params__errorCallback = String: json o jsonp
loadStrings__description__0 = Lee los contenidos de un archivo y crea un arreglo de Strings de sus líneas individuales. Si el nombre del archivo es usado como parámetro, como en el ejemplo anterior, el archivo debe estar ubicado en el directorio del bosquejo. Alternativamente, el archivo puede ser cargado desde cualquier lugar del computador local usando una dirección absoluta (empieza con / en Unix y Linux, o una letra representando el disco en Windows), o el parámetro de nombre de archivo puede ser una URL donde esté el archivo dentro de una red. Este método es asíncrono, lo que significa que puede ser que su ejecución no termine antes de que se ejecute la siguiente línea del bosquejo.
loadStrings__description__1 = Alternatively, the file maybe be loaded from anywhere on the local computer using an absolute path (something that starts with / on Unix and Linux, or a drive letter on Windows), or the filename parameter can be a URL for a file found on a network.
loadStrings__description__2 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed.
loadStrings__description__3 = This method is suitable for fetching files up to size of 64MB.
loadStrings__returns = Arreglo: un arreglo de Strings
loadStrings__params__filename = String: nombre de archivo o URL a cargar
loadStrings__params__callback = Función: función a ser ejecutada después de que loadStrings() finalice, el arreglo es pasado como primer argumento
loadStrings__params__errorCallback = Función: función a ser ejecutada si es que hay un error, la respuesta es pasada como primer argumento
loadTable__description__0 = Lee los contenidos de un archivo o URL y crea un objeto p5.Table con sus valores. Si un archivo es especificado, debe ser ubicado en el directorio data del bosquejo. El parámetro de nombre de archivo puede también ser una URL de un archivo en línea. Por defecto, se asume que el archivo está separado por comas (formato CSV), La tabla sólo busca una fila de encabezado si es que se incluye la opción header. Las opciones posibles incluyen: csv: se procesan los datos como valores separados por comas, tsv: se procesan los datos como separados por tabulación, header: la tabla tiene una fila de encabezados (títulos). Si se incluyenn múltiples opciones, se deben ingresar como parámetros separados por comas. Todos los archivos son cargados y grabados usando codificación UTF-8. Este método es asíncrono, lo que significa que su ejecución puede no haber terminado antes de que se ejecute la siguiente línea del bosquejo. Si se llama a loadTable() dentro de preload() se garantiza que se complete la operación antes de que setup() y draw() sean llamadas. Fuera de preload(), puedes suplir una función callback para manejar el objeto.
loadTable__description__1 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. Calling <a href="#/p5/loadTable">loadTable()</a> inside <a href="#/p5/preload">preload()</a> guarantees to complete the operation before <a href="#/p5/setup">setup()</a> and <a href="#/p5/draw">draw()</a> are called. Outside of <a href="#/p5/preload">preload()</a>, you may supply a callback function to handle the object:
loadTable__description__2 = All files loaded and saved use UTF-8 encoding. This method is suitable for fetching files up to size of 64MB.
loadTable__returns = Objeto Table conteniendo los datos
loadTable__params__filename = String: nombre de archivo o URL a cargar
loadTable__params__extension = String: (Optional) parse the table by comma-separated values "csv", semicolon-separated  values "ssv", or tab-separated values "tsv"
loadTable__params__header = String: (Optional) "header" to indicate table has header row
loadTable__params__callback = String|Strings: header, csv, tsv
loadTable__params__errorCallback = Función: función a ser ejecutada después de que loadTable() finalice, el arreglo es pasado como primer argumento. Si es exitosa, el objeto Table es pasado como primer argumento, en caso contrario se pasa el valor boolean false.
loadXML__description__0 = Lee los contenidos de un archivo y crea un objeto XML con sus valores. Si el nombre del archivo es usado como parámetro, el archivo debe estar ubicado en el directorio del bosquejo. Alternativamente, el archivo puede ser cargado desde cualquier lugar del computador local usando una dirección absoluta (que empieza con / en Unix y Linux, o con una letra que simbolice el disco duro en Windows). También se puede usar como parámetro de nombre de archivo una URL para un archivo en una red. Este método es asíncrono, lo que significa que su ejecución puede no estar completa antes de que se ejecute la siguiente línea de código en el bosquejo. Llamar a loadXML() dentro de preload() garantiza que la operación se complete antes de que setup() y draw() sean llamados. Fuera de preload(), puedes suplir una función callBack para manejar el objeto.
loadXML__description__1 = Alternatively, the file maybe be loaded from anywhere on the local computer using an absolute path (something that starts with / on Unix and Linux, or a drive letter on Windows), or the filename parameter can be a URL for a file found on a network.
loadXML__description__2 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. Calling <a href="#/p5/loadXML">loadXML()</a> inside <a href="#/p5/preload">preload()</a> guarantees to complete the operation before <a href="#/p5/setup">setup()</a> and <a href="#/p5/draw">draw()</a> are called.
loadXML__description__3 = Outside of <a href="#/p5/preload">preload()</a>, you may supply a callback function to handle the object.
loadXML__description__4 = This method is suitable for fetching files up to size of 64MB.
loadXML__returns = objeto XML que contiene los datos
loadXML__params__filename = String: nombre de archivo o URL a cargar
loadXML__params__callback = Función: función a ser ejecutada después de que loadXML() finalice, el objeto XML es pasado como primer argumento
loadXML__params__errorCallback = Función: la función a ser ejecutada si es que hay un error, la respuesta es pasada como primer argumento
loadBytes__description__0 = This method is suitable for fetching files up to size of 64MB.
loadBytes__returns = Object: an object whose 'bytes' property will be the loaded buffer
loadBytes__params__file = String: name of the file or URL to load
loadBytes__params__callback = Function: (Optional) function to be executed after <a href="#/p5/loadBytes">loadBytes()</a>  completes
loadBytes__params__errorCallback = Function: (Optional) function to be executed if there  is an error
httpGet__description__0 = Método para ejecutar una solicitud HTTP GET. Si no se especifica el tipo de datos, p5 tratará de adivinar basándose en la URL, usando texto por defecto.
httpGet__returns = el objeto p5
httpGet__params__path = String: nombre del archivo o URL a cargar
httpGet__params__datatype = Objeto: parámetro de datos pasados con la solicitud enviada
httpGet__params__data = String: json, jsonp, xml o text
httpGet__params__callback = Función: función a ser ejecutada después de que httpGet() finalice, los datos son pasados como primer argumento
httpGet__params__errorCallback = Función: función a ser ejecutada si es que hay un error, la respuesta es pasada como primer argumento
httpPost__description__0 = Método para ejecutar una solicitud HTTP POST. Si no se especifica el tipo de datos, p5 tratará de adivinar basándose en la URL, usando texto por defecto.
httpPost__returns = el objeto p5
httpPost__params__path = String: nombre del archivo o URL a cargar
httpPost__params__datatype = Objeto: parámetro de datos pasados con la solicitud enviada
httpPost__params__data = String: json, jsonp, xml o text
httpPost__params__callback = Función: función a ser ejecutada después de que httpPost() finalice, los datos son pasados como primer argumento
httpPost__params__errorCallback = Función: función a ser ejecutada si es que hay un error, la respuesta es pasada como primer argumento
httpDo__description__0 = Método para ejecutar una solicitud HTTP. Si no se especifica el tipo de datos, p5 tratará de adivinar basándose en la URL, usando texto por defecto. También puedes pasar un objeto especificando todos los parámetros de la solicitud siguiendo los ejemplos dentro de las llamadas de reqwest()
httpDo__returns = el objeto p5
httpDo__params__path = String: nombre del archivo o URL a cargar
httpDo__params__method = Objeto: parámetro de datos pasados con la solicitud enviada
httpDo__params__datatype = String: json, jsonp, xml o text
httpDo__params__data = Función: función a ser ejecutada después de que httpDo() finalice, los datos son pasados como primer argumento
httpDo__params__callback = Función: función a ser ejecutada si es que hay un error, la respuesta es pasada como primer argumento
httpDo__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
httpDo__params__options = Object: Request object options as documented in the  "fetch" API <a href="https://developer.mozilla.org/en/docs/Web/API/Fetch_API">reference</a>
createWriter__returns = p5.PrintWriter:
createWriter__params__name = String: name of the file to be created
createWriter__params__extension = String (Optional)
save__description__0 = Graba una imagen, text, json, csv, wav o html. Hace que la descarga ocurra en el computador cliente. Notar que no es recomendado llamar a save() dentro de draw() si está en bucle, porque la función save() abrirá una ventana de diálogo en cada cuadro. El comportamiento por defecto es grabar el lienzo como una imagen. Puedes opcionalmente especificar un nombre de archivo. Por ejemplo: TODO. Alternativamente, el primer parámetro puede ser un puntero a un lienzo p5.Element, un arreglo de Strings, un arreglo de JSON, un objeto JSON, un p5.Table, un p5.Image, o un p5.SoundFile (requiere p5.sound). El segundo parámetro es el nombre del archivo (incluyendo la extensión). El tercer parámetro es para opciones específicas a este tipo de objeto. Este método grabará un archivo que se austa a los parámetros dados. Por ejemplo: TODO.
save__params__objectOrFilename = Objeto|String: si se provee un nombre de archivo, se grabará el lienzo como una imagen con la extensión png o jpg, dependiendo del nombre del archivo. Si se provee un objeto, se grabará dependiendo del objeto y el nombre del archivo (ver los ejemplos anteriores)
save__params__filename = String: Si se provee un objeto como el primer parámetro, entonces el segundo parámetro indica el nombre del archivo, y debe incluir la extensión apropiada (ver los ejemplos anteriores).
save__params__options = Boolean|String: opciones adicionales depndiendo del tipo de archivo. Por ejemplo, cuando se graba un archivo JSON, true indica que la salida será optimizada según el tamaño del archivo, en vez de por legibilidad.
saveJSON__description__0 = Escribe los contenidos de un arreglo o un objeto JSON a un archivo .json. El proceso de grabación del archivo y su ubicación pueden variar entre navegadores web.
saveJSON__params__json = Arreglo|Objeto:
saveJSON__params__filename = String
saveJSON__params__optimize = Boolean: si es verdadero (true), remueve los saltos de línea del archivo de salida para optimizar el tamaño del archivo, en desmedro de la legibilidad.
saveStrings__description__0 = Escribe un arreglo de Strings a un archivo de texto, una línea por String. El proceso de grabación del archivo y su ubicación pueden variar entre navegadores web.
saveStrings__params__list = Arreglo: arreglo de Strings a ser escrito
saveStrings__params__filename = String: nombre del archivo de salida
saveStrings__params__extension = String: (Optional) the filename's extension
saveStrings__params__isCRLF = Boolean: (Optional) if true, change line-break to CRLF
saveTable__description__0 = Escribe los contenidos de un objeto Table a un archivo. Por defecto es un archivo de texto con valores separados por coma (csv), pero también puede usar separación por tabulación (tsv), o generar una tabla HTML (html). El proceso de grabación del archivo y su ubicación pueden variar entre navegadores web.
saveTable__params__Table = p5.Table: the <a href="#/p5.Table">Table</a> object to save to a file
saveTable__params__filename = String: el nombre del archivo en el que Table será grabado
saveTable__params__options = String: puede ser tsv, csv o html.
abs__description__0 = Calcula el valor absoluto (magnitud) de un número. Usa Math.abs(). El valor absoluto de un número es siempre positivo.
abs__returns = Número: valor absoluto del número dado
abs__params__n = Número: número a computar
ceil__description__0 = Calcula el entero más cercano que es mayor o igual que el valor del parámetro. Usa Math.ceil(). Por ejemplo, ceil(9.03) retorna el valor 10.
ceil__returns = Número: número redondeado hacia arriba
ceil__params__n = Número: número a redondear
constrain__description__0 = Restringe un valor a estar entre un valor mínimo y uno máximo.
constrain__returns = Número: número restringido
constrain__params__n = Número: número a restringir
constrain__params__low = Número: límite mínimo
constrain__params__high = Número: límite máximo
dist__description__0 = Calcula la distancia entre dos puntos
dist__returns = Número: distancia entre los dos puntos
dist__params__x1 = Número: la coordenada x del primer punto
dist__params__y1 = Número: la coordenada y del primer punto
dist__params__x2 = Número: la coordenada x del segundo punto
dist__params__y2 = Número: la coordenada y del segundo punto
dist__params__z1 = Número: la coordenada z del primer punto
dist__params__z2 = Número: la coordenada z del segundo punto
exp__description__0 = Retorna el número de Euler (2.71828...) elevado al parámetro n. Usa Math.exp().
exp__returns = e^n
exp__params__n = Número: exponente a elevar
floor__description__0 = Calcula el valor entero más cercano que es menor o igual al parámetro. Usa Math.floor().
floor__returns = Número: número redondeado hacia abajo
floor__params__n = Número: número a ser redondeado hacia abajo
lerp__description__0 = Calcula un número entre dos números a un incremento específico. El parámetro amt es la cantidad a interpolar entre los dos valores donde 0.0 es igual al primer punto, 0.1 está muy cerca del primer punto, 0.5 está a medio camino entre ambos números, etc. La función lerp es conveniente para crear movimiento a lo largo de un camino recto y para dibujar líneas punteadas.
lerp__returns = Número: valor interpolado
lerp__params__start = Número: primer valor
lerp__params__stop = Número: segundo valor
lerp__params__amt = Número: número entre 0.0 y 1.0
log__description__0 = Calcula el logaritmo natural (logaritmo con base e) de un número. Esta función espera que el parámetro n sea de un valor más grande que 0.0. Usa Math.log().
log__returns = Número: logaritmo naturla de n
log__params__n = Number: number greater than 0
mag__description__0 = Calcula la magnitud (o tamaño) de un vector. Un vector es una dirección en el espacio comúnmente usada en gráfica computacional y álgebra lineal. Como no tiene posición de inicio, la magnitud del vector puede ser pensada como la distancia entre la coordenada 0,0 a su valor x,y. Por lo tanto, mag() es un atajo a escribir dist(0, 0, x, y).
mag__returns = Número: magnitud del vector entre (0, 0) y (a, b)
mag__params__a = Número: primer valor
mag__params__b = Número: segundo valor
map__description__0 = Escala un nombre de un rango a otro rango. En el primer ejemplo anterior, el número 25 es convertido de un valor en el rango entre 0 y 100 a un valor cuyo rango está entre el borde izquierdo de la ventana (0) y el borde derecho (ancho).
map__description__1 = In the first example above, the number 25 is converted from a value in the range of 0 to 100 into a value that ranges from the left edge of the window (0) to the right edge (width).
map__returns = Número: número escalado
map__params__value = Número: el valor a ser convertido
map__params__start1 = Número: límite inferior del rango actual
map__params__stop1 = Número: límite superior del rango actual
map__params__start2 = Número: límite inferior del rango deseado
map__params__stop2 = Número: límite superior del rango deseado
map__params__withinBounds = Boolean: (Optional) constrain the value to the newly mapped range
max__description__0 = Determina el valor más grande en una secuencia de números, y luego retorna ese valor. max() acepta cualquier número de parámetros tipo número, o un arreglo de cualquier largo.
max__returns = Número: número máximo
max__params__n0 = Number: Number to compare
max__params__n1 = Number: Number to compare
max__params__nums = Número|Arreglo: números a comparar
min__description__0 = Determina el valor más pequeño en una secuencia de números, y luego retorna ese valor. max() acepta cualquier número de parámetros tipo número, o un arreglo de cualquier largo.
min__returns = Número: número mínimo
min__params__n0 = Number: Number to compare
min__params__n1 = Number: Number to compare
min__params__nums = Número|Arreglo: números a comparar
norm__description__0 = Normaliza un número de un rango a otro rango entre 0 y 1. Es idéntico a map(value, low, high, 0, 1). Los números fuera del rango no son saturados a 0 o 1, porque los números fuera de rango son muchas veces intencionales y útiles (ver el segundo ejemplo más arriba)
norm__returns = Número: número normalizado
norm__params__value = Número: valor entrante a ser normalizado
norm__params__start = Número: límite inferior del rango actual
norm__params__stop = Número: límite superior del rango actual
pow__description__0 = Facilita las expresiones exponenciales. La función pow() es una manera eficiente de multiplicar números po sí mismos (o sus recíprocos) en grandes cantidades. Por ejemplo, pow(3, 5) es equivalente a la expresión 3*3*3*3*3 y pow (3, -5) es equivalente a 1/3*3*3*3*3. Usa Math.pow().
pow__returns = n^e
pow__params__n = Número: base de la expresión exponencial
pow__params__e = Número: potencia a la que se eleva la base
round__description__0 = Calcula el entero más cercano al parámetro n. Por ejemplo, round(133.8) retorna el valor 134. Usa la función Math.round().
round__returns = Número: número redondeado
round__params__n = Número: número a redondear
round__params__decimals = Number: (Optional) number of decimal places to round to, default is 0
sq__description__0 = Eleva al cuadrado un número (lo multiplica por sí mismo), El resultado es siempre un número positivo, porque multiplicar dos números negativos siempre resulta en un número positivo.
sq__returns = Número: número elevado al cuadrado
sq__params__n = Número: número a elevar al cuadrado
sqrt__description__0 = Calcula la raíz cuadrada de un número. La raíz cuadrada de un número es siempre positiva, aunque puede haber una raíz cuadrada válida que sea negativa. La raíz cuadrada s de un número a es tal que s*s = a. Es lo opuesto a elevar al cuadrado. Usa Math.sqrt().
sqrt__returns = Número: raíz cuadrada del número
sqrt__params__n = Número: número no negativo al que se le calcula la raíz cuadrada
fract__description__0 = Calculates the fractional part of a number.
fract__returns = Number: fractional part of x, i.e, {"{"}x{"}"}
fract__params__num = Number: Number whose fractional part needs to be found out
createVector__description__0 = Crea un nuevo objeto p5.Vector (el tipo de datos para almacenar vectores). Esto provee un vector de dos o tres dimensiones, específicamente un vector euclideano (también conocido como geométrico). Un vector es una entidad que tiene tanto magnitud como dirección.
createVector__returns = el objeto p5
createVector__params__x = Número: componente x del vector
createVector__params__y = Número: componente y del vector
createVector__params__z = Número: componente z del vector
noise__description__0 = Retorna el valor del ruido Perlin en las coordenadas específicas. El ruido Perlin es un generador de secuencias aleatorias produciendo una sucesión de números más naturalmente ordenada y armónica, en comparación con la función estándar random(). Fue inventada por Ken Perlin en los 1980s y ha sido usada desde entonces en aplicaciones gráficas para producir texturas procedurales, movimiento natural, figuras, terrenos, etc. La principal diferencia con la función random() es definida en una espacio infinito n-dimensional donde cada par de coordenadas corresponde a un valor fijo semi-aleatorio (fijado solo durante el tiempo de vida del programa; ver la función noiseSeed()). p5.js puede calcular ruido 1D, 2D y 3D, dependiendo del número de coordenadas dado. El valor resultante siempre estará entre 0.0 y 1.0. El valor de ruido puede ser animado moviéndose a través del espacio del ruido como fue demostrado en el ejemplo superior. Las dimensiones segunda y tercera también pueden ser interpretadas como tiempo. El ruido está estructurado de forma similar a una señal de audio, con respecto al uso de la función de las frecuencias. De forma similar al conecpto de armónicas en física, el ruido Perlin es calculado a lo largo de varias octavas que se han sumado para dar forma al resultado final. Otra manera de ajustar el caracter de la secuencia resultante es la escala de las coordenadas de entrada. Como la función trabaja en un espacio infinito, el valor de las coordenadas no importa como tal, solo la distancia entre las coordenadas sucesivas importa (por ejemplo: cuando se usa noise() dentro de un bucle). Como regla general, a menor la diferencia entre coordenadas, más suave es el ruido resultante. Pasos entre 0.005 y 0.03 funcionan mejor para la mayor parte de las aplicaciones, pero esto diferirá dependiendo del uso.
noise__returns = valor de ruido Perlin (entre 0 y 1) en las coordenadas especificadas
noise__params__x = Número: coordenada x en el espacio del ruido
noise__params__y = Número: coordenada y en el espacio del ruido
noise__params__z = Número: coordenada z en el espacio del ruido
noiseDetail__description__0 = Ajusta el caracter y nivel de detalle producido por la función de ruido Perlin. Similar al concepto de armónicas en física, el ruido es calculado a lo largo de varias octavas. Las octavas más graves contribuyen de forma más significativa a la señal de salida y como define la intensidad general del ruido, mientras que las octavas más altas crean detalles más finos en la secuencia de ruido. Por defecto, el ruido es calculado a lo largo de 4 octavas, con cada octava contribuyendo exactamente la mitad que su predecesora, partiendo con una intensidad de 50% para la primera octava. Este tamaño de caída puede ser cambiado al añadir un parámetro adicional a la función. Por ejemplo, un factor de caída de 75% significa que cada octava tendrá un 75% de impacto (25% menos) que la octava anterior. Cualquier valor entre 0.0 y 1.0 es válido, sin embargo nota que valores superiores a 0.5 pueden resultar en que noise() retorne valores mayores a 1.0. Al cambiar estos parámetros, la señal creada por noise() puede ser adaptada para calzar con necesidades y características específicas.
noiseDetail__params__lod = Número: número de octavas a ser usadas por el ruido
noiseDetail__params__falloff = Número: factor de caída para cada octava
noiseSeed__description__0 = Define el valor semilla para la función noise(). Por defecto, noise() produce diferentes resultados cada vez que el programa es ejecutado. Defines el parámetro value a una constante para que retorne la misma secuencia de números pseudo-aleatorios cada vez que el programa es ejecutado
noiseSeed__params__seed = Número: el valor semilla
randomSeed__description__0 = Define la semilla para la función random(). Por defecto, la función random() produce diferentes resultados cada vez que el programa es ejecutado. Definir el parámetro semilla como una constante hace que retorne la misma secuencia de números pseudo-aleatorios cada vez que el programa es ejecutado.
randomSeed__description__1 = By default, <a href="#/p5/random">random()</a> produces different results each time the program is run. Set the seed parameter to a constant to return the same pseudo-random numbers each time the software is run.
randomSeed__params__seed = Número: el valor semilla
random__description__0 = Retorna un número aleaotorio de tipo float (punto flotante). Acepta 0, 1 o 2 argumentos. Si no se le da un argumento, retorna un número aleatorio entre 0 y 1 (sin incluir 1). Si se da un argumento y es un número, retorna un número aleatorio entre 0 y hasta (pero sin incluir) el parámetro. Si se da un argumento y es un arreglo, retorna una elemento al azar del arreglo. Si se dan dos argumentos, retorna un número aleatorio entre el primer argumento y hasta (pero sin incluir) el segundo argumento.
random__description__1 = Takes either 0, 1 or 2 arguments.
random__description__2 = If no argument is given, returns a random number from 0 up to (but not including) 1.
random__description__3 = If one argument is given and it is a number, returns a random number from 0 up to (but not including) the number.
random__description__4 = If one argument is given and it is an array, returns a random element from that array.
random__description__5 = If two arguments are given, returns a random number from the first argument up to (but not including) the second argument.
random__returns = Número: el número aleatorio o un elemento aleatorio de un conjunto de opciones
random__params__min = Número: el límite inferior (inclusivo)
random__params__max = Número: el límite superio (exclusivo)
random__params__choices = Arreglo: el arreglo del cual se elige
randomGaussian__description__0 = Retorna un número aleatorio ajjustado a una distribución Gaussiana o normal. No existe teóricamente un valor mínimo o máximo que la función randomGaussian() pueda retornar. En vez de eso, existe solo una muy baja probabilidad de retornar valores lejos de la media, y una alta probabilidad de retornar números cercanos a la media. Acepta 0, 1 o 2 argumentos. Si no tiene argumentos, retorna una media de 0 y una desviación estándar de 1. Si tiene un argumento, el argumento es la media (y la desviación estándar es 1). Si tiene dos argumentos, el primero es la media y el segundo es la desviación estándar.
randomGaussian__returns = el número aleatorio
randomGaussian__params__mean = Número: la media
randomGaussian__params__sd = Número: la desviación estándar
acos__description__0 = El inverso de la función cos(), retorna el arcocoseno de un valor. Esta función espera valores entre -1 y 1 y los valores retornados están en el rango entre 0 y PI (3.1415927).
acos__returns = Número: el arcocoseno del valor
acos__params__value = Número: el valor al que se aplica arcocoseno
asin__description__0 = El inverso de la función sin(), retorna el arcoseno de un valor. Esta función espera valores entre -1 y 1 y los valores retornados están en el rango entre -PI/2  y PI/2 .
asin__returns = Número: el arcoseno del valor
asin__params__value = Número: el valor al que se aplica arcoseno
atan__description__0 = El inverso de la función tan(), retorna el arcotangente de un valor. Esta función espera valores entre -Infinito e Infinito (exclusivo) y los valores retornados están en el rango entre -PI/2  y PI/2 .
atan__returns = Número: el arcotangente del valor
atan__params__value = Número: el valor al que se aplica arcotangente
atan2__description__0 = Calcula el ángulo (en radianes) desde un punto específico al origen, medido desde el eje x positivo. Los valores retornados son de tipo float entre  -PI/2  y PI/2. La función atan2() es más frecuentemente usada para orientar figuras figuras geométricas según la posición del cursor. Nota: la coordenada y del punto es el primer parámetro, y la coordenada x es el segundo parámetro, debido a la estructura para calcular la tangente.
atan2__description__1 = Note: The y-coordinate of the point is the first parameter, and the x-coordinate is the second parameter, due the the structure of calculating the tangent.
atan2__returns = Número: el arcotangente del punto dado
atan2__params__y = Número: coordenada y del punto
atan2__params__x = Número: coordenada x del punto
cos__description__0 = calcula el coseno de un ángulo. Esta función toma en cuenta el modo actual de ángulo según angleMode(). Los valores son retornados en el rango entre -1 y 1.
cos__returns = Número: el coseno del ángulo
cos__params__angle = Número: el ángulo
sin__description__0 = calcula el seno de un ángulo. Esta función toma en cuenta el modo actual de ángulo según angleMode(). Los valores son retornados en el rango entre -1 y 1.
sin__returns = Número: el seno del ángulo
sin__params__angle = Número: el ángulo
tan__description__0 = calcula la tangente de un ángulo. Esta función toma en cuenta el modo actual de ángulo según angleMode(). Los valores son retornados en el rango entre -1 y 1.
tan__returns = Número: la tangente del ángulo
tan__params__angle = Número: el ángulo
degrees__description__0 = Convierte una medida en radianes a su correspondiente valor en grados. Radianes y grados son dos maneras de calcular lo mismo. Hay 360 grados en un círculo y 2*PI radianes en un círculo. Por ejemplo, 90 grados equivalen a PI/2 radianes.
degrees__returns = el ángulo convertido
degrees__params__radians = Número: valor en radianes a ser convertido a grados.
radians__description__0 = Convierte una medida en grados a su correspondiente valor en radianes. Radianes y grados son dos maneras de calcular lo mismo. Hay 360 grados en un círculo y 2*PI radianes en un círculo. Por ejemplo, 90 grados equivalen a PI/2 radianes.
radians__returns = el ángulo convertido
radians__params__degrees = Número: valor en grados a ser convertido a radianes.
angleMode__description__0 = Define el modo actual de p5 para interpretar ángulos. El modo por defecto es en RADIANS (radianes).
angleMode__params__mode = CONSTANTE: puede ser RADIANS (radianes) o DEGREES (grados)
textAlign__description__0 = Define el alineamiento actual para dibujar texto. Acepta dos argumentos: horizAlign(LEFT, CENTER o RIGHT) y vertAlign(TOP, BOTTOM, CENTER, o BASELINE). El parámetro horizAlign se refiere al valor x de la función text(), mientras que vel parámetro vertAlign al valor y. Así que si escribes textAlign(LEFT), estás alineando el borde izquierdo de tu texto al valor x dado en la función text(). Si escribes textAlign(RIGHT, TOP), estás alineando el borde derecho de tu texto con el valor x y el borde superior con el valor y del texto.
textAlign__description__1 = The horizAlign parameter is in reference to the x value of the <a href="#/p5/text">text()</a> function, while the vertAlign parameter is in reference to the y value.
textAlign__description__2 = So if you write textAlign(LEFT), you are aligning the left edge of your text to the x value you give in <a href="#/p5/text">text()</a>. If you write textAlign(RIGHT, TOP), you are aligning the right edge of your text to the x value and the top of edge of the text to the y value.
textAlign__params__horizAlign = Constante: alineamiento horizontal, puede ser LEFT, CENTER o RIGHT
textAlign__params__vertAlign = Constante: alineamiento vertical, puede ser TOP, BOTTOM, CENTER o BASELINE
textLeading__description__0 = Define o retorna el espaciado, en pixeles, entre líneas de texto. Esta configuración será usada en todas las llamadas posteriores a la función text().
textLeading__params__leading = Número: el tamaño en pixeles de espaciamiento entre líneas
textSize__description__0 = Define o retorna el tamaño actual de la tipografía. Este tamaño será usado en todas las llamadas posteriores a la función text(). El tamaño de la tipografía es medido en pixeles.
textSize__params__theSize = Número: el tamaño en pixeles de las letras en pixeles
textStyle__description__0 = Define o retorna el estilo actual de la tipografía. Puede ser NORMAL (normal), ITALIC (cursivo) o BOLD (destacado). Notar que puede ser anulado por estilo CSS. Para tipografías que no sean de sistema (opentype, truetype, etc.), usa loadFont().
textStyle__params__theStyle = Número|Constante: estilo del texto, puede ser NORMAL, ITALIC o BOLD
textWidth__description__0 = Calcula y retorna el ancho de cualquier caracter o string.
textWidth__returns = Número
textWidth__params__theText = String: el String de caracteres a medir
textAscent__description__0 = Returns the ascent of the current font at its current size. The ascent represents the distance, in pixels, of the tallest character above the baseline.
textAscent__returns = Number:
textDescent__description__0 = Returns the descent of the current font at its current size. The descent represents the distance, in pixels, of the character with the longest descender below the baseline.
textDescent__returns = Number:
textWrap__description__0 = Specifies how lines of text are wrapped within a text box. This requires a max-width set on the text area, specified in <a href="#/p5/text">text()</a> as parameter <code>x2</code>.
textWrap__description__1 = WORD wrap style only breaks lines at spaces. A single string without spaces that exceeds the boundaries of the canvas or text area is not truncated, and will overflow the desired area, disappearing at the canvas edge.
textWrap__description__2 = CHAR wrap style breaks lines wherever needed to stay within the text box.
textWrap__description__3 = WORD is the default wrap style, and both styles will still break lines at any line breaks (<code>\n</code>) specified in the original text. The text area max-height parameter (<code>y2</code>) also still applies to wrapped text in both styles, lines of text that do not fit within the text area will not be drawn to the screen.
textWrap__returns = String: wrapStyle
textWrap__params__wrapStyle = Constant: text wrapping style, either WORD or CHAR
loadFont__description__0 = Carga un archivo de fuente de letra (.otf, .ttf) desde un archivo o URL, y retorna un objeto PFont. Este método es asíncrono, lo que significa que puede que no finalice antes de que la siguiente línea en tu bosquejo sea ejecutada. La ubicación del archivo debe ser relativo al archivo HTML que lo vincula con tu bosquejo. Cargar desde una URL u otra ubicación remota puede ser bloqueado por las opciones de seguridad del navegador.
loadFont__description__1 = The path to the font should be relative to the HTML file that links in your sketch. Loading fonts from a URL or other remote location may be blocked due to your browser's built-in security.
loadFont__returns = Objeto: objeto p5.Font
loadFont__params__path = String: número del archivo o URL a cargar
loadFont__params__callback = Función: función a ser ejecutada después de que loadFont() es completada
loadFont__params__onError = Function: (Optional) function to be executed if  an error occurs
text__description__0 = Dibuja texto en la pantalla. Muestra la información especificada en el primer parámetro en la pantalla, en la posición especificada por los parámetros adicionales. Una fuente por defecto será usada a menos que una fuente sea definida por la función textFont() y un tamaño por defecto será usado a menos que se use la función textSize(). Cambia el color del texto con la función fill(). Cambia la apariencia del texto con las funciones stroke() y strokeWeight(). El texto se muestra en relación a la función textAlign(), que da la opción de dibujar a la izuiqerda, derecha y centro de las coordenadas. Los parámetros x2 e y2 definen un área rectangular donde mostrar el texto y solo puede ser usado por los datos tipo String. Cuando estos parámetros son especificados, son interpretados según la configuración de rectMode(). El texto que no cabe completamente dentro del rectángulo especificado no será dibujado en pantalla.
text__description__1 = The text displays in relation to the <a href="#/p5/textAlign">textAlign()</a> function, which gives the option to draw to the left, right, and center of the coordinates.
text__description__2 = The x2 and y2 parameters define a rectangular area to display within and may only be used with string data. When these parameters are specified, they are interpreted based on the current <a href="#/p5/rectMode">rectMode()</a> setting. Text that does not fit completely within the rectangle specified will not be drawn to the screen. If x2 and y2 are not specified, the baseline alignment is the default, which means that the text will be drawn upwards from x and y.
text__description__3 = <b>WEBGL</b>: Only opentype/truetype fonts are supported. You must load a font using the <a href="#/p5/loadFont">loadFont()</a> method (see the example above). <a href="#/p5/stroke">stroke()</a> currently has no effect in webgl mode.
text__params__str = String: símbolos alfanuméricos a ser mostrados
text__params__x = Número: coordenada x del texto
text__params__y = Número: coordenada y del texto
text__params__x2 = Número: por defecto, el ancho de la caja contenedora del texto, ver rectMode() para más información
text__params__y2 = Número: por defecto, la altura de la caja contenedora del texto, ver rectMode() para más información
textFont__description__0 = Define la función actual con la que se dibujará el contenido de la función text()
textFont__description__1 = <b>WEBGL</b>: Only fonts loaded via <a href="#/p5/loadFont">loadFont()</a> are supported.
textFont__returns = Objeto
textFont__params__font = Objeto|String: una fuente cargada con loadFont(), o un String representando una tipografía segura de la web (una fuente ampliamente disponible a lo largo de todos los sistemas).
textFont__params__size = Number: (Optional) the font size to use
append__description__0 = Añade un valor al final de un arreglo. Extiende el largo de un arreglo en una unidad. Usa la función Array.push()
append__returns = el objeto p5
append__params__array = Arreglo: Arreglo al que se agregará el dato
append__params__value = Cualquiera: a ser añadido al arreglo
arrayCopy__description__0 = Copia el arreglo (o una parte del arreglo) a otro arreglo. El arreglo fuente es copiado al arreglo de destino, empezando por la posición especificada por srcPosition y a la posición especificada por dstPosition. El número de elementos a copiar es determinado por el largo. Notar que al copiar valores se sobreescriben los valores existentes en el arreglo de destino. Para anexar valores en vez de sobreescribirlos, usa la función concat(). La versión simplificada con dos argumentos, arrayCopy(src, dest), copia un arreglo entero a otro del mismo tamaño. Es equivaletne a arrayCopy(src, 0, dst, 0, src.length). Usar esta función es mucho más eficiente para copiar datos de un arreglo que iterar con un bucle for() y copiar cada elemento individualmente.
arrayCopy__description__1 = The simplified version with only two arguments, arrayCopy(src, dst), copies an entire array to another of the same size. It is equivalent to arrayCopy(src, 0, dst, 0, src.length).
arrayCopy__description__2 = Using this function is far more efficient for copying array data than iterating through a for() loop and copying each element individually.
arrayCopy__params__src = Arreglo: el arreglo fuente
arrayCopy__params__srcPosition = Número: posición inicial en el arreglo fuente
arrayCopy__params__dst = Arreglo: el arreglo de destino
arrayCopy__params__dstPosition = Número: posición inicial del arreglo de destino
arrayCopy__params__length = Número: númeor de elementos del arreglo a ser copiados
concat__description__0 = Concatena dos arreglos, usa la función Array.concat(). No modifica los arreglos de entrada.
concat__returns = Arreglo: el arreglo concatenado
concat__params__a = Arreglo: primer arreglo a concatenar
concat__params__b = Arreglo: segundo arreglo a concatenar
reverse__description__0 = Invierte el orden un arreglo, usa Array.reverse().
reverse__returns = el objeto p5
reverse__params__list = Arreglo: arreglo a ser invertido
shorten__description__0 = Disminuye un arreglo en un elemento y retorna el arreglo más corto, usa Array.pop().
shorten__returns = Arreglo: el arreglo acortado
shorten__params__list = Lista: arreglo a acortar
shuffle__description__0 = Ordena aleatoriamente los elementos de un arreglo. Implementa el algoritmo Fisher Yates.
shuffle__returns = Arreglo: retorna el arreglo ordenado
shuffle__params__array = Arreglo: Arreglo a ordenar
shuffle__params__bool = Boolean: modifica el arreglo
sort__description__0 = Ordena un arreglo de números, desde el más pequeño al más grande, o pone un arreglo de palabras en orden alfabético. El arreglo original no es modificado, un nuevo arreglo ordenado es retornado. El parámetro count define el número de elementos a ordenar. Por ejemplo, si hay 12 elementos en un arreglo y count es 5, los primeros 5 elementos del arreglo serán ordenados.
sort__returns = el objeto p5
sort__params__list = Arreglo: arreglo a ordenar
sort__params__count = Número: número de elementos a ordenar, empezando desde 0
splice__description__0 = Inserta un valor o un arreglo de valores en un arreglo existente El primer parámetro especifica el arreglo inicial a ser modificado, y el segundo parámetro define los datos a insertarse. El tercer parámetro es un índice que especifica la posición del arreglo a partir de la que se insertarán los datos. Recuerda que el índice del arreglo empieza en 0, así que la primera posición es 0, la segunda es 1, etc.
splice__returns = el objeto p5
splice__params__list = Arreglo: arreglo a ser modificado
splice__params__value = Cualquiera: valor a ser introducido
splice__params__position = Número: posición del arreglo donde se inserta el dato
subset__description__0 = Extrae un arreglo de elementos de un arreglo existente. El parámetro list define el arreglo desde el cual los elementos serán copiados, y los parámetros start y count especifican cuáles elementos extraer. Si no especifica count, los elementos serán extraidos desde el principio. Esta función no modifica el arreglo original
subset__returns = Arreglo: arreglo de elementos extraidos
subset__params__list = Arreglo: arreglo del cual se extrae
subset__params__start = Número: posición de donde empezar a extraer
subset__params__count = Número: número de valores a extraer
float__description__0 = Convierte un String a su representación de punto flotante. Los contenidos de un String deben parecerse a un número, en otro caso NaN es retornado. Por ejemplo, float('1234.56') evalua a 1234.56, pero float('giraffe') retorna NaN. Cuando un arreglo de valores es pasado, un arreglo de floats del mismo largo es retornado.
float__description__1 = When an array of values is passed in, then an array of floats of the same length is returned.
float__returns = Número: representación en punto flotante de un string
float__params__str = String: string a ser procesado
int__description__0 = Convierte un boolean, string o float a su representación en número entero. Cuando un arreglo de valores es introducido, entonces un arreglo de enteros de la misma longitud es retornado.
int__returns = Número: valor representado como entero
int__params__n = String|Boolean|Number: value to parse
int__params__radix = Integer: (Optional) the radix to convert to (default: 10)
int__params__ns = String|Boolean|Número|Arreglo: valor a procesar
str__description__0 = Convierte un boolean, string, o número a su representación en string. Cuando un arreglo de valores es introducido, entonces un arreglo de strings de la misma longitud es retornado.
str__returns = String: valor representado como string
str__params__n = String|Boolean|Número|Arreglo: valor a procesar
byte__description__0 = Convierte un número, string o boolean a su representación en byte. Un byte puede solo ser un número entero entre -128 y 127, así que cuando un valor fuera de este rango es convertido, se hace wrap a la representación correspondiente en byte. Cuando un arreglo de números, string, o booleans es introducido, entonces un arreglo de bytes de la misma longitud es retornado.
byte__returns = Número: representación en formato byte del valor
byte__params__n = String|Boolean|Número|Arreglo: valor a procesar
byte__params__ns = Array: values to parse
char__description__0 = Convierte un número o string a su representaciómo como un string de un único caracter. Si se provee un parámetro, es primero pasado como entero y luego evaluado como un string de un único caracter. Cuando un arreglo de números o strings es introducido, entonces un arreglo de strings de un único caracter de la misma longitud es retornado.
char__returns = String: representación en formato string del valor
char__params__n = String|Número|Arreglo: valor a procesar
char__params__ns = Array: values to parse
unchar__description__0 = Convierte un string de un único caracter a su correspondiente representación como valor entero. Cuando un arreglo de strings de un caracter es introducido, entonces un arreglo de enteros de la misma longitud es retornado.
unchar__returns = Número: representación en formato entero del valor
unchar__params__n = String|Arreglo: valor a procesar
unchar__params__ns = Array: values to parse
hex__description__0 = Convierte un número a su correspondiente representación como hexadecimal. Si se ingersa un segundo parámetro, es usado para definir el número de caracteres a generar en la notación hexadecimal. Cuando un arreglo es introducido, entonces un arreglo de strings en notación hexadecimal de la misma longitud es retornado.
hex__returns = String: representación en formato string hexadecimal del valor
hex__params__n = Número|Arreglo: valor a procesar
hex__params__digits = Number (Optional)
hex__params__ns = Number[]: array of values to parse
unhex__description__0 = Convierte una representación en string de un número hexadecimal a su correspondiente representación como valor entero. Cuando un arreglo de strings en notación hexadecimal es introducido, entonces un arreglo de enteros de la misma longitud es retornado.
unhex__returns = Número: representación en formato entero del valor hexadecimal
unhex__params__n = String|Arreglo: valor a procesar
unhex__params__ns = Array: values to parse
join__description__0 = Combina una arreglo de Strings en un String, cada uno separado por los caracteres usados como parámetro separator. Para unir arreglos de enteros o floats, es necesario primero convertirlos a Strings usando las funciones nf() o nfs().
join__returns = String: String unificado
join__params__list = Arreglo: arreglo de Strings a ser unidos
join__params__separator = String: String a ser posicionado entre cada item
match__description__0 = Esta función es usada para aplicar una expresión regular a una porción de texto,  y retorna grupos coincidentes (elementos encontrados entre paréntesis) como un arreglo de Strings. Si no existen coincidencias, se retorna el valor null. Si no se especifican grupos en la expresión regular, pero la secuencia coincide, un arreglo de largo 1 (con el texto coincidente como primer elemento del arreglo) será retornado. Para usar la función, primero comprueba si el resultado es null. Si el resultado es null, entonces la secuencia no tuvo coincidencias. Si la secuencia tuvo coincidencias, retorna un arreglo. Si exsiten grupos (especificados como conjuntos de paréntesis) en la expresión regular, entonces los contenidos de cada uno serán retornados en el arreglo. El elemento[0] de una coincidencia de expresión regular retorna el string coincidente, y el grupo de coincidencia empieza en el elemento[1] (el primer grupo es [1], el segundo es [2], etc).
match__description__1 = To use the function, first check to see if the result is null. If the result is null, then the sequence did not match at all. If the sequence did match, an array is returned.
match__description__2 = If there are groups (specified by sets of parentheses) in the regular expression, then the contents of each will be returned in the array. Element [0] of a regular expression match returns the entire matching string, and the match groups start at element [1] (the first group is [1], the second [2], and so on).
match__returns = Arreglo: arreglo de Strings encontrados
match__params__str = String: el String a ser buscado
match__params__regexp = String: la expresión regular a ser usada para buscar coincidencias
matchAll__description__0 = Esta función es usada para aplicar una expresión regular a una porción de texto,  y retorna una lista de grupos coincidentes (elementos encontrados entre paréntesis) como un arreglo de Strings bidimensional. Si no existen coincidencias, se retorna el valor null. Si no se especifican grupos en la expresión regular, pero la secuencia coincide, un arreglo de dos dimensiones es retornado, pero es de largo 1. Para usar la función, primero comprueba si el resultado es null. Si el resultado es null, entonces la secuencia no tuvo coincidencias. Si la secuencia tuvo coincidencias, retorna un arreglo 2D. Si exsiten grupos (especificados como conjuntos de paréntesis) en la expresión regular, entonces los contenidos de cada uno serán retornados en el arreglo. El elemento[i][0] de una coincidencia de expresión regular retorna el string coincidente completo, y el grupo de coincidencia empieza en el elemento[i][1] (el primer grupo es [i][1], el segundo es [i][2], etc).
matchAll__description__1 = To use the function, first check to see if the result is null. If the result is null, then the sequence did not match at all. If the sequence did match, a 2D array is returned.
matchAll__description__2 = If there are groups (specified by sets of parentheses) in the regular expression, then the contents of each will be returned in the array. Assuming a loop with counter variable i, element [i][0] of a regular expression match returns the entire matching string, and the match groups start at element [i][1] (the first group is [i][1], the second [i][2], and so on).
matchAll__returns = Arreglo: arreglo 2D de Strings encontrados
matchAll__params__str = String: el String a ser buscado
matchAll__params__regexp = String: la expresión regular a ser usada para buscar coincidencias
nf__description__0 = Función de utilidad para formatear números a strings. Existen dos veriones: una para formatear floats, y una para formatear enteros. Los valores de los dígitos y los parámetros left y right siempre deben ser enteros positivos
nf__returns = String|Arreglo: String formateada
nf__params__num = Número|Arreglo: el número a formatear
nf__params__left = Número: número de dígitos a la izquierda del punto decimal
nf__params__right = Número: número de dígitos a la derecha del punto decimal
nf__params__nums = Array: the Numbers to format
nfc__description__0 = Función de utilidad para formatear números en strings y poner las comas apropiadas para señalar múltiplos de mil. Hay dos versiones: una para números enteros y otra para arreglos de enteros. El valor del parámetro right debe siempre ser un entero positivo.
nfc__returns = String|Arreglo: String formateada
nfc__params__num = Número|Arreglo: el número a formatear
nfc__params__right = Número: número de dígitos a la derecha del punto decimal
nfc__params__nums = Array: the Numbers to format
nfp__description__0 = Función de utilidad para formatear números en strings. Similar a nf() pero pone un signo + en frente de los números positivos y un signo - en frente de números negativos. Hay dos versiones, una para formatear floats y otra para formatear enteros. Los valores de los parámetros left y right deben siempre ser enteros positivos.
nfp__returns = String|Arreglo: String formateada
nfp__params__num = Número|Arreglo: el número a formatear
nfp__params__left = Número: número de dígitos a la izquierda del punto decimal
nfp__params__right = Número: número de dígitos a la derecha del punto decimal
nfp__params__nums = Number[]: the Numbers to format
nfs__description__0 = Función de utilidad para formatear números en strings. Similar a nf() pero pone un espacio en frente de los números positivos y un signo - en frente de números negativos. Hay dos versiones, una para formatear floats y otra para formatear enteros. Los valores de los parámetros left y right deben siempre ser enteros positivos.
nfs__returns = String|Arreglo: String formateada
nfs__params__num = Número|Arreglo: el número a formatear
nfs__params__left = Número: número de dígitos a la izquierda del punto decimal
nfs__params__right = Número: número de dígitos a la derecha del punto decimal
nfs__params__nums = Array: the Numbers to format
split__description__0 = La función split usa String.split(), corta un String en pedazos usando un caracter o String como delimitador. El parámetro delim especifica el caracter o caracteres que marcan los bordes entre cada pieza. Un arreglo String[] es retornado, que contiene cada una de las piezas. La función splitTokens() funciona de forma similar, excepto que divide usango un rango de caracteres en vez de usar un caracter o una secuencia de caracteres específicos.
split__description__1 = The <a href="#/p5/splitTokens">splitTokens()</a> function works in a similar fashion, except that it splits using a range of characters instead of a specific character or sequence.
split__returns = Arreglo: arreglo de Strings
split__params__value = String: el String a ser dividido
split__params__delim = String: el String usado para separar los datos
splitTokens__description__0 =
    La función splitTokens() divide un String en uno o varios caracteres delimitadores o tokens. El parámetro delim especifica el o los caracteres a ser usados como borde. Si no se especifican caracteres delim, cualquier caracter tipo whitespace será usado para dividir. Los caracteres whitespace incluyen tabulación (	), nueva línea (
    ), retorno de carro (), entrada de formulario (), y espacio.
splitTokens__description__1 = If no delim characters are specified, any whitespace character is used to split. Whitespace characters include tab (\t), line feed (\n), carriage return (\r), form feed (\f), and space.
splitTokens__returns = Arreglo: arreglo de Strings
splitTokens__params__value = String: el String a ser dividido
splitTokens__params__delim = String: lista de Strings individuales que serán usados como separadores
trim__description__0 = Remueve caracteres tipo whitespace (espacio en blanco) del comienzo y el final de un String. En adición a los caracteres estámdar de whitespace como espacio, retorno de carro y tabulación, esta función también remueve el caracter Unicode nbsp.
trim__returns = String|Arreglo: un String o arreglo de Strings recortados.
trim__params__str = String: a String to be trimmed
trim__params__strs = Array: an Array of Strings to be trimmed
day__description__0 = p5.js se comunica con el reloj de tu computador. La función day() retorna el día actual como un valor entre 1 y 31.
day__returns = Número: el día actual
hour__description__0 = p5.js se comunica con el reloj de tu computador. La función hour() retorna la hora actual como un valor entre 0 y 23.
hour__returns = Número: la hora actual
minute__description__0 = p5.js se comunica con el reloj de tu computador. La función minute() retorna el minuto actual como un valor entre 0 y 59.
minute__returns = Número: el minuto actual
millis__description__0 = Retorna el número de milisegundos (milésimas de segundo) desde que el programa empezó a correr. La información es usada a menudo para temporizar eventos y animar secuencias
millis__returns = Número: el número de milisegundos desde que empezó el programa
month__description__0 = p5.js se comunica con el reloj de tu computador. La función month() retorna el mes actual como un valor entre 1 y 12.
month__returns = Número: el mes actual
second__description__0 = p5.js se comunica con el reloj de tu computador. La función second() retorna el mes actual como un valor entre 0 y 59.
second__returns = Número: el segundo actual
year__description__0 = p5.js se comunica con el reloj de tu computador. La función year() retorna el año actual como un entero (2014, 2015, 2015, etc).
year__returns = Número: el año actual
plane__description__0 = Dibuja un plano con ancho y altura dados.
plane__params__width = Número: ancho del plano
plane__params__height = Número: altura del plano
plane__params__detailX = Número: número opcional de subdivisiones triangulares en la dimensión x
plane__params__detailY = Número: número opcional de subdivisiones triangulares en la dimensión y
box__description__0 = Dibuja una caja con ancho, altura y profundidad dados.
box__params__width = Número: ancho de la caja
box__params__Height = Número: altura de la caja
box__params__depth = Número: profundidad de la caja
box__params__detailX = Número: número opcional de subdivisiones triangulares en la dimensión x
box__params__detailY = Número: número opcional de subdivisiones triangulares en la dimensión y
sphere__description__0 = Dibuja una esfera de radio dado.
sphere__description__1 = DetailX and detailY determines the number of subdivisions in the x-dimension and the y-dimension of a sphere. More subdivisions make the sphere seem smoother. The recommended maximum values are both 24. Using a value greater than 24 may cause a warning or slow down the browser.
sphere__params__radius = Número: radio del círculo
sphere__params__detailX = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 24
sphere__params__detailY = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 16
cylinder__description__0 = Dibuja un cilindro de radio y altura dados.
cylinder__description__1 = DetailX and detailY determines the number of subdivisions in the x-dimension and the y-dimension of a cylinder. More subdivisions make the cylinder seem smoother. The recommended maximum value for detailX is 24. Using a value greater than 24 may cause a warning or slow down the browser.
cylinder__params__radius = Número: radio de la superficie
cylinder__params__height = Número: altura del cilindro
cylinder__params__detailX = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 24
cylinder__params__detailY = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 16
cylinder__params__bottomCap = Boolean: (Optional) whether to draw the bottom of the cylinder
cylinder__params__topCap = Boolean: (Optional) whether to draw the top of the cylinder
cone__description__0 = Dibuja un cono de radio y altura dados.
cone__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a cone. More subdivisions make the cone seem smoother. The recommended maximum value for detailX is 24. Using a value greater than 24 may cause a warning or slow down the browser.
cone__params__radius = Número: radio de la superficie inferior
cone__params__height = Número: altura del cono
cone__params__detailX = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 24
cone__params__detailY = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 16
cone__params__cap = Boolean: (Optional) whether to draw the base of the cone
ellipsoid__description__0 = Dibuja un elipsoide de radio dado.
ellipsoid__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a cone. More subdivisions make the ellipsoid appear to be smoother. Avoid detail number above 150, it may crash the browser.
ellipsoid__params__radiusx = Número: radio x del círculo
ellipsoid__params__radiusy = Número: radio y del círculo
ellipsoid__params__radiusz = Número: radio z del círculo
ellipsoid__params__detailX = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 24. Evita números mayores a 150 que podrían colapsar el navegador.
ellipsoid__params__detailY = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 16. Evita números mayores a 150 que podrían colapsar el navegador.
torus__description__0 = Dibuja un toroide con radio y tubo dado.
torus__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a torus. More subdivisions make the torus appear to be smoother. The default and maximum values for detailX and detailY are 24 and 16, respectively. Setting them to relatively small values like 4 and 6 allows you to create new shapes other than a torus.
torus__params__radius = Número: radio del anillo completo
torus__params__tubeRadius = Número: radio del tubo
torus__params__detailX = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 24.
torus__params__detailY = Número: opcional, número de segmentos, a mayor número de segmentos la geometría es más suave, por defecto es 16.
orbitControl__description__0 = Allows movement around a 3D sketch using a mouse or trackpad. Left-clicking and dragging will rotate the camera position about the center of the sketch, right-clicking and dragging will pan the camera position without rotation, and using the mouse wheel (scrolling) will move the camera closer or further from the center of the sketch. This function can be called with parameters dictating sensitivity to mouse movement along the X and Y axes. Calling this function without parameters is equivalent to calling orbitControl(1,1). To reverse direction of movement in either axis, enter a negative number for sensitivity.
orbitControl__params__sensitivityX = Number: (Optional) sensitivity to mouse movement along X axis
orbitControl__params__sensitivityY = Number: (Optional) sensitivity to mouse movement along Y axis
orbitControl__params__sensitivityZ = Number: (Optional) sensitivity to scroll movement along Z axis
debugMode__description__0 = debugMode() helps visualize 3D space by adding a grid to indicate where the ‘ground’ is in a sketch and an axes icon which indicates the +X, +Y, and +Z directions. This function can be called without parameters to create a default grid and axes icon, or it can be called according to the examples above to customize the size and position of the grid and/or axes icon. The grid is drawn using the most recently set stroke color and weight. To specify these parameters, add a call to stroke() and strokeWeight() just before the end of the draw() loop.
debugMode__description__1 = By default, the grid will run through the origin (0,0,0) of the sketch along the XZ plane and the axes icon will be offset from the origin. Both the grid and axes icon will be sized according to the current canvas size. Note that because the grid runs parallel to the default camera view, it is often helpful to use debugMode along with orbitControl to allow full view of the grid.
debugMode__params__mode = Constant: either GRID or AXES
debugMode__params__gridSize = Number: (Optional) size of one side of the grid
debugMode__params__gridDivisions = Number: (Optional) number of divisions in the grid
debugMode__params__xOff = Number: (Optional) X axis offset from origin (0,0,0)
debugMode__params__yOff = Number: (Optional) Y axis offset from origin (0,0,0)
debugMode__params__zOff = Number: (Optional) Z axis offset from origin (0,0,0)
debugMode__params__axesSize = Number: (Optional) size of axes icon
debugMode__params__gridXOff = Number (Optional)
debugMode__params__gridYOff = Number (Optional)
debugMode__params__gridZOff = Number (Optional)
debugMode__params__axesXOff = Number (Optional)
debugMode__params__axesYOff = Number (Optional)
debugMode__params__axesZOff = Number (Optional)
noDebugMode__description__0 = Turns off debugMode() in a 3D sketch.
ambientLight__description__0 = Crea una luz ambiente con color
ambientLight__params__v1 = Número|Arreglo|String|p5.Color: valor de gris, rojo o tinte (dependiendo del modo de color actual), o arreglo de color o String de color CSS
ambientLight__params__v2 = Número: opcional, valor de verde o saturación
ambientLight__params__v3 = Número: opcional, valor de azul o brillo
ambientLight__params__alpha = Número: opcional, valor de opacidad
ambientLight__params__value = String: a color string
ambientLight__params__gray = Number: a gray value
ambientLight__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
ambientLight__params__color = p5.Color: the ambient light color
specularColor__description__0 = Set's the color of the specular highlight when using a specular material and specular light.
specularColor__description__1 = This method can be combined with specularMaterial() and shininess() functions to set specular highlights. The default color is white, ie (255, 255, 255), which is used if this method is not called before specularMaterial(). If this method is called without specularMaterial(), There will be no effect.
specularColor__description__2 = Note: specularColor is equivalent to the processing function <a href="https://processing.org/reference/lightSpecular_.html">lightSpecular</a>.
specularColor__params__v1 = Number: red or hue value relative to  the current color range
specularColor__params__v2 = Number: green or saturation value  relative to the current color range
specularColor__params__v3 = Number: blue or brightness value  relative to the current color range
specularColor__params__value = String: a color string
specularColor__params__gray = Number: a gray value
specularColor__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
specularColor__params__color = p5.Color: the ambient light color
directionalLight__description__0 = Crea una luz direccional con color y dirección
directionalLight__description__1 = A maximum of 5 directionalLight can be active at one time
directionalLight__params__v1 = Número|Arreglo|String|p5.Color: valor de gris, rojo o tinte (dependiendo del modo de color actual), o arreglo de color o String de color CSS
directionalLight__params__v2 = Número: opcional, valor de verde o saturación
directionalLight__params__v3 = Número: opcional, valor de azul o brillo
directionalLight__params__position = p5.Vector: the direction of the light
directionalLight__params__color = Number[]|String|p5.Color: color Array, CSS color string,  or <a href="#/p5.Color">p5.Color</a> value
directionalLight__params__x = Número|p5.Vector: dirección del eje x o un p5.Vector
directionalLight__params__y = Número: opcional, dirección del eje y
directionalLight__params__z = Número: opcional, dirección del eje z
pointLight__description__0 = Crea una luz puntual con color y posición
pointLight__description__1 = A maximum of 5 pointLight can be active at one time
pointLight__params__v1 = Número|Arreglo|String|p5.Color: valor de gris, rojo o tinte (dependiendo del modo de color actual), o arreglo de color o String de color CSS
pointLight__params__v2 = Número: opcional, valor de verde o saturación
pointLight__params__v3 = Número: opcional, valor de azul o brillo
pointLight__params__x = Número|p5.Vector: dirección del eje x o un p5.Vector
pointLight__params__y = Número: opcional, dirección del eje y
pointLight__params__z = Número: opcional, dirección del eje z
pointLight__params__position = p5.Vector: the position of the light
pointLight__params__color = Number[]|String|p5.Color: color Array, CSS color string, or <a href="#/p5.Color">p5.Color</a> value
lights__description__0 = Sets the default ambient and directional light. The defaults are <a href="#/p5/ambientLight">ambientLight(128, 128, 128)</a> and <a href="#/p5/directionalLight">directionalLight(128, 128, 128, 0, 0, -1)</a>. Lights need to be included in the <a href="#/p5/draw">draw()</a> to remain persistent in a looping program. Placing them in the <a href="#/p5/setup">setup()</a> of a looping program will cause them to only have an effect the first time through the loop.
lightFalloff__description__0 = Sets the falloff rates for point lights. It affects only the elements which are created after it in the code. The default value is lightFalloff(1.0, 0.0, 0.0), and the parameters are used to calculate the falloff with the following equation:
lightFalloff__description__1 = d = distance from light position to vertex position
lightFalloff__description__2 = falloff = 1 / (CONSTANT + d * LINEAR + ( d * d ) * QUADRATIC)
lightFalloff__params__constant = Number: constant value for determining falloff
lightFalloff__params__linear = Number: linear value for determining falloff
lightFalloff__params__quadratic = Number: quadratic value for determining falloff
spotLight__description__0 = Creates a spotlight with a given color, position, direction of light, angle and concentration. Here, angle refers to the opening or aperture of the cone of the spotlight, and concentration is used to focus the light towards the center. Both angle and concentration are optional, but if you want to provide concentration, you will also have to specify the angle.
spotLight__description__1 = A maximum of 5 spotLight can be active at one time
spotLight__params__v1 = Number: red or hue value (depending on the current color mode),
spotLight__params__v2 = Number: green or saturation value
spotLight__params__v3 = Number: blue or brightness value
spotLight__params__x = Number: x axis position
spotLight__params__y = Number: y axis position
spotLight__params__z = Number: z axis position
spotLight__params__rx = Number: x axis direction of light
spotLight__params__ry = Number: y axis direction of light
spotLight__params__rz = Number: z axis direction of light
spotLight__params__angle = Number: (Optional) optional parameter for angle. Defaults to PI/3
spotLight__params__conc = Number: (Optional) optional parameter for concentration. Defaults to 100
spotLight__params__color = Number[]|String|p5.Color: color Array, CSS color string, or <a href="#/p5.Color">p5.Color</a> value
spotLight__params__position = p5.Vector: the position of the light
spotLight__params__direction = p5.Vector: the direction of the light
noLights__description__0 = This function will remove all the lights from the sketch for the subsequent materials rendered. It affects all the subsequent methods. Calls to lighting methods made after noLights() will re-enable lights in the sketch.
loadModel__description__0 = Carga un modelo 3d desde un archivo OBJ. Una de las limitaciones del formato OBJ es que no trae incorporado un sentido de escala. Esto significa que los modelos exportados por distintos programas pueden ser de tamaños radicalmente distintos. Si tu modelo no está siendo mostrado en pantalla, trata llamando a la función loadMode() con el parámetro de normalización configurado como verdadero. Esto escalará el tamaño del modelo a una escala apropiada para p5. También puedes hacer cambios adicionales al tamaño final de tu modelo con la función scale().
loadModel__description__1 = <a href="#/p5/loadModel">loadModel()</a> should be placed inside of <a href="#/p5/preload">preload()</a>. This allows the model to load fully before the rest of your code is run.
loadModel__description__2 = One of the limitations of the OBJ and STL format is that it doesn't have a built-in sense of scale. This means that models exported from different programs might be very different sizes. If your model isn't displaying, try calling <a href="#/p5/loadModel">loadModel()</a> with the normalized parameter set to true. This will resize the model to a scale appropriate for p5. You can also make additional changes to the final size of your model with the <a href="#/p5/scale">scale()</a> function.
loadModel__description__3 = Also, the support for colored STL files is not present. STL files with color will be rendered without color properties.
loadModel__returns = el objeto p5.Geometry3D
loadModel__params__path = String: ubicación del modelo a cargar
loadModel__params__normalize = Boolean:  Si es verdadero (true), escala el modelo a un tamaño estandarizado al momento de cargarlo.
loadModel__params__successCallback = Función(p5.Geometry3D): función a ser llamada cuando el modelo se cargue. Será pasada al modelo del objeto 3D.
loadModel__params__failureCallback = Función(evento): llamada con el error evento si la imagen no falla al cargar.
loadModel__params__fileType = String: (Optional) The file extension of the model  (<code>.stl</code>, <code>.obj</code>).
model__description__0 = Hace el render de un modelo 3D en la pantalla.
model__params__model = p5.Geometry: modelo 3D cargado para realizar render
loadShader__description__0 = Loads a custom shader from the provided vertex and fragment shader paths. The shader files are loaded asynchronously in the background, so this method should be used in <a href="#/p5/preload">preload()</a>.
loadShader__description__1 = For now, there are three main types of shaders. p5 will automatically supply appropriate vertices, normals, colors, and lighting attributes if the parameters defined in the shader match the names.
loadShader__returns = p5.Shader: a shader object created from the provided vertex and fragment shader files.
loadShader__params__vertFilename = String: path to file containing vertex shader source code
loadShader__params__fragFilename = String: path to file containing fragment shader source code
loadShader__params__callback = Function: (Optional) callback to be executed after loadShader completes. On success, the Shader object is passed as the first argument.
loadShader__params__errorCallback = Function: (Optional) callback to be executed when an error occurs inside loadShader. On error, the error is passed as the first argument.
createShader__returns = p5.Shader: a shader object created from the provided vertex and fragment shaders.
createShader__params__vertSrc = String: source code for the vertex shader
createShader__params__fragSrc = String: source code for the fragment shader
shader__description__0 = The <a href="#/p5/shader">shader()</a> function lets the user provide a custom shader to fill in shapes in WEBGL mode. Users can create their own shaders by loading vertex and fragment shaders with <a href="#/p5/loadShader">loadShader()</a>.
shader__params__s = p5.Shader: (Optional) the desired <a href="#/p5.Shader">p5.Shader</a> to use for rendering shapes.
resetShader__description__0 = This function restores the default shaders in WEBGL mode. Code that runs after resetShader() will not be affected by previously defined shaders. Should be run after <a href="#/p5/shader">shader()</a>.
texture__description__0 = Textura para geometría. Puedes ver todos los posibles materiales en este ejemplo (TODO).
texture__params__tex = p5.Image|p5.MediaElement|p5.Graphics: gráfica bidimensional para hacer render como textura.
textureMode__description__0 = Sets the coordinate space for texture mapping. The default mode is IMAGE which refers to the actual coordinates of the image. NORMAL refers to a normalized space of values ranging from 0 to 1. This function only works in WEBGL mode.
textureMode__description__1 = With IMAGE, if an image is 100 x 200 pixels, mapping the image onto the entire size of a quad would require the points (0,0) (100, 0) (100,200) (0,200). The same mapping in NORMAL is (0,0) (1,0) (1,1) (0,1).
textureMode__params__mode = Constant: either IMAGE or NORMAL
textureWrap__description__0 = Sets the global texture wrapping mode. This controls how textures behave when their uv's go outside of the 0 - 1 range. There are three options: CLAMP, REPEAT, and MIRROR.
textureWrap__description__1 = CLAMP causes the pixels at the edge of the texture to extend to the bounds REPEAT causes the texture to tile repeatedly until reaching the bounds MIRROR works similarly to REPEAT but it flips the texture with every new tile
textureWrap__description__2 = REPEAT & MIRROR are only available if the texture is a power of two size (128, 256, 512, 1024, etc.).
textureWrap__description__3 = This method will affect all textures in your sketch until a subsequent textureWrap call is made.
textureWrap__description__4 = If only one argument is provided, it will be applied to both the horizontal and vertical axes.
textureWrap__params__wrapX = Constant: either CLAMP, REPEAT, or MIRROR
textureWrap__params__wrapY = Constant: (Optional) either CLAMP, REPEAT, or MIRROR
normalMaterial__description__0 = Material normal para geometría. Puedes ver todos los posibles materiales en este ejemplo (TODO).
ambientMaterial__description__0 = Material ambiente para geometría con un color dado. Puedes ver todos los posibles materiales en este ejemplo (TODO).
ambientMaterial__params__v1 = Número|Arreglo|String|p5.Color: valor de gris, rojo o tinte (dependiendo del modo de color), o arreglo de color, o String de color CSS
ambientMaterial__params__v2 = Número: opcional, valor de verde o saturación
ambientMaterial__params__v3 = Número: opcional, valor de azul o brillo
ambientMaterial__params__color = Number[]|String|p5.Color: color, color Array, or CSS color string
emissiveMaterial__description__0 = Sets the emissive color of the material used for geometry drawn to the screen. This is a misnomer in the sense that the material does not actually emit light that effects surrounding polygons. Instead, it gives the appearance that the object is glowing. An emissive material will display at full strength even if there is no light for it to reflect.
emissiveMaterial__params__v1 = Number: gray value, red or hue value  (depending on the current color mode),
emissiveMaterial__params__v2 = Number: (Optional) green or saturation value
emissiveMaterial__params__v3 = Number: (Optional) blue or brightness value
emissiveMaterial__params__a = Number: (Optional) opacity
emissiveMaterial__params__color = Number[]|String|p5.Color: color, color Array, or CSS color string
specularMaterial__description__0 = Material espejo para geometría con un color dado. Puedes ver todos los posibles materiales en este ejemplo.
specularMaterial__params__gray = Number: number specifying value between white and black.
specularMaterial__params__alpha = Número: opcional, valor de opacidad
specularMaterial__params__v1 = Número|Arreglo|String|p5.Color: valor de gris, rojo o tinte (dependiendo del modo de color), o arreglo de color, o String de color CSS
specularMaterial__params__v2 = Número: opcional, valor de verde o saturación
specularMaterial__params__v3 = Número: opcional, valor de azul o brillo
specularMaterial__params__color = Number[]|String|p5.Color: color Array, or CSS color string
shininess__description__0 = Sets the amount of gloss in the surface of shapes. Used in combination with specularMaterial() in setting the material properties of shapes. The default and minimum value is 1.
shininess__params__shine = Number: Degree of Shininess.  Defaults to 1.
camera__description__0 = Define la posición de la cámara
camera__description__1 = This function simulates the movements of the camera, allowing objects to be viewed from various angles. Remember, it does not move the objects themselves but the camera instead. For example when the centerX value is positive, and the camera is rotating to the right side of the sketch, the object will seem like it's moving to the left.
camera__description__2 = See this <a href = "https://www.openprocessing.org/sketch/740258">example</a> to view the position of your camera.
camera__description__3 = If no parameters are given, the following default is used: camera(0, 0, (height/2) / tan(PI/6), 0, 0, 0, 0, 1, 0)
camera__params__x = Número: valor de la posición de la cámara en el eje x
camera__params__y = Número: valor de la posición de la cámara en el eje y
camera__params__z = Número: valor de la posición de la cámara en el eje z
camera__params__centerX = Number: (Optional) x coordinate representing center of the sketch
camera__params__centerY = Number: (Optional) y coordinate representing center of the sketch
camera__params__centerZ = Number: (Optional) z coordinate representing center of the sketch
camera__params__upX = Number: (Optional) x component of direction 'up' from camera
camera__params__upY = Number: (Optional) y component of direction 'up' from camera
camera__params__upZ = Number: (Optional) z component of direction 'up' from camera
perspective__description__0 = Define la perspectiva de la cámara
perspective__description__1 = The parameters to this function define the viewing frustum (the truncated pyramid within which objects are seen by the camera) through vertical field of view, aspect ratio (usually width/height), and near and far clipping planes.
perspective__description__2 = If no parameters are given, the following default is used: perspective(PI/3, width/height, eyeZ/10, eyeZ*10), where eyeZ is equal to ((height/2) / tan(PI/6)).
perspective__params__fovy = Número: frustum del campo de visión vertical de la cámara, de abajo hacia arriba, en grados
perspective__params__aspect = Número: frustum de la relación de aspecto de la cámara
perspective__params__near = Número: frustum del largo del plano cercano
perspective__params__far = Número: frustum del largo del plano lejano
ortho__description__0 = Define la cámara ortogonal
ortho__description__1 = The parameters to this function specify the viewing frustum where left and right are the minimum and maximum x values, top and bottom are the minimum and maximum y values, and near and far are the minimum and maximum z values.
ortho__description__2 = If no parameters are given, the following default is used: ortho(-width/2, width/2, -height/2, height/2).
ortho__params__left = Número: define el frustum del plano izquierdo de la cámara
ortho__params__right = Número: define el frustum del plano derecho de la cámara
ortho__params__bottom = Número: define el frustum del plano inferior de la cámara
ortho__params__top = Número: define el frustum del plano superior de la cámara
ortho__params__near = Número: define el frustum del plano cercano de la cámara
ortho__params__far = Número: define el frustum del plano lejano de la cámara
frustum__description__0 = Sets a perspective matrix as defined by the parameters.
frustum__description__1 = A frustum is a geometric form: a pyramid with its top cut off. With the viewer's eye at the imaginary top of the pyramid, the six planes of the frustum act as clipping planes when rendering a 3D view. Thus, any form inside the clipping planes is visible; anything outside those planes is not visible.
frustum__description__2 = Setting the frustum changes the perspective of the scene being rendered. This can be achieved more simply in many cases by using <a href="https://p5js.org/reference/#/p5/perspective">perspective()</a>.
frustum__description__3 = If no parameters are given, the following default is used: frustum(-width/2, width/2, -height/2, height/2, 0, max(width, height)).
frustum__params__left = Number: (Optional) camera frustum left plane
frustum__params__right = Number: (Optional) camera frustum right plane
frustum__params__bottom = Number: (Optional) camera frustum bottom plane
frustum__params__top = Number: (Optional) camera frustum top plane
frustum__params__near = Number: (Optional) camera frustum near plane
frustum__params__far = Number: (Optional) camera frustum far plane
createCamera__description__0 = Creates a new <a href="#/p5.Camera">p5.Camera</a> object and tells the renderer to use that camera. Returns the p5.Camera object.
createCamera__description__1 = The new camera is initialized with a default position (see <a href="#/p5.Camera/camera">camera()</a>) and a default perspective projection (see <a href="#/p5.Camera/perspective">perspective()</a>). Its properties can be controlled with the <a href="#/p5.Camera">p5.Camera</a> methods.
createCamera__description__2 = Note: Every 3D sketch starts with a default camera initialized. This camera can be controlled with the global methods <a href="#/p5/camera">camera()</a>, <a href="#/p5/perspective">perspective()</a>, <a href="#/p5/ortho">ortho()</a>, and <a href="#/p5/frustum">frustum()</a> if it is the only camera in the scene.
createCamera__returns = p5.Camera: The newly created camera object.
setCamera__description__0 = Sets rendererGL's current camera to a p5.Camera object. Allows switching between multiple cameras.
setCamera__params__cam = p5.Camera: p5.Camera object
setAttributes__description__0 = Set attributes for the WebGL Drawing context. This is a way of adjusting how the WebGL renderer works to fine-tune the display and performance.
setAttributes__description__1 = Note that this will reinitialize the drawing context if called after the WebGL canvas is made.
setAttributes__description__2 = If an object is passed as the parameter, all attributes not declared in the object will be set to defaults.
setAttributes__description__3 = The available attributes are:  alpha - indicates if the canvas contains an alpha buffer default is true
setAttributes__description__4 = depth - indicates whether the drawing buffer has a depth buffer of at least 16 bits - default is true
setAttributes__description__5 = stencil - indicates whether the drawing buffer has a stencil buffer of at least 8 bits
setAttributes__description__6 = antialias - indicates whether or not to perform anti-aliasing default is false (true in Safari)
setAttributes__description__7 = premultipliedAlpha - indicates that the page compositor will assume the drawing buffer contains colors with pre-multiplied alpha default is false
setAttributes__description__8 = preserveDrawingBuffer - if true the buffers will not be cleared and and will preserve their values until cleared or overwritten by author (note that p5 clears automatically on draw loop) default is true
setAttributes__description__9 = perPixelLighting - if true, per-pixel lighting will be used in the lighting shader otherwise per-vertex lighting is used. default is true.
setAttributes__params__key = String: Name of attribute
setAttributes__params__value = Boolean: New value of named attribute
setAttributes__params__obj = Object: object with key-value pairs
getAudioContext__description__0 = Returns the Audio Context for this sketch. Useful for users who would like to dig deeper into the <a target='_blank' href= 'http://webaudio.github.io/web-audio-api/'>Web Audio API </a>.
getAudioContext__description__1 = Some browsers require users to startAudioContext with a user gesture, such as touchStarted in the example below.
getAudioContext__returns = Object: AudioContext for this sketch
userStartAudio__description__0 = It is not only a good practice to give users control over starting audio. This policy is enforced by many web browsers, including iOS and <a href="https://goo.gl/7K7WLu" title="Google Chrome's autoplay policy">Google Chrome</a>, which create the Web Audio API's <a href="https://developer.mozilla.org/en-US/docs/Web/API/AudioContext" title="Audio Context @ MDN">Audio Context</a> in a suspended state.
userStartAudio__description__1 = In these browser-specific policies, sound will not play until a user interaction event (i.e. <code>mousePressed()</code>) explicitly resumes the AudioContext, or starts an audio node. This can be accomplished by calling <code>start()</code> on a <code>p5.Oscillator</code>, <code> play()</code> on a <code>p5.SoundFile</code>, or simply <code>userStartAudio()</code>.
userStartAudio__description__2 = <code>userStartAudio()</code> starts the AudioContext on a user gesture. The default behavior will enable audio on any mouseUp or touchEnd event. It can also be placed in a specific interaction function, such as <code>mousePressed()</code> as in the example below. This method utilizes <a href="https://github.com/tambien/StartAudioContext">StartAudioContext </a>, a library by Yotam Mann (MIT Licence, 2016).
userStartAudio__returns = Promise: Returns a Promise that resolves when  the AudioContext state is 'running'
userStartAudio__params__element-_leftBracket_-s-_rightBracket_- = Element|Array: (Optional) This argument can be an Element,  Selector String, NodeList, p5.Element,  jQuery Element, or an Array of any of those.
userStartAudio__params__callback = Function: (Optional) Callback to invoke when the AudioContext  has started
getOutputVolume__description__0 = Returns a number representing the output volume for sound in this sketch.
getOutputVolume__returns = Number: Output volume for sound in this sketch.  Should be between 0.0 (silence) and 1.0.
outputVolume__description__0 = Scale the output of all sound in this sketch Scaled between 0.0 (silence) and 1.0 (full volume). 1.0 is the maximum amplitude of a digital sound, so multiplying by greater than 1.0 may cause digital distortion. To fade, provide a <code>rampTime</code> parameter. For more complex fades, see the Envelope class.
outputVolume__description__1 = Alternately, you can pass in a signal source such as an oscillator to modulate the amplitude with an audio signal.
outputVolume__description__2 = <b>How This Works</b>: When you load the p5.sound module, it creates a single instance of p5sound. All sound objects in this module output to p5sound before reaching your computer's output. So if you change the amplitude of p5sound, it impacts all of the sound in this module.
outputVolume__description__3 = If no value is provided, returns a Web Audio API Gain Node
outputVolume__params__volume = Number|Object: Volume (amplitude) between 0.0  and 1.0 or modulating signal/oscillator
outputVolume__params__rampTime = Number: (Optional) Fade for t seconds
outputVolume__params__timeFromNow = Number: (Optional) Schedule this event to happen at  t seconds in the future
soundOut__description__0 = <code>p5.soundOut</code> is the p5.sound final output bus. It sends output to the destination of this window's web audio context. It contains Web Audio API nodes including a dyanmicsCompressor (<code>.limiter</code>), and Gain Nodes for <code>.input</code> and <code>.output</code>.
sampleRate__description__0 = Returns a number representing the sample rate, in samples per second, of all sound objects in this audio context. It is determined by the sampling rate of your operating system's sound card, and it is not currently possile to change. It is often 44100, or twice the range of human hearing.
sampleRate__returns = Number: samplerate samples per second
freqToMidi__description__0 = Returns the closest MIDI note value for a given frequency.
freqToMidi__returns = Number: MIDI note value
freqToMidi__params__frequency = Number: A freqeuncy, for example, the "A"  above Middle C is 440Hz
midiToFreq__description__0 = Returns the frequency value of a MIDI note value. General MIDI treats notes as integers where middle C is 60, C# is 61, D is 62 etc. Useful for generating musical frequencies with oscillators.
midiToFreq__returns = Number: Frequency value of the given MIDI note
midiToFreq__params__midiNote = Number: The number of a MIDI note
soundFormats__description__0 = List the SoundFile formats that you will include. LoadSound will search your directory for these extensions, and will pick a format that is compatable with the client's web browser. <a href="http://media.io/">Here</a> is a free online file converter.
soundFormats__params__formats = String: (Optional) i.e. 'mp3', 'wav', 'ogg'
saveSound__description__0 = Save a p5.SoundFile as a .wav file. The browser will prompt the user to download the file to their device. For uploading audio to a server, use <a href="/docs/reference/#/p5.SoundFile/saveBlob"><code>p5.SoundFile.saveBlob</code></a>.
saveSound__params__soundFile = p5.SoundFile: p5.SoundFile that you wish to save
saveSound__params__fileName = String: name of the resulting .wav file.
loadSound__description__0 = loadSound() returns a new p5.SoundFile from a specified path. If called during preload(), the p5.SoundFile will be ready to play in time for setup() and draw(). If called outside of preload, the p5.SoundFile will not be ready immediately, so loadSound accepts a callback as the second parameter. Using a <a href="https://github.com/processing/p5.js/wiki/Local-server"> local server</a> is recommended when loading external files.
loadSound__returns = SoundFile: Returns a p5.SoundFile
loadSound__params__path = String|Array: Path to the sound file, or an array with  paths to soundfiles in multiple formats  i.e. ['sound.ogg', 'sound.mp3'].  Alternately, accepts an object: either  from the HTML5 File API, or a p5.File.
loadSound__params__successCallback = Function: (Optional) Name of a function to call once file loads
loadSound__params__errorCallback = Function: (Optional) Name of a function to call if there is  an error loading the file.
loadSound__params__whileLoading = Function: (Optional) Name of a function to call while file is loading.  This function will receive the percentage loaded  so far, from 0.0 to 1.0.
createConvolver__description__0 = Create a p5.Convolver. Accepts a path to a soundfile that will be used to generate an impulse response.
createConvolver__returns = p5.Convolver:
createConvolver__params__path = String: path to a sound file
createConvolver__params__callback = Function: (Optional) function to call if loading is successful.  The object will be passed in as the argument  to the callback function.
createConvolver__params__errorCallback = Function: (Optional) function to call if loading is not successful.  A custom error will be passed in as the argument  to the callback function.
setBPM__description__0 = Set the global tempo, in beats per minute, for all p5.Parts. This method will impact all active p5.Parts.
setBPM__params__BPM = Number: Beats Per Minute
setBPM__params__rampTime = Number: Seconds from now
