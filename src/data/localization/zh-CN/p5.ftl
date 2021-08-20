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
alpha__description__0 = 从颜色或像素数组中提取透明度（alpha）值。
alpha__returns = 数字：该透明度值
alpha__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
blue__description__0 = 从颜色或像素数组中提取蓝色彩值。
blue__returns = 数字：该蓝色彩值
blue__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
brightness__description__0 = 从颜色或像素数组中提取 HSB 的亮度值。
brightness__returns = 数字：该亮度值
brightness__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
color__description__0 = 创造颜色物件并将其存放在颜色变量内。依当时的颜色模式而定，参数可被解读成 RGB 或 HSB 值。默认模式为 RGB 值从 0 至 255，因此调用函数 color(255, 204, 0) 将返回亮黄色。<br><br>请注意如果 color() 值被提供一个参数，它将被解读成灰阶值；增加多一个参数，它将被用来定义透明度。当被提供三个参数时，它们将被解读成 RGB 或 HSB 值；增加第四个参数将定义透明度。<br><br>如果只提供单一字符串参数，RGB、RGBA 和 十六进制 CSS 颜色字符串都为受支持的模式。在这情况下，提供第二个参数以定义透明度值并不被支持，而需使用 RGBA 字符串。
color__description__1 = Note that if only one value is provided to <a href="#/p5/color">color()</a>, it will be interpreted as a grayscale value. Add a second value, and it will be used for alpha transparency. When three values are specified, they are interpreted as either RGB or HSB values. Adding a fourth value applies alpha transparency.
color__description__2 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
color__returns = p5.Color：返回的颜色
color__params__gray = 数字：一个定义白与黑之间的数值
color__params__alpha = 数字：透明度值，需在被定义的范围内（默认为 0 至 255）
color__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
color__params__v2 = 数字：绿彩值或饱和度值，需在被定义的范围内
color__params__v3 = 数字：蓝彩值或亮度值，需在被定义的范围内
color__params__value = 字符串：颜色字符串
color__params__values = 数字[]：一个有红、绿、蓝及透明度值的数组
color__params__color = p5.Color：
green__description__0 = 从颜色或像素数组中提取绿色彩值。
green__returns = 数字：该绿色彩值
green__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
hue__description__0 = 从颜色或像素数组中提取色调值。<br><br>色调值可在 HSB 及 HSL 颜色中找到。此函数会返回标准化 HSB 值的色调值只要被提供的参数是 HSB 颜色物件（或如果被提供的参数是像素数组，颜色模式是 HSB），不然默认将会返回标准化 HSL 值的色调值。（两者的值只有在这两个不同的系统有不同的最高色调值时才会有差别）
hue__description__1 = Hue exists in both HSB and HSL. This function will return the HSB-normalized hue when supplied with an HSB color object (or when supplied with a pixel array while the color mode is HSB), but will default to the HSL-normalized hue otherwise. (The values will only be different if the maximum hue setting for each system is different.)
hue__returns = 数字：该色调值
hue__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
lerpColor__description__0 = 混合两个颜色以找到一个介于它们之间的颜色。<br><br>amt 参数代表两个值之间插入的量，0.0 代表第一个颜色、0.1 代表非常接近第一个颜色、0.5 代表两个颜色之间的一半等等。低于 0 的值将被当作 0 看待。这和 lerp() 的行为不一样不过这是因为在范围外的值可能产生奇怪和意料之外的颜色。
lerpColor__description__1 = The way that colors are interpolated depends on the current color mode.
lerpColor__returns = p5.Color：插值颜色
lerpColor__params__c1 = p5.Color：从这颜色开始插入
lerpColor__params__c2 = p5.Color：在这颜色结束插入
lerpColor__params__amt = 数字：一个介于 0 和 1 的数字
lightness__description__0 = 从颜色或像素数组中提取 HSL 的光度值。
lightness__returns = 数字：该光度值
lightness__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
red__description__0 = 从颜色或像素数组中提取红色彩值。
red__returns = 数字：该红色彩值
red__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
saturation__description__0 = 从颜色或像素数组中提取饱和度值。<br><br>饱和度在 HSB 和 HSL 模式中的缩放比例不同。此函数将会返回 HSB 值的饱和度值只要被提供的参数是 HSB 颜色物件（或如果被提供的参数是像素数组，颜色模式是 HSB），不然默认将会返回 HSL 值的饱和度值。
saturation__description__1 = Saturation is scaled differently in HSB and HSL. This function will return the HSB saturation when supplied with an HSB color object (or when supplied with a pixel array while the color mode is HSB), but will default to the HSL saturation otherwise.
saturation__returns = 数字：该饱和度值
saturation__params__color = p5.Color | 数字数组 | 字符串：p5.Color 物件、颜色部件或 CSS 颜色值
background__description__0 = background() 函数设定 p5.js 画布的背景颜色。默认背景颜色为浅灰色。这函数通常用在 draw() 函数内以在各画面开始时清空画布，不过它也能在 setup() 内使用以定义第一个画面的背景颜色或当背景颜色只需要被定义一次时。<br><br>背景颜色可用 RGB、HSB 或 HSL 颜色定义，取决于当时的颜色模式（默认色彩空间是 RGB，而每个数值都介于 0 至 255 之间）。默认透明度值也介于 0 至 255 之间。<br><br>如果所提供的参数是单一字符串，RGB、RGBA 和十六进制 CSS 颜色字符串及所有命名颜色都可以使用。在这情况下，提供第二个参数以定义透明度值并不被支持，而需使用 RGBA 字符串。<br><br>p5.Color 物件也能被用来定义背景颜色。<br><br>p5.Image 也能被用来提供背景图像。
background__description__1 = The color is either specified in terms of the RGB, HSB, or HSL color depending on the current <a href="#/p5/colorMode">colorMode</a>. (The default color space is RGB, with each value in the range from 0 to 255). The alpha range by default is also 0 to 255.
background__description__2 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
background__description__3 = A <a href="#/p5.Color">p5.Color</a> object can also be provided to set the background color.
background__description__4 = A <a href="#/p5.Image">p5.Image</a> can also be provided to set the background image.
background__params__color = p5.Color：任何使用 color() 函数创造的颜色
background__params__colorstring = 字符串：颜色字符串，可接受的格式包括：整数 rgb() 或 rgba()、百分率 rgb() 或 rgba()、3 位十六进制、6 位十六进制
background__params__a = 数字：透明度值，需在被定义的范围内（默认为 0 至 255）
background__params__gray = 数字：一个定义白与黑之间的数值
background__params__v1 = 数字：红彩值或色调值（取决于当时的颜色模式）
background__params__v2 = 数字：绿彩值或饱和度值（取决于当时的颜色模式）
background__params__v3 = 数字：蓝彩值或亮度值（取决于当时的颜色模式）
background__params__values = 数字[]：一个有红、绿、蓝及透明度值的数组
background__params__image = p5.Image：一个使用 loadImage() 或 createImage() 创造的图像，用以设定背景图像（必须和画布有相同的大小）
clear__description__0 = 清除图形缓冲区内的像素。这函数只能用于使用 createCanvas() 函数创造的 p5.Canvas 物件，而不能用于主要的显示窗口。使用 createGraphics() 创造的图形缓冲并不像主要的图形缓冲，它们能是完全透明或半透明的。这函数将清空所有东西使每个像素都是 100% 透明。
colorMode__description__0 = colorMode() 改变 p5.js 解读颜色资料的方式。默认情况下，fill()、stroke()、background() 及 color() 的参数都是介于 0 至 255 的 RGB 颜色值。这和设置 colorMode(RGB, 255) 的效果一样。设置 colorMode(HSB) 让您使用 HSB 模式，默认情况下，这代表 colorMode(HSB, 360, 100, 100, 1)。您也可以使用 HSL。
colorMode__description__1 = Note: existing color objects remember the mode that they were created in, so you can change modes as you like without affecting their appearance.
colorMode__params__mode = 常量: RGB、HSB 或 HSL，分别代表红绿蓝及色调/饱和度/亮度（或光度）
colorMode__params__max = 数字：所有数值的最大值
colorMode__params__max1 = 数字：红色值或色调值的最大值，取决于当时的颜色模式
colorMode__params__max2 = 数字：绿色值或饱和度值的最大值，取决于当时的颜色模式
colorMode__params__max3 = 数字：蓝色值或亮度/光度值的最大值，取决于当时的颜色模式
colorMode__params__maxA = 数字：透明度值的最大值
fill__description__0 = 设置形状的填充色。比如说，如果您调用 fill(204, 102, 0)，所有接下来的形状都会被填上橙色。这颜色可用 RGB 或 HSB 颜色定义，取决于当时的颜色模式（默认色彩空间是 RGB，而每个数值都介于 0 至 255 之间）。默认透明度值也介于 0 至 255 之间。<br><br>如果所提供的参数是单一字符串，RGB、RGBA 和十六进制 CSS 颜色字符串及所有命名颜色都可以使用。在这情况下，提供第二个参数以定义透明度值并不被支持，而需使用 RGBA 字符串。<br><br>p5.Color 物件也能被用来定义填充颜色。
fill__description__1 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
fill__description__2 = A p5 <a href="#/p5.Color">Color</a> object can also be provided to set the fill color.
fill__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
fill__params__v2 = 数字：绿彩值或饱和度值，需在被定义的范围内
fill__params__v3 = 数字：蓝彩值或亮度值，需在被定义的范围内
fill__params__alpha = 数字：
fill__params__value = 字符串：颜色字符串
fill__params__gray = 数字：灰阶值
fill__params__values = 数字[]：一个有红、绿、蓝及透明度值的数组
fill__params__color = p5.Color：填充色
noFill__description__0 = 禁用形状填充。如果 noStroke() 和 noFill() 都被调用的话，没有形状会被画在荧幕上。
noStroke__description__0 = 禁用形状外线。如果 noStroke() 和 noFill() 都被调用的话，没有形状会被画在荧幕上。
stroke__description__0 = 设置形状的外形线色。这颜色可用 RGB 或 HSB 颜色定义，取决于当时的颜色模式（默认色彩空间是 RGB，而每个数值都介于 0 至 255 之间）。默认透明度值也介于 0 至 255 之间。<br><br>如果所提供的参数是单一字符串，RGB、RGBA 和十六进制 CSS 颜色字符串及所有命名颜色都可以使用。在这情况下，提供第二个参数以定义透明度值并不被支持，而需使用 RGBA 字符串。<br><br>p5.Color 物件也能被用来定义外形线颜色。
stroke__description__1 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
stroke__description__2 = A p5 <a href="#/p5.Color">Color</a> object can also be provided to set the stroke color.
stroke__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
stroke__params__v2 = 数字：绿彩值或饱和度值，需在被定义的范围内
stroke__params__v3 = 数字：蓝彩值或亮度值，需在被定义的范围内
stroke__params__alpha = 数字：
stroke__params__value = 字符串：颜色字符串
stroke__params__gray = 数字：灰阶值
stroke__params__values = 数字[]：一个有红、绿、蓝及透明度值的数组
stroke__params__color = p5.Color：外形线色
erase__description__0 = All drawing that follows <a href="#/p5/erase">erase()</a> will subtract from the canvas.Erased areas will reveal the web page underneath the canvas.Erasing can be canceled with <a href="#/p5/noErase">noErase()</a>.
erase__description__1 = Drawing done with <a href="#/p5/image">image()</a> and <a href="#/p5/background"> background()</a> in between <a href="#/p5/erase">erase()</a> and <a href="#/p5/noErase">noErase()</a> will not erase the canvas but works as usual.
erase__params__strengthFill = Number: (Optional) A number (0-255) for the strength of erasing for a shape's fill.  This will default to 255 when no argument is given, which  is full strength.
erase__params__strengthStroke = Number: (Optional) A number (0-255) for the strength of erasing for a shape's stroke.  This will default to 255 when no argument is given, which  is full strength.
noErase__description__0 = Ends erasing that was started with <a href="#/p5/erase">erase()</a>. The <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, and <a href="#/p5/blendMode">blendMode()</a> settings will return to what they were prior to calling <a href="#/p5/erase">erase()</a>.
arc__description__0 = 在荧幕上画个弧形。如果函数调用只提供 x、y、w、h、start 及 stop 参数，弧形将会被画成开放的饼形段。如果提供 mode 参数，弧形可是开放式半圆形（OPEN）、封闭式半圆形（CHORD）或封闭式饼形段（PIE）。原点可使用 ellipseMode() 函数设定。
arc__description__1 = The arc is always drawn clockwise from wherever start falls to wherever stop falls on the ellipse. Adding or subtracting TWO_PI to either angle does not change where they fall. If both start and stop fall at the same place, a full ellipse will be drawn. Be aware that the y-axis increases in the downward direction, therefore angles are measured clockwise from the positive x-direction ("3 o'clock").
arc__params__x = 数字：弧形的椭圆形的 x 坐标
arc__params__y = 数字：弧形的椭圆形的 y 坐标
arc__params__w = 数字：弧形的椭圆形的宽度
arc__params__h = 数字：弧形的椭圆形的高度
arc__params__start = 数字：弧形开始的角度，用弧度定义
arc__params__stop = 数字：弧形结束的角度，用弧度定义
arc__params__mode = 常数：可选参数用以定义弧形的画法，可用 CHORD、PIE 或 OPEN
arc__params__detail = Number: (Optional) optional parameter for WebGL mode only. This is to  specify the number of vertices that makes up the  perimeter of the arc. Default value is 25.
ellipse__description__0 = 在荧幕上画个椭圆形。宽度和高度相同的椭圆形为正圆形。在默认上，前两个参数将定义位置而第三和第四个参数将定义形状的宽度和高度。如果高度参数没有被提供的话，宽度参数值将为用来定义高度和宽度。如果高度或宽度为负数，函数将会取绝对值。原点可使用 ellipseMode() 函数设定。
ellipse__description__1 = An ellipse with equal width and height is a circle. The origin may be changed with the <a href="#/p5/ellipseMode">ellipseMode()</a> function.
ellipse__params__x = 数字：椭圆形的 x 坐标
ellipse__params__y = 数字：椭圆形的 y 坐标
ellipse__params__w = 数字：椭圆形的宽度
ellipse__params__h = 数字：椭圆形的高度
ellipse__params__detail = 整数：椭圆形的径向扇区数
circle__description__0 = Draws a circle to the screen. A circle is a simple closed shape.It is the set of all points in a plane that are at a given distance from a given point, the centre.This function is a special case of the ellipse() function, where the width and height of the ellipse are the same. Height and width of the ellipse correspond to the diameter of the circle. By default, the first two parameters set the location of the centre of the circle, the third sets the diameter of the circle.
circle__params__x = Number: x-coordinate of the centre of the circle.
circle__params__y = Number: y-coordinate of the centre of the circle.
circle__params__d = Number: diameter of the circle.
line__description__0 = 在荧幕上画个直线（两点之间的直接路径）。有四个参数的 line() 函数将画个二维直线。如果要将直线上色，可使用 stroke() 函数。直线并不能有填充色，因此 fill() 函数将不会影响直线的颜色。二维直线在默认情况下有一像素的宽度，不过您可以使用 strokeWeight() 函数更改宽度。
line__params__x1 = 数字：第一个点的 x 坐标
line__params__y1 = 数字：第一个点的 y 坐标
line__params__x2 = 数字：第二个点的 y 坐标
line__params__y2 = 数字：第一个点的 z 坐标
line__params__z1 = 数字：第二个点的 x 坐标
line__params__z2 = 数字：第二个点的 z 坐标
point__description__0 = 画一个点，一个在空间内一像素的坐标。第一个参数是点的横向值，第二个参数是点的垂直值。点的颜色是由当时的外线色决定。
point__params__x = 数字：x 坐标
point__params__y = 数字：y 坐标
point__params__z = 数字：z 坐标（用于 WEBGL 模式
point__params__coordinate_vector = p5.Vector: the coordinate vector
quad__description__0 = 画一个四角形。四角形或四边形是个有四个边的多边形。他和方形相似不过四个角并不需要是九十度。前两个参数 （x1、x2）定义第一个点而随后的配对参数应该以顺时或逆时针的方向定义。
quad__params__x1 = 数字：第一个点的 x 坐标
quad__params__y1 = 数字：第一个点的 y 坐标
quad__params__x2 = 数字：第二个点的 y 坐标
quad__params__y2 = 数字：第三个点的 x 坐标
quad__params__x3 = 数字：第四个点的 x 坐标
quad__params__y3 = 数字：第四个点的 y 坐标
quad__params__x4 = 数字：
quad__params__y4 = 数字：
quad__params__detailX = Integer: (Optional) number of segments in the x-direction
quad__params__detailY = Integer: (Optional) number of segments in the y-direction
quad__params__z1 = 数字：第二个点的 x 坐标
quad__params__z2 = 数字：第三个点的 y 坐标
quad__params__z3 = 数字：
quad__params__z4 = 数字：
rect__description__0 = 在荧幕上画个方形。方形是每个角都为九十度的四边形。在默认上，前两个参数将定义位置而第三和第四个参数将定义形状的宽度和高度。这些参数被解读的方式可用 rectMode() 函数改变。<br><br>如果提供第五、六、七及八个参数，将定义左上角、右上角、右下角及左下角的拐角半径。没被定义的拐角半径参数将被定义为参数列内上一个定义的拐角半径值。
rect__description__1 = The fifth, sixth, seventh and eighth parameters, if specified, determine corner radius for the top-left, top-right, lower-right and lower-left corners, respectively. An omitted corner radius parameter is set to the value of the previously specified radius value in the parameter list.
rect__params__x = 数字：方形的 x 坐标
rect__params__y = 数字：方形的 y 坐标
rect__params__w = 数字：方形的宽度
rect__params__h = 数字：方形的高度
rect__params__tl = 数字：可选性左上角拐角半径值
rect__params__tr = 数字：可选性右上角拐角半径值
rect__params__br = 数字：可选性右下角拐角半径值
rect__params__bl = 数字：可选性左下角拐角半径值
rect__params__detailX = 整数：x 方向段数
rect__params__detailY = 整数：y 方向段数
square__description__0 = Draws a square to the screen. A square is a four-sided shape with every angle at ninety degrees, and equal side size. This function is a special case of the rect() function, where the width and height are the same, and the parameter is called "s" for side size. By default, the first two parameters set the location of the upper-left corner, the third sets the side size of the square. The way these parameters are interpreted, may be changed with the <a href="#/p5/rectMode">rectMode()</a> function.
square__description__1 = The fourth, fifth, sixth and seventh parameters, if specified, determine corner radius for the top-left, top-right, lower-right and lower-left corners, respectively. An omitted corner radius parameter is set to the value of the previously specified radius value in the parameter list.
square__params__x = Number: x-coordinate of the square.
square__params__y = Number: y-coordinate of the square.
square__params__s = Number: side size of the square.
square__params__tl = Number: (Optional) optional radius of top-left corner.
square__params__tr = Number: (Optional) optional radius of top-right corner.
square__params__br = Number: (Optional) optional radius of bottom-right corner.
square__params__bl = Number: (Optional) optional radius of bottom-left corner.
triangle__description__0 = 三角形是个由连接三个点所形成的平面形。前两个参数定义第一个点，中间两个参数定义第二个点而最后两个参数定义第三个点。
triangle__params__x1 = 数字：第一个点的 x 坐标
triangle__params__y1 = 数字：第一个点的 y 坐标
triangle__params__x2 = 数字：第二个点的 x 坐标
triangle__params__y2 = 数字：第二个点的 y 坐标
triangle__params__x3 = 数字：第三个点的 x 坐标
triangle__params__y3 = 数字：第三个点的 y 坐标
ellipseMode__description__0 = 更改 ellipse() 参数被解读的方式，用以更改椭圆形被画在画布上的位置。<br><br>默认模式为 ellipseMode(CENTER)，ellipse() 前两个参数将被解读成椭圆形的中心点，而第三和第四个参数为宽度和高度。<br><br>ellipseMode(RADIUS) 将 ellipse() 的前两个参数解读成形状的中心点，但是第三和第四个参数被用于定义形状的半径宽度和半径高度<br><br>ellipseMode(CORNER) 将 ellipse() 的前两个参数解读成形状左上角的位置，而第三和第四个参数为宽度和高度<br><br>ellipseMode(CORNERS) 将 ellipse() 的前两个参数解读成形状其中一个角落的位置，而第三和第四个参数则被解读成对面角落的位置。<br><br>参数必须全是大写因为 Javascript 是个区分大小写的编程语言。
ellipseMode__description__1 = The default mode is CENTER, in which the first two parameters are interpreted as the shape's center point's x and y coordinates respectively, while the third and fourth parameters are its width and height.
ellipseMode__description__2 = ellipseMode(RADIUS) also uses the first two parameters as the shape's center point's x and y coordinates, but uses the third and fourth parameters to specify half of the shapes's width and height.
ellipseMode__description__3 = ellipseMode(CORNER) interprets the first two parameters as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
ellipseMode__description__4 = ellipseMode(CORNERS) interprets the first two parameters as the location of one corner of the ellipse's bounding box, and the third and fourth parameters as the location of the opposite corner.
ellipseMode__description__5 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
ellipseMode__params__mode = 常量：CENTER、RADIUS、CORNER 或 CORNERS
noSmooth__description__0 = 所有形状的边缘都为锯齿状。注意 smooth() 为默认模式所以您必须调用 noSmooth() 以禁用平滑形状、图像及字体。
rectMode__description__0 = 更改 rect() 参数被解读的方式，用以更改方形被画在画布上的位置。<br><br>默认模式为 rectMode(CORNER), rect() 前两个参数将被解读成形状的左上角的位置，而第三和第四个参数为宽度和高度。<br><br>rectMode(CORNERS) 将 rect() 的前两个参数解读成形状其中一个角落的位置，而第三和第四个参数则被解读成对面角落的位置。<br><br>rectMode(CENTER) 将 rect() 的前两个参数解读成形状的中心点，而第三和第四个参数为宽度和高度。<br><br>rectMode(RADIUS) 也将的前两个参数解读成形状的中心点，但第三和第四个参数被用来定义形状一半的宽度和一半的高度。<br><br>参数必须全是大写因为 Javascript 是个区分大小写的编程语言。
rectMode__description__1 = The default mode is CORNER, which interprets the first two parameters as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
rectMode__description__2 = rectMode(CORNERS) interprets the first two parameters as the location of one of the corners, and the third and fourth parameters as the location of the diagonally opposite corner. Note, the rectangle is drawn between the coordinates, so it is not neccesary that the first corner be the upper left corner.
rectMode__description__3 = rectMode(CENTER) interprets the first two parameters as the shape's center point, while the third and fourth parameters are its width and height.
rectMode__description__4 = rectMode(RADIUS) also uses the first two parameters as the shape's center point, but uses the third and fourth parameters to specify half of the shape's width and height respectively.
rectMode__description__5 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
rectMode__params__mode = 常量：CORNER、CORNERS、CENTER 或 RADIUS
smooth__description__0 = 所有形状的边缘都为非锯齿（平滑）状。smooth() 也将提高调整过大小的图像的素质。注意 smooth() 为默认模式；noSmooth() 也能用来禁用平滑形状、图像及字体。
strokeCap__description__0 = 定义线条顶点的风格。顶点风格可以是方形、扩展式或圆形，它们个别参数为：SQUARE、PROJECT 及 ROUND。默认模式为 ROUND。
strokeCap__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeCap__params__cap = 常量：SQUARE、PROJECT 或 ROUND
strokeJoin__description__0 = 定义线条连接的风格。这些链接可以是尖角、斜角或圆角，它们个别参数为：MITER、BEVEL 及 ROUND。默认模式为 MITER。
strokeJoin__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeJoin__params__join = 常量：MITER、BEVEL 或 ROUND
strokeWeight__description__0 = 定义线条、点及形状边线的宽度（粗度）。所有宽度单位都是像素。
strokeWeight__params__weight = 数字：线条的粗度（像素单位）
bezier__description__0 = 在荧幕上画个三次贝塞尔曲线。这些曲线是由一系列锚点和控制点所定义的。前两个参数定义第一个锚点而最后两个参数定义另一个锚点，这也是曲线的第一和最后一个点。中间的参数是用来定义控制点的位置并将决定曲线的形状。一般来说，控制点会将曲线“拉”向它们的方向。
bezier__description__1 = Bezier curves were developed by French automotive engineer Pierre Bezier, and are commonly used in computer graphics to define gently sloping curves. See also <a href="#/p5/curve">curve()</a>.
bezier__params__x1 = 数字：第一个锚点的 x 坐标
bezier__params__y1 = 数字：第一个锚点的 y 坐标
bezier__params__x2 = 数字：第一个控制点的 y 坐标
bezier__params__y2 = 数字：第二个控制点的 x 坐标
bezier__params__x3 = 数字：第二个锚点的 x 坐标
bezier__params__y3 = 数字：第二个锚点的 y 坐标
bezier__params__x4 = 数字：第一个控制点的 z 坐标
bezier__params__y4 = 数字：第二个锚点的 z 坐标
bezier__params__z1 = 数字：第一个控制点的 x 坐标
bezier__params__z2 = 数字：第二个控制点的 y 坐标
bezier__params__z3 = 数字：第一个锚点的 z 坐标
bezier__params__z4 = 数字：第二个控制点的 z 坐标
bezierDetail__description__0 = 定义贝塞尔曲线的解析度<br><br>默认值为 20。<br><br>这函数只有在 WEBGL 模式下有效果因为默认画布渲染模式并不会使用这设定。
bezierDetail__description__1 = Note, This function is only useful when using the WEBGL renderer as the default canvas renderer does not use this information.
bezierDetail__params__detail = 数字：曲线的解析度
bezierPoint__description__0 = 计算在 a、b、c、d 点定义的贝塞尔曲线上 t 位置的坐标。a 和 d 参数分别为曲线上第一和最后一个点，而 b 和 c 为控制点。最后一个 t 参数可在 0 和 1 的范围内。这函数可以先调用 x 坐标然后在调用 y 坐标已找到曲线上 t 位置的点坐标。
bezierPoint__returns = 数字：贝塞尔曲线上 t 位置的值
bezierPoint__params__a = 数字：曲线上第一个点的坐标
bezierPoint__params__b = 数字：第一个控制点的坐标
bezierPoint__params__c = 数字：第二个控制点的坐标
bezierPoint__params__d = 数字：曲线上第二个点的坐标
bezierPoint__params__t = 数字：介于 0 和 1 之间的值
bezierTangent__description__0 = 计算在 a、b、c、d 点定义的贝塞尔曲线上 t 位置的切线值。a 和 d 参数分别为曲线上第一和最后一个点，而 b 和 c 为控制点。最后一个 t 参数可在 0 和 1 的范围内。
bezierTangent__returns = 数字：贝塞尔曲线上 t 位置的切线值
bezierTangent__params__a = 数字：曲线上第一个点的坐标
bezierTangent__params__b = 数字：第一个控制点的坐标
bezierTangent__params__c = 数字：第二个控制点的坐标
bezierTangent__params__d = 数字：曲线上第二个点的坐标
bezierTangent__params__t = 数字：介于 0 和 1 之间的值
curve__description__0 = 在荧幕上的两点之间画一个曲线，两点由中间四个参数定义。前两个参数为控制点，可以当作曲线是从这个点开始的虽然它并不会被画出来。最后两个参数同样也是用来定义另外一个控制点。<br><br>更长的曲线能使用一系列 curve() 函数创造或使用 curveVertex()。另外一个叫 curveTightness() 的函数提供曲线视觉质量的控制。curve() 函数使用的是 Catmull-Rom 样条函数。
curve__params__x1 = 数字：起点控制点的 x 坐标
curve__params__y1 = 数字：起点控制点的 y 坐标
curve__params__x2 = 数字：第一个点的 y 坐标
curve__params__y2 = 数字：第二个点的 x 坐标
curve__params__x3 = 数字：终点控制点的 x 坐标
curve__params__y3 = 数字：终点控制点的 y 坐标
curve__params__x4 = 数字：第一个点的 z 坐标
curve__params__y4 = 数字：第二个点的 z 坐标
curve__params__z1 = 数字：第一个点的 x 坐标
curve__params__z2 = 数字：第二个点的 y 坐标
curve__params__z3 = 数字：起点控制点的 z 坐标
curve__params__z4 = 数字：终点控制点的 z 坐标
curveDetail__description__0 = 定义曲线的解析度<br><br>默认值为 20。<br><br>这函数只有在 WEBGL 模式下有效果因为默认画布渲染模式并不会使用这设定。
curveDetail__description__1 = This function is only useful when using the WEBGL renderer as the default canvas renderer does not use this information.
curveDetail__params__resolution = 数字：曲线的解析度
curveTightness__description__0 = 更改由 curve() 及 curveVertex() 所创造的曲线的质量。所提供的参数将决定曲线如何切合顶点。0.0 是紧实度的默认值（这值表示曲线为 Catmull-Rom 样条）而 1.0 将使用直线连接所有点。在 -5.0 及 5.0 之间的值会是曲线变形不过他们仍然能被识别而当值越来越大时，曲线也会跟着变形。
curveTightness__params__amount = 数字：从原顶点的变形量
curvePoint__description__0 = 计算在 a、b、c、d 点定义的曲线上 t 位置的坐标。a 和 d 参数分别为曲线上第一和最后一个点，而 b 和 c 为控制点。最后一个 t 参数可在 0 和 1 的范围内。这函数可以先调用 x 坐标然后在调用 y 坐标已找到曲线上 t 位置的点坐标。
curvePoint__returns = 数字：贝塞尔曲线上 t 位置的值
curvePoint__params__a = 数字：曲线上第一个点的坐标
curvePoint__params__b = 数字：第一个控制点的坐标
curvePoint__params__c = 数字：第二个控制点的坐标
curvePoint__params__d = 数字：曲线上第二个点的坐标
curvePoint__params__t = 数字：介于 0 和 1 之间的值
curveTangent__description__0 = 计算在 a、b、c、d 点定义的曲线上 t 位置的切线值。a 和 d 参数分别为曲线上第一和最后一个点，而 b 和 c 为控制点。最后一个 t 参数可在 0 和 1 的范围内。
curveTangent__returns = 数字：贝塞尔曲线上 t 位置的切线值
curveTangent__params__a = 数字：曲线上第一个点的坐标
curveTangent__params__b = 数字：第一个控制点的坐标
curveTangent__params__c = 数字：第二个控制点的坐标
curveTangent__params__d = 数字：曲线上第二个点的坐标
curveTangent__params__t = 数字：介于 0 和 1 之间的值
beginContour__description__0 = 使用 beginContour() 及 endContour() 函数以在其他形状内创造剪影形状，比如说 “O” 字母内的空间。beginContour() 将开始记录形状的顶点而 endContour() 则停止记录。定义剪影形状的顶点定义的方向（顺时或逆时针）必须和包含它的形状不同。如果外形的顶点是顺时针方向定义的，那么它里面的形状的顶点需是逆时针方向定义。<br><br>这些函数只能在一对 beginShape()/endShape() 函数之间使用而变形函数如 translate()、rotate() 及 scale() 在一对 beginContour()/endContour() 内并不会有任何效果。其他形状如 ellipse() 或 rect() 也不能在里面使用。
beginContour__description__1 = These functions can only be used within a <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> pair and transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within a <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a> pair. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within.
beginShape__description__0 = 使用 beginShape() 及 endShape() 函数可让您创造更复杂的形状。beginShape() 将开始记录形状的顶点而 endShape() 则停止记录。所提供的参数将决定由所提供的顶点该画出怎样的形状。如果模式没有被提供，所定义的形状可以是任何不规则的多边形。<br><br>可提供给 beginShape() 的参数包括 POINTS、LINES、TRIANGLES、TRIANGLE_FAN、TRIANGLE_STRIP、QUADS 及 QUAD_STRIP。在调用 beginShape() 函数之后，一系列 vertex() 函数必须接着调用。调用 endShape() 以停止绘制形状。每个形状都将会有由当时外线色所定义的外线色及当时的填充色。<br><br>变形函数如 translate()、rotate() 及 scale() 在 beginShape() 内不会有任何效果。其他形状如 ellipse() 或 rect() 也不能在beginShape()里面使用。
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
beginShape__params__kind = 常量：POINTS、LINES、TRIANGLES、TRIANGLE_FAN、TRIANGLE_STRIP、QUADS 或 QUAD_STRIP
bezierVertex__description__0 = 定义贝塞尔曲线的顶点坐标。每次调用 bezierVertex() 将定义贝塞尔曲线的两个控制点和一个锚点，以在线或形状上增加一个新部分。<br><br>在 beginShape() 内第一次调用 bezierVertex() 之前必须先调用一次 vertex() 以定义第一个锚点。这函数只能在 beginShape() 和 endShape() 之间使用并且也只能在 beginShape() 没有任何 MODE（模式）参数的情况下使用。
bezierVertex__description__1 = The first time bezierVertex() is used within a <a href="#/p5/beginShape">beginShape()</a> call, it must be prefaced with a call to <a href="#/p5/vertex">vertex()</a> to set the first anchor point. This function must be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE or POINTS parameter specified to <a href="#/p5/beginShape">beginShape()</a>.
bezierVertex__params__x2 = 数字：第一个控制点的 x 坐标
bezierVertex__params__y2 = 数字：第一个控制点的 y 坐标
bezierVertex__params__x3 = 数字：第二个控制点的 x 坐标
bezierVertex__params__y3 = 数字：第二个控制点的 y 坐标
bezierVertex__params__x4 = 数字：第一个锚点的 x 坐标
bezierVertex__params__y4 = 数字：第二个锚点的 x 坐标
bezierVertex__params__z2 = Number: z-coordinate for the first control point (for WebGL mode)
bezierVertex__params__z3 = Number: z-coordinate for the second control point (for WebGL mode)
bezierVertex__params__z4 = Number: z-coordinate for the anchor point (for WebGL mode)
curveVertex__description__0 = 定义曲线顶点的坐标。这函数只能在 beginShape() 和 endShape() 之间使用并且也只能在 beginShape() 没有任何 MODE（模式）参数的情况下使用。<br><br>在一系列 curveVertex() 线条中第一个和最后一个点将被用来引导曲线的起点和终点。至少必须提供四个点以画一个介于第二和第三个点的小曲线。增加第五个点将会在第二、第三及第四个点之间画个曲线。curveVertex() 函数使用的是 Catmull-Rom 样条函数。
curveVertex__description__1 = The first and last points in a series of curveVertex() lines will be used to guide the beginning and end of a the curve. A minimum of four points is required to draw a tiny curve between the second and third points. Adding a fifth point with curveVertex() will draw the curve between the second, third, and fourth points. The curveVertex() function is an implementation of Catmull-Rom splines.
curveVertex__params__x = 数字：顶点的 x 坐标
curveVertex__params__y = 数字：顶点的 y 坐标
curveVertex__params__z = Number: (Optional) z-coordinate of the vertex (for WebGL mode)
endContour__description__0 = 使用 beginContour() 及 endContour() 函数以在其他形状内创造剪影形状，比如说 “O” 字母内的空间。beginContour() 将开始记录形状的顶点而 endContour() 则停止记录。定义剪影形状的顶点定义的方向（顺时或逆时针）必须和包含它的形状不同。如果外形的顶点是顺时针方向定义的，那么它里面的形状的顶点需是逆时针方向定义。<br><br>这些函数只能在一对 beginShape()/endShape() 函数之间使用而变形函数如 translate()、rotate() 及 scale() 在一对 beginContour()/endContour() 内并不会有任何效果。其他形状如 ellipse() 或 rect() 也不能在里面使用。
endContour__description__1 = These functions can only be used within a <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> pair and transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within a <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a> pair. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within.
endShape__description__0 = endShape() 函数和 beginShape() 是一对的而且它只能在 beginShape() 后使用。当 endshape() 被调用时，自上一次 beginShape() 调用后的所有被定义的图像资料将被写进图像缓冲区。定义常量 CLOSE 给 MODE 参数将会关闭该形状（连接起点和终点）。
endShape__params__mode = 常量：使用 CLOSE 以关闭形状
quadraticVertex__description__0 = 定义二次贝塞尔曲线顶点的坐标。每次调用 quadraticVertex() 将定义贝塞尔曲线的一个控制点和一个锚点，以在线或形状上增加一个新部分。在 beginShape() 内第一次调用 quadraticVertex() 之前必须先调用一次 vertex() 以定义第一个锚点。这函数只能在 beginShape() 和 endShape() 之间使用并且也只能在 beginShape() 没有任何 MODE（模式）参数的情况下使用。
quadraticVertex__description__1 = This function must be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE or POINTS parameter specified to <a href="#/p5/beginShape">beginShape()</a>.
quadraticVertex__params__cx = 数字：控制点的 x 坐标
quadraticVertex__params__cy = 数字：控制点的 y 坐标
quadraticVertex__params__x3 = 数字：锚点的 x 坐标
quadraticVertex__params__y3 = 数字：锚点的 y 坐标
quadraticVertex__params__cz = Number: z-coordinate for the control point (for WebGL mode)
quadraticVertex__params__z3 = Number: z-coordinate for the anchor point (for WebGL mode)
vertex__description__0 = 所有形状都是由连接一系列顶点形成的。vertex() 可用于定义点、线、三角形、四角形及多边形的顶点坐标。它只能在 beginShape() 和 endShape() 函数之间使用。
vertex__params__x = 数字：顶点的 x 坐标
vertex__params__y = 数字：顶点的 y 坐标
vertex__params__z = 数字：顶点的 z 坐标
vertex__params__u = 数字：顶点的纹理 u 坐标
vertex__params__v = 数字：顶点的纹理 v 坐标
normal__description__0 = Sets the 3d vertex normal to use for subsequent vertices drawn with <a href="#/p5/vertex">vertex()</a>. A normal is a vector that is generally nearly perpendicular to a shape's surface which controls how much light will be reflected from that part of the surface.
normal__params__vector = Vector: A p5.Vector representing the vertex normal.
normal__params__x = Number: The x component of the vertex normal.
normal__params__y = Number: The y component of the vertex normal.
normal__params__z = Number: The z component of the vertex normal.
VERSION__description__0 = Version of this p5.js.
P2D__description__0 = The default, two-dimensional renderer.
WEBGL__description__0 = One of the two render modes in p5.js: P2D (default renderer) and WEBGL Enables 3D render by introducing the third dimension: Z
HALF_PI__description__0 = HALF_PI 是个值为 1.57079632679489661923 的数学常量。它是圆形周长与直径的比例的一半。它能有效的与三角函数如 sin() 及 cos() 一起使用。
PI__description__0 = PI 是个值为 3.14159265358979323846 的数学常量。它是圆形周长与直径的比例。它能有效的与三角函数如 sin() 及 cos() 一起使用。
QUARTER_PI__description__0 = QUARTER_PI 是个值为 0.7853982 的数学常量。它是圆形周长与直径的比例的四分之一。它能有效的与三角函数如 sin() 及 cos() 一起使用。
TAU__description__0 = TAU 是 TWO_PI 的别名，是个值为 6.28318530717958647693 的数学常量。它是圆形周长与直径的比例的两倍。它能有效的与三角函数如 sin() 及 cos() 一起使用。
TWO_PI__description__0 = TWO_PI 是个值为 6.28318530717958647693 的数学常量。它是圆形周长与直径的比例的两倍。它能有效的与三角函数如 sin() 及 cos() 一起使用。
DEGREES__description__0 = 与 angleMode() 函数一起使用的常量，用于设定 p5.js 如何解读及计算角度（可以是 DEGREES 或 RADIANS）。
RADIANS__description__0 = 与 angleMode() 函数一起使用的常量，用于设定 p5.js 如何解读及计算角度（可以是 DEGREES 或 RADIANS）。
HSB__description__0 = HSB (hue, saturation, brightness) is a type of color model. You can learn more about it at <a href="https://learnui.design/blog/the-hsb-color-system-practicioners-primer.html">HSB</a>.
AUTO__description__0 = AUTO allows us to automatically set the width or height of an element (but not both), based on the current height and width of the element. Only one parameter can be passed to the <a href="/#/p5.Element/size">size</a> function as AUTO, at a time.
print__description__0 = print() 函数将写入浏览器的控制台区。这函数适用于查看程式生成的资料。这函数每一次被调用将创造新的一行字串。个别元素可使用引号（""）分隔并使用加号（+）连接在一起。
print__description__1 = Note that calling print() without any arguments invokes the window.print() function which opens the browser's print dialog. To print a blank line to console you can write print('\n').
print__params__contents = 任何：任何要写进控制台的数字、字符串、物件、布尔值或数组的组合
frameCount__description__0 = 系统变量 frameCount 存着自程序开始已被展示的影格数量。在 setup() 这值为 0，在第一次执行 draw() 后为 1 等等。
deltaTime__description__0 = The system variable <a href="#/p5/deltaTime">deltaTime</a> contains the time difference between the beginning of the previous frame and the beginning of the current frame in milliseconds.
deltaTime__description__1 = This variable is useful for creating time sensitive animation or physics calculation that should stay constant regardless of frame rate.
focused__description__0 = 确定 p5.js 程式正在运行的窗口是否获得“焦点”，这表示绘图可接受滑鼠或键盘输入。如果窗口获得焦点，次变量为 “true” 否则为 “false”。
cursor__description__0 = 设置鼠标成预定的符号或一个图像，或者如果鼠标被隐藏显示鼠标。如果你想要设置一个图像为鼠标，建议的图像大小为 16x16 或 32x32 像素。 It is not possible to load an image as the cursor if you are exporting your program for the Web, and not all MODES work with all browsers. 参数 x 及 y 必须低于图像的大小。
cursor__params__type = 字符串|常量：ARROW、CROSS、HAND、MOVE、TEXT 或图像的路径
cursor__params__x = 数字：鼠标的横向活跃点
cursor__params__y = 数字：鼠标的直向活跃点
frameRate__description__0 = 定义每一秒应该显示的影格数。比如说，调用 frameRate(30) 将使绘图每秒刷新 30 次。如果处理器没法跟上所定义的速率，该帧率将不会被达到。建议在 setup() 内设置帧率。默认的帧率值为每秒 60 影格。这和调用 setFrameRate(val) 的效果一样。<br><br>调用 frameRate() 但不给予任何参数将会返回当时的帧率。draw() 函数必须至少执行一次它才会返回帧率。这和调用 getFrameRate() 的效果一样。<br><br>调用 frameRate() 并给予任何不是数字或正数的参数也将会返回当时的帧率。
frameRate__description__1 = Calling <a href="#/p5/frameRate">frameRate()</a> with no arguments returns the current framerate. The draw function must run at least once before it will return a value. This is the same as <a href="#/p5/getFrameRate">getFrameRate()</a>.
frameRate__description__2 = Calling <a href="#/p5/frameRate">frameRate()</a> with arguments that are not of the type numbers or are non positive also returns current framerate.
frameRate__params__fps = 数字：每一秒该显示的影格数
noCursor__description__0 = 隐藏鼠标。
displayWidth__description__0 = 储存整个荧幕宽度的系统变量。这可用来在任何大小的荧幕制作任何大小的全屏程序。
displayHeight__description__0 = 储存整个荧幕高度的系统变量。这可用来在任何大小的荧幕制作任何大小的全屏程序。
windowWidth__description__0 = 储存窗口内部宽度的系统变量， 此函数映射 window.innerWidth。
windowHeight__description__0 = 储存窗口内部高度的系统变量， 此函数映射 window.innerHeight。
windowResized__description__0 = windowResized() 函数将在每次浏览器窗口缩放时被调用。这是个适合缩放画布及或任何其他调整以符合新的窗口大小的地方。
windowResized__params__event = Object: (Optional) optional Event callback argument.
width__description__0 = 储存画布宽度的系统变量。这值是由 createCanvas() 函数的第一个参数所定义。比如说，调用函数 createCanvas(320, 240) 将定义此宽度变量为 320。如果一个程式没有使用 createCanvas() 宽度值将默认为 100。
height__description__0 = 储存画布高度的系统变量。这值是由 createCanvas() 函数的第二个参数所定义。比如说，调用函数 createCanvas(320, 240) 将定义此高度变量为 240。如果一个程式没有使用 createCanvas() 高度值将默认为 100。
fullscreen__description__0 = 如果提供一个参数，依该参数而定该绘图是否是全屏。如果没有给予任何参数，将返回当时的全屏状态。注意因为浏览器限制，此函数只能在使用者输入时调用，比如说在滑鼠点击时如以上范例。
fullscreen__returns = 布尔值：当时的全屏状态
fullscreen__params__val = 布尔值：该绘图是否应该是全屏
pixelDensity__description__0 = 定义像素缩放值，用于高像素密度显示器。默认像素密度为显示器的像素密度，可调用 pixelDensity(1) 以关闭此功能。调用 pixelDensity() 并不给予任何参数将返回该绘图的像素密度。
pixelDensity__params__val = 数字：绘图是否应该缩放及缩放多少
displayDensity__description__0 = 返回正在运行该绘图的显示器的像素密度。
displayDensity__returns = 数字：该显示器的像素密度
getURL__description__0 = 返回当下的网址。
getURL__returns = 字符串：网址
getURLPath__description__0 = 返回当下的网址的路径数组
getURLPath__returns = 字符串[]：路径组
getURLParams__description__0 = 返回当下网址的参数物件
getURLParams__returns = 物件：网址参数
preload__description__0 = 在 setup() 之前被调用，preload() 函数可用来以阻断的方式处理异步加载外来文件。如果 preload 函数有被定义，setup() 将等到其中的加载工作都完成后才开始执行。preload 函数只能含有加载函数（如 loadImage、loadJSON、loadFont、loadStrings 等）。如果您想使用异步加载，加载函数可在 setup() 内或任何其他地方调用，您只需使用其回调函数参数。<br><br>在默认情况下 “loading...” 字眼将会被显示。如果您想只做您自己的加载页面，只需在您也页面上加个 id 为 “p5_loading” 的 HTML 元素。更多详情请查看<a href='http://bit.ly/2kQ6Nio'>这里</a>。
preload__description__1 = By default the text "loading..." will be displayed. To make your own loading page, include an HTML element with id "p5_loading" in your page. More information <a href="http://bit.ly/2kQ6Nio">here</a>.
setup__description__0 = setup() 函数将在程式开始时被调用一次。它可在程序开始时被用来定义初始的环境属性如荧幕大小、背景颜色及媒体加载如图像及字体。每个程序只能有一个 setup() 函数并且他不能在一开始执行后再次被调用。<br><br>请注意：在 setup() 内定义的变量并不能在其他函数内使用，这包括 draw() 。
setup__description__1 = Note: Variables declared within <a href="#/p5/setup">setup()</a> are not accessible within other functions, including <a href="#/p5/draw">draw()</a>.
draw__description__0 = 在 setup() 之后被调用，draw() 函数将持续地重复执行其中的代码直到该程式终止或当 noLoop() 被调用。注意如果 noLoop() 在 setup() 内被调用，draw() 仍然会被执行一个然后才停止。draw() 将会自动被调用并不应该被直接调用。<br><br>您应该使用 noLoop()、redraw() 及 loop() 来控制它。当 noLoop() 停止执行 draw() 内的代码，redraw() 会使 draw() 内的代码执行一次，而 loop() 将会使 draw() 内的代码继续重复执行。<br><br>每一秒 draw() 执行的次数可使用 frameRate() 函数来控制。<br><br>每个绘图只能有一个 draw() 函数，而如果您想持续重复执行代码或处理事件如 mousePressed()，draw() 必须存在。有时候您的程式可能会有空白的 draw() 函数，如以上的范例所示。<br><br>请特别注意绘图坐标系统将在每次 draw() 在开始被调用时重置。任何在 draw() 内执行的变形指令（如 scale、rotate、translate）将会在下一个 draw() 开始时复原，所以变形指令并不会随着时间积累。另一方面，样式（如 fill、stroke等）将会持续同样的效果。
draw__description__1 = It should always be controlled with <a href="#/p5/noLoop">noLoop()</a>, <a href="#/p5/redraw">redraw()</a> and <a href="#/p5/loop">loop()</a>. After <a href="#/p5/noLoop">noLoop()</a> stops the code in <a href="#/p5/draw">draw()</a> from executing, <a href="#/p5/redraw">redraw()</a> causes the code inside <a href="#/p5/draw">draw()</a> to execute once, and <a href="#/p5/loop">loop()</a> will cause the code inside <a href="#/p5/draw">draw()</a> to resume executing continuously.
draw__description__2 = The number of times <a href="#/p5/draw">draw()</a> executes in each second may be controlled with the <a href="#/p5/frameRate">frameRate()</a> function.
draw__description__3 = There can only be one <a href="#/p5/draw">draw()</a> function for each sketch, and <a href="#/p5/draw">draw()</a> must exist if you want the code to run continuously, or to process events such as <a href="#/p5/mousePressed">mousePressed()</a>. Sometimes, you might have an empty call to <a href="#/p5/draw">draw()</a> in your program, as shown in the above example.
draw__description__4 = It is important to note that the drawing coordinate system will be reset at the beginning of each <a href="#/p5/draw">draw()</a> call. If any transformations are performed within <a href="#/p5/draw">draw()</a> (ex: scale, rotate, translate), their effects will be undone at the beginning of <a href="#/p5/draw">draw()</a>, so transformations will not accumulate over time. On the other hand, styling applied (ex: fill, stroke, etc) will remain in effect.
remove__description__0 = 移除整个 p5 绘图。这函数将移除画布及任何由 p5.js 创造的元素。它也会终止绘图循环及解除任何被绑定在窗口对象的属性或函数。它会留下一个 p5 变量以防您还想创造一个新的 p5 绘图。您也可以舍去 p5 = null 以完全删除它。虽然所有由 p5 程式库所创造的函数、变量和物件将会被移除，任何其他由您的代码所定义的公共变量将会被保留。
disableFriendlyErrors__description__0 = Allows for the friendly error system (FES) to be turned off when creating a sketch, which can give a significant boost to performance when needed. See <a href='https://github.com/processing/p5.js/wiki/Optimizing-p5.js-Code-for-Performance#disable-the-friendly-error-system-fes'> disabling the friendly error system</a>.
let__description__0 = Creates and names a new variable. A variable is a container for a value.
let__description__1 = Variables that are declared with <a href="#/p5/let">let</a> will have block-scope. This means that the variable only exists within the <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block"> block</a> that it is created within.
let__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let">the MDN entry</a>: Declares a block scope local variable, optionally initializing it to a value.
const__description__0 = Creates and names a new constant. Like a variable created with <a href="#/p5/let">let</a>, a constant that is created with <a href="#/p5/const">const</a> is a container for a value, however constants cannot be reassigned once they are declared. Although it is noteworthy that for non-primitive data types like objects & arrays, their elements can still be changeable. So if a variable is assigned an array, you can still add or remove elements from the array but cannot reassign another array to it. Also unlike <code>let</code>, you cannot declare variables without value using const.
const__description__1 = Constants have block-scope. This means that the constant only exists within the <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block"> block</a> that it is created within. A constant cannot be redeclared within a scope in which it already exists.
const__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const">the MDN entry</a>: Declares a read-only named constant. Constants are block-scoped, much like variables defined using the 'let' statement. The value of a constant can't be changed through reassignment, and it can't be redeclared.
if-else__description__0 = The <a href="#/p5/if-else">if-else</a> statement helps control the flow of your code.
if-else__description__1 = A condition is placed between the parenthesis following 'if', when that condition evalues to <a href="https://developer.mozilla.org/en-US/docs/Glossary/truthy">truthy</a>, the code between the following curly braces is run. Alternatively, when the condition evaluates to <a href="https://developer.mozilla.org/en-US/docs/Glossary/Falsy">falsy</a>, the code between the curly braces of 'else' block is run instead. Writing an else block is optional.
if-else__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else">the MDN entry</a>: The 'if' statement executes a statement if a specified condition is truthy. If the condition is falsy, another statement can be executed
function__description__0 = Creates and names a <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions">function</a>. A <a href="#/p5/function">function</a> is a set of statements that perform a task.
function__description__1 = Optionally, functions can have parameters. <a href="https://developer.mozilla.org/en-US/docs/Glossary/Parameter">Parameters</a> are variables that are scoped to the function, that can be assigned a value when calling the function.Multiple parameters can be given by seperating them with commas.
function__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function">the MDN entry</a>: Declares a function with the specified parameters.
return__description__0 = Specifies the value to be returned by a function. For more info checkout <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/return"> the MDN entry for return</a>.
boolean__description__0 = 转换一个数字或字符串成其布尔值。在数字上，任何非零的值（无论正负）都将转换为 true，而零将转换为 false。在字符串上，"true" 将转换成 true，而任何其他值都会转换成 false。当给予一数组的数字或字符串时，将返回一个等同大小的布尔值数组。
boolean__returns = 布尔值：该值的布尔值
boolean__params__n = 字符串|布尔值|数字|数组：该解析的值
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
createCanvas__description__0 = 在文件内创造一个画布元素，并以像素定义其大小。这函数只应该在 setup() 开始时被调用一次。在同一个绘图里调用 createCanvas 多过一次将造成难以预料的行为。如果你想要使用多过一个绘图画布您可以使用 createGraphics（默认上会被隐藏可是可以被显示）。<br><br>给予这函数的宽度和高度参数将被用来定义 width 和 height 系统变量。如果 createCanvas() 没有被使用，画布将会被给予默认大小 100x100。<br><br>以知更多放置画布的方法，请参考<a href='https://github.com/processing/p5.js/wiki/Positioning-your-canvas'>画布放置维基</a>（英文页面）。
createCanvas__description__1 = Important note: in 2D mode (i.e. when <code>p5.Renderer</code> is not set) the origin (0,0) is positioned at the top left of the screen. In 3D mode (i.e. when <code>p5.Renderer</code> is set to <code>WEBGL</code>), the origin is positioned at the center of the canvas. See <a href="https://github.com/processing/p5.js/issues/1545">this issue</a> for more information.
createCanvas__description__2 = The system variables width and height are set by the parameters passed to this function. If <a href="#/p5/createCanvas">createCanvas()</a> is not used, the window will be given a default size of 100x100 pixels.
createCanvas__description__3 = For more ways to position the canvas, see the <a href='https://github.com/processing/p5.js/wiki/Positioning-your-canvas'> positioning the canvas</a> wiki page.
createCanvas__returns = p5.Renderer：
createCanvas__params__w = 数字：画布的宽度
createCanvas__params__h = 数字：画布的高度
createCanvas__params__renderer = 常量：P2D 或 WEBGL
resizeCanvas__description__0 = 缩放画布至给予的宽度和高度。该画布将会马上被清空及调用 draw()，使得画布能在缩放后重新渲染。
resizeCanvas__params__w = 数字：画布的宽度
resizeCanvas__params__h = 数字：画布的高度
resizeCanvas__params__noRedraw = 布尔值：不要马上更新画布
noCanvas__description__0 = 如果该 p5 绘图不需要画布，此函数将移除默认画布。
createGraphics__description__0 = 创造及返回一个新的 p5.Renderer 物件。如果您需要在一个画面外的图形缓冲区作画，您可以使用这个函数。前两个参数将定义宽度和高度像素。
createGraphics__returns = buffer gráfico fuera de pantalla
createGraphics__params__w = 数字：画面外图形缓冲区的宽度
createGraphics__params__h = 数字：画面外图形缓冲区的高度
createGraphics__params__renderer = 常量：P2D 或 WEBGL，默认为 P2D
blendMode__description__0 = 根据所设定的模式在显示窗口内混合像素。以下模式选择可用来混合源像素（A）与已经在显示窗口的像素（B）：<ul><li><code>BLEND</code> - 颜色线性插值：C = A*系数 + B。这是默认混合模式。</li><li><code>ADD</code> - A 与 B 的总和</li><li><code>DARKEST</code> - 将显示当中最深的颜色：C = min(A*系数, B)。</li><li><code>LIGHTEST </code> - 将显示当中最浅的颜色：C = max(A*系数, B)。</li><li><code>DIFFERENCE</code> - 从底下的图像中减去颜色。</li><li><code>EXCLUSION</code> - 与 DIFFERENCE 相似但不那么强烈。</li><li><code>MULTIPLY</code> - 将颜色相乘，效果一定会更暗。</li><li><code>SCREEN</code> - 与 MULTIPLY 相反，使用颜色的反值。</li><li><code>REPLACE</code> - 像素将完全盖过其他像素并将不会使用透明度值。</li><li><code>OVERLAY</code> - MULTIPLY 及 SCREEN 和混合。暗值将相乘，亮值将相乘反值。</li><li><code>HARD_LIGHT</code> - 当高于 50% 灰时 SCREEN，低于时 MULTIPLY。</li><li><code>SOFT_LIGHT</code> - DARKEST 及 LIGHTEST 的混合。与 OVERLAY 的效果相似，但不那么强烈。</li><li><code>DODGE</code> - 使浅色更浅及增加对比度，忽略暗色。</li><li><code>BURN</code> - 是深色更深及增加对比度，忽略浅色。</li></ul>
blendMode__description__1 = <em>(2D)</em> indicates that this blend mode <b>only</b> works in the 2D renderer. <em>(3D)</em> indicates that this blend mode <b>only</b> works in the WEBGL renderer.
blendMode__params__mode = 常量：画布的混合模式。BLEND、DARKEST、LIGHTEST、DIFFERENCE、MULTIPLY、EXCLUSION、SCREEN、REPLACE、OVERLAY、HARD_LIGHT、SOFT_LIGHT、DODGE、BURN、ADD 或 NORMAL
drawingContext__description__0 = The p5.js API provides a lot of functionality for creating graphics, but there is some native HTML5 Canvas functionality that is not exposed by p5. You can still call it directly using the variable <code>drawingContext</code>, as in the example shown. This is the equivalent of calling <code>canvas.getContext('2d');</code> or <code>canvas.getContext('webgl');</code>. See this <a href="https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D"> reference for the native canvas API</a> for possible drawing functions you can call.
noLoop__description__0 = 停止 p5.js 持续重复执行 draw() 内的代码。如果 loop() 被调用，draw() 内的代码将开始继续重复执行。如果 noLoop() 在 setup() 被调用，它应该是代码块的最后一行代码。<br><br>在使用 noLoop() 时，您并不能在事件处理函数如 mousePressed() 或 keyPressed() 内操纵或存取荧幕。不过您可以使用哪些函数调用 redraw() 或 loop()，从而执行 draw()，以正确的更新荧幕。这表示当 noLoop() 被调用后，您不能绘制任何东西，同时某些函数如 saveFrame() 或 loadPixels() 也不能使用。<br><br>注意如果绘图的大小改变，redraw() 将会被调用以更新绘图，即使 noLoop() 已经被调用，不然绘图将会处于一个奇怪的状态直到 loop() 再次被调用。
noLoop__description__1 = When <a href="#/p5/noLoop">noLoop()</a> is used, it's not possible to manipulate or access the screen inside event handling functions such as <a href="#/p5/mousePressed">mousePressed()</a> or <a href="#/p5/keyPressed">keyPressed()</a>. Instead, use those functions to call <a href="#/p5/redraw">redraw()</a> or <a href="#/p5/loop">loop()</a>, which will run <a href="#/p5/draw">draw()</a>, which can update the screen properly. This means that when <a href="#/p5/noLoop">noLoop()</a> has been called, no drawing can happen, and functions like <a href="#/p5/saveFrames">saveFrames()</a> or <a href="#/p5/loadPixels">loadPixels()</a> may not be used.
noLoop__description__2 = Note that if the sketch is resized, <a href="#/p5/redraw">redraw()</a> will be called to update the sketch, even after <a href="#/p5/noLoop">noLoop()</a> has been specified. Otherwise, the sketch would enter an odd state until <a href="#/p5/loop">loop()</a> was called.
noLoop__description__3 = Use <a href="#/p5/isLooping">isLooping()</a> to check current state of loop().
loop__description__0 = 在默认下，p5.js 将会循环执行 draw() 内的代码。不过 draw() 循环能使用 noLoop() 停止。在这情况下 draw() 循环可使用 loop() 函数恢复执行。
loop__description__1 = Avoid calling loop() from inside setup().
loop__description__2 = Use <a href="#/p5/isLooping">isLooping()</a> to check current state of loop().
isLooping__description__0 = By default, p5.js loops through <a href="#/p5/draw">draw()</a> continuously, executing the code within it. If the sketch is stopped with <a href="#/p5/noLoop">noLoop()</a> or resumed with <a href="#/p5/loop">loop()</a>, isLooping() returns the current state for use within custom event handlers.
push__description__0 = push() 函数将储存当时的绘画样式设置及变形，而 pop() 将恢复这些设置。注意这两个函数需要一起使用。它们让您改变样式及变形设置然后再回到您之前的设置。当使用 push() 开始一个新的状态时，它将继续建立在当时的样式和变形上。push() 和 pop() 函数可被重复嵌入以提供更复杂的控制。（请参考第二个范例）<br><br>push() 将现有的变形及样式设置资料储存上来，这包括以下的函数：fill()、stroke()、tint()、strokeWeight()、strokeCap()、strokeJoin()、imageMode()、rectMode()、ellipseMode()、colorMode()、textAlign()、textFont()、textMode()、textSize()、textLeading()。
push__description__1 = <a href="#/p5/push">push()</a> stores information related to the current transformation state and style settings controlled by the following functions: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a>, <a href="#/p5/noiseSeed">noiseSeed()</a>.
push__description__2 = In WEBGL mode additional style settings are stored. These are controlled by the following functions: <a href="#/p5/setCamera">setCamera()</a>, <a href="#/p5/ambientLight">ambientLight()</a>, <a href="#/p5/directionalLight">directionalLight()</a>, <a href="#/p5/pointLight">pointLight()</a>, <a href="#/p5/texture">texture()</a>, <a href="#/p5/specularMaterial">specularMaterial()</a>, <a href="#/p5/shininess">shininess()</a>, <a href="#/p5/normalMaterial">normalMaterial()</a> and <a href="#/p5/shader">shader()</a>.
pop__description__0 = push() 函数将储存当时的绘画样式设置及变形，而 pop() 将恢复这些设置。注意这两个函数需要一起使用。它们让您改变样式及变形设置然后再回到您之前的设置。当使用 push() 开始一个新的状态时，它将继续建立在当时的样式和变形上。push() 和 pop() 函数可被重复嵌入以提供更复杂的控制。（请参考第二个范例）<br><br>push() 将现有的变形及样式设置资料储存上来，这包括以下的函数：fill()、stroke()、tint()、strokeWeight()、strokeCap()、strokeJoin()、imageMode()、rectMode()、ellipseMode()、colorMode()、textAlign()、textFont()、textMode()、textSize()、textLeading()。
pop__description__1 = <a href="#/p5/push">push()</a> stores information related to the current transformation state and style settings controlled by the following functions: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a>, <a href="#/p5/noiseSeed">noiseSeed()</a>.
pop__description__2 = In WEBGL mode additional style settings are stored. These are controlled by the following functions: <a href="#/p5/setCamera">setCamera()</a>, <a href="#/p5/ambientLight">ambientLight()</a>, <a href="#/p5/directionalLight">directionalLight()</a>, <a href="#/p5/pointLight">pointLight()</a>, <a href="#/p5/texture">texture()</a>, <a href="#/p5/specularMaterial">specularMaterial()</a>, <a href="#/p5/shininess">shininess()</a>, <a href="#/p5/normalMaterial">normalMaterial()</a> and <a href="#/p5/shader">shader()</a>.
redraw__description__0 = 执行在 draw() 内的代码一次。这函数让该程序只在需要的时候更新显示窗口，比如说当 mousePressed() 或 keyPressed()事件被触发时。<br><br>再构造程式时，只有在如 mousePressed() 之类的时间内调用 redraw() 才有意义，因为 redraw() 并不会直接调用 draw() （它只会表示绘图有需要更新）。<br><br>redraw() 函数并不会在 draw() 内正常运作。以启用/禁用动画，请使用 loop() 及 noLoop()。<br><br>此外您也能定义每次调用 redraw() 将使 draw() 被调用几次。您这需给予一个整数参数已表示执行的次数。
redraw__description__1 = In structuring a program, it only makes sense to call <a href="#/p5/redraw">redraw()</a> within events such as <a href="#/p5/mousePressed">mousePressed()</a>. This is because <a href="#/p5/redraw">redraw()</a> does not run <a href="#/p5/draw">draw()</a> immediately (it only sets a flag that indicates an update is needed).
redraw__description__2 = The <a href="#/p5/redraw">redraw()</a> function does not work properly when called inside <a href="#/p5/draw">draw()</a>.To enable/disable animations, use <a href="#/p5/loop">loop()</a> and <a href="#/p5/noLoop">noLoop()</a>.
redraw__description__3 = In addition you can set the number of redraws per method call. Just add an integer as single parameter for the number of redraws.
redraw__params__n = 整数：重绘 n 次。默认值为 1
p5__description__0 = The <code>p5()</code> constructor enables you to activate "instance mode" instead of normal "global mode". This is an advanced topic. A short description and example is included below. Please see <a target="blank" href="https://www.youtube.com/watch?v=Su792jEauZg&feature=youtu.be"> Dan Shiffman's Coding Train video tutorial</a> or this <a target="blank" href="https://github.com/processing/p5.js/wiki/p5.js-overview#instantiation--namespace">tutorial page</a> for more info.
p5__description__1 = By default, all p5.js functions are in the global namespace (i.e. bound to the window object), meaning you can call them simply <code>ellipse()</code>, <code>fill()</code>, etc. However, this might be inconvenient if you are mixing with other JS libraries (synchronously or asynchronously) or writing long programs of your own. p5.js currently supports a way around this problem called "instance mode". In instance mode, all p5 functions are bound up in a single variable instead of polluting your global namespace.
p5__description__2 = Optionally, you can specify a default container for the canvas and any other elements to append to with a second argument. You can give the ID of an element in your html, or an html node itself.
p5__description__3 = Note that creating instances like this also allows you to have more than one p5 sketch on a single web page, as they will each be wrapped up with their own set up variables. Of course, you could also use iframes to have multiple sketches in global mode.
p5__params__sketch = Object: a function containing a p5.js sketch
p5__params__node = String|Object: ID or pointer to HTML DOM node to contain sketch in
applyMatrix__description__0 = 将现有的矩阵乘于由参数所定义的矩阵。这是个强大的功能并能够同时执行平移、缩放、切变及旋转。您能在<a href='https://zh.wikipedia.org/wiki/%E5%8F%98%E6%8D%A2%E7%9F%A9%E9%98%B5'>维基百科</a>了解更多关于变形矩阵的资讯。<br><br>这里的参数命名跟着 <a href='https://html.spec.whatwg.org/multipage/canvas.html#dom-context-2d-transform'>WHATWG 规范</a>（英文页面）的命名方式并代表着一个如下的变形矩阵：<blockquote><p><img style='max-width: 150px' src='assets/transformation-matrix.png' alt='当 applyMatrix 被调用时所使用的变形矩阵'></p></blockquote>
applyMatrix__description__1 = The naming of the arguments here follows the naming of the <a href= "https://html.spec.whatwg.org/multipage/canvas.html#dom-context-2d-transform"> WHATWG specification</a> and corresponds to a transformation matrix of the form: <blockquote>
applyMatrix__description__2 = <img style="max-width: 150px" src="assets/transformation-matrix.png" alt="The transformation matrix used when applyMatrix is called"/> </blockquote>
applyMatrix__params__a = 数字：定义该乘于的 2x3 矩阵
applyMatrix__params__b = 数字：定义该乘于的 2x3 矩阵
applyMatrix__params__c = 数字：定义该乘于的 2x3 矩阵
applyMatrix__params__d = 数字：定义该乘于的 2x3 矩阵
applyMatrix__params__e = 数字：定义该乘于的 2x3 矩阵
applyMatrix__params__f = 数字：定义该乘于的 2x3 矩阵
resetMatrix__description__0 = 将现有的矩阵替换成单位矩阵。
rotate__description__0 = 将一个形状根据参数所定义的角度旋转。这函数将考虑角度模式，所以角度可以是弧度或角度定义。<br><br>所有物件都会绕着原点旋转而正数将使物件在顺时针方向旋转。此变形将影响接下来所有的绘图并且接下来此函数调用效果将累积。比如说，调用 rotate(HALF_PI) 然后 rotate(HALF_PI) 效果会与 rotate(PI) 相同。所有变形将会在 draw() 重新开始时恢复。
rotate__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling rotate(HALF_PI) and then rotate(HALF_PI) is the same as rotate(PI). All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotate__description__2 = Technically, <a href="#/p5/rotate">rotate()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
rotate__params__angle = 数字：旋转的角度，根据当时的角度模式，以弧度或角度定义
rotate__params__axis = p5.Vector|数字[]：（3D 模式下）旋转轴
rotateX__description__0 = 绕着 x 轴旋转。
rotateX__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateX__params__angle = 数字：旋转角度，根据当时的角度模式，以弧度或角度定义
rotateY__description__0 = 绕着 y 轴旋转。
rotateY__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateY__params__angle = 数字：旋转角度，根据当时的角度模式，以弧度或角度定义
rotateZ__description__0 = 绕着 x 轴旋转。只适用于 WEBGL 模式。
rotateZ__description__1 = This method works in WEBGL mode only.
rotateZ__description__2 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateZ__params__angle = 数字：旋转角度，根据当时的角度模式，以弧度或角度定义
scale__description__0 = 通过扩大和收缩顶点，放大或缩小形状。形状物件将会从坐标系统的原点开始缩放。缩放值为十进制百分比。比如说，调用函数 scale(2.0) 将使该形状放大 200%。<br><br>此变形将影响接下来所有的绘图并且接下来此函数调用效果将累积相乘。比如说，调用 scale(2.0) 然后 scale(1.5) 效果会与 scale(3.0) 相同。如果 scale() 在 draw() 内被调用，变形将会在下一次循环开始时恢复。<br><br>给予此函数一个 z 参数只在 WEBGL 模式下受支持。这函数能使用 push() 及 pop() 控制。
scale__description__1 = Transformations apply to everything that happens after and subsequent calls to the function multiply the effect. For example, calling scale(2.0) and then scale(1.5) is the same as scale(3.0). If <a href="#/p5/scale">scale()</a> is called within <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
scale__description__2 = Using this function with the z parameter is only available in WEBGL mode. This function can be further controlled with <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
scale__params__s = 数字|p5.Vector|数字[]：缩放物件的百分比，或如果给予多个参数 x 轴的缩放百分比
scale__params__y = 数字：y 轴的缩放百分比
scale__params__z = 数字：z 轴的缩放百分比（只适用于 WEBGL 模式）
scale__params__scales = p5.Vector|数字[]：各轴缩放百分比
shearX__description__0 = 有角度参数所定义的形状 x 轴切变量。角度必须符合当时的角度模式。形状物件将会从坐标系统的原点开始切变而正数表示切变方向为顺时针方向。<br><br>此变形将影响接下来所有的绘图并且接下来此函数调用效果将累积。比如说，调用 shearX(PI/2) 然后 shearX(PI/2) 效果会与 shearX(PI) 相同。如果 shearX() 在 draw() 内被调用，变形将会在下一次循环开始时恢复。<br><br>技术上，shearX() 将现有的变形矩阵乘以一个旋转矩阵。这函数能使用 push() 及 pop() 控制。
shearX__description__1 = Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling shearX(PI/2) and then shearX(PI/2) is the same as shearX(PI). If <a href="#/p5/shearX">shearX()</a> is called within the <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
shearX__description__2 = Technically, <a href="#/p5/shearX">shearX()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions.
shearX__params__angle = 数字：根据当时的角度模式，以弧度或角度定义和切变角度
shearY__description__0 = 有角度参数所定义的形状 y 轴切变量。角度必须符合当时的角度模式。形状物件将会从坐标系统的原点开始切变而正数表示切变方向为顺时针方向。<br><br>此变形将影响接下来所有的绘图并且接下来此函数调用效果将累积。比如说，调用 shearY(PI/2) 然后 shearY(PI/2) 效果会与 shearY(PI) 相同。如果 shearY() 在 draw() 内被调用，变形将会在下一次循环开始时恢复。<br><br>技术上，shearY() 将现有的变形矩阵乘以一个旋转矩阵。这函数能使用 push() 及 pop() 控制。
shearY__description__1 = Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling shearY(PI/2) and then shearY(PI/2) is the same as shearY(PI). If <a href="#/p5/shearY">shearY()</a> is called within the <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
shearY__description__2 = Technically, <a href="#/p5/shearY">shearY()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions.
shearY__params__angle = 数字：根据当时的角度模式，以弧度或角度定义和切变角度
translate__description__0 = 定义在显示窗口内平移物件的量。x 参数将定义左/右平移，y 参数将定义上/下平移。<br><br>此变形将影响接下来所有的绘图并且接下来此函数调用效果将累积。比如说，调用 translate(50, 0) 然后 translate(20, 0) 效果会与 translate(70, 0) 相同。如果 translate() 在 draw() 内被调用，变形将会在下一次循环开始时恢复。这函数能使用 push() 及 pop() 控制。
translate__description__1 = Transformations are cumulative and apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling translate(50, 0) and then translate(20, 0) is the same as translate(70, 0). If <a href="#/p5/translate">translate()</a> is called within <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again. This function can be further controlled by using <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
translate__params__x = 数字：左/右平移
translate__params__y = 数字：上/下平移
translate__params__z = 数字：前/后平移（只适用于 WEBGL 模式）
translate__params__vector = p5.Vector：平移向量
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
createP__description__0 = Creates a <p></p> element in the DOM with given inner HTML. Used for paragraph length text.
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
deviceOrientation__description__0 = deviceOrientation 系统变量将会储存设备的旋转方向。此变量的值可以是 ‘landscape’ 或 ‘portrait’。如果没有资料可用他会被定义成 ‘undefined’。LANDSCAPE 或 PORTRAIT。
accelerationX__description__0 = accelerationX 系统变量将会储存设备的 x 轴加速度。值的单位为每平方秒米。
accelerationY__description__0 = accelerationY 系统变量将会储存设备的 y 轴加速度。值的单位为每平方秒米。
accelerationZ__description__0 = accelerationZ 系统变量将会储存设备的 z 轴加速度。值的单位为每平方秒米。
pAccelerationX__description__0 = pAccelerationX 系统变量将会储存上一个影格该设备的 x 轴加速度。值的单位为每平方秒米。
pAccelerationY__description__0 = pAccelerationY 系统变量将会储存上一个影格该设备的 y 轴加速度。值的单位为每平方秒米。
pAccelerationZ__description__0 = pAccelerationZ 系统变量将会储存上一个影格该设备的 z 轴加速度。值的单位为每平方秒米。
rotationX__description__0 = rotationX 系统变量将会储存设备在 x 轴的旋转角度。值介于 0 与 +/-180 度之间。<br><br>注意：旋转的顺序很重要，比如说，如果同时使用它们必须依 Z-X-Y 的顺序调用或可能会有难以预料的行为。
rotationX__description__1 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
rotationY__description__0 = rotationY 系统变量将会储存设备在 y 轴的旋转角度。值介于 0 与 +/-90 度之间。<br><br>注意：旋转的顺序很重要，比如说，如果同时使用它们必须依 Z-X-Y 的顺序调用或可能会有难以预料的行为。
rotationY__description__1 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
rotationZ__description__0 = rotationZ 系统变量将会储存设备在 z 轴的旋转角度。值介于 0 与 359 度之间。<br><br>与 rotationX 及 rotationY 不同的是，这变量只能在有内建指南针的设备使用。<br><br>注意：旋转的顺序很重要，比如说，如果同时使用它们必须依 Z-X-Y 的顺序调用或可能会有难以预料的行为。
rotationZ__description__1 = Unlike rotationX and rotationY, this variable is available for devices with a built-in compass only.
rotationZ__description__2 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
pRotationX__description__0 = pRotationX 系统变量将会储存上一个影格该设备在 x 轴的旋转角度。值介于 0 与 +/-180 度之间。<br><br>pRotationX 可以和 rotationX 一起使用以找出设备 x 轴的旋转方向。
pRotationX__description__1 = pRotationX can also be used with rotationX to determine the rotate direction of the device along the X-axis.
pRotationY__description__0 = pRotationY 系统变量将会储存上一个影格该设备在 y 轴的旋转角度。值介于 0 与 +/-90 度之间。<br><br>pRotationY 可以和 rotationY 一起使用以找出设备 y 轴的旋转方向。
pRotationY__description__1 = pRotationY can also be used with rotationY to determine the rotate direction of the device along the Y-axis.
pRotationZ__description__0 = pRotationZ 系统变量将会储存上一个影格该设备在 z 轴的旋转角度。值介于 0 与 359 度之间。<br><br>pRotationZ 可以和 rotationZ 一起使用以找出设备 z 轴的旋转方向。
pRotationZ__description__1 = pRotationZ can also be used with rotationZ to determine the rotate direction of the device along the Z-axis.
turnAxis__description__0 = When a device is rotated, the axis that triggers the <a href="#/p5/deviceTurned">deviceTurned()</a> method is stored in the turnAxis variable. The turnAxis variable is only defined within the scope of deviceTurned().
setMoveThreshold__description__0 = setMoveThreshold() 函数可用来设置 deviceMoved() 函数的移动阈值。默认阈值为 0.5。
setMoveThreshold__params__value = 数字：阈值
setShakeThreshold__description__0 = setShakeThreshold() 函数可用来设置 deviceShaken() 函数的摇动阈值。默认阈值为 30。
setShakeThreshold__params__value = 数字：阈值
deviceMoved__description__0 = deviceMoved() 函数将在设备在 X、Y 或 Z 轴被移动多过阈值时被调用。默认阈值为 0.5。
deviceTurned__description__0 = deviceTurned() 函数将在设备被连续旋转多过 90 度时被调用。<br><br>触发 deviceTurned() 的旋转轴将被储存在 turnAxis 变量中。deviceTurned() 函数能被锁定在 X、Y 或 Z 以确保只有所定义的轴会导致函数被调用，您只需比较 turnAxis 变量和 'X'、'Y' 或 'Z' 字符串。
deviceTurned__description__1 = The axis that triggers the <a href="#/p5/deviceTurned">deviceTurned()</a> method is stored in the turnAxis variable. The <a href="#/p5/deviceTurned">deviceTurned()</a> method can be locked to trigger on any axis: X, Y or Z by comparing the turnAxis variable to 'X', 'Y' or 'Z'.
deviceShaken__description__0 = deviceShaken() 函数将在设备的 accelerationX 及 accelerationY 加速度值改变超过阈值。默认阈值为 30。
keyIsPressed__description__0 = keyIsPressed 布尔系统变量将会在任何键被按下时为真（true）而没键被按下时为假（false）。
key__description__0 = key 系统变量将会储存上一个被键入的键盘键值。以获得正确的大小写，最好在 keyTyped() 内使用。至于非 ASCII 值的键，请使用 keyCode 变量。
keyCode__description__0 = keyCode 变量可用来探测特别键如 BACKSPACE、DELETE、ENTER、RETURN、TAB、ESCAPE、SHIFT、CONTROL、OPTION、ALT、UP_ARROW、DOWN_ARROW、LEFT_ARROW、RIGHT_ARROW 是否被按下。您也可以使用特别网站如 <a href='http://keycode.info/'>keycode.info</a> 以找出自定义键的 keyCode。
keyPressed__description__0 = keyPressed() 函数将会在每一次任何键被按下时被调用。被按下的键的 keyCode 将被储存在 keyCode 变量内。<br><br>对于非 ASCII 值的键，请使用 keyCode 变量。您能查看 keyCode 是否等于 BACKSPACE、DELETE、ENTER、RETURN、TAB、ESCAPE、SHIFT、CONTROL、OPTION、ALT、UP_ARROW、DOWN_ARROW、LEFT_ARROW、RIGHT_ARROW。<br><br>至于 ASCII 键值它们的值会被储存在 key 变量内。不过，它并不会分辨大小写。因此，建议使用 keyTyped() 以读取 key 变量，因为其大小写在这里会被分辨出来。<br><br>取决于操作系统如何处理按键重复，按住一个键可能使 keyTyped() （及 keyReleased()）被调用多过一次。重复的速度应操作系统及该电脑的设置而定。<br><br>不同浏览器可能会有不同附属于个别键盘事件的默认行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
keyPressed__description__1 = For non-ASCII keys, use the keyCode variable. You can check if the keyCode equals BACKSPACE, DELETE, ENTER, RETURN, TAB, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW.
keyPressed__description__2 = For ASCII keys, the key that was pressed is stored in the key variable. However, it does not distinguish between uppercase and lowercase. For this reason, it is recommended to use <a href="#/p5/keyTyped">keyTyped()</a> to read the key variable, in which the case of the variable will be distinguished.
keyPressed__description__3 = Because of how operating systems handle key repeats, holding down a key may cause multiple calls to <a href="#/p5/keyTyped">keyTyped()</a> (and <a href="#/p5/keyReleased">keyReleased()</a> as well). The rate of repeat is set by the operating system and how each computer is configured. Browsers may have different default behaviors attached to various key events. To prevent any default behavior for this event, add "return false" to the end of the method.
keyPressed__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyReleased__description__0 = keyReleased() 函数将会在每一次任何键被释放时被调用。请查看 key 及 keyCode 以知更多详情。<br><br>不同浏览器可能会有不同附属于个别键盘事件的默认行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
keyReleased__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyTyped__description__0 = keyTyped() 函数将会在每一次任何键被按下时被调用，可是会忽略操作键如 Ctrl、Shift 及 Alt。被按下的键的 keyCode 将被储存在 keyCode 变量内。<br><br>取决于操作系统如何处理按键重复，按住一个键可能使 keyTyped() （及 keyReleased()）被调用多过一次。重复的速度应操作系统及该电脑的设置而定。<br><br>不同浏览器可能会有不同附属于个别键盘事件的默认行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
keyTyped__description__1 = Because of how operating systems handle key repeats, holding down a key will cause multiple calls to <a href="#/p5/keyTyped">keyTyped()</a> (and <a href="#/p5/keyReleased">keyReleased()</a> as well). The rate of repeat is set by the operating system and how each computer is configured. Browsers may have different default behaviors attached to various key events. To prevent any default behavior for this event, add "return false" to the end of the method.
keyTyped__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyIsDown__description__0 = keyIsDown() 函数将查看被提供的键是否正被按下。它能在当您需要使用多个不同的键同时用来移动一个物件时使用（如将一个图像往斜移动）。您能给予任何代表该键的 keyCode 会任何<a href='http://p5js.org/zh-Hans/reference/#p5/keyCode'>此页</a>的 keyCode 变量名为参数。
keyIsDown__returns = Boolean: whether key is down or not
keyIsDown__params__code = 数字：该查看的键
movedX__description__0 = The variable movedX contains the horizontal movement of the mouse since the last frame
movedY__description__0 = The variable movedY contains the vertical movement of the mouse since the last frame
mouseX__description__0 = mouseX 系统变量将会储存当时的鼠标相对于画布 (0, 0) 位置的的横向位置。如果使用的是触动而不是滑鼠的话，mouseX 将会储存上一个触动点的 x 值。
mouseY__description__0 = mouseY 系统变量将会储存当时的鼠标相对于画布 (0, 0) 位置的的直向位置。如果使用的是触动而不是滑鼠的话，mouseY 将会储存上一个触动点的 y 值。
pmouseX__description__0 = pmouseX 系统变量将会储存上一个影格鼠标或触动点相对于画布 (0, 0) 位置的的横向位置。
pmouseY__description__0 = pmouseY 系统变量将会储存上一个影格鼠标或触动点相对于画布 (0, 0) 位置的的直向位置。
winMouseX__description__0 = winMouseX 系统变量将会储存当时鼠标相对于窗口 (0, 0) 位置的横向位置。
winMouseY__description__0 = winMouseY 系统变量将会储存当时鼠标相对于窗口 (0, 0) 位置的直向位置。
pwinMouseX__description__0 = pwinMouseX 系统变量将会储存上一个影格鼠标相对于窗口 (0, 0) 位置的横向位置。
pwinMouseY__description__0 = pwinMouseY 系统变量将会储存上一个影格鼠标相对于窗口 (0, 0) 位置的直向位置。
mouseButton__description__0 = p5 将自动记录滑鼠键是否被按下及哪个键被按下。mouseButton 系统变量的值可能是 LEFT、RIGHT 或 CENTER，取决于上一个被按下的滑鼠键。请注意：不同的浏览器可能记录不同的 mouseButton 值。
mouseIsPressed__description__0 = mouseIsPressed 系统变量将会在滑鼠键被按下时为真（true），而没按下时为假（false）。
mouseMoved__description__0 = mouseMoved() 函数将在每次鼠标移动而滑鼠键没有被按下的时候被调用。<br><br>不同浏览器可能有不同附属于个别滑鼠事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
mouseMoved__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseDragged__description__0 = mouseDragged() 函数将在每次鼠标移动及滑鼠键正被按下的时候被调用。如果 mouseDragged() 函数并未有被定义，touchMoved() 函数有被定义的话将会被调用。<br><br>不同浏览器可能有不同附属于个别滑鼠事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
mouseDragged__params__event = Object: (Optional) optional MouseEvent callback argument.
mousePressed__description__0 = mousePressed() 函数将在每次滑鼠键被按下时被调用。mouseButton 函数（请参考其文献）可以被用来探测哪一个滑鼠键刚被按下。如果 mousePressed() 函数并未有被定义，touchStarted() 函数有被定义的话将会被调用。<br><br>不同浏览器可能有不同附属于个别滑鼠事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
mousePressed__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseReleased__description__0 = mouseReleased() 函数将在每次滑鼠键被释放时被调用。如果 mouseReleased() 函数并未有被定义，touchEnded() 函数有被定义的话将会被调用。<br><br>不同浏览器可能有不同附属于个别滑鼠事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
mouseReleased__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseClicked__description__0 = mouseClicked() 函数将在滑鼠键被按下然后被释放后被调用。<br><br>不同浏览器处理滑鼠点击的方式不大一样，所以这函数只有在滑鼠左键被点击时才保证会被触发。如果想要处理其他滑鼠键的点击或释放事件，请参考 mousePressed() 或 mouseReleased()。<br><br>不同浏览器可能有不同附属于个别滑鼠事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
mouseClicked__params__event = Object: (Optional) optional MouseEvent callback argument.
doubleClicked__description__0 = doubleClicked() 函数将在 dblclick 事件被触发式被调用，dblclick 时间是 DOM L3 规范的一部分。doubleClicked 将在滑鼠键（通常为左键）连续两次在同样一个元素上点击时被触发。以知更多详情请参考 Mozilla 的参考文献：<a href='https://developer.mozilla.org/en-US/docs/Web/Events/dblclick'>https://developer.mozilla.org/en-US/docs/Web/Events/dblclick</a>。
doubleClicked__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseWheel__description__0 = mouseWheel() 函数将在每次直向滑鼠滚轮事件被触发式被调用，可以由实际的滑鼠滚轮或摸板触发。<br><br>event.delta 属性将返回滑鼠滚轮所滚动的量。这值可以是正数或负数，取决于滚动的方向（在 OS X 如果启用“自然”滚屏方向，正反方向将相反）。
mouseWheel__params__event = Object: (Optional) optional WheelEvent callback argument.
requestPointerLock__description__0 = The function <a href="#/p5/requestPointerLock">requestPointerLock()</a> locks the pointer to its current position and makes it invisible. Use <a href="#/p5/movedX">movedX</a> and <a href="#/p5/movedY">movedY</a> to get the difference the mouse was moved since the last call of draw. Note that not all browsers support this feature. This enables you to create experiences that aren't limited by the mouse moving out of the screen even if it is repeatedly moved into one direction. For example, a first person perspective experience.
exitPointerLock__description__0 = The function <a href="#/p5/exitPointerLock">exitPointerLock()</a> exits a previously triggered <a href="#/p5/requestPointerLock">pointer Lock</a> for example to make ui elements usable etc
touches__description__0 = touches[] 系统变量将储存一个含有现在所有触动点相对于画布 (0, 0) 位置的位置数组，及分辨个别触动点移动时的 ID。数组内的每个元素都会有 x、y 及 id 属性。<br><br>touches[] 数组并不受 Safari 及 IE 移动设备（包括手提电脑）所支持。
touches__description__1 = The touches[] array is not supported on Safari and IE on touch-based desktops (laptops).
touchStarted__description__0 = touchStarted() 函数将在每次触动事件被触发时被调用。如果 touchStarted() 函数并未有被定义，mousePressed() 函数有被定义的话将会被调用。<br><br>不同浏览器可能有不同附属于个别触动事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
touchStarted__params__event = Object: (Optional) optional TouchEvent callback argument.
touchMoved__description__0 = touchMoved() 函数将在每次触点移动事件被触发时被调用。如果 touchMoved() 函数并未有被定义，mouseDragged() 函数有被定义的话将会被调用。<br><br>不同浏览器可能有不同附属于个别触动事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
touchMoved__params__event = Object: (Optional) optional TouchEvent callback argument.
touchEnded__description__0 = touchEnded() 函数将在每次触动结束时被调用。如果 touchEnded() 函数并未有被定义，mouseReleased() 函数有被定义的话将会被调用。<br><br>不同浏览器可能有不同附属于个别触动事件的行为。以防止这些默认行为发生，只需在函数尾端加 “return false”。
touchEnded__params__event = Object: (Optional) optional TouchEvent callback argument.
createImage__description__0 = 创造一个新的 p5.Image 物件（储存图像的数据类型）。这将提供一个全新的像素缓冲供您使用。缓冲区的大小将由所提供的宽度和高度参数决定。<br><br>.pixels 将提供一个含有所有像素资料的数组。这些值都为数字。这数组的大小为（同时考虑像素密度）显示窗口的大小 x4，分别代表每个像素由左到右，上到下的 R、G、B、A 值。请参考 .pixels 文献。您也能使用更简单的 set() 或 get()。<br><br>在获取一个图像的像素之前，像素资料必须先使用 loadPixels() 函数加载。在数组资料被修改后，updatePixels() 函数必须被调用以更新图像资料。
createImage__description__1 = .<a href="#/p5.Image/pixels">pixels</a> gives access to an array containing the values for all the pixels in the display window. These values are numbers. This array is the size (including an appropriate factor for the <a href="#/p5/pixelDensity">pixelDensity</a>) of the display window x4, representing the R, G, B, A values in order for each pixel, moving from left to right across each row, then down each column. See .<a href="#/p5.Image/pixels">pixels</a> for more info. It may also be simpler to use <a href="#/p5.Image/set">set()</a> or <a href="#/p5.Image/get">get()</a>.
createImage__description__2 = Before accessing the pixels of an image, the data must loaded with the <a href="#/p5.Image/loadPixels">loadPixels()</a> function. After the array data has been modified, the <a href="#/p5.Image/updatePixels">updatePixels()</a> function must be run to update the changes.
createImage__returns = p5.Image：p5.Image 物件
createImage__params__width = 整数：像素宽度
createImage__params__height = 整数：像素宽度
saveCanvas__description__0 = 将现有的画布储存成图像。In Safari, this will open the image in the window and the user must provide their own filename on save-as. Other browsers will either save the file immediately, or prompt the user with a dialogue window.
saveCanvas__params__selectedCanvas = p5.Element|HTMLCanvasElement：una variable representando un canvas HTML5 específico (opcional)
saveCanvas__params__filename = 字符串
saveCanvas__params__extension = 字符串：'jpg' 或 'png'
saveFrames__description__0 = 捕捉一系列可用于制作影响的影格图像。接受回调函数。比如说，您可能想要将影格传送至伺服器以方便储存或转变成影像。如果回调函数没有被提供，浏览器将弹出储存文件对话框以尝试下载所有刚被创造的图像。如果提供回调函数，图像资料默认上并不会被储存而是以物件数组的形式被转送至回调函数做参数，数组大小为储存影格的总数。
saveFrames__description__1 = Note that <a href="#/p5.Image/saveFrames">saveFrames()</a> will only save the first 15 frames of an animation. To export longer animations, you might look into a library like <a href="https://github.com/spite/ccapture.js/">ccapture.js</a>.
saveFrames__params__filename = 字符串
saveFrames__params__extension = 字符串：'jpg' 或 'png'
saveFrames__params__duration = 数字：该捕捉的影格的秒数
saveFrames__params__framerate = 数字：捕捉影格的帧率
saveFrames__params__callback = 函数(数组)：一个用来处理图像资料的回调函数。此函数将会被给予一个数组为参数。此数组将会储存所定义的捕捉影格物件。每一个物件都会有三个属性：imageData - 为 image/octet-stream 类型、filename 及 extension。
loadImage__description__0 = 从被给予的路径加载一个图像并使用其图像创造一个  p5.Image 物件。<br><br>该图像或许不能立刻被渲染，如果您想要保证您在图像加载完毕后才开始做任何事情，您可以将 loadImage() 函数调用在 preload() 里。您也能提供回调函数以在图像加载完毕时处理图像资料。<br><br>图像的路径应该相对于链接您的绘图的 HTML 文件。从其他 URL 或远程位置加载图像可能会被浏览器的内建安全模式阻止。
loadImage__description__1 = The image may not be immediately available for rendering. If you want to ensure that the image is ready before doing anything with it, place the <a href="#/p5/loadImage">loadImage()</a> call in <a href="#/p5/preload">preload()</a>. You may also supply a callback function to handle the image when it's ready.
loadImage__description__2 = The path to the image should be relative to the HTML file that links in your sketch. Loading an image from a URL or other remote location may be blocked due to your browser's built-in security.
loadImage__description__3 = You can also pass in a string of a base64 encoded image as an alternative to the file path. Remember to add "data:image/png;base64," in front of the string.
loadImage__returns = p5.Image：p5.Image 物件
loadImage__params__path = 字符串：欲加载的图像的路径
loadImage__params__successCallback = 函数(p5.Image)：图像加载结束调用的函数。会被给予 p5.Image 做参数。
loadImage__params__failureCallback = 函数(错误物件)：如果图像加载失败此函数将被调用并给予错误物件做参数。
image__description__0 = 在 p5 画布上画一个图像。<br><br>此函数能使用几个不同数量的参数。最简单的用法只需要三个参数：img（图像）、x 及 y - (x, y) 为图像的位置。多两个可选参数能用来定义绘制图像的宽度及高度。<br><br>此函数也能使用所有八个数字参数。以分辨所有的参数，p5.js 在以下将使用“终点方形”（应对于 “dx”、“dy” 等）及“原图像”（应对于 “sx”、“sy”等）的名词。提供“原图像”大小可用来显示原图像的一个子部分而不需要显示整个图像。以下图表能解释得更清楚：<img src='assets/drawImage.png'>
image__description__1 = This function can be used with different numbers of parameters. The simplest use requires only three parameters: img, x, and y—where (x, y) is the position of the image. Two more parameters can optionally be added to specify the width and height of the image.
image__description__2 = This function can also be used with all eight Number parameters. To differentiate between all these parameters, p5.js uses the language of "destination rectangle" (which corresponds to "dx", "dy", etc.) and "source image" (which corresponds to "sx", "sy", etc.) below. Specifying the "source image" dimensions can be useful when you want to display a subsection of the source image instead of the whole thing. Here's a diagram to explain further: <img src="assets/drawImage.png"></img>
image__params__img = p5.Image|p5.Element：该显示的图像
image__params__x = 数字：图像左上角的 x 坐标
image__params__y = 数字：图像左上角的 y 坐标
image__params__width = 数字：绘制图像的宽度
image__params__height = 数字：绘制图像的高度
image__params__dx = 数字：绘制图像的终点方形的 x 坐标位置
image__params__dy = 数字：绘制图像的终点方形的 y 坐标位置
image__params__dWidth = 数字：终点方形的宽度
image__params__dHeight = 数字：终点方形的高度
image__params__sx = 数字：该画进终点方形的原图像子部分的 x 坐标
image__params__sy = 数字：该画进终点方形的原图像子部分的 y 坐标
image__params__sWidth = 数字：该画进终点方形的原图像子部分的宽度
image__params__sHeight = 数字：该画进终点方形的原图像子部分的高度
tint__description__0 = 定义显示图像的填色值。图像能着色成所定义的颜色或提供透明度值以使其透明化。<br><br>如想是图像透明化但不想影响其颜色，可使用白色为着色值并定义透明度值。比如说，tint(255, 128) 将会使一个图像成为 50% 透明（假设为默认透明度范围 0-255，可使用 colorMode() 调整）。<br><br>灰阶值参数必须低于或等于当时 colorMode() 所定义的最高值。默认最高值为 255。
tint__description__1 = To apply transparency to an image without affecting its color, use white as the tint color and specify an alpha value. For instance, tint(255, 128) will make an image 50% transparent (assuming the default alpha range of 0-255, which can be changed with <a href="#/p5/colorMode">colorMode()</a>).
tint__description__2 = The value for the gray parameter must be less than or equal to the current maximum value as specified by <a href="#/p5/colorMode">colorMode()</a>. The default maximum value is 255.
tint__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
tint__params__v2 = 数字：绿彩值或饱和度值，需在被定义的范围内
tint__params__v3 = 数字：蓝彩值或亮度值，需在被定义的范围内
tint__params__alpha = 数字：
tint__params__value = 字符串：颜色字符串
tint__params__gray = 数字：灰阶值
tint__params__values = 数字[]：一个有红、绿、蓝及透明度值的数组
tint__params__color = p5.Color：着色色值
noTint__description__0 = 移除当时显示图像的填色值并将其恢复成显示图形的原色调。
imageMode__description__0 = 定义图像模式。更改 image() 解读参数的方式以更改图像开始绘制的位置。默认模式为 imageMode(CORNER)，此模式将解读第二及第三个参数为图像的左上角位置。如果加多两个参数，它们则被用来定义图像的宽度和高度。<br><br>imageMode(CORNERS) 将使 image() 函数解读第二及第三个参数为一个角落的位置，而第四个第五个参数为对面角落的位置。<br><br>imageMode(CENTER) 将使 image() 函数解读第二及第三个参数为图像的中心点。如果提供多两个参数，它们将被用来定义图像的宽度和高度。
imageMode__description__1 = imageMode(CORNERS) interprets the second and third parameters of <a href="#/p5/image">image()</a> as the location of one corner, and the fourth and fifth parameters as the opposite corner.
imageMode__description__2 = imageMode(CENTER) interprets the second and third parameters of <a href="#/p5/image">image()</a> as the image's center point. If two additional parameters are specified, they are used to set the image's width and height.
imageMode__params__mode = 常量：CORNER、CORNERS 或 CENTER
pixels__description__0 = 此数组为一个储存显示窗口内所有像素值的 Uint8ClampedArray。这些值都为数字。这数组的大小为（同时考虑像素密度）显示窗口的大小 x4，分别代表每个像素由左到右，上到下的 R、G、B、A 值。视网膜显示及其他高密度显示器将会有更多像素（pixelDensity^2 倍）。比如说，如果图像为 100x100 像素，总共会有 40,000 个元素在 pixels[] 数组内。而在一个视网膜显示，将会有 160,000 个元素。<br><br>数组内最初四个值（指数 0-3）将会是在坐标 (0, 0) 的像素的 R、G、B、A 值。下四个值（指数 4-7）将会是在坐标 (1, 0) 的像素的 R、G、B、A 值。一般上，如果要设置像素 (x, y) 的值： <pre>CODE BLOCK PENDING</pre> 虽然以上的方式有点复杂，它能提供足够的弹性以应对任何像素密度的显示。注意 set() 将会自动处理设定所有在任何像素密度下 (x, y) 坐标在 pixels[] 内的值，不过程序性能可能在像素数组被更改很多次时时不佳。<br><br>在使用这个数组之前，像素资料必须先使用 loadPixels() 函数加载。在数组资料被修改后，updatePixels() 函数必须被调用以更新图像资料。<br><br>注意这不是个普通的 Javascript 数组。这表示 Javascript 数组函数如 <code>slice()</code> 或 <code>arrayCopy()</code> 将不会有效果。
pixels__description__1 = The first four values (indices 0-3) in the array will be the R, G, B, A values of the pixel at (0, 0). The second four values (indices 4-7) will contain the R, G, B, A values of the pixel at (1, 0). More generally, to set values for a pixel at (x, y): <pre><code class="language-javascript">let d = pixelDensity(); for (let i = 0; i < d; i++) { "{" }  for (let j = 0; j < d; j++) { "{" }  // loop over  index = 4 * ((y * d + j) * width * d + (x * d + i));  pixels[index] = r;  pixels[index+1] = g;  pixels[index+2] = b;  pixels[index+3] = a;  { "}" } { "}" }</code></pre>
pixels__description__2 = While the above method is complex, it is flexible enough to work with any pixelDensity. Note that <a href="#/p5/set">set()</a> will automatically take care of setting all the appropriate values in <a href="#/p5/pixels">pixels[]</a> for a given (x, y) at any pixelDensity, but the performance may not be as fast when lots of modifications are made to the pixel array.
pixels__description__3 = Before accessing this array, the data must loaded with the <a href="#/p5/loadPixels">loadPixels()</a> function. After the array data has been modified, the <a href="#/p5/updatePixels">updatePixels()</a> function must be run to update the changes.
pixels__description__4 = Note that this is not a standard javascript array. This means that standard javascript functions such as <a href="#/p5/slice">slice()</a> or <a href="#/p5/arrayCopy">arrayCopy()</a> do not work.
blend__description__0 = 将一个图像内一个区域的像素复制去另一个图像，同时使用所定义的混合模式执行复制。
blend__params__srcImage = p5.Image：原图像
blend__params__sx = 整数：原图像的左上角 x 坐标
blend__params__sy = 整数：原图像的左上角 y 坐标
blend__params__sw = 整数：原图像的宽度
blend__params__sh = 整数：原图像的高度
blend__params__dx = 整数：终点图像左上角的 x 坐标
blend__params__dy = 整数：终点图像左上角的 y 坐标
blend__params__dw = 整数：终点图像的宽度
blend__params__dh = 整数：终点图像的高度
blend__params__blendMode = 常量：混合模式。BLEND、DARKEST、LIGHTEST、DIFFERENCE、MULTIPLY、EXCLUSION、SCREEN、REPLACE、OVERLAY、HARD_LIGHT、SOFT_LIGHT、DODGE、BURN、ADD 或 NORMAL。
copy__description__0 = 将画布内一个区域的像素复制去画布内另外一个区域同时也复制一个由 srcImg 参数所定义的图像内一个区域的像素去定义 srcImage 的画布上，这将是原图像。如果原图像与重点区域的大小不同，它将会自动缩放原图像的像素以符合所定义的终点区域。
copy__params__srcImage = p5.Image：原图像
copy__params__sx = 整数：原图像的左上角 x 坐标
copy__params__sy = 整数：原图像的左上角 y 坐标
copy__params__sw = 整数：原图像的宽度
copy__params__sh = 整数：原图像的高度
copy__params__dx = 整数：终点图像左上角的 x 坐标
copy__params__dy = 整数：终点图像左上角的 y 坐标
copy__params__dw = 整数：终点图像的宽度
copy__params__dh = 整数：终点图像的高度
filter__description__0 = 在画布上使用过滤器。<br><br>预设选择为：<br><br>THRESHOLD 将图像转换成黑与白像素，取决于它们是否高于或低于所定义的 level 参数值。参数值必须在 0.0（黑色）与 1.0（白色）之间。如果并没有提供参数的话，默认将设为 0.5。<br><br>GRAY 将图像内的颜色转换成灰阶色。不使用任何参数。<br><br>OPAQUE 设置所有透明度值成完全不透明。不使用任何参数。<br><br>INVERT 设置每个像素成其反值。不使用任何参数。<br><br>POSTERIZE 将限制每个图像的彩色通道至参数所定义的颜色数。参数值可以介于 2 至 255 之间，但是效果会在较低值是比较明显。<br><br>BLUR 将使用 level 参数所定义的模糊度执行高斯模糊。如果没有提供参数，模糊度为高斯模糊半径为 1。越大的值越模糊。<br><br>ERODE 减少亮区。不使用任何参数。<br><br>DILATE 增加亮区。不使用任何参数。
filter__description__1 = THRESHOLD Converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. The parameter must be between 0.0 (black) and 1.0 (white). If no level is specified, 0.5 is used.
filter__description__2 = GRAY Converts any colors in the image to grayscale equivalents. No parameter is used.
filter__description__3 = OPAQUE Sets the alpha channel to entirely opaque. No parameter is used.
filter__description__4 = INVERT Sets each pixel to its inverse value. No parameter is used.
filter__description__5 = POSTERIZE Limits each channel of the image to the number of colors specified as the parameter. The parameter can be set to values between 2 and 255, but results are most noticeable in the lower ranges.
filter__description__6 = BLUR Executes a Gaussian blur with the level parameter specifying the extent of the blurring. If no parameter is used, the blur is equivalent to Gaussian blur of radius 1. Larger values increase the blur.
filter__description__7 = ERODE Reduces the light areas. No parameter is used.
filter__description__8 = DILATE Increases the light areas. No parameter is used.
filter__description__9 = filter() does not work in WEBGL mode. A similar effect can be achieved in WEBGL mode using custom shaders. Adam Ferriss has written a <a href="https://github.com/aferriss/p5jsShaderExamples" target='_blank'>selection of shader examples</a> that contains many of the effects present in the filter examples.
filter__params__filterType = 常量：THRESHOLD、GRAY、OPAQUE、INVERT、POSTERIZE、BLUR、ERODE、DILATE 或 BLUR。
filter__params__filterParam = 数字：每个过滤器独有的可选性参数，请看以上
get__description__0 = 返回任何像素值的一个为 [R,G,B,A] 的数组或捕捉图像的一部分。如果没有提供任何参数，将会返回整个图像。可使用 x 及 y 参数以取得一个像素的值。多加定义 w 及 h 参数可取的显示窗口的一部分。当在取得图像时，x 及 y 参数将定义图像的左上角坐标值，无论当时的图像模式为何。<br><br>如果欲取得的像素在图像外，将返回 [0,0,0,255]。以取得根据当时的颜色值范围及颜色模式的数字，请使用 getColor 而不是 get。<br><br>使用 get(x, y) 以取得一个像素的颜色相对来说简单，但是其速度并没有直接从 pixels[] 数组获取数据来的快。与使用 get(x, y) 有相同的效果但使用 pixels[] 及像素密度 d 的范例如下 <code>var x, y, d; // 设置这为坐标 var off = (y width + x) d * 4; var components = [ pixels[off], pixels[off + 1], pixels[off + 2], pixels[off + 3] ]; print(components);</code><br><br>请参考 pixels[] 文献以知更多详情。
get__description__1 = Returns an array of [R,G,B,A] values for any pixel or grabs a section of an image. If no parameters are specified, the entire image is returned. Use the x and y parameters to get the value of one pixel. Get a section of the display window by specifying additional w and h parameters. When getting an image, the x and y parameters define the coordinates for the upper-left corner of the image, regardless of the current <a href="#/p5/imageMode">imageMode()</a>.
get__description__2 = Getting the color of a single pixel with get(x, y) is easy, but not as fast as grabbing the data directly from <a href="#/p5/pixels">pixels[]</a>. The equivalent statement to get(x, y) using <a href="#/p5/pixels">pixels[]</a> with pixel density d is <pre><code class="language-javascript">let x, y, d; // set these to the coordinates let off = (y * width + x) * d * 4; let components = [  pixels[off],  pixels[off + 1],  pixels[off + 2],  pixels[off + 3] ]; print(components);</code></pre>
get__description__3 = See the reference for <a href="#/p5/pixels">pixels[]</a> for more information.
get__description__4 = If you want to extract an array of colors or a subimage from an p5.Image object, take a look at <a href="#/p5.Image/get">p5.Image.get()</a>
get__returns = 数字[]|p5.Image：在 x,y 的像素值数组或 p5.Image
get__params__x = 数字：像素的 x 坐标
get__params__y = 数字：像素的 y 坐标
get__params__w = 数字：宽度
get__params__h = 数字：高度
loadPixels__description__0 = 将显示窗口的像素资料加载到 pixels[] 数组里。这函数必须在读写 pixels[] 之前被调用。注意只有使用 set() 或直接修改 pixels[] 的改变会发生。
set__description__0 = 改变任何像素的颜色，或直接在显示窗口内绘画一个图像。<br><br>x 及 y 参数用于定义该改变的像素而 c 参数用于定义颜色值。这可以是一个 p5.Color 物件或一个 [R, G, B, A] 像素数组。它也能是一个灰阶值。在设定一个图像时，x 及 y 参数将定义图像左上角的坐标值，无论当时的图像模式为何。<br><br>在使用 set() 后，您必须调用 updatePixels() 以使您的改变生效。这应该在所有像素都被设定后才被调用，而且也必须在调用 get() 或绘制图像之前调用。<br><br>使用 set(x, y) 设置一个像素的颜色相对来说简单，但使其速度并没有直接将数据写在 pixels[] 数组里来的快。直接使用 pixels[] 设置像素值可能在使用视网膜显示器时比较复杂，不过它会在每一个循环有很多像素需要被设定时表现得更好。<br><br>请参考 pixels[] 文献以知更多详情。
set__description__1 = After using <a href="#/p5/set">set()</a>, you must call <a href="#/p5/updatePixels">updatePixels()</a> for your changes to appear. This should be called once all pixels have been set, and must be called before calling .<a href="#/p5/get">get()</a> or drawing the image.
set__description__2 = Setting the color of a single pixel with set(x, y) is easy, but not as fast as putting the data directly into <a href="#/p5/pixels">pixels[]</a>. Setting the <a href="#/p5/pixels">pixels[]</a> values directly may be complicated when working with a retina display, but will perform better when lots of pixels need to be set directly on every loop. See the reference for <a href="#/p5/pixels">pixels[]</a> for more information.
set__params__x = 数字：像素的 x 坐标
set__params__y = 数字：像素的 y 坐标
set__params__c = 数字|数字[]|物件：插入一个灰阶值 | 一个像素数组 | 一个 p5.Color 物件 | 一个用于复制的 p5.Image
updatePixels__description__0 = 使用 pixels[] 数组内的资料更新显示窗口。通常与 loadPixels() 一起使用。如果您只需从该数组中读取像素资料，您不需要调用 updatePixels() — 更新只有在进行更改时需要被调用。updatePixels() 应该在像素数组被更改或 set() 被调用时使用，只有使用 set() 或直接修改 pixels[] 的改变会发生。
updatePixels__params__x = 数字：欲更新的区域的左上角 x 坐标
updatePixels__params__y = 数字：欲更新的区域的左上角 y 坐标
updatePixels__params__w = 数字：欲更新的区域的宽度
updatePixels__params__h = 数字：欲更新的区域的高度
loadJSON__description__0 = 从一个文件或网址加载一个 JSON 文件，将返回一个物件。注意如果该 JSON 文件内涵一个数组，此函数仍然会返回一个以数字为指数的物件。<br><br>这函数为异步进行，这表示它可能不会在您绘图的下一行代码执行前完成。JSONP 功能支持是由填充工具所提供而您可以使用第二个参数来定义一个有 JSON 回调定义的物件，只需跟从这里的<a href='https://github.com/camsong/fetch-jsonp'>指示</a>。
loadJSON__description__1 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. JSONP is supported via a polyfill and you can pass in as the second argument an object with definitions of the json callback following the syntax specified <a href="https://github.com/camsong/ fetch-jsonp">here</a>.
loadJSON__description__2 = This method is suitable for fetching files up to size of 64MB.
loadJSON__returns = 物件：JSON 数据
loadJSON__params__path = 字符串：该加载的文件名或网址
loadJSON__params__jsonpOptions = 物件：关于 jsonp 设置的设置物件
loadJSON__params__datatype = 字符串："json" 或 "jsonp"
loadJSON__params__callback = 函数：在 loadJSON() 完成后该执行的函数，返回的数据将会是函数第一个参数
loadJSON__params__errorCallback = 函数：在发生错误时该执行的函数，回复将会是函数第一个参数
loadStrings__description__0 = 读取一个文件的内容并使用个别字行创造一个字符串数组。如果文件名被用作第一个参数，如以上范例，该文件必须被储存在绘图文件夹内。<br><br>除此之外，该文件也能从本地电脑任何位置加载，只需使用绝对路径（任何在 Unix 及 Linux 内由 / 开始的路径，或在 Windows 内由驱动器符号开始的路径），又或者任何在网络上的文件网址也能用来当作 filename 参数。<br><br>这函数为异步进行，这表示它可能不会在您绘图的下一行代码执行前完成。
loadStrings__description__1 = Alternatively, the file maybe be loaded from anywhere on the local computer using an absolute path (something that starts with / on Unix and Linux, or a drive letter on Windows), or the filename parameter can be a URL for a file found on a network.
loadStrings__description__2 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed.
loadStrings__description__3 = This method is suitable for fetching files up to size of 64MB.
loadStrings__returns = 字符串[]：字符串数组
loadStrings__params__filename = 字符串：该加载的文件名或网址
loadStrings__params__callback = 函数：在 loadStrings() 完成后该执行的函数，返回的数组将会是函数第一个参数
loadStrings__params__errorCallback = 函数：在发生错误时该执行的函数，回复将会是函数第一个参数
loadTable__description__0 = 读取一个文件的内容并使用其内容创造一个 p5.Table 物件。如果文件名被用作第一个参数，该文件必须被储存在绘图文件夹内。文件名参数也能是一个在网络上的文件的网址。默认上，该文件被假定为以逗号分隔（格式为 CSV）。该表格只会在 ‘header’ 设置被使用时才会寻找标签。<br><br>可使用的设置包括：<ul><li>csv - 将表格解析为逗号分隔值</li><li>tsv - 将表格解析为制表符分隔值</li><li>header - 这表格有标签行</li></ul><br><br>当使用多个设置时，您只需将他们分为个别的参数并使用逗号分隔。例如：<br><br><code>loadTable('my_csv_file.csv', 'csv', 'header'); </code><br><br>所有加载及储存的文件都需使用 UTF-8 编码。<br><br>这函数为异步进行，这表示它可能不会在您绘图的下一行代码执行前完成。在 preload() 内调用 loadTable() 将保证加载工作会在 setup() 及 draw() 被调用前完成<br><br>在 preload() 外，您可以提供一个回调函数以处理加载物件。
loadTable__description__1 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. Calling <a href="#/p5/loadTable">loadTable()</a> inside <a href="#/p5/preload">preload()</a> guarantees to complete the operation before <a href="#/p5/setup">setup()</a> and <a href="#/p5/draw">draw()</a> are called. Outside of <a href="#/p5/preload">preload()</a>, you may supply a callback function to handle the object:
loadTable__description__2 = All files loaded and saved use UTF-8 encoding. This method is suitable for fetching files up to size of 64MB.
loadTable__returns = 物件：含有数据的 Table 物件
loadTable__params__filename = 字符串：该加载的文件名或网址
loadTable__params__extension = String: (Optional) parse the table by comma-separated values "csv", semicolon-separated  values "ssv", or tab-separated values "tsv"
loadTable__params__header = String: (Optional) "header" to indicate table has header row
loadTable__params__callback = 函数：在 loadTable() 完成后该执行的函数，返回的 Table 物件将会是函数第一个参数
loadTable__params__errorCallback = 函数：在发生错误时该执行的函数，回复将会是函数第一个参数
loadXML__description__0 = 读取一个文件的内容并使用其内容创造一个 XML 物件。如果文件名被用作第一个参数，该文件必须被储存在绘图文件夹内。<br><br>除此之外，该文件也能从本地电脑任何位置加载，只需使用绝对路径（任何在 Unix 及 Linux 内由 / 开始的路径，或在 Windows 内由驱动器符号开始的路径），又或者任何在网络上的文件网址也能用来当作 filename 参数。<br><br>这函数为异步进行，这表示它可能不会在您绘图的下一行代码执行前完成。在 preload() 内调用 loadTable() 将保证加载工作会在 setup() 及 draw() 被调用前完成<br><br>在 preload() 外，您可以提供一个回调函数以处理加载物件。
loadXML__description__1 = Alternatively, the file maybe be loaded from anywhere on the local computer using an absolute path (something that starts with / on Unix and Linux, or a drive letter on Windows), or the filename parameter can be a URL for a file found on a network.
loadXML__description__2 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. Calling <a href="#/p5/loadXML">loadXML()</a> inside <a href="#/p5/preload">preload()</a> guarantees to complete the operation before <a href="#/p5/setup">setup()</a> and <a href="#/p5/draw">draw()</a> are called.
loadXML__description__3 = Outside of <a href="#/p5/preload">preload()</a>, you may supply a callback function to handle the object.
loadXML__description__4 = This method is suitable for fetching files up to size of 64MB.
loadXML__returns = 物件：含有数据的 XML 物件
loadXML__params__filename = 字符串：该加载的文件名或网址
loadXML__params__callback = 函数：在 loadXML() 完成后该执行的函数，返回的 XML 物件将会是函数第一个参数
loadXML__params__errorCallback = 函数：在发生错误时该执行的函数，回复将会是函数第一个参数
loadBytes__description__0 = This method is suitable for fetching files up to size of 64MB.
loadBytes__returns = 物件：一个 ‘bytes’ 属性将为被加载的缓冲区的物件
loadBytes__params__file = 字符串：该加载的文件名或网址
loadBytes__params__callback = 函数：在 load() 完成后该执行的函数
loadBytes__params__errorCallback = 函数：在发生错误时该执行的函数
httpGet__description__0 = 执行 HTTP GET 请求的函数。如果数据类型（datatype）没有被定义的话，p5 将会尝试根据网址猜返回数据的类型，默认为文字。这和调用 httpDo(path, 'GET') 的效果一样。‘binary’ 数据类型将会返回一个 Blob 物件，而 ‘arrayBuffer’ 数据类型将会返回一个 ArrayBuffer 并可用来创造类型化数组（如 Uint8Array）。
httpGet__returns = Promise: A promise that resolves with the data when the operation  completes successfully or rejects with the error after  one occurs.
httpGet__params__path = 字符串：该加载的文件名或网址
httpGet__params__datatype = 字符串："json"、"jsonp"、"binary"、"arrayBuffer"、"xml"或"text"
httpGet__params__data = 物件|布尔值：与请求一起传送的参数资料
httpGet__params__callback = 函数：在 httpGet() 完成后该执行的函数，返回的资料物件将会是函数第一个参数
httpGet__params__errorCallback = 函数：在发生错误时该执行的函数，回复将会是函数第一个参数
httpPost__description__0 = 执行 HTTP POST 请求的函数。如果数据类型（datatype）没有被定义的话，p5 将会尝试根据网址猜返回数据的类型，默认为文字。这和调用 httpDo(path, 'POST') 的效果一样。
httpPost__returns = Promise: A promise that resolves with the data when the operation  completes successfully or rejects with the error after  one occurs.
httpPost__params__path = 字符串：该加载的文件名或网址
httpPost__params__datatype = 字符串："json"、"jsonp"、"xml" 或 "text"。如果不提供此参数，httpPost() 将尝试猜
httpPost__params__data = 物件|布尔值：与请求一起传送的参数资料
httpPost__params__callback = 函数：在 httpPost() 完成后该执行的函数，返回的资料物件将会是函数第一个参数
httpPost__params__errorCallback = 函数：在发生错误时该执行的函数，回复将会是函数第一个参数
httpDo__description__0 = 执行 HTTP 请求的函数。如果数据类型（datatype）没有被定义的话，p5 将会尝试根据网址猜返回数据的类型，默认为文字。<br><br>如果需要更高等的使用法，您可以在第一个参数给予路径而第二个参数给予一个物件，物件内容设置与 Fetch API 规范的一样。
httpDo__returns = Promise: A promise that resolves with the data when the operation  completes successfully or rejects with the error after  one occurs.
httpDo__params__path = 字符串：该加载的文件名或网址
httpDo__params__method = 字符串："GET"、"POST" 或 "PUT"，默认为 "GET"
httpDo__params__datatype = 字符串："json"、"jsonp"、"xml" 或 "text"
httpDo__params__data = 物件|布尔值：与请求一起传送的参数资料
httpDo__params__callback = 函数：在 httpDo() 完成后该执行的函数，返回的资料物件将会是函数第一个参数
httpDo__params__errorCallback = 函数：在发生错误时该执行的函数，回复将会是函数第一个参数
httpDo__params__options = 物件：Request 物件，请参考 “fetch” API <a href='https://developer.mozilla.org/zh-CN/docs/Web/API/Fetch_API'>文献</a>以了解可使用设置
createWriter__returns = p5.PrintWriter:
createWriter__params__name = 字符串：该创造的文件的名
createWriter__params__extension = 字符串：
save__description__0 = 储存一个图像、文字、JSON、csv、wav 或 html 文件。将提示客户电脑下载文件。<b>注意 save() 函数不建议在正在循环执行的 draw 函数内使用，因为每一次被调用 save() 函数将会弹出一个储存对话框。</b><br><br>默认上此函数将储存画布成一个图像。您也可以选择定义一个文件名。例如：<pre>CODE BLOCK PENDING</pre>除此之外，第一个参数也能是个画布 p5.Element 的对象、字符串数组、JSON 数组、JSON 物件、p5.Table、p5.Image 或 p5.SoundFile（需要 p5.sound）。第二个参数为文件名（包括扩展名）。第三个参数适用于特别给这一类物件的设定。这函数将会储存一个符合给予的参数的文件。例如：<pre>CODE BLOCK PENDING</pre>
save__params__objectOrFilename = Object|String: (Optional) If filename is provided, will  save canvas as an image with  either png or jpg extension  depending on the filename.  If object is provided, will  save depending on the object  and filename (see examples  above).
save__params__filename = 物件|字符串：如果所提供的是文件名，此函数将会使用该文件名加上 png 或 jpg 文件扩展名来储存画布为一个图像。如果所提供的是物件，此函数则会一物件所定义的方式储存文件（请参考以上范例）。
save__params__options = 布尔值|字符串：依文件类型而定的设定。比如说，在储存 JSON 时，true 表示输出文件将会针对文件大小进行优化，而同时牺牲可读性。
saveJSON__description__0 = 将一个数组或 JSON 物件的内容写进一个 .json 文件内。文件的储存方式及地点在不同浏览器之间有所不同。
saveJSON__params__json = 数组|物件：
saveJSON__params__filename = String
saveJSON__params__optimize = 布尔值：如果为 true，将移除输出文件内的换行符及空格以优化文件大小（但牺牲可读性）
saveStrings__description__0 = 将一个字符串数组写进一个文字文件内，每一行为每一组字符串。文件的储存方式及地点在不同浏览器之间有所不同。
saveStrings__params__list = 字符串[]：该输出的字符串数组
saveStrings__params__filename = 字符串：输出文件的名字
saveStrings__params__extension = 字符串：文件扩展名
saveStrings__params__isCRLF = Boolean: (Optional) if true, change line-break to CRLF
saveTable__description__0 = 将一个表格（Table）物件的内容写进一个文件内。默认将储存为逗号分隔值（'csv'）的文字文件但也可以使用制表符分隔（'tsv'）或生成一个 HTML 表格（'html'）。文件的储存方式及地点在不同浏览器之间有所不同。
saveTable__params__Table = p5.Table: the <a href="#/p5.Table">Table</a> object to save to a file
saveTable__params__filename = 字符串：储存表格文件的名字
saveTable__params__options = 字符串：可以是 "tsv"、"csv" 或 "html"
abs__description__0 = 计算一个数字的绝对值（大小值）。映射到 Math.abs()。一个数字的绝对值一定是个正数。
abs__returns = 数字：被给予数字的绝对值
abs__params__n = 数字：用于计算的数字
ceil__description__0 = 计算最靠近并大于或等于参数值的整数。映射到 Math.ceil()。比如说，ceil(9.03) 将返回 10。
ceil__returns = 整数：取整后的数字
ceil__params__n = 数字：该取整的数字
constrain__description__0 = 限制一个数字于最低值与最高值之间。
constrain__returns = 数字：被限制后的数字
constrain__params__n = 数字：该限制的数字
constrain__params__low = 数字：最低值
constrain__params__high = 数字：最高值
dist__description__0 = 计算两点之间的距离。
dist__returns = 数字：两点之间的距离
dist__params__x1 = 数字：第一个点的 x 坐标
dist__params__y1 = 数字：第一个点的 y 坐标
dist__params__x2 = 数字：第二个点的 y 坐标
dist__params__y2 = 数字：第一个点的 z 坐标
dist__params__z1 = 数字：第二个点的 x 坐标
dist__params__z2 = 数字：第二个点的 z 坐标
exp__description__0 = 返回欧拉数 e （2.71828...）提升到由参数 n 定义的指数。映射到 Math.exp()。
exp__returns = 数字：e^n
exp__params__n = 数字：该提升的指数
floor__description__0 = 计算最靠近并小于或等于参数值的整数。映射到 Math.floor()。
floor__returns = 整数：取整后的数字
floor__params__n = 数字：该取整的数字
lerp__description__0 = 计算一个介于两个数字之间所定义的插值量位置的数字。amt 参数为两个值之间的插值量，0.0 为第一个值，0.1 为非常接近第一个值，0.5 为两者之间等等。lerp 函数可用来沿着直线制作动画及绘制虚线。
lerp__returns = 数字：插值
lerp__params__start = 数字：第一个值
lerp__params__stop = 数字：第二个值
lerp__params__amt = 数字：介于 0.0 与 1.0 之间的数字
log__description__0 = 计算一个数字的自然对数（e 为底数的对数）。这函数需要 n 参数大于 0.0。映射到 Math.log()。
log__returns = 数字：n 的自然对数
log__params__n = Number: number greater than 0
mag__description__0 = 计算一个向量的大小（或长度）。向量为一个空间内的方向，通常用于电脑图形及线性代数。因为它没有“开始”位置，一个向量的大小可以被想成是 0,0 坐标与向量 x,y 坐标之间的距离。因此，mag() 是 dist(0, 0, x, y) 的缩写。
mag__returns = 数字：从 (0, 0) 至 (a, b) 的向量的大小
mag__params__a = 数字：第一个值
mag__params__b = 数字：第二个值
map__description__0 = 从一个范围内映射一个数字去另一个范围。<br><br>在以上第一个范例，25 被从 0 至 100 之间的范围映射去窗口最左方 (0) 至最右方 (width) 的范围内。
map__description__1 = In the first example above, the number 25 is converted from a value in the range of 0 to 100 into a value that ranges from the left edge of the window (0) to the right edge (width).
map__returns = 数字：映射后的数字
map__params__value = 数字：该转换的值
map__params__start1 = 数字：现在值的最低值
map__params__stop1 = 数字：现在值的最高值
map__params__start2 = 数字：目标值的最低值
map__params__stop2 = 数字：目标值的最高值
map__params__withinBounds = 布尔值：限制目标值在最高及最低值之间
max__description__0 = 找出一系列数字中最大的值，并返回该值。max() 能接受任何数量的数字参数，或是一个任何大小的数组。
max__returns = 数字：最高值的数字
max__params__n0 = 数字：用于比较的数字
max__params__n1 = 数字：用于比较的数字
max__params__nums = Number[]: Numbers to compare
min__description__0 = 找出一系列数字中最小的值，并返回该值。min() 能接受任何数量的数字参数，或是一个任何大小的数组。
min__returns = 数字：最低值的数字
min__params__n0 = 数字：用于比较的数字
min__params__n1 = 数字：用于比较的数字
min__params__nums = Number[]: Numbers to compare
norm__description__0 = 将一个数字由一个范围标准化成介于 0 及 1 之间的值。与 map(value, low, high, 0, 1) 的效果相同。在范围外的数字将不会被限制在 0 与 1 之间，因为范围外的值通常是有意及有用的。（参考以上第二个范例）
norm__returns = 数字：标准化后的数字
norm__params__value = 数字：该标准化的值
norm__params__start = 数字：现在值的最低值
norm__params__stop = 数字：现在值的最高值
pow__description__0 = 执行幂运算。pow() 函数是个能有效率地将数字大量乘于自己（或其倒数）的方式。比如说，pow(3, 5) 等同于 3*3*3*3*3 而 pow(3, -5) 等同于 1 / (3*3*3*3*3)。映射到 Math.pow()。
pow__returns = 数字：n^e
pow__params__n = 数字：幂运算的底数
pow__params__e = 数字：幂运算的指数
round__description__0 = 计算最靠近 n 参数的整数。比如说，round(133.8) 将返回 134。映射到 Math.round()。
round__returns = 整数：取整后的数字
round__params__n = 数字：该取整的数字
round__params__decimals = Number: (Optional) number of decimal places to round to, default is 0
sq__description__0 = 平方一个数字（将数字乘于自己）。结果一定是个正数，因为将两个负数相乘一定会有一个正数结果。比如说 -1 * -1 = 1。
sq__returns = 数字：平方后的数字
sq__params__n = 数字：该平方的数字
sqrt__description__0 = 计算一个数字的平方根。一个数字的平方根一定是个正数，虽然也可能有正确的负数平方根。一个数字 a 的平方根 s 有以下属性 s*s = a。此函数为取平方的相反。映射到 Math.sqrt()。
sqrt__returns = 数字：取平方根后的数字
sqrt__params__n = 数字：该取平方根的非负数
fract__description__0 = Calculates the fractional part of a number.
fract__returns = Number: fractional part of x, i.e, { "{" }x{ "}" }
fract__params__num = Number: Number whose fractional part needs to be found out
createVector__description__0 = 创造一个新的 p5.Vector 向量（用以储存向量的数据类型）。此函数将提供一个二维或三维的向量，准确来说一个欧几里得（也称为几何）向量。向量为一个有大小及方向的量。
createVector__returns = p5.Vector
createVector__params__x = 数字：该向量的 x 分量
createVector__params__y = 数字：该向量的 y 分量
createVector__params__z = 数字：该向量的 z 分量
noise__description__0 = 返回所定义坐标的柏林噪声值。柏林噪声是个用来生成比 random() 所能生成更自然及更谐波的随机数字系列。在 1980 年代有 Ken Perlin 所发明，柏林噪声至今常被用在图形应用程序中生成程序纹理、自然运动、形状、地形等等。<br><br>柏林噪声与 random() 函数最主要的不同点在于前者是在一个无限的 n 维空间内定义的，这空间内每一对坐标都相对于一个固定的半随机值（只有在程序进行时为固定的；请参考 noiseSeed() 函数）。p5.js 能计算 1 维、2 维及 3 维噪声，这取决于所给予的坐标数。返回的值一定会在 0.0 至 1.0 之间。噪音值可以通过在噪音空间内移动以制成动画，如以上范例所示。第二及第三个空间维度也能被解读成时间。<br><br>所生成的噪音结构上和一般音频信号相似，尤其是此函数的频率。与物理学上谐波的概念相似，泊林噪音也是在计算几个八度后再将其结果加起来以得到最后的结果。<br><br>另外一个控制返回随机数系列的特征的方法是控制输入坐标值的大小。因为此函数能在无限之的空内内应用，输入坐标的值并不重要，只有个别坐标之间的距离需要被注意（如在循环内使用 noise() 时）。一般来说坐标之间的距离越小，生成噪声随机数列将会越平滑。介于 0.005-0.03 之间的距离应该适合大多数应用场合，不过这可能因应用需求而变。
noise__returns = 数字：柏林噪声在特定坐标的值（介于 0 与 1 之间）
noise__params__x = 数字：噪声空间的 x 坐标
noise__params__y = 数字：噪声空间的 y 坐标
noise__params__z = 数字：噪声空间的 z 坐标
noiseDetail__description__0 = 调整柏林噪声函数所生成的噪声特征及细节度。与物理学上谐波的概念相似，泊林噪音也是在计算几个八度后才得到最后的结果。越低的八度将会影响输出信号值越多因此同时会定义噪音的整体强度，而较高的八度将会在噪音系列中制作更精细的细节。<br><br>默认上，此噪音将使用四个八度计算而每个八度将有其前者一半的影响力，第一个八度的影响力为 50% 。这衰退值能通过加多一个参数而改变。比如说如果衰退因数为 0.75 那表示每个八度将会有其前者的 75% 的影响力（减少 25%）。任何介于 0.0 与 1.0 的值都能被接受，不过注意高于 0.5 的值可能会造成 noise() 函数会返回大于 1.0 的值。<br><br>通过改变这些参数，noise() 函数所生成的信号可适应于非常特别的需求或特点。
noiseDetail__params__lod = 数字：噪音该使用的八度数
noiseDetail__params__falloff = 数字：每个八度的衰退因数
noiseSeed__description__0 = 定义 noise() 使用的随机种子值。默认上，noise() 将在每一次改程序被执行时生成不同的结果。只需定义 value 参数至一个常量就能确保每一次软件执行时都会返回一样的随机数列。
noiseSeed__params__seed = 数字：随机种子值
randomSeed__description__0 = 定义 random() 使用的随机种子值。<br><br>默认上，random() 将在每一次改程序被执行时生成不同的结果。只需定义 seed 参数至一个常量就能确保每一次软件执行时都会返回一样的伪随机数。
randomSeed__description__1 = By default, <a href="#/p5/random">random()</a> produces different results each time the program is run. Set the seed parameter to a constant to return the same pseudo-random numbers each time the software is run.
randomSeed__params__seed = 数字：随机种子值
random__description__0 = 返回一个随机的浮点数。<br><br>可使用 0、1 或 2 个参数。<br><br>如果并没有定义任何参数，将返回一个介于 0 与 1（但不包括 1）的随机数。<br><br>如果只定义一个参数并且该参数为数字，将返回一个介于 0 与 该数字（但不包括该数字）的随机数。<br><br>如果值定义一个参数并且该参数为数组，将返回该数组中随机一个元素。<br><br>如果定义两个参数，将返回一个介于第一个参数与第二个参数（但不包括第二个参数）的随机数。
random__description__1 = Takes either 0, 1 or 2 arguments.
random__description__2 = If no argument is given, returns a random number from 0 up to (but not including) 1.
random__description__3 = If one argument is given and it is a number, returns a random number from 0 up to (but not including) the number.
random__description__4 = If one argument is given and it is an array, returns a random element from that array.
random__description__5 = If two arguments are given, returns a random number from the first argument up to (but not including) the second argument.
random__returns = 数字：随机数
random__params__min = 数字：最低值（包括此值）
random__params__max = 数字：最高值（不包括此值）
random__params__choices = 数组：供选择的数组
randomGaussian__description__0 = 返回一个符合高斯，或正态，分布的随机数。理论上 randomGaussian() 没有最高或最低返回值。不过，差均值很多的值被返回的机率将会很低；而接近均质的值被返回的机率将会相对较高。<br><br>可使用 0、1 或 2 个参数。<br>如果并没有定义任何参数，将使用均值为 0 与 标准差为 1。<br>如果只定义一个参数，该参数将为均值（标准差为 1）。<br>如果定义两个参数，第一个参数为均值，第二个参数为标准差。
randomGaussian__returns = 数字：随机数
randomGaussian__params__mean = 数字：均值
randomGaussian__params__sd = 数字：标准偏差
acos__description__0 = cos() 的反值，将返回一个值的反余弦值。此函数接受介于 -1 与 1 之间的值并将返回介于 0 与 PI（3.1415927）之间的值。
acos__returns = 数字：该值的反余弦值
acos__params__value = 数字：该取反余弦值的值
asin__description__0 = sin() 的反值，将返回一个值的反正弦值。此函数接受介于 -1 与 1 之间的值并将返回介于 -PI/2 与 PI/2 之间的值。
asin__returns = 数字：该值的反正弦值
asin__params__value = 数字：该取反正弦值的值
atan__description__0 = tan() 的反值，将返回一个值的反正切值。此函数接受介于 -Infinity 与 Infinity（包括 Infinity）之间的值并将返回介于 -PI/2 与 PI/2 之间的值。
atan__returns = 数字：该值的反正切值
atan__params__value = 数字：该取反正切值的值
atan2__description__0 = 计算从一个被定义的点到坐标原点的弧度，并由正 x 轴开始计算。将返回介于 PI 与 -PI 之间的浮点数。atan2() 函数通常用于定向几何图形至鼠标的位置。<br><br>注意：第一个参数为 y 坐标，而第二个参数为 x 坐标，这是为了适应计算正切值的结构。
atan2__description__1 = Note: The y-coordinate of the point is the first parameter, and the x-coordinate is the second parameter, due the the structure of calculating the tangent.
atan2__returns = 数字：该点的反正切值
atan2__params__y = 数字：该点的 y 坐标
atan2__params__x = 数字：该点的 x 坐标
cos__description__0 = 计算一个角度的余弦值。此函数将使用当时的角度模式。返回值将介于 -1 与 1 之间的值。
cos__returns = 数字：该角度的余弦值
cos__params__angle = 数字：角度
sin__description__0 = 计算一个角度的正弦值。此函数将使用当时的角度模式。返回值将介于 -1 与 1 之间的值。
sin__returns = 数字：该角度的正弦值
sin__params__angle = 数字：角度
tan__description__0 = 计算一个角度的正切值。此函数将使用当时的角度模式。返回值将介于 -1 与 1 之间的值。
tan__returns = 数字：该角度的正切值
tan__params__angle = 数字：角度
degrees__description__0 = 将一个弧度值转换成其相对的角度值。弧度和角度为两个测量同样一个东西的方法。一个圆形里有 360 度而也有 2*PI 个弧度。比如说，90° = PI/2 = 1.5707964。此函数将不会使用当时的角度模式。
degrees__returns = 数字：转换后的角度值
degrees__params__radians = 数字：由弧度转换成角度的值
radians__description__0 = 将一个角度值转换成其相对的弧度值。弧度和角度为两个测量同样一个东西的方法。一个圆形里有 360 度而也有 2*PI 个弧度。比如说，90° = PI/2 = 1.5707964。此函数将不会使用当时的角度模式。
radians__returns = 数字：转换后的角度值
radians__params__degrees = 数字：由角度转换成弧度的值
angleMode__description__0 = 定义当时 p5 的角度模式。默认模式为 RADIANS（弧度）。
angleMode__params__mode = 常量：RADIANS 或 DEGREES
textAlign__description__0 = 定义绘制问题的对齐方向。使用两个参数：horizAlign（LEFT、CENTER 或 RIGHT）及 vertAlign（TOP、BOTTOM、CENTER 或 BASELINE）。<br><br>horizAlign 参数为 text() 函数的 x 值，而 vertAlign 参数为 y 值。<br><br>因此如果您使用 textAlign(LEFT)，您将会使文字最左方对齐 text() 函数所使用的 x 参数。如果您使用 textAlign(RIGHT, TOP)，您将会使文字最右方对齐 x 值而文字最上方对齐 y 值。
textAlign__description__1 = The horizAlign parameter is in reference to the x value of the <a href="#/p5/text">text()</a> function, while the vertAlign parameter is in reference to the y value.
textAlign__description__2 = So if you write textAlign(LEFT), you are aligning the left edge of your text to the x value you give in <a href="#/p5/text">text()</a>. If you write textAlign(RIGHT, TOP), you are aligning the right edge of your text to the x value and the top of edge of the text to the y value.
textAlign__params__horizAlign = 常量：水平对齐，LEFT、CENTER 或 RIGHT
textAlign__params__vertAlign = 常量：垂直对齐，TOP、BOTTOM、CENTER 或 BASELINE
textLeading__description__0 = 定义或获取行与行之间的像素距离。此设置将会在所有接下来的 text() 函数调用时生效。
textLeading__params__leading = 数字：行与行之间的像素距离
textSize__description__0 = 定义或获取当时的字体大小。这大小将会在所有接下来的 text() 函数调用时生效。字形大小是使用像素定义。
textSize__params__theSize = 数字：字体的像素大小
textStyle__description__0 = 定义或获取系统字体的风格，可以是 NORMAL、ITALIC 或 BOLD。注意：这可能被 CSS 风格所覆盖。至与非系统字体（opentype、truetype 等）请直接加载已风格化的字体。
textStyle__params__theStyle = 常量：字体的风格，可以是 NORMAL、ITALIC 或 BOLD
textWidth__description__0 = 计算及返回任何字符或字符串的宽度。
textWidth__returns = 数字
textWidth__params__theText = 字符串：该测量的字符串
textAscent__description__0 = 返回当时字体在当时所定的大小的整体高度。这高度代表从基准线算起至最高字体的顶点的距离。
textAscent__returns = 数字
textDescent__description__0 = 返回当时字体在当时所定的大小的下端线高度。
textDescent__returns = 数字
textWrap__description__0 = Specifies how lines of text are wrapped within a text box. This requires a max-width set on the text area, specified in <a href="#/p5/text">text()</a> as parameter <code>x2</code>.
textWrap__description__1 = WORD wrap style only breaks lines at spaces. A single string without spaces that exceeds the boundaries of the canvas or text area is not truncated, and will overflow the desired area, disappearing at the canvas edge.
textWrap__description__2 = CHAR wrap style breaks lines wherever needed to stay within the text box.
textWrap__description__3 = WORD is the default wrap style, and both styles will still break lines at any line breaks (<code>\n</code>) specified in the original text. The text area max-height parameter (<code>y2</code>) also still applies to wrapped text in both styles, lines of text that do not fit within the text area will not be drawn to the screen.
textWrap__returns = String: wrapStyle
textWrap__params__wrapStyle = Constant: text wrapping style, either WORD or CHAR
loadFont__description__0 = 从一个文件或网址加载一个 opentype 字形文件（.otf、.ttf），将返回一个 p5.Font 物件。这函数为异步进行，这表示它可能不会在您绘图的下一行代码执行前完成。<br><br>字形的路径应该相对于链接您的绘图的 HTML 文件。从其他 URL 或远程位置加载字形可能会被浏览器的内建安全模式阻止。
loadFont__description__1 = The path to the font should be relative to the HTML file that links in your sketch. Loading fonts from a URL or other remote location may be blocked due to your browser's built-in security.
loadFont__returns = p5.Font：p5.Font 物件
loadFont__params__path = 字符串：该加载的字形名字或网址
loadFont__params__callback = 函数：在 loadFont() 完成后该调用的函数
loadFont__params__onError = 函数：在发生错误时该调用的函数
text__description__0 = 将文字绘制在荧幕上。显示第一个参数内的资料在荧幕上由其他参数所定义的位置。将会使用默认字形除非使用 textFont() 函数定义使用其他字形同时也将使用默认大小除非使用 textSize() 定义文字大小。文字的颜色可使用 fill() 函数定义。可使用 stroke() 及 strokeWeight() 函数添加文字外形线。<br><br>文字显示将位于 textAlign() 函数所定义的位置，您可将文字绘制在坐标的左边、右边或中间。<br><br>x2 及 y2 参数将定义一个方形文字显示区而且只适用于字符串资料类型。当这两个参数被定义时，它们将使用当时的 rectMode() 设置被解读。不符合方形大小的文字将不会被绘制在荧幕上。
text__description__1 = The text displays in relation to the <a href="#/p5/textAlign">textAlign()</a> function, which gives the option to draw to the left, right, and center of the coordinates.
text__description__2 = The x2 and y2 parameters define a rectangular area to display within and may only be used with string data. When these parameters are specified, they are interpreted based on the current <a href="#/p5/rectMode">rectMode()</a> setting. Text that does not fit completely within the rectangle specified will not be drawn to the screen. If x2 and y2 are not specified, the baseline alignment is the default, which means that the text will be drawn upwards from x and y.
text__description__3 = <b>WEBGL</b>: Only opentype/truetype fonts are supported. You must load a font using the <a href="#/p5/loadFont">loadFont()</a> method (see the example above). <a href="#/p5/stroke">stroke()</a> currently has no effect in webgl mode.
text__params__str = 字符串|物件|数组|数字|布尔值：该显示的字母数字符号
text__params__x = 数字：文字的 x 坐标
text__params__y = 数字：文字的 y 坐标
text__params__x2 = 数字：默认上，文字格的宽度，请参考 rectMode()
text__params__y2 = 数字：默认上，文字格的高度，请参考 rectMode()
textFont__description__0 = 定义使用 text() 函数绘制文字时该使用的字形。
textFont__description__1 = <b>WEBGL</b>: Only fonts loaded via <a href="#/p5/loadFont">loadFont()</a> are supported.
textFont__returns = Object: the current font
textFont__params__font = 物件|字符串：一个使用 loadFont() 加载的字形，或一个代表 Web 安全字体（一个所有系统都通用的字形）的字符串
textFont__params__size = 数字：字形大小
append__description__0 = 弃用：append() 已被弃用并将会在未来的 p5 版本中移除。请改用 <a href='https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/push'>array.push(value)</a>。<br><br>在数组的尾端增加一个值。将增加数组的一个大小。映射到 Array.push()。
append__returns = Array: the array that was appended to
append__params__array = 数组：该附加到的数组
append__params__value = 任何：该附加进数组的元素
arrayCopy__description__0 = 弃用：arrayCopy() 已被弃用并将会在未来的 p5 版本中移除。<br><br>复制一个数组（或该数组的一部分）去另外一个数组。src 数组将会被复制去 dst 数组，开端位置由 srcPosition 参数定义并复制进由 dstPosition 定义的位置。该复制的元素数量由 length 参数定义。注意在复制元素时该元素将覆盖终点数组原有的元素。如果想要添加元素，请使用 use concat()。<br><br>简化版本将只使用两个参数：arrayCopy(src, dst) 将复制整个数组去另一个相同大小的数组。这等同于使用 arrayCopy(src, 0, dst, 0, src.length)。<br><br>使用这函数将比使用 for 循环数组内每一个元素并一一复制来的更有效率。
arrayCopy__description__1 = The simplified version with only two arguments, arrayCopy(src, dst), copies an entire array to another of the same size. It is equivalent to arrayCopy(src, 0, dst, 0, src.length).
arrayCopy__description__2 = Using this function is far more efficient for copying array data than iterating through a for() loop and copying each element individually.
arrayCopy__params__src = 数组：原数组
arrayCopy__params__srcPosition = 数字：在原数组内的开端指数
arrayCopy__params__dst = 数组：终点数组
arrayCopy__params__dstPosition = 数字：在终点数组内的开端指数
arrayCopy__params__length = 数字：该复制的元素量
concat__description__0 = 弃用：concat() 已被弃用并将会在未来的 p5 版本中移除。请改用 <a href='https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/concat'>arr1.concat(arr2)</a>。<br><br>串接两个数组，映射到 Array.concat()。将不会修改原有数组。
concat__returns = 数组：串接后的数组
concat__params__a = 数组：串接的第一个数组
concat__params__b = 数组：串接的第二个数组
reverse__description__0 = 弃用：reverse() 已被弃用并将会在未来的 p5 版本中移除。请改用 <a href='https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse'>array.reverse()</a>。<br><br>倒转数组内元素的次序，映射到 Array.reverse()。
reverse__returns = Array: the reversed list
reverse__params__list = 数组：该倒转的数组
shorten__description__0 = 弃用：shorten() 已被弃用并将会在未来的 p5 版本中移除。请改用 <a href='https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/pop'>array.pop()</a>。<br><br>将数组减少一个元素并返回缩短后的数组，映射到 Array.pop()。
shorten__returns = 数组：缩短后的数组
shorten__params__list = 数组：该缩短的数组
shuffle__description__0 = 弃用：shuffle() 已被弃用并将会在未来的 p5 版本中移除。请参考<a hreh='https://stackoverflow.com/questions/6274339/how-can-i-shuffle-an-array'>使用 Javascript 混洗数组</a>（英文页面）。<br><br>随机排列数组内的元素。使用 Fisher-Yates 混洗函数。
shuffle__returns = 数组：混洗后的数组
shuffle__params__array = 数组：该混洗的数组
shuffle__params__bool = 布尔值：修改所给予的数组
sort__description__0 = 弃用：sort() 已被弃用并将会在未来的 p5 版本中移除。请改用 <a href='https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/sort'>array.sort()</a>。<br><br>将一个含有数字的数组有最小到最大值重新排列，或将一个含有文字的数组依字母顺序排列。原数组将不会被修改，而将会返回重新排列后的数组。count 参数定义该排列的元素量。比如说，如果数组内有 12 个元素而 count 被设为 5，只有数组内前五个元素将会被排列。
sort__returns = Array: the sorted list
sort__params__list = 数组：该排列的数组
sort__params__count = 整数：该排列的元素数，由 0 开始
splice__description__0 = 弃用：splice() 已被弃用并将会在未来的 p5 版本中移除。请改用 <a href='https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/splice'>array.splice()</a>。<br><br>在一个原有的数组内添加一个值或另一数组的值。第一个参数定义该修改的数组，而第二个参数定义该添加的资料。第三个参数为该添加元素的位置的数组指数。（记得数组指数从零开始，因此第一个位置为 0，而第二的位置为 1 等等。）
splice__returns = Array: the list
splice__params__list = 数组：拼接进的数组
splice__params__value = 任何：欲拼接进数组的值
splice__params__position = 整数：数组内该添加该元素的位置
subset__description__0 = 弃用：subset() 已被弃用并将会在未来的 p5 版本中移除。请改用 <a href='https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/Array/slice'>array.slice()</a>。<br><br>从一个现有的数组中提取一数组的元素。list 参数定义该复制提取元素的数组，而 start 及 count 参数定义该提取哪一些元素。如果没有提供 count 参数，那将会提取数组由开头到结尾的元素。在定义 start 参数时，记得数组第一个指数为 0。这函数将不会修改原数组。
subset__returns = 数组：提取出来的元素数组
subset__params__list = 数组：该提取元素的数组
subset__params__start = 整数：开始位置
subset__params__count = 整数：提取元素数
float__description__0 = 将一个字符串转换成其浮点值。字符串内内容必须是数字，不然将返回 NaN（不是数字）。比如说，float("1234.56") 将返回 1234.56，但 float("giraffe") 将返回 NaN。<br><br>当给予一数组的值时，将返回一个等同大小的浮点数组。
float__description__1 = When an array of values is passed in, then an array of floats of the same length is returned.
float__returns = 数字：该字符串的浮点值
float__params__str = 字符串：该解析的浮点字符串
int__description__0 = 转换一个布尔值、字符串或浮点值成其整数值。当给予一数组的值时，将返回一个等同大小的整数数组。
int__returns = 数字：该值的整数值
int__params__n = 字符串|布尔值|数字：该解析的值
int__params__radix = 整数：该转换成的基数
int__params__ns = 数组：该解析的值
str__description__0 = 转换一个布尔值、字符串或数字成其字符串值。当给予一数组的值时，将返回一个等同大小的字符串数组。
str__returns = 字符串：该值的字符串值
str__params__n = 字符串|布尔值|数字|数组：该解析的值
byte__description__0 = 转换一个数字、代表数字的字符串或布尔值成其字节值.一个字节只能是一个介于 -128 与 127 之间的整数，因此如果在这范围外的值被转换时，它将会绕回相对的字节值。当给予一数组的数字、字符串或布尔值时，将返回一个等同大小的字节数组。
byte__returns = 数字：该值的字节值
byte__params__n = 字符串|布尔值|数字：该解析的值
byte__params__ns = 数组：该解析的值
char__description__0 = 转换一个数字或字符串成其单一字符的值。如果提供一个字符串参数，它将会先被解析成整数然后再被转换成单一字符。当给予一数组的数字或字符串时，将返回一个等同大小的单一字符数组。
char__returns = 字符串：该值的字符串值
char__params__n = 字符串|数字：该解析的值
char__params__ns = 数组：该解析的值
unchar__description__0 = 转换一个单一字符成其整数值。当给予一数组的单一字符值时，将返回一个等同大小的整数数组。
unchar__returns = 数字：该值的整数值
unchar__params__n = 字符串：该解析的值
unchar__params__ns = 数组：该解析的值
hex__description__0 = 转换一个数字成其十六进制值的字符串。如果提供第二个参数，它将被用来定义该生成的十六进制值的字符量。当给予一数组时，将返回一个等同大小的十六进制字符串数组。
hex__returns = 字符串：该值的十六进制值
hex__params__n = 数字：该解析的值
hex__params__digits = 数字
hex__params__ns = 数字[]：该解析的值
unhex__description__0 = 转换一个十六进制字符串成其整数值。当给予一数组的十六进制字符串时，将返回一个等同大小的整数数组。
unhex__returns = 数字：该十六进制值的整数值
unhex__params__n = 数字：该解析的值
unhex__params__ns = 数组：该解析的值
join__description__0 = 将一数组的字符串合成一个字符串，每一个元素由 separator 参数定义的字符分隔开。如果要连接整数或浮点数数组，它们必须先使用 nf() 或 nfs() 转换成字符串。
join__returns = 字符串：连接后的字符串
join__params__list = 数组：该连接的字符串
join__params__separator = 字符串：在个元素之间穿插的字符串
match__description__0 = 这函数可被用来在一段文字上应用正则表达式，并将返回含有符合表达式的组合（在括号内的元素）的字符串数组。如果没找到任何匹配组合，将返回 null。如果正则表达式内没有定义任何组合，但有搜寻到匹配序列，将返回一个大小为 1 的数组（匹配的文字为数组的第一个元素）。<br><br>使用此函数时，先查看结果是否为 null。如果结果为 null，那表示该段文字没有匹配序列。如果有找到匹配序列，将返回一个数组。<br><br>如果正则表达式内有组合（由括号定义），那个别内容将会以数组的形式返回。正则表达式匹配返回的元素 [0] 将会是整个匹配的字符串，而匹配组合将从元素 [1] 开始（第一组为 [1]、第二组为 [2] 等）。
match__description__1 = To use the function, first check to see if the result is null. If the result is null, then the sequence did not match at all. If the sequence did match, an array is returned.
match__description__2 = If there are groups (specified by sets of parentheses) in the regular expression, then the contents of each will be returned in the array. Element [0] of a regular expression match returns the entire matching string, and the match groups start at element [1] (the first group is [1], the second [2], and so on).
match__returns = 数组：搜寻到的字符串数组
match__params__str = 字符串：在此字符串内搜寻
match__params__regexp = 字符串：用于搜寻的正则表达式
matchAll__description__0 = 这函数可被用来在一段文字上应用正则表达式，并将返回含有符合表达式的组合（在括号内的元素）的二维字符串数组。如果没找到任何匹配组合，将返回 null。如果正则表达式内没有定义任何组合，但有搜寻到匹配序列，仍然将返回一个二维数组，但第二维度数组的大小将为一。<br><br>使用此函数时，先查看结果是否为 null。如果结果为 null，那表示该段文字没有匹配序列。如果有找到匹配序列，将返回一个二维数组。<br><br>如果正则表达式内有组合（由括号定义），那个别内容将会以数组的形式返回。假设有一个有计算其变量 i 的循环，正则表达式匹配返回的元素 [i][0] 将会是整个匹配的字符串，而匹配组合将从元素 [i][1] 开始（第一组为 [i][1]、第二组为 [i][2] 等）。
matchAll__description__1 = To use the function, first check to see if the result is null. If the result is null, then the sequence did not match at all. If the sequence did match, a 2D array is returned.
matchAll__description__2 = If there are groups (specified by sets of parentheses) in the regular expression, then the contents of each will be returned in the array. Assuming a loop with counter variable i, element [i][0] of a regular expression match returns the entire matching string, and the match groups start at element [i][1] (the first group is [i][1], the second [i][2], and so on).
matchAll__returns = 字符串[]：搜寻到的二维字符串数组
matchAll__params__str = 字符串：在此字符串内搜寻
matchAll__params__regexp = 字符串：用于搜寻的正则表达式
nf__description__0 = 用于将数字格式化成字符串的辅助函数。此函数有两个版本：一个用于格式化浮点数，另一个用于格式化整数。参数 left 及 right 的值必须是正整数。
nf__returns = 字符串：格式化后的字符串
nf__params__num = 数字|字符串：该格式化的数字
nf__params__left = 整数|字符串：小数点左边的位数
nf__params__right = 整数|字符串：小数点右边的位数
nf__params__nums = 数组：该格式化的数字
nfc__description__0 = 用于将数字格式化成字符串并在适当的地方添加逗号以示意 1000 位的辅助函数。此函数有两个版本：一个用于格式化整数，另一个用于格式化一数组的整数。参数 right 的值必须是正整数。
nfc__returns = 字符串：格式化后的字符串
nfc__params__num = 数字|字符串：该格式化的数字
nfc__params__right = 整数|字符串：小数点左边的位数
nfc__params__nums = 数组：该格式化的数字
nfp__description__0 = 用于将数字格式化成字符串的辅助函数。与 nf() 相似但会在正数前加个 "+" 号而在负数前加个 "-" 号。此函数有两个版本：一个用于格式化浮点数，另一个用于格式化整数。参数 left 及 right 的值必须是正整数。
nfp__returns = 字符串：格式化后的字符串
nfp__params__num = 数字|字符串：该格式化的数字
nfp__params__left = 整数|字符串：小数点右边的位数
nfp__params__right = 数组：该格式化的数字
nfp__params__nums = Number[]: the Numbers to format
nfs__description__0 = 用于将数字格式化成字符串的辅助函数。与 nf() 相似但会在正数前加个 " "（空格）而在负数前加个 "-" 号。此函数有两个版本：一个用于格式化浮点数，另一个用于格式化整数。参数 left 及 right 的值必须是正整数。
nfs__returns = 字符串：格式化后的字符串
nfs__params__num = 数字：该格式化的数字
nfs__params__left = 整数：小数点左边的位数
nfs__params__right = 整数：小数点右边的位数
nfs__params__nums = 数组：该格式化的数字
split__description__0 = split() 函数映射到 String.split()，它使用一个字符或字符串为分隔号以将另一个字符串拆分成多个部分。delim 参数定义用于标示各个部分之间边界的字符或字符串。将返回一个含有各个部分的字符串数组。<br><br>splitTokens() 函数也与此函数相似，不过它将使用一系列字符以拆分字符串而不是使用特别定义的单一字符或字符串。
split__description__1 = The <a href="#/p5/splitTokens">splitTokens()</a> function works in a similar fashion, except that it splits using a range of characters instead of a specific character or sequence.
split__returns = 字符串[]：字符串数组
split__params__value = 字符串：还拆分的字符串
split__params__delim = 字符串：用于分隔资料的字符串
splitTokens__description__0 = splitTokens() 函数将在一个或多个字符（或 “tokens”）所标示的地方拆分一个字符串。delim 参数将定义用于标示各个部分之间边界的字符或字符串。<br><br>如果 delim 参数没有被定义，此函数将使用任何空白字符拆分。空白字符包括制表符（\t）、换行符（\n）、回车符（\r）、新页符（\f）及空格。
splitTokens__description__1 = If no delim characters are specified, any whitespace character is used to split. Whitespace characters include tab (\t), line feed (\n), carriage return (\r), form feed (\f), and space.
splitTokens__returns = 字符串[]：字符串数组
splitTokens__params__value = 字符串：还拆分的字符串
splitTokens__params__delim = 字符串：用于分隔资料的字符串列
trim__description__0 = 从一个字符串的前端及后端删除空白字符。除了一般的空白字符如空格、回车及制表符之外，这函数也将删除 Unicode “nbsp” 字符。
trim__returns = 字符串：修剪后的字符串
trim__params__str = 字符串：该修剪的字符串
trim__params__strs = 数组：该修剪的字符串数组
day__description__0 = p5.js 将与您的电脑的时钟沟通，day() 函数将返回当天的日期天数在 1 - 31 的范围内。
day__returns = 整数：当天的日期天数
hour__description__0 = p5.js 将与您的电脑的时钟沟通，hour() 函数将返回当时时间的小时数在 0 - 23 的范围内。
hour__returns = 整数：当时时间的小时数
minute__description__0 = p5.js 将与您的电脑的时钟沟通，minute() 函数将返回当时时间的分钟数在 0 - 59 的范围内。
minute__returns = 整数：当时时间的分钟数
millis__description__0 = 返回自程序开始以来的毫秒（一秒的一千分之一）数。这资料一般可用于定时事件及动画序列。
millis__returns = 整数：自程序开始以来的毫秒数
month__description__0 = p5.js 将与您的电脑的时钟沟通，month() 函数将返回当天的日期月数在 1 - 12 的范围内。
month__returns = 整数：当时日期的月数
second__description__0 = p5.js 将与您的电脑的时钟沟通，second() 函数将返回当时时间的秒数在 0 - 59 的范围内。
second__returns = 整数：当时时间的秒数
year__description__0 = p5.js 将与您的电脑的时钟沟通，year() 函数将返回当天的日期年数为一个整数（2014、2015、2016等等）。
year__returns = 整数：当时日期的年数
plane__description__0 = 用给予的宽度和高度画一个平面。
plane__params__width = 数字：平面的宽度
plane__params__height = 数字：平面的高度
plane__params__detailX = 整数：（可选）在 x 轴的三角形细分数
plane__params__detailY = 整数：（可选）在 y 轴的三角形细分数
box__description__0 = 用给予的宽度、高度及深度画一个立方体。
box__params__width = 数字：立方体的宽度
box__params__Height = 数字：立方体的高度
box__params__depth = 数字：立方体的深度
box__params__detailX = 整数：（可选）在 x 轴的三角形细分数
box__params__detailY = 整数：（可选）在 y 轴的三角形细分数
sphere__description__0 = 用给予的半径画一个球形。
sphere__description__1 = DetailX and detailY determines the number of subdivisions in the x-dimension and the y-dimension of a sphere. More subdivisions make the sphere seem smoother. The recommended maximum values are both 24. Using a value greater than 24 may cause a warning or slow down the browser.
sphere__params__radius = 数字：球形的半径
sphere__params__detailX = 整数：分割的数量，越多分割几何形越平滑，默认值为 24
sphere__params__detailY = 整数：分割的数量，越多分割几何形越平滑，默认值为 16
cylinder__description__0 = 用给予的半径和高度画一个圆筒形。
cylinder__description__1 = DetailX and detailY determines the number of subdivisions in the x-dimension and the y-dimension of a cylinder. More subdivisions make the cylinder seem smoother. The recommended maximum value for detailX is 24. Using a value greater than 24 may cause a warning or slow down the browser.
cylinder__params__radius = 数字：表面的半径
cylinder__params__height = 数字：圆筒形的高度
cylinder__params__detailX = 整数：分割的数量，越多分割几何形越平滑，默认值为 24
cylinder__params__detailY = 整数：y 轴分割的数量，越多分割几何形越平滑，默认值为 1
cylinder__params__bottomCap = 布尔值：是否该画圆筒形的底部
cylinder__params__topCap = 布尔值：是否该画圆筒形的顶部
cone__description__0 = 用给予的半径和高度画一个锥体形。
cone__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a cone. More subdivisions make the cone seem smoother. The recommended maximum value for detailX is 24. Using a value greater than 24 may cause a warning or slow down the browser.
cone__params__radius = 数字：底部表面的半径
cone__params__height = 数字：锥体形的高度
cone__params__detailX = 整数：分割的数量，越多分割几何形越平滑，默认值为 24
cone__params__detailY = 整数：分割的数量，越多分割几何形越平滑，默认值为 1
cone__params__cap = 布尔值：是否该画锥体形的底部
ellipsoid__description__0 = 用给予的半径画一个椭球形。
ellipsoid__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a cone. More subdivisions make the ellipsoid appear to be smoother. Avoid detail number above 150, it may crash the browser.
ellipsoid__params__radiusx = 数字：椭球形 x 轴的半径
ellipsoid__params__radiusy = 数字：椭球形 y 轴的半径
ellipsoid__params__radiusz = 数字：椭球形 z 轴的半径
ellipsoid__params__detailX = 整数：分割的数量，越多分割几何形越平滑，默认值为 24。避免多于 150 的细节数量，因为它可能是浏览器停止运作。
ellipsoid__params__detailY = 整数：分割的数量，越多分割几何形越平滑，默认值为 16。避免多于 150 的细节数量，因为它可能是浏览器停止运作。
torus__description__0 = 用给予的半径和管半径画一个圆环形。
torus__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a torus. More subdivisions make the torus appear to be smoother. The default and maximum values for detailX and detailY are 24 and 16, respectively. Setting them to relatively small values like 4 and 6 allows you to create new shapes other than a torus.
torus__params__radius = 数字：整个圆环形的半径
torus__params__tubeRadius = 数字：圆管的半径
torus__params__detailX = 整数：x 轴分割的数量，越多分割几何形越平滑，默认值为 24。
torus__params__detailY = 整数：y 轴分割的数量，越多分割几何形越平滑，默认值为 16。
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
ambientLight__description__0 = 使用所定义的颜色创造一个环境光。
ambientLight__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
ambientLight__params__v2 = 数字：绿彩值或饱和度值，需在被定义的范围内
ambientLight__params__v3 = 数字：蓝彩值或亮度值，需在被定义的范围内
ambientLight__params__alpha = 数字：
ambientLight__params__value = 字符串：颜色字符串
ambientLight__params__gray = 数字：灰阶值
ambientLight__params__values = 数字[]：一个有红、绿、蓝及透明度值的数组
ambientLight__params__color = p5.Color：环境光色
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
directionalLight__description__0 = 使用所定义的颜色及方向创造一个定向光。
directionalLight__description__1 = A maximum of 5 directionalLight can be active at one time
directionalLight__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
directionalLight__params__v2 = 数字：绿彩值或饱和度值
directionalLight__params__v3 = 数字：蓝彩值或亮度值
directionalLight__params__position = p5.Vector：光的方向
directionalLight__params__color = 数字[]|字符串|p5.Color：颜色数组、CSS 颜色字符串或 p5.Color 颜色值
directionalLight__params__x = 数字：x 轴方向
directionalLight__params__y = 数字：y 轴方向
directionalLight__params__z = 数字：z 轴方向
pointLight__description__0 = 使用所定义的颜色及灯光位置创造一个点光源。
pointLight__description__1 = A maximum of 5 pointLight can be active at one time
pointLight__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
pointLight__params__v2 = 数字：绿彩值或饱和度值
pointLight__params__v3 = 数字：蓝彩值或亮度值
pointLight__params__x = 数字：x 轴方向
pointLight__params__y = 数字：y 轴方向
pointLight__params__z = 数字：z 轴方向
pointLight__params__position = p5.Vector：光的方向
pointLight__params__color = 数字[]|字符串|p5.Color：颜色数组、CSS 颜色字符串或 p5.Color 颜色值
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
loadModel__description__0 = 从一个 OBJ 档案加载一个三维模型。<br><br>OBJ 格式的其中一个限制是它没有内建的大小值。这表示不同程式输出的模型可能有非常不同的大小。如果您的模型没被展示的话，请试着调用 loadModel() 并给予 normalized 参数“真”（true）值。这会将模型缩放成适合 p5 的大小。您也可以使用 scale() 函数对您的模型最后大小做与更多的调整。
loadModel__description__1 = <a href="#/p5/loadModel">loadModel()</a> should be placed inside of <a href="#/p5/preload">preload()</a>. This allows the model to load fully before the rest of your code is run.
loadModel__description__2 = One of the limitations of the OBJ and STL format is that it doesn't have a built-in sense of scale. This means that models exported from different programs might be very different sizes. If your model isn't displaying, try calling <a href="#/p5/loadModel">loadModel()</a> with the normalized parameter set to true. This will resize the model to a scale appropriate for p5. You can also make additional changes to the final size of your model with the <a href="#/p5/scale">scale()</a> function.
loadModel__description__3 = Also, the support for colored STL files is not present. STL files with color will be rendered without color properties.
loadModel__returns = p5.Geometry：p5.Geometry 物件
loadModel__params__path = 字符串：要加载的模型的路径
loadModel__params__normalize = 布尔值：如果为真，在加载时将模型缩放成标准大小。
loadModel__params__successCallback = 函数(p5.Geometry)：此函数将在模型完成加载后被调用，将被给予该三维模型为参数。
loadModel__params__failureCallback = 函数(Event)：如果模型加载失败，此函数将被调用并给予错误事件（event）为参数。
loadModel__params__fileType = String: (Optional) The file extension of the model  (<code>.stl</code>, <code>.obj</code>).
model__description__0 = 将一个三维模型渲染在荧幕上。
model__params__model = p5.Geometry：要渲染的已加载的模型
loadShader__description__0 = 从所定义的顶点及片断着色器文件路径加载自定的着色器。着色器是在背景异步加载的，因此此函数应该在 preload() 内使用。<br><br>现在为止有三种主要的着色器种类。只要相对的参数有在着色器内被定义，p5 将会自动提供相对的顶点、法线、颜色及灯光属性。
loadShader__description__1 = For now, there are three main types of shaders. p5 will automatically supply appropriate vertices, normals, colors, and lighting attributes if the parameters defined in the shader match the names.
loadShader__returns = p5.Shader：由所定义的顶点及片断着色器所创造的着色器物件
loadShader__params__vertFilename = 字符串：存有顶点着色器源代码的文件的路径
loadShader__params__fragFilename = 字符串：存有片断着色器源代码的文件的路径
loadShader__params__callback = Function: (Optional) callback to be executed after loadShader completes. On success, the Shader object is passed as the first argument.
loadShader__params__errorCallback = Function: (Optional) callback to be executed when an error occurs inside loadShader. On error, the error is passed as the first argument.
createShader__returns = p5.Shader：由所定义的顶点及片断着色器所创造的着色器物件
createShader__params__vertSrc = 字符串：顶点着色器的源代码
createShader__params__fragSrc = 字符串：片断着色器的源代码
shader__description__0 = shader() 函数让其使用者提供自定的着色器以用于在 WEBGL 模式下渲染形状。使用这能使用 loadShader() 加载自定义的着色器。
shader__params__s = p5.Shader：欲用于渲染形状用的 p5.Shader
resetShader__description__0 = This function restores the default shaders in WEBGL mode. Code that runs after resetShader() will not be affected by previously defined shaders. Should be run after <a href="#/p5/shader">shader()</a>.
texture__description__0 = 形状的纹理。您可在此<a href='https://p5js.org/zh-Hans/examples/3d-materials.html'>范例</a>查看所有可用的材料。
texture__params__tex = p5.Image|p5.MediaElement|p5.Graphics：该渲染成纹理的二维图像
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
normalMaterial__description__0 = 形状的法线材料。您可在此<a href='https://p5js.org/zh-Hans/examples/3d-materials.html'>范例</a>查看所有可用的材料。
ambientMaterial__description__0 = 使用所给予颜色定义形状的环境材料。您可在此<a href='https://p5js.org/zh-Hans/examples/3d-materials.html'>范例</a>查看所有可用的材料。
ambientMaterial__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
ambientMaterial__params__v2 = 数字：绿彩值或饱和度值
ambientMaterial__params__v3 = 数字：蓝彩值或亮度值
ambientMaterial__params__color = 数字[]|字符串|p5.Color：颜色数组、CSS 颜色字符串或 p5.Color 颜色值
emissiveMaterial__description__0 = Sets the emissive color of the material used for geometry drawn to the screen. This is a misnomer in the sense that the material does not actually emit light that effects surrounding polygons. Instead, it gives the appearance that the object is glowing. An emissive material will display at full strength even if there is no light for it to reflect.
emissiveMaterial__params__v1 = Number: gray value, red or hue value  (depending on the current color mode),
emissiveMaterial__params__v2 = Number: (Optional) green or saturation value
emissiveMaterial__params__v3 = Number: (Optional) blue or brightness value
emissiveMaterial__params__a = Number: (Optional) opacity
emissiveMaterial__params__color = Number[]|String|p5.Color: color, color Array, or CSS color string
specularMaterial__description__0 = 使用所给予颜色定义形状的镜面材料。您可在此<a href='https://p5js.org/zh-Hans/examples/3d-materials.html'>范例</a>查看所有可用的材料。
specularMaterial__params__gray = Number: number specifying value between white and black.
specularMaterial__params__alpha = 数字：透明度
specularMaterial__params__v1 = 数字：红彩值或色调值，需在被定义的范围内
specularMaterial__params__v2 = 数字：绿彩值或饱和度值
specularMaterial__params__v3 = 数字：蓝彩值或亮度值
specularMaterial__params__color = 数字[]|字符串|p5.Color：颜色数组、CSS 颜色字符串或 p5.Color 颜色值
shininess__description__0 = Sets the amount of gloss in the surface of shapes. Used in combination with specularMaterial() in setting the material properties of shapes. The default and minimum value is 1.
shininess__params__shine = Number: Degree of Shininess.  Defaults to 1.
camera__description__0 = 定义在一个三维绘图内相机的位置。此函数的行为与 gluLookAt 相似，不过它会覆盖原有的模型视图矩阵而不会在原有的模型视图上添加任何变形。当没有给予任何参数时，此函数将定义默认相机为 camera(0, 0, (height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, 1, 0);
camera__description__1 = This function simulates the movements of the camera, allowing objects to be viewed from various angles. Remember, it does not move the objects themselves but the camera instead. For example when the centerX value is positive, and the camera is rotating to the right side of the sketch, the object will seem like it's moving to the left.
camera__description__2 = See this <a href = "https://www.openprocessing.org/sketch/740258">example</a> to view the position of your camera.
camera__description__3 = If no parameters are given, the following default is used: camera(0, 0, (height/2) / tan(PI/6), 0, 0, 0, 0, 1, 0)
camera__params__x = 数字：相机在 x 轴的位置
camera__params__y = 数字：相机在 y 轴的位置
camera__params__z = 数字：相机在 z 轴的位置
camera__params__centerX = 数字：代表绘图中心点的 x 坐标
camera__params__centerY = 数字：代表绘图中心点的 y 坐标
camera__params__centerZ = 数字：代表绘图中心点的 z 坐标
camera__params__upX = 数字：相机向上方向量的 x 分量
camera__params__upY = 数字：相机向上方向量的 y 分量
camera__params__upZ = 数字：相机向上方向量的 z 分量
perspective__description__0 = 定义透视相机。当没有给予任何参数时，此函数将定义默认相机为 perspective(PI/3.0, width/height, cameraZ/10.0, cameraZ*10.0) 其中 cameraZ 为 ((height/2.0) / tan(PI60.0/360.0));
perspective__description__1 = The parameters to this function define the viewing frustum (the truncated pyramid within which objects are seen by the camera) through vertical field of view, aspect ratio (usually width/height), and near and far clipping planes.
perspective__description__2 = If no parameters are given, the following default is used: perspective(PI/3, width/height, eyeZ/10, eyeZ*10), where eyeZ is equal to ((height/2) / tan(PI/6)).
perspective__params__fovy = 数字：相机视锥的垂直视野，使用角度模式单位定义视野底部到顶部的角度
perspective__params__aspect = 数字：相机视锥的长宽比
perspective__params__near = 数字：视锥近平面的长度
perspective__params__far = 数字：视锥远平面的长度
ortho__description__0 = 定义正射相机。
ortho__description__1 = The parameters to this function specify the viewing frustum where left and right are the minimum and maximum x values, top and bottom are the minimum and maximum y values, and near and far are the minimum and maximum z values.
ortho__description__2 = If no parameters are given, the following default is used: ortho(-width/2, width/2, -height/2, height/2).
ortho__params__left = 数字：相机视锥的左平面
ortho__params__right = 数字：相机视锥的右平面
ortho__params__bottom = 数字：相机视锥的底平面
ortho__params__top = 数字：相机视锥的顶平面
ortho__params__near = 数字：相机视锥的近平面
ortho__params__far = 数字：相机视锥的远平面
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
setAttributes__description__0 = 设置 WebGL 绘图环境的属性。这是调整 WebGL 渲染器的一个方法，可用于微调显示及性能。这函数应该在 setup() 内使用。可使用的属性为：<br>alpha - 表示画布是否有透明度缓冲，默认为 true<br><br>depth - 表示绘图缓冲是否有至少 16 bits 的深度缓冲 - 默认为 true<br><br>stencil - 表示绘图缓冲是否有至少 8 bits 的模版缓冲<br><br>antialias - 表示是否应该执行抗锯齿，默认为 false<br><br>premultipliedAlpha - 表示页面合成器将假设绘图缓冲存在着预乘透明值的颜色，默认为 false<br><br>preserveDrawingBuffer - 如果为真缓冲区将不会被清空并将会保留现有的值直到它们被清空或被作者覆盖（注意 p5 在绘图循环将自动清空），默认为 true<br><br>perPixelLighting - 如果为真，照明着色器将使用个别像素照明。默认为 false
setAttributes__description__1 = Note that this will reinitialize the drawing context if called after the WebGL canvas is made.
setAttributes__description__2 = If an object is passed as the parameter, all attributes not declared in the object will be set to defaults.
setAttributes__description__3 = The available attributes are:  alpha - indicates if the canvas contains an alpha buffer default is true
setAttributes__description__4 = depth - indicates whether the drawing buffer has a depth buffer of at least 16 bits - default is true
setAttributes__description__5 = stencil - indicates whether the drawing buffer has a stencil buffer of at least 8 bits
setAttributes__description__6 = antialias - indicates whether or not to perform anti-aliasing default is false (true in Safari)
setAttributes__description__7 = premultipliedAlpha - indicates that the page compositor will assume the drawing buffer contains colors with pre-multiplied alpha default is false
setAttributes__description__8 = preserveDrawingBuffer - if true the buffers will not be cleared and and will preserve their values until cleared or overwritten by author (note that p5 clears automatically on draw loop) default is true
setAttributes__description__9 = perPixelLighting - if true, per-pixel lighting will be used in the lighting shader otherwise per-vertex lighting is used. default is true.
setAttributes__params__key = 字符串：属性名
setAttributes__params__value = 布尔值：属性的新值
setAttributes__params__obj = 物件：有键值对的物件
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
