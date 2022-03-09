description__0 = This is the p5 instance constructor.
description__1 = A p5 instance holds all the properties and methods related to a p5 sketch. It expects an incoming sketch closure and it can also take an optional node parameter for attaching the generated p5 canvas to a node. The sketch closure takes the newly created p5 instance as its sole argument and may optionally set <a href="#/p5/preload">preload()</a>, <a href="#/p5/setup">setup()</a>, and/or <a href="#/p5/draw">draw()</a> properties on it for running a sketch.
description__2 = A p5 sketch can run in "global" or "instance" mode: "global" - all properties and methods are attached to the window "instance" - all properties and methods are bound to this p5 object
returns = P5: a p5 instance
params__sketch = Function: a closure that can set optional <a href="#/p5/preload">preload()</a>,  <a href="#/p5/setup">setup()</a>, and/or <a href="#/p5/draw">draw()</a> properties on the  given p5 instance
params__node = HTMLElement: (Optional) element to attach canvas to
describe__description__0 = Creates a screen reader accessible description for the canvas. The first parameter should be a string with a description of the canvas. The second parameter is optional. If specified, it determines how the description is displayed.
describe__description__1 = <code class="language-javascript">describe(text, LABEL)</code> displays the description to all users as a <a href="https://en.wikipedia.org/wiki/Museum_label" target="_blank"> tombstone or exhibit label/caption</a> in a div adjacent to the canvas. You can style it as you wish in your CSS.
describe__description__2 = <code class="language-javascript">describe(text, FALLBACK)</code> makes the description accessible to screen-reader users only, in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a>. If a second parameter is not specified, by default, the description will only be available to screen-reader users.
describe__params__text = String: description of the canvas
describe__params__display = Constant: (Optional) either LABEL or FALLBACK
describeElement__description__0 = This function creates a screen-reader accessible description for elements —shapes or groups of shapes that create meaning together— in the canvas. The first paramater should be the name of the element. The second parameter should be a string with a description of the element. The third parameter is optional. If specified, it determines how the element description is displayed.
describeElement__description__1 = <code class="language-javascript">describeElement(name, text, LABEL)</code> displays the element description to all users as a <a href="https://en.wikipedia.org/wiki/Museum_label" target="_blank"> tombstone or exhibit label/caption</a> in a div adjacent to the canvas. You can style it as you wish in your CSS.
describeElement__description__2 = <code class="language-javascript">describeElement(name, text, FALLBACK)</code> makes the element description accessible to screen-reader users only, in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a>. If a second parameter is not specified, by default, the element description will only be available to screen-reader users.
describeElement__params__name = String: name of the element
describeElement__params__text = String: description of the element
describeElement__params__display = Constant: (Optional) either LABEL or FALLBACK
textOutput__description__0 = <code class="language-javascript">textOutput()</code> creates a screenreader accessible output that describes the shapes present on the canvas. The general description of the canvas includes canvas size, canvas color, and number of elements in the canvas (example: 'Your output is a, 400 by 400 pixels, lavender blue canvas containing the following 4 shapes:'). This description is followed by a list of shapes where the color, position, and area of each shape are described (example: "orange ellipse at top left covering 1% of the canvas"). Each element can be selected to get more details. A table of elements is also provided. In this table, shape, color, location, coordinates and area are described (example: "orange ellipse location=top left area=2").
textOutput__description__1 = <code class="language-javascript">textOutput()</code> and <code class="language-javascript">textOutput(FALLBACK)</code> make the output available in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a> which is accessible to screen readers. <code class="language-javascript">textOutput(LABEL)</code> creates an additional div with the output adjacent to the canvas, this is useful for non-screen reader users that might want to display the output outside of the canvas' sub DOM as they code. However, using LABEL will create unnecessary redundancy for screen reader users. We recommend using LABEL only as part of the development process of a sketch and removing it before publishing or sharing with screen reader users.
textOutput__params__display = Constant: (Optional) either FALLBACK or LABEL
gridOutput__description__0 = <code class="language-javascript">gridOutput()</code> lays out the content of the canvas in the form of a grid (html table) based on the spatial location of each shape. A brief description of the canvas is available before the table output. This description includes: color of the background, size of the canvas, number of objects, and object types (example: "lavender blue canvas is 200 by 200 and contains 4 objects - 3 ellipses 1 rectangle"). The grid describes the content spatially, each element is placed on a cell of the table depending on its position. Within each cell an element the color and type of shape of that element are available (example: "orange ellipse"). These descriptions can be selected individually to get more details. A list of elements where shape, color, location, and area are described (example: "orange ellipse location=top left area=1%") is also available.
gridOutput__description__1 = <code class="language-javascript">gridOutput()</code> and <code class="language-javascript">gridOutput(FALLBACK)</code> make the output available in <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> a sub DOM inside the canvas element</a> which is accessible to screen readers. <code class="language-javascript">gridOutput(LABEL)</code> creates an additional div with the output adjacent to the canvas, this is useful for non-screen reader users that might want to display the output outside of the canvas' sub DOM as they code. However, using LABEL will create unnecessary redundancy for screen reader users. We recommend using LABEL only as part of the development process of a sketch and removing it before publishing or sharing with screen reader users.
gridOutput__params__display = Constant: (Optional) either FALLBACK or LABEL
alpha__description__0 = Extracts the alpha value from a color or pixel array.
alpha__returns = Number: the alpha value
alpha__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
blue__description__0 = Extracts the blue value from a color or pixel array.
blue__returns = Number: the blue value
blue__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
brightness__description__0 = Extracts the HSB brightness value from a color or pixel array.
brightness__returns = Number: the brightness value
brightness__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
color__description__0 = Creates colors for storing in variables of the color datatype. The parameters are interpreted as RGB or HSB values depending on the current <a href="#/p5/colorMode">colorMode()</a>. The default mode is RGB values from 0 to 255 and, therefore, the function call color(255, 204, 0) will return a bright yellow color.
color__description__1 = Note that if only one value is provided to <a href="#/p5/color">color()</a>, it will be interpreted as a grayscale value. Add a second value, and it will be used for alpha transparency. When three values are specified, they are interpreted as either RGB or HSB values. Adding a fourth value applies alpha transparency.
color__description__2 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
color__returns = p5.Color: resulting color
color__params__gray = Number: number specifying value between white and black.
color__params__alpha = Number: (Optional) alpha value relative to current color range  (default is 0-255)
color__params__v1 = Number: red or hue value relative to  the current color range
color__params__v2 = Number: green or saturation value  relative to the current color range
color__params__v3 = Number: blue or brightness value  relative to the current color range
color__params__value = String: a color string
color__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
color__params__color = p5.Color
green__description__0 = Extracts the green value from a color or pixel array.
green__returns = Number: the green value
green__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
hue__description__0 = Extracts the hue value from a color or pixel array.
hue__description__1 = Hue exists in both HSB and HSL. This function will return the HSB-normalized hue when supplied with an HSB color object (or when supplied with a pixel array while the color mode is HSB), but will default to the HSL-normalized hue otherwise. (The values will only be different if the maximum hue setting for each system is different.)
hue__returns = Number: the hue
hue__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
lerpColor__description__0 = Blends two colors to find a third color somewhere between them. The amt parameter is the amount to interpolate between the two values where 0.0 is equal to the first color, 0.1 is very near the first color, 0.5 is halfway in between, etc. An amount below 0 will be treated as 0. Likewise, amounts above 1 will be capped at 1. This is different from the behavior of <a href="#/p5/lerp">lerp()</a>, but necessary because otherwise numbers outside the range will produce strange and unexpected colors.
lerpColor__description__1 = The way that colors are interpolated depends on the current color mode.
lerpColor__returns = p5.Color: interpolated color
lerpColor__params__c1 = p5.Color: interpolate from this color
lerpColor__params__c2 = p5.Color: interpolate to this color
lerpColor__params__amt = Number: number between 0 and 1
lightness__description__0 = Extracts the HSL lightness value from a color or pixel array.
lightness__returns = Number: the lightness
lightness__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
red__description__0 = Extracts the red value from a color or pixel array.
red__returns = Number: the red value
red__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
saturation__description__0 = Extracts the saturation value from a color or pixel array.
saturation__description__1 = Saturation is scaled differently in HSB and HSL. This function will return the HSB saturation when supplied with an HSB color object (or when supplied with a pixel array while the color mode is HSB), but will default to the HSL saturation otherwise.
saturation__returns = Number: the saturation value
saturation__params__color = p5.Color|Number[]|String: <a href="#/p5.Color">p5.Color</a> object, color components,  or CSS color
background__description__0 = The <a href="#/p5/background">background()</a> function sets the color used for the background of the p5.js canvas. The default background is transparent. This function is typically used within <a href="#/p5/draw">draw()</a> to clear the display window at the beginning of each frame, but it can be used inside <a href="#/p5/setup">setup()</a> to set the background on the first frame of animation or if the background need only be set once.
background__description__1 = The color is either specified in terms of the RGB, HSB, or HSL color depending on the current <a href="#/p5/colorMode">colorMode</a>. (The default color space is RGB, with each value in the range from 0 to 255). The alpha range by default is also 0 to 255.
background__description__2 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
background__description__3 = A <a href="#/p5.Color">p5.Color</a> object can also be provided to set the background color.
background__description__4 = A <a href="#/p5.Image">p5.Image</a> can also be provided to set the background image.
background__params__color = p5.Color: any value created by the <a href="#/p5/color">color()</a> function
background__params__colorstring = String: color string, possible formats include: integer  rgb() or rgba(), percentage rgb() or rgba(),  3-digit hex, 6-digit hex
background__params__a = Number: (Optional) opacity of the background relative to current  color range (default is 0-255)
background__params__gray = Number: specifies a value between white and black
background__params__v1 = Number: red or hue value (depending on the current color  mode)
background__params__v2 = Number: green or saturation value (depending on the current  color mode)
background__params__v3 = Number: blue or brightness value (depending on the current  color mode)
background__params__values = Number[]: an array containing the red, green, blue  and alpha components of the color
background__params__image = p5.Image: image created with <a href="#/p5/loadImage">loadImage()</a> or <a href="#/p5/createImage">createImage()</a>,  to set as background  (must be same size as the sketch window)
clear__description__0 = Clears the pixels within a buffer. This function only clears the canvas. It will not clear objects created by createX() methods such as <a href="#/p5/createVideo">createVideo()</a> or <a href="#/p5/createDiv">createDiv()</a>. Unlike the main graphics context, pixels in additional graphics areas created with <a href="#/p5/createGraphics">createGraphics()</a> can be entirely or partially transparent. This function clears everything to make all of the pixels 100% transparent.
clear__description__1 = Note: In WebGL mode, this function can be passed normalized RGBA color values in order to clear the screen to a specific color. In addition to color, it will also clear the depth buffer. If you are not using the webGL renderer these color values will have no effect.
clear__params__r = Number: normalized red val.
clear__params__g = Number: normalized green val.
clear__params__b = Number: normalized blue val.
clear__params__a = Number: normalized alpha val.
colorMode__description__0 = <a href="#/p5/colorMode">colorMode()</a> changes the way p5.js interprets color data. By default, the parameters for <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/background">background()</a>, and <a href="#/p5/color">color()</a> are defined by values between 0 and 255 using the RGB color model. This is equivalent to setting colorMode(RGB, 255). Setting colorMode(HSB) lets you use the HSB system instead. By default, this is colorMode(HSB, 360, 100, 100, 1). You can also use HSL.
colorMode__description__1 = Note: existing color objects remember the mode that they were created in, so you can change modes as you like without affecting their appearance.
colorMode__params__mode = Constant: either RGB, HSB or HSL, corresponding to  Red/Green/Blue and Hue/Saturation/Brightness  (or Lightness)
colorMode__params__max = Number: (Optional) range for all values
colorMode__params__max1 = Number: range for the red or hue depending on the  current color mode
colorMode__params__max2 = Number: range for the green or saturation depending  on the current color mode
colorMode__params__max3 = Number: range for the blue or brightness/lightness  depending on the current color mode
colorMode__params__maxA = Number: (Optional) range for the alpha
fill__description__0 = Sets the color used to fill shapes. For example, if you run fill(204, 102, 0), all shapes drawn after the fill command will be filled with the color orange. This color is either specified in terms of the RGB or HSB color depending on the current <a href="#/p5/colorMode">colorMode()</a>. (The default color space is RGB, with each value in the range from 0 to 255). The alpha range by default is also 0 to 255.
fill__description__1 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
fill__description__2 = A p5 <a href="#/p5.Color">Color</a> object can also be provided to set the fill color.
fill__params__v1 = Number: red or hue value relative to  the current color range
fill__params__v2 = Number: green or saturation value  relative to the current color range
fill__params__v3 = Number: blue or brightness value  relative to the current color range
fill__params__alpha = Number (Optional)
fill__params__value = String: a color string
fill__params__gray = Number: a gray value
fill__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
fill__params__color = p5.Color: the fill color
noFill__description__0 = Disables filling geometry. If both <a href="#/p5/noStroke">noStroke()</a> and <a href="#/p5/noFill">noFill()</a> are called, nothing will be drawn to the screen.
noStroke__description__0 = Disables drawing the stroke (outline). If both <a href="#/p5/noStroke">noStroke()</a> and <a href="#/p5/noFill">noFill()</a> are called, nothing will be drawn to the screen.
stroke__description__0 = Sets the color used to draw lines and borders around shapes. This color is either specified in terms of the RGB or HSB color depending on the current <a href="#/p5/colorMode">colorMode()</a> (the default color space is RGB, with each value in the range from 0 to 255). The alpha range by default is also 0 to 255.
stroke__description__1 = If a single string argument is provided, RGB, RGBA and Hex CSS color strings and all named color strings are supported. In this case, an alpha number value as a second argument is not supported, the RGBA form should be used.
stroke__description__2 = A p5 <a href="#/p5.Color">Color</a> object can also be provided to set the stroke color.
stroke__params__v1 = Number: red or hue value relative to  the current color range
stroke__params__v2 = Number: green or saturation value  relative to the current color range
stroke__params__v3 = Number: blue or brightness value  relative to the current color range
stroke__params__alpha = Number (Optional)
stroke__params__value = String: a color string
stroke__params__gray = Number: a gray value
stroke__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
stroke__params__color = p5.Color: the stroke color
erase__description__0 = All drawing that follows <a href="#/p5/erase">erase()</a> will subtract from the canvas.Erased areas will reveal the web page underneath the canvas.Erasing can be canceled with <a href="#/p5/noErase">noErase()</a>.
erase__description__1 = Drawing done with <a href="#/p5/image">image()</a> and <a href="#/p5/background"> background()</a> in between <a href="#/p5/erase">erase()</a> and <a href="#/p5/noErase">noErase()</a> will not erase the canvas but works as usual.
erase__params__strengthFill = Number: (Optional) A number (0-255) for the strength of erasing for a shape's fill.  This will default to 255 when no argument is given, which  is full strength.
erase__params__strengthStroke = Number: (Optional) A number (0-255) for the strength of erasing for a shape's stroke.  This will default to 255 when no argument is given, which  is full strength.
noErase__description__0 = Ends erasing that was started with <a href="#/p5/erase">erase()</a>. The <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, and <a href="#/p5/blendMode">blendMode()</a> settings will return to what they were prior to calling <a href="#/p5/erase">erase()</a>.
arc__description__0 = Draw an arc to the screen. If called with only x, y, w, h, start and stop, the arc will be drawn and filled as an open pie segment. If a mode parameter is provided, the arc will be filled like an open semi-circle (OPEN), a closed semi-circle (CHORD), or as a closed pie segment (PIE). The origin may be changed with the <a href="#/p5/ellipseMode">ellipseMode()</a> function.
arc__description__1 = The arc is always drawn clockwise from wherever start falls to wherever stop falls on the ellipse. Adding or subtracting TWO_PI to either angle does not change where they fall. If both start and stop fall at the same place, a full ellipse will be drawn. Be aware that the y-axis increases in the downward direction, therefore angles are measured clockwise from the positive x-direction ("3 o'clock").
arc__params__x = Number: x-coordinate of the arc's ellipse
arc__params__y = Number: y-coordinate of the arc's ellipse
arc__params__w = Number: width of the arc's ellipse by default
arc__params__h = Number: height of the arc's ellipse by default
arc__params__start = Number: angle to start the arc, specified in radians
arc__params__stop = Number: angle to stop the arc, specified in radians
arc__params__mode = Constant: (Optional) optional parameter to determine the way of drawing  the arc. either CHORD, PIE or OPEN
arc__params__detail = Integer: (Optional) optional parameter for WebGL mode only. This is to  specify the number of vertices that makes up the  perimeter of the arc. Default value is 25. Won't  draw a stroke for a detail of more than 50.
ellipse__description__0 = Draws an ellipse (oval) to the screen. By default, the first two parameters set the location of the center of the ellipse, and the third and fourth parameters set the shape's width and height. If no height is specified, the value of width is used for both the width and height. If a negative height or width is specified, the absolute value is taken.
ellipse__description__1 = An ellipse with equal width and height is a circle. The origin may be changed with the <a href="#/p5/ellipseMode">ellipseMode()</a> function.
ellipse__params__x = Number: x-coordinate of the center of ellipse.
ellipse__params__y = Number: y-coordinate of the center of ellipse.
ellipse__params__w = Number: width of the ellipse.
ellipse__params__h = Number: (Optional) height of the ellipse.
ellipse__params__detail = Integer: (Optional) optional parameter for WebGL mode only. This is to  specify the number of vertices that makes up the  perimeter of the ellipse. Default value is 25. Won't  draw a stroke for a detail of more than 50.
circle__description__0 = Draws a circle to the screen. A circle is a simple closed shape. It is the set of all points in a plane that are at a given distance from a given point, the centre. This function is a special case of the ellipse() function, where the width and height of the ellipse are the same. Height and width of the ellipse correspond to the diameter of the circle. By default, the first two parameters set the location of the centre of the circle, the third sets the diameter of the circle.
circle__params__x = Number: x-coordinate of the centre of the circle.
circle__params__y = Number: y-coordinate of the centre of the circle.
circle__params__d = Number: diameter of the circle.
line__description__0 = Draws a line (a direct path between two points) to the screen. If called with only 4 parameters, it will draw a line in 2D with a default width of 1 pixel. This width can be modified by using the <a href="#/p5/strokeWeight"> strokeWeight()</a> function. A line cannot be filled, therefore the <a href="#/p5/fill">fill()</a> function will not affect the color of a line. So to color a line, use the <a href="#/p5/stroke">stroke()</a> function.
line__params__x1 = Number: the x-coordinate of the first point
line__params__y1 = Number: the y-coordinate of the first point
line__params__x2 = Number: the x-coordinate of the second point
line__params__y2 = Number: the y-coordinate of the second point
line__params__z1 = Number: the z-coordinate of the first point
line__params__z2 = Number: the z-coordinate of the second point
point__description__0 = Draws a point, a coordinate in space at the dimension of one pixel. The first parameter is the horizontal value for the point, the second param is the vertical value for the point. The color of the point is changed with the <a href="#/p5/stroke">stroke()</a> function. The size of the point can be changed with the <a href="#/p5/strokeWeight">strokeWeight()</a> function.
point__params__x = Number: the x-coordinate
point__params__y = Number: the y-coordinate
point__params__z = Number: (Optional) the z-coordinate (for WebGL mode)
point__params__coordinate_vector = p5.Vector: the coordinate vector
quad__description__0 = Draws a quad on the canvas. A quad is a quadrilateral, a four sided polygon. It is similar to a rectangle, but the angles between its edges are not constrained to ninety degrees. The first pair of parameters (x1,y1) sets the first vertex and the subsequent pairs should proceed clockwise or counter-clockwise around the defined shape. z-arguments only work when quad() is used in WEBGL mode.
quad__params__x1 = Number: the x-coordinate of the first point
quad__params__y1 = Number: the y-coordinate of the first point
quad__params__x2 = Number: the x-coordinate of the second point
quad__params__y2 = Number: the y-coordinate of the second point
quad__params__x3 = Number: the x-coordinate of the third point
quad__params__y3 = Number: the y-coordinate of the third point
quad__params__x4 = Number: the x-coordinate of the fourth point
quad__params__y4 = Number: the y-coordinate of the fourth point
quad__params__detailX = Integer: (Optional) number of segments in the x-direction
quad__params__detailY = Integer: (Optional) number of segments in the y-direction
quad__params__z1 = Number: the z-coordinate of the first point
quad__params__z2 = Number: the z-coordinate of the second point
quad__params__z3 = Number: the z-coordinate of the third point
quad__params__z4 = Number: the z-coordinate of the fourth point
rect__description__0 = Draws a rectangle on the canvas. A rectangle is a four-sided closed shape with every angle at ninety degrees. By default, the first two parameters set the location of the upper-left corner, the third sets the width, and the fourth sets the height. The way these parameters are interpreted, may be changed with the <a href="#/p5/rectMode">rectMode()</a> function.
rect__description__1 = The fifth, sixth, seventh and eighth parameters, if specified, determine corner radius for the top-left, top-right, lower-right and lower-left corners, respectively. An omitted corner radius parameter is set to the value of the previously specified radius value in the parameter list.
rect__params__x = Number: x-coordinate of the rectangle.
rect__params__y = Number: y-coordinate of the rectangle.
rect__params__w = Number: width of the rectangle.
rect__params__h = Number: (Optional) height of the rectangle.
rect__params__tl = Number: (Optional) optional radius of top-left corner.
rect__params__tr = Number: (Optional) optional radius of top-right corner.
rect__params__br = Number: (Optional) optional radius of bottom-right corner.
rect__params__bl = Number: (Optional) optional radius of bottom-left corner.
rect__params__detailX = Integer: (Optional) number of segments in the x-direction (for WebGL mode)
rect__params__detailY = Integer: (Optional) number of segments in the y-direction (for WebGL mode)
square__description__0 = Draws a square to the screen. A square is a four-sided shape with every angle at ninety degrees, and equal side size. This function is a special case of the rect() function, where the width and height are the same, and the parameter is called "s" for side size. By default, the first two parameters set the location of the upper-left corner, the third sets the side size of the square. The way these parameters are interpreted, may be changed with the <a href="#/p5/rectMode">rectMode()</a> function.
square__description__1 = The fourth, fifth, sixth and seventh parameters, if specified, determine corner radius for the top-left, top-right, lower-right and lower-left corners, respectively. An omitted corner radius parameter is set to the value of the previously specified radius value in the parameter list.
square__params__x = Number: x-coordinate of the square.
square__params__y = Number: y-coordinate of the square.
square__params__s = Number: side size of the square.
square__params__tl = Number: (Optional) optional radius of top-left corner.
square__params__tr = Number: (Optional) optional radius of top-right corner.
square__params__br = Number: (Optional) optional radius of bottom-right corner.
square__params__bl = Number: (Optional) optional radius of bottom-left corner.
triangle__description__0 = Draws a triangle to the canvas. A triangle is a plane created by connecting three points. The first two arguments specify the first point, the middle two arguments specify the second point, and the last two arguments specify the third point.
triangle__params__x1 = Number: x-coordinate of the first point
triangle__params__y1 = Number: y-coordinate of the first point
triangle__params__x2 = Number: x-coordinate of the second point
triangle__params__y2 = Number: y-coordinate of the second point
triangle__params__x3 = Number: x-coordinate of the third point
triangle__params__y3 = Number: y-coordinate of the third point
ellipseMode__description__0 = Modifies the location from which ellipses are drawn by changing the way in which parameters given to <a href="#/p5/ellipse">ellipse()</a>, <a href="#/p5/circle">circle()</a> and <a href="#/p5/arc">arc()</a> are interpreted.
ellipseMode__description__1 = The default mode is CENTER, in which the first two parameters are interpreted as the shape's center point's x and y coordinates respectively, while the third and fourth parameters are its width and height.
ellipseMode__description__2 = ellipseMode(RADIUS) also uses the first two parameters as the shape's center point's x and y coordinates, but uses the third and fourth parameters to specify half of the shapes's width and height.
ellipseMode__description__3 = ellipseMode(CORNER) interprets the first two parameters as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
ellipseMode__description__4 = ellipseMode(CORNERS) interprets the first two parameters as the location of one corner of the ellipse's bounding box, and the third and fourth parameters as the location of the opposite corner.
ellipseMode__description__5 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
ellipseMode__params__mode = Constant: either CENTER, RADIUS, CORNER, or CORNERS
noSmooth__description__0 = Draws all geometry with jagged (aliased) edges. Note that <a href="#/p5/smooth">smooth()</a> is active by default in 2D mode, so it is necessary to call <a href="#/p5/noSmooth">noSmooth()</a> to disable smoothing of geometry, images, and fonts. In 3D mode, <a href="#/p5/noSmooth">noSmooth()</a> is enabled by default, so it is necessary to call <a href="#/p5/smooth">smooth()</a> if you would like smooth (antialiased) edges on your geometry.
rectMode__description__0 = Modifies the location from which rectangles are drawn by changing the way in which parameters given to <a href="#/p5/rect">rect()</a> are interpreted.
rectMode__description__1 = The default mode is CORNER, which interprets the first two parameters as the upper-left corner of the shape, while the third and fourth parameters are its width and height.
rectMode__description__2 = rectMode(CORNERS) interprets the first two parameters as the location of one of the corners, and the third and fourth parameters as the location of the diagonally opposite corner. Note, the rectangle is drawn between the coordinates, so it is not neccesary that the first corner be the upper left corner.
rectMode__description__3 = rectMode(CENTER) interprets the first two parameters as the shape's center point, while the third and fourth parameters are its width and height.
rectMode__description__4 = rectMode(RADIUS) also uses the first two parameters as the shape's center point, but uses the third and fourth parameters to specify half of the shape's width and height respectively.
rectMode__description__5 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
rectMode__params__mode = Constant: either CORNER, CORNERS, CENTER, or RADIUS
smooth__description__0 = Draws all geometry with smooth (anti-aliased) edges. <a href="#/p5/smooth">smooth()</a> will also improve image quality of resized images. Note that <a href="#/p5/smooth">smooth()</a> is active by default in 2D mode; <a href="#/p5/noSmooth">noSmooth()</a> can be used to disable smoothing of geometry, images, and fonts. In 3D mode, <a href="#/p5/noSmooth">noSmooth()</a> is enabled by default, so it is necessary to call <a href="#/p5/smooth">smooth()</a> if you would like smooth (antialiased) edges on your geometry.
strokeCap__description__0 = Sets the style for rendering line endings. These ends are either rounded, squared or extended, each of which specified with the corresponding parameters: ROUND, SQUARE and PROJECT. The default cap is ROUND.
strokeCap__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeCap__params__cap = Constant: either ROUND, SQUARE or PROJECT
strokeJoin__description__0 = Sets the style of the joints which connect line segments. These joints are either mitered, beveled or rounded and specified with the corresponding parameters MITER, BEVEL and ROUND. The default joint is MITER.
strokeJoin__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeJoin__params__join = Constant: either MITER, BEVEL, ROUND
strokeWeight__description__0 = Sets the width of the stroke used for lines, points and the border around shapes. All widths are set in units of pixels.
strokeWeight__description__1 = Note that it is affected by any transformation or scaling that has been applied previously.
strokeWeight__params__weight = Number: the weight of the stroke (in pixels)
bezier__description__0 = Draws a cubic Bezier curve on the screen. These curves are defined by a series of anchor and control points. The first two parameters specify the first anchor point and the last two parameters specify the other anchor point, which become the first and last points on the curve. The middle parameters specify the two control points which define the shape of the curve. Approximately speaking, control points "pull" the curve towards them.
bezier__description__1 = Bezier curves were developed by French automotive engineer Pierre Bezier, and are commonly used in computer graphics to define gently sloping curves. See also <a href="#/p5/curve">curve()</a>.
bezier__params__x1 = Number: x-coordinate for the first anchor point
bezier__params__y1 = Number: y-coordinate for the first anchor point
bezier__params__x2 = Number: x-coordinate for the first control point
bezier__params__y2 = Number: y-coordinate for the first control point
bezier__params__x3 = Number: x-coordinate for the second control point
bezier__params__y3 = Number: y-coordinate for the second control point
bezier__params__x4 = Number: x-coordinate for the second anchor point
bezier__params__y4 = Number: y-coordinate for the second anchor point
bezier__params__z1 = Number: z-coordinate for the first anchor point
bezier__params__z2 = Number: z-coordinate for the first control point
bezier__params__z3 = Number: z-coordinate for the second control point
bezier__params__z4 = Number: z-coordinate for the second anchor point
bezierDetail__description__0 = Sets the resolution at which Bezier's curve is displayed. The default value is 20.
bezierDetail__description__1 = Note, This function is only useful when using the WEBGL renderer as the default canvas renderer does not use this information.
bezierDetail__params__detail = Number: resolution of the curves
bezierPoint__description__0 = Given the x or y co-ordinate values of control and anchor points of a bezier curve, it evaluates the x or y coordinate of the bezier at position t. The parameters a and d are the x or y coordinates of first and last points on the curve while b and c are of the control points.The final parameter t is the position of the resultant point which is given between 0 and 1. This can be done once with the x coordinates and a second time with the y coordinates to get the location of a bezier curve at t.
bezierPoint__returns = Number: the value of the Bezier at position t
bezierPoint__params__a = Number: coordinate of first point on the curve
bezierPoint__params__b = Number: coordinate of first control point
bezierPoint__params__c = Number: coordinate of second control point
bezierPoint__params__d = Number: coordinate of second point on the curve
bezierPoint__params__t = Number: value between 0 and 1
bezierTangent__description__0 = Evaluates the tangent to the Bezier at position t for points a, b, c, d. The parameters a and d are the first and last points on the curve, and b and c are the control points. The final parameter t varies between 0 and 1.
bezierTangent__returns = Number: the tangent at position t
bezierTangent__params__a = Number: coordinate of first point on the curve
bezierTangent__params__b = Number: coordinate of first control point
bezierTangent__params__c = Number: coordinate of second control point
bezierTangent__params__d = Number: coordinate of second point on the curve
bezierTangent__params__t = Number: value between 0 and 1
curve__description__0 = Draws a curved line on the screen between two points, given as the middle four parameters. The first two parameters are a control point, as if the curve came from this point even though it's not drawn. The last two parameters similarly describe the other control point. <br /><br /> Longer curves can be created by putting a series of <a href="#/p5/curve">curve()</a> functions together or using <a href="#/p5/curveVertex">curveVertex()</a>. An additional function called <a href="#/p5/curveTightness">curveTightness()</a> provides control for the visual quality of the curve. The <a href="#/p5/curve">curve()</a> function is an implementation of Catmull-Rom splines.
curve__params__x1 = Number: x-coordinate for the beginning control point
curve__params__y1 = Number: y-coordinate for the beginning control point
curve__params__x2 = Number: x-coordinate for the first point
curve__params__y2 = Number: y-coordinate for the first point
curve__params__x3 = Number: x-coordinate for the second point
curve__params__y3 = Number: y-coordinate for the second point
curve__params__x4 = Number: x-coordinate for the ending control point
curve__params__y4 = Number: y-coordinate for the ending control point
curve__params__z1 = Number: z-coordinate for the beginning control point
curve__params__z2 = Number: z-coordinate for the first point
curve__params__z3 = Number: z-coordinate for the second point
curve__params__z4 = Number: z-coordinate for the ending control point
curveDetail__description__0 = Sets the resolution at which curves display. The default value is 20 while the minimum value is 3.
curveDetail__description__1 = This function is only useful when using the WEBGL renderer as the default canvas renderer does not use this information.
curveDetail__params__resolution = Number: resolution of the curves
curveTightness__description__0 = Modifies the quality of forms created with <a href="#/p5/curve">curve()</a> and <a href="#/p5/curveVertex">curveVertex()</a>.The parameter tightness determines how the curve fits to the vertex points. The value 0.0 is the default value for tightness (this value defines the curves to be Catmull-Rom splines) and the value 1.0 connects all the points with straight lines. Values within the range -5.0 and 5.0 will deform the curves but will leave them recognizable and as values increase in magnitude, they will continue to deform.
curveTightness__params__amount = Number: amount of deformation from the original vertices
curvePoint__description__0 = Evaluates the curve at position t for points a, b, c, d. The parameter t varies between 0 and 1, a and d are control points of the curve, and b and c are the start and end points of the curve. This can be done once with the x coordinates and a second time with the y coordinates to get the location of a curve at t.
curvePoint__returns = Number: bezier value at position t
curvePoint__params__a = Number: coordinate of first control point of the curve
curvePoint__params__b = Number: coordinate of first point
curvePoint__params__c = Number: coordinate of second point
curvePoint__params__d = Number: coordinate of second control point
curvePoint__params__t = Number: value between 0 and 1
curveTangent__description__0 = Evaluates the tangent to the curve at position t for points a, b, c, d. The parameter t varies between 0 and 1, a and d are points on the curve, and b and c are the control points.
curveTangent__returns = Number: the tangent at position t
curveTangent__params__a = Number: coordinate of first control point
curveTangent__params__b = Number: coordinate of first point on the curve
curveTangent__params__c = Number: coordinate of second point on the curve
curveTangent__params__d = Number: coordinate of second conrol point
curveTangent__params__t = Number: value between 0 and 1
beginContour__description__0 = Use the <a href="#/p5/beginContour">beginContour()</a> and <a href="#/p5/endContour">endContour()</a> functions to create negative shapes within shapes such as the center of the letter 'O'. <a href="#/p5/beginContour">beginContour()</a> begins recording vertices for the shape and <a href="#/p5/endContour">endContour()</a> stops recording. The vertices that define a negative shape must "wind" in the opposite direction from the exterior shape. First draw vertices for the exterior clockwise order, then for internal shapes, draw vertices shape in counter-clockwise.
beginContour__description__1 = These functions can only be used within a <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> pair and transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within a <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a> pair. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within.
beginShape__description__0 = Using the <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> functions allow creating more complex forms. <a href="#/p5/beginShape">beginShape()</a> begins recording vertices for a shape and <a href="#/p5/endShape">endShape()</a> stops recording. The value of the kind parameter tells it which types of shapes to create from the provided vertices. With no mode specified, the shape can be any irregular polygon.
beginShape__description__1 = The parameters available for <a href="#/p5/beginShape">beginShape()</a> are:
beginShape__description__2 = POINTS Draw a series of points
beginShape__description__3 = LINES Draw a series of unconnected line segments (individual lines)
beginShape__description__4 = TRIANGLES Draw a series of separate triangles
beginShape__description__5 = TRIANGLE_FAN Draw a series of connected triangles sharing the first vertex in a fan-like fashion
beginShape__description__6 = TRIANGLE_STRIP Draw a series of connected triangles in strip fashion
beginShape__description__7 = QUADS Draw a series of separate quad
beginShape__description__8 = QUAD_STRIP Draw quad strip using adjacent edges to form the next quad
beginShape__description__9 = TESS (WebGl only) Handle irregular polygon for filling curve by explicit tessellation
beginShape__description__10 = After calling the <a href="#/p5/beginShape">beginShape()</a> function, a series of <a href="#/p5/vertex">vertex()</a> commands must follow. To stop drawing the shape, call <a href="#/p5/endShape">endShape()</a>. Each shape will be outlined with the current stroke color and filled with the fill color.
beginShape__description__11 = Transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within <a href="#/p5/beginShape">beginShape()</a>. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within <a href="#/p5/beginShape">beginShape()</a>.
beginShape__params__kind = Constant: (Optional) either POINTS, LINES, TRIANGLES, TRIANGLE_FAN  TRIANGLE_STRIP, QUADS, QUAD_STRIP or TESS
bezierVertex__description__0 = Specifies vertex coordinates for Bezier curves. Each call to bezierVertex() defines the position of two control points and one anchor point of a Bezier curve, adding a new segment to a line or shape. For WebGL mode bezierVertex() can be used in 2D as well as 3D mode. 2D mode expects 6 parameters, while 3D mode expects 9 parameters (including z coordinates).
bezierVertex__description__1 = The first time bezierVertex() is used within a <a href="#/p5/beginShape">beginShape()</a> call, it must be prefaced with a call to <a href="#/p5/vertex">vertex()</a> to set the first anchor point. This function must be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE or POINTS parameter specified to <a href="#/p5/beginShape">beginShape()</a>.
bezierVertex__params__x2 = Number: x-coordinate for the first control point
bezierVertex__params__y2 = Number: y-coordinate for the first control point
bezierVertex__params__x3 = Number: x-coordinate for the second control point
bezierVertex__params__y3 = Number: y-coordinate for the second control point
bezierVertex__params__x4 = Number: x-coordinate for the anchor point
bezierVertex__params__y4 = Number: y-coordinate for the anchor point
bezierVertex__params__z2 = Number: z-coordinate for the first control point (for WebGL mode)
bezierVertex__params__z3 = Number: z-coordinate for the second control point (for WebGL mode)
bezierVertex__params__z4 = Number: z-coordinate for the anchor point (for WebGL mode)
curveVertex__description__0 = Specifies vertex coordinates for curves. This function may only be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE parameter specified to <a href="#/p5/beginShape">beginShape()</a>. For WebGL mode curveVertex() can be used in 2D as well as 3D mode. 2D mode expects 2 parameters, while 3D mode expects 3 parameters.
curveVertex__description__1 = The first and last points in a series of curveVertex() lines will be used to guide the beginning and end of the curve. A minimum of four points is required to draw a tiny curve between the second and third points. Adding a fifth point with curveVertex() will draw the curve between the second, third, and fourth points. The curveVertex() function is an implementation of Catmull-Rom splines.
curveVertex__params__x = Number: x-coordinate of the vertex
curveVertex__params__y = Number: y-coordinate of the vertex
curveVertex__params__z = Number: (Optional) z-coordinate of the vertex (for WebGL mode)
endContour__description__0 = Use the <a href="#/p5/beginContour">beginContour()</a> and <a href="#/p5/endContour">endContour()</a> functions to create negative shapes within shapes such as the center of the letter 'O'. <a href="#/p5/beginContour">beginContour()</a> begins recording vertices for the shape and <a href="#/p5/endContour">endContour()</a> stops recording. The vertices that define a negative shape must "wind" in the opposite direction from the exterior shape. First draw vertices for the exterior clockwise order, then for internal shapes, draw vertices shape in counter-clockwise.
endContour__description__1 = These functions can only be used within a <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> pair and transformations such as <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, and <a href="#/p5/scale">scale()</a> do not work within a <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a> pair. It is also not possible to use other shapes, such as <a href="#/p5/ellipse">ellipse()</a> or <a href="#/p5/rect">rect()</a> within.
endShape__description__0 = The <a href="#/p5/endShape">endShape()</a> function is the companion to <a href="#/p5/beginShape">beginShape()</a> and may only be called after <a href="#/p5/beginShape">beginShape()</a>. When <a href="#/p5/endshape">endShape()</a> is called, all of image data defined since the previous call to <a href="#/p5/beginShape">beginShape()</a> is written into the image buffer. The constant CLOSE as the value for the MODE parameter to close the shape (to connect the beginning and the end).
endShape__params__mode = Constant: (Optional) use CLOSE to close the shape
quadraticVertex__description__0 = Specifies vertex coordinates for quadratic Bezier curves. Each call to quadraticVertex() defines the position of one control points and one anchor point of a Bezier curve, adding a new segment to a line or shape. The first time quadraticVertex() is used within a <a href="#/p5/beginShape">beginShape()</a> call, it must be prefaced with a call to <a href="#/p5/vertex">vertex()</a> to set the first anchor point. For WebGL mode quadraticVertex() can be used in 2D as well as 3D mode. 2D mode expects 4 parameters, while 3D mode expects 6 parameters (including z coordinates).
quadraticVertex__description__1 = This function must be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE or POINTS parameter specified to <a href="#/p5/beginShape">beginShape()</a>.
quadraticVertex__params__cx = Number: x-coordinate for the control point
quadraticVertex__params__cy = Number: y-coordinate for the control point
quadraticVertex__params__x3 = Number: x-coordinate for the anchor point
quadraticVertex__params__y3 = Number: y-coordinate for the anchor point
quadraticVertex__params__cz = Number: z-coordinate for the control point (for WebGL mode)
quadraticVertex__params__z3 = Number: z-coordinate for the anchor point (for WebGL mode)
vertex__description__0 = All shapes are constructed by connecting a series of vertices. <a href="#/p5/vertex">vertex()</a> is used to specify the vertex coordinates for points, lines, triangles, quads, and polygons. It is used exclusively within the <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> functions.
vertex__params__x = Number: x-coordinate of the vertex
vertex__params__y = Number: y-coordinate of the vertex
vertex__params__z = Number: z-coordinate of the vertex.  Defaults to 0 if not specified.
vertex__params__u = Number: the vertex's texture u-coordinate
vertex__params__v = Number: the vertex's texture v-coordinate
normal__description__0 = Sets the 3d vertex normal to use for subsequent vertices drawn with <a href="#/p5/vertex">vertex()</a>. A normal is a vector that is generally nearly perpendicular to a shape's surface which controls how much light will be reflected from that part of the surface.
normal__params__vector = Vector: A p5.Vector representing the vertex normal.
normal__params__x = Number: The x component of the vertex normal.
normal__params__y = Number: The y component of the vertex normal.
normal__params__z = Number: The z component of the vertex normal.
VERSION__description__0 = Version of this p5.js.
P2D__description__0 = The default, two-dimensional renderer.
WEBGL__description__0 = One of the two render modes in p5.js: P2D (default renderer) and WEBGL Enables 3D render by introducing the third dimension: Z
HALF_PI__description__0 = HALF_PI is a mathematical constant with the value 1.57079632679489661923. It is half the ratio of the circumference of a circle to its diameter. It is useful in combination with the trigonometric functions <a href="#/p5/sin">sin()</a> and <a href="#/p5/cos">cos()</a>.
PI__description__0 = PI is a mathematical constant with the value 3.14159265358979323846. It is the ratio of the circumference of a circle to its diameter. It is useful in combination with the trigonometric functions <a href="#/p5/sin">sin()</a> and <a href="#/p5/cos">cos()</a>.
QUARTER_PI__description__0 = QUARTER_PI is a mathematical constant with the value 0.7853982. It is one quarter the ratio of the circumference of a circle to its diameter. It is useful in combination with the trigonometric functions <a href="#/p5/sin">sin()</a> and <a href="#/p5/cos">cos()</a>.
TAU__description__0 = TAU is an alias for TWO_PI, a mathematical constant with the value 6.28318530717958647693. It is twice the ratio of the circumference of a circle to its diameter. It is useful in combination with the trigonometric functions <a href="#/p5/sin">sin()</a> and <a href="#/p5/cos">cos()</a>.
TWO_PI__description__0 = TWO_PI is a mathematical constant with the value 6.28318530717958647693. It is twice the ratio of the circumference of a circle to its diameter. It is useful in combination with the trigonometric functions <a href="#/p5/sin">sin()</a> and <a href="#/p5/cos">cos()</a>.
DEGREES__description__0 = Constant to be used with <a href="#/p5/angleMode">angleMode()</a> function, to set the mode which p5.js interprets and calculates angles (either DEGREES or RADIANS).
RADIANS__description__0 = Constant to be used with <a href="#/p5/angleMode">angleMode()</a> function, to set the mode which p5.js interprets and calculates angles (either RADIANS or DEGREES).
HSB__description__0 = HSB (hue, saturation, brightness) is a type of color model. You can learn more about it at <a href="https://learnui.design/blog/the-hsb-color-system-practicioners-primer.html">HSB</a>.
AUTO__description__0 = AUTO allows us to automatically set the width or height of an element (but not both), based on the current height and width of the element. Only one parameter can be passed to the <a href="/#/p5.Element/size">size</a> function as AUTO, at a time.
print__description__0 = The <a href="#/p5/print">print()</a> function writes to the console area of your browser. This function is often helpful for looking at the data a program is producing. This function creates a new line of text for each call to the function. Individual elements can be separated with quotes ("") and joined with the addition operator (+).
print__description__1 = Note that calling print() without any arguments invokes the window.print() function which opens the browser's print dialog. To print a blank line to console you can write print('\n').
print__params__contents = Any: any combination of Number, String, Object, Boolean,  Array to print
frameCount__description__0 = The system variable <a href="#/p5/frameCount">frameCount</a> contains the number of frames that have been displayed since the program started. Inside <a href="#/p5/setup">setup()</a> the value is 0, after the first iteration of draw it is 1, etc.
deltaTime__description__0 = The system variable <a href="#/p5/deltaTime">deltaTime</a> contains the time difference between the beginning of the previous frame and the beginning of the current frame in milliseconds.
deltaTime__description__1 = This variable is useful for creating time sensitive animation or physics calculation that should stay constant regardless of frame rate.
focused__description__0 = Confirms if the window a p5.js program is in is "focused," meaning that the sketch will accept mouse or keyboard input. This variable is "true" if the window is focused and "false" if not.
cursor__description__0 = Sets the cursor to a predefined symbol or an image, or makes it visible if already hidden. If you are trying to set an image as the cursor, the recommended size is 16×16 or 32×32 pixels. The values for parameters x and y must be less than the dimensions of the image.
cursor__params__type = String|Constant: Built-In: either ARROW, CROSS, HAND, MOVE, TEXT and WAIT  Native CSS properties: 'grab', 'progress', 'cell' etc.  External: path for cursor's images  (Allowed File extensions: .cur, .gif, .jpg, .jpeg, .png)  For more information on Native CSS cursors and url visit:  <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/cursor">https://developer.mozilla.org/en-US/docs/Web/CSS/cursor</a>
cursor__params__x = Number: (Optional) the horizontal active spot of the cursor (must be less than 32)
cursor__params__y = Number: (Optional) the vertical active spot of the cursor (must be less than 32)
frameRate__description__0 = Specifies the number of frames to be displayed every second. For example, the function call frameRate(30) will attempt to refresh 30 times a second. If the processor is not fast enough to maintain the specified rate, the frame rate will not be achieved. Setting the frame rate within <a href="#/p5/setup">setup()</a> is recommended. The default frame rate is based on the frame rate of the display (here also called "refresh rate"), which is set to 60 frames per second on most computers. A frame rate of 24 frames per second (usual for movies) or above will be enough for smooth animations. This is the same as setFrameRate(val).
frameRate__description__1 = Calling <a href="#/p5/frameRate">frameRate()</a> with no arguments returns the current framerate. The draw function must run at least once before it will return a value. This is the same as <a href="#/p5/getFrameRate">getFrameRate()</a>.
frameRate__description__2 = Calling <a href="#/p5/frameRate">frameRate()</a> with arguments that are not of the type numbers or are non positive also returns current framerate.
frameRate__params__fps = Number: number of frames to be displayed every second
noCursor__description__0 = Hides the cursor from view.
displayWidth__description__0 = System variable that stores the width of the screen display according to The default <a href="#/p5/pixelDensity">pixelDensity</a>. This is used to run a full-screen program on any display size. To return actual screen size, multiply this by pixelDensity.
displayHeight__description__0 = System variable that stores the height of the screen display according to The default <a href="#/p5/pixelDensity">pixelDensity</a>. This is used to run a full-screen program on any display size. To return actual screen size, multiply this by pixelDensity.
windowWidth__description__0 = System variable that stores the width of the inner window, it maps to window.innerWidth.
windowHeight__description__0 = System variable that stores the height of the inner window, it maps to window.innerHeight.
windowResized__description__0 = The <a href="#/p5/windowResized">windowResized()</a> function is called once every time the browser window is resized. This is a good place to resize the canvas or do any other adjustments to accommodate the new window size.
windowResized__params__event = Object: (Optional) optional Event callback argument.
width__description__0 = System variable that stores the width of the drawing canvas. This value is set by the first parameter of the <a href="#/p5/createCanvas">createCanvas()</a> function. For example, the function call createCanvas(320, 240) sets the width variable to the value 320. The value of width defaults to 100 if <a href="#/p5/createCanvas">createCanvas()</a> is not used in a program.
height__description__0 = System variable that stores the height of the drawing canvas. This value is set by the second parameter of the <a href="#/p5/createCanvas">createCanvas()</a> function. For example, the function call createCanvas(320, 240) sets the height variable to the value 240. The value of height defaults to 100 if <a href="#/p5/createCanvas">createCanvas()</a> is not used in a program.
fullscreen__description__0 = If argument is given, sets the sketch to fullscreen or not based on the value of the argument. If no argument is given, returns the current fullscreen state. Note that due to browser restrictions this can only be called on user input, for example, on mouse press like the example below.
fullscreen__returns = Boolean: current fullscreen state
fullscreen__params__val = Boolean: (Optional) whether the sketch should be in fullscreen mode or not
pixelDensity__description__0 = Sets the pixel scaling for high pixel density displays. By default pixel density is set to match display density, call pixelDensity(1) to turn this off. Calling <a href="#/p5/pixelDensity">pixelDensity()</a> with no arguments returns the current pixel density of the sketch.
pixelDensity__params__val = Number: whether or how much the sketch should scale
displayDensity__description__0 = Returns the pixel density of the current display the sketch is running on.
displayDensity__returns = Number: current pixel density of the display
getURL__description__0 = Gets the current URL. Note: when using the p5 Editor, this will return an empty object because the sketch is embedded in an iframe. It will work correctly if you view the sketch using the editor's present or share URLs.
getURL__returns = String: url
getURLPath__description__0 = Gets the current URL path as an array. Note: when using the p5 Editor, this will return an empty object because the sketch is embedded in an iframe. It will work correctly if you view the sketch using the editor's present or share URLs.
getURLPath__returns = String[]: path components
getURLParams__description__0 = Gets the current URL params as an Object. Note: when using the p5 Editor, this will return an empty object because the sketch is embedded in an iframe. It will work correctly if you view the sketch using the editor's present or share URLs.
getURLParams__returns = Object: URL params
preload__description__0 = Called directly before <a href="#/p5/setup">setup()</a>, the <a href="#/p5/preload">preload()</a> function is used to handle asynchronous loading of external files in a blocking way. If a preload function is defined, <a href="#/p5/setup">setup()</a> will wait until any load calls within have finished. Nothing besides load calls (<a href="#/p5/loadImage">loadImage</a>, <a href="#/p5/loadJSON">loadJSON</a>, <a href="#/p5/loadFont">loadFont</a>, <a href="#/p5/loadStrings">loadStrings</a>, etc.) should be inside the preload function. If asynchronous loading is preferred, the load methods can instead be called in <a href="#/p5/setup">setup()</a> or anywhere else with the use of a callback parameter.
preload__description__1 = By default the text "loading..." will be displayed. To make your own loading page, include an HTML element with id "p5_loading" in your page. More information <a href="http://bit.ly/2kQ6Nio">here</a>.
setup__description__0 = The <a href="#/p5/setup">setup()</a> function is called once when the program starts. It's used to define initial environment properties such as screen size and background color and to load media such as images and fonts as the program starts. There can only be one <a href="#/p5/setup">setup()</a> function for each program and it shouldn't be called again after its initial execution.
setup__description__1 = Note: Variables declared within <a href="#/p5/setup">setup()</a> are not accessible within other functions, including <a href="#/p5/draw">draw()</a>.
draw__description__0 = Called directly after <a href="#/p5/setup">setup()</a>, the <a href="#/p5/draw">draw()</a> function continuously executes the lines of code contained inside its block until the program is stopped or <a href="#/p5/noLoop">noLoop()</a> is called. Note if <a href="#/p5/noLoop">noLoop()</a> is called in <a href="#/p5/setup">setup()</a>, <a href="#/p5/draw">draw()</a> will still be executed once before stopping. <a href="#/p5/draw">draw()</a> is called automatically and should never be called explicitly.
draw__description__1 = It should always be controlled with <a href="#/p5/noLoop">noLoop()</a>, <a href="#/p5/redraw">redraw()</a> and <a href="#/p5/loop">loop()</a>. After <a href="#/p5/noLoop">noLoop()</a> stops the code in <a href="#/p5/draw">draw()</a> from executing, <a href="#/p5/redraw">redraw()</a> causes the code inside <a href="#/p5/draw">draw()</a> to execute once, and <a href="#/p5/loop">loop()</a> will cause the code inside <a href="#/p5/draw">draw()</a> to resume executing continuously.
draw__description__2 = The number of times <a href="#/p5/draw">draw()</a> executes in each second may be controlled with the <a href="#/p5/frameRate">frameRate()</a> function.
draw__description__3 = There can only be one <a href="#/p5/draw">draw()</a> function for each sketch, and <a href="#/p5/draw">draw()</a> must exist if you want the code to run continuously, or to process events such as <a href="#/p5/mousePressed">mousePressed()</a>. Sometimes, you might have an empty call to <a href="#/p5/draw">draw()</a> in your program, as shown in the above example.
draw__description__4 = It is important to note that the drawing coordinate system will be reset at the beginning of each <a href="#/p5/draw">draw()</a> call. If any transformations are performed within <a href="#/p5/draw">draw()</a> (ex: scale, rotate, translate), their effects will be undone at the beginning of <a href="#/p5/draw">draw()</a>, so transformations will not accumulate over time. On the other hand, styling applied (ex: fill, stroke, etc) will remain in effect.
remove__description__0 = Removes the entire p5 sketch. This will remove the canvas and any elements created by p5.js. It will also stop the draw loop and unbind any properties or methods from the window global scope. It will leave a variable p5 in case you wanted to create a new p5 sketch. If you like, you can set p5 = null to erase it. While all functions and variables and objects created by the p5 library will be removed, any other global variables created by your code will remain.
disableFriendlyErrors__description__0 = Turn off some features of the friendly error system (FES), which can give a significant boost to performance when needed.
disableFriendlyErrors__description__1 = Note that this will disable the parts of the FES that cause performance slowdown (like argument checking). Friendly errors that have no performance cost (like giving an descriptive error if a file load fails, or warning you if you try to override p5.js functions in the global space), will remain in place.
disableFriendlyErrors__description__2 = See <a href='https://github.com/processing/p5.js/wiki/Optimizing-p5.js-Code-for-Performance#disable-the-friendly-error-system-fes'> disabling the friendly error system</a>.
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
function__description__1 = Optionally, functions can have parameters. <a href="https://developer.mozilla.org/en-US/docs/Glossary/Parameter">Parameters</a> are variables that are scoped to the function, that can be assigned a value when calling the function.Multiple parameters can be given by seperating them with commmas.
function__description__2 = From <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function">the MDN entry</a>: Declares a function with the specified parameters.
return__description__0 = Specifies the value to be returned by a function. For more info checkout <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/return"> the MDN entry for return</a>.
boolean__description__0 = Converts a number or string to its boolean representation. For a number, any non-zero value (positive or negative) evaluates to true, while zero evaluates to false. For a string, the value "true" evaluates to true, while any other value evaluates to false. When an array of number or string values is passed in, then a array of booleans of the same length is returned.
boolean__returns = Boolean: boolean representation of value
boolean__params__n = String|Boolean|Number|Array: value to parse
string__description__0 = A <a href="#/p5/string">string</a> is one of the 7 <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Primitive_values">primitive data types</a> in Javascript. A string is a series of text characters. In Javascript, a string value must be surrounded by either single-quotation marks(') or double-quotation marks(").
string__description__1 = From <a href="https://developer.mozilla.org/en-US/docs/Glossary/string">the MDN entry</a>: A string is a sequence of characters used to represent text.
number__description__0 = A <a href="#/p5/number">number</a> is one of the 7 <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Primitive_values">primitive data types</a> in Javascript. A number can be a whole number or a decimal number.
number__description__1 = <a href="https://developer.mozilla.org/en-US/docs/Glossary/number">The MDN entry for number</a>
object__description__0 = From <a href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Basics">MDN's object basics</a>:  An <a href="#/p5/object">object</a> is a collection of related data and/or  functionality (which usually consists of several variables and functions —  which are called properties and methods when they are inside objects.)
class__description__0 = Creates and names a <a href="#/p5/class">class</a> which is a template for the creation of <a href="#/p5/object">objects</a>.
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
createCanvas__description__0 = Creates a canvas element in the document, and sets the dimensions of it in pixels. This method should be called only once at the start of setup. Calling <a href="#/p5/createCanvas">createCanvas</a> more than once in a sketch will result in very unpredictable behavior. If you want more than one drawing canvas you could use <a href="#/p5/createGraphics">createGraphics</a> (hidden by default but it can be shown).
createCanvas__description__1 = Important note: in 2D mode (i.e. when <code>p5.Renderer</code> is not set) the origin (0,0) is positioned at the top left of the screen. In 3D mode (i.e. when <code>p5.Renderer</code> is set to <code>WEBGL</code>), the origin is positioned at the center of the canvas. See <a href="https://github.com/processing/p5.js/issues/1545">this issue</a> for more information.
createCanvas__description__2 = The system variables width and height are set by the parameters passed to this function. If <a href="#/p5/createCanvas">createCanvas()</a> is not used, the window will be given a default size of 100×100 pixels.
createCanvas__description__3 = For more ways to position the canvas, see the <a href='https://github.com/processing/p5.js/wiki/Positioning-your-canvas'> positioning the canvas</a> wiki page.
createCanvas__returns = p5.Renderer:
createCanvas__params__w = Number: width of the canvas
createCanvas__params__h = Number: height of the canvas
createCanvas__params__renderer = Constant: (Optional) either P2D or WEBGL
resizeCanvas__description__0 = Resizes the canvas to given width and height. The canvas will be cleared and draw will be called immediately, allowing the sketch to re-render itself in the resized canvas.
resizeCanvas__params__w = Number: width of the canvas
resizeCanvas__params__h = Number: height of the canvas
resizeCanvas__params__noRedraw = Boolean: (Optional) don't redraw the canvas immediately
noCanvas__description__0 = Removes the default canvas for a p5 sketch that doesn't require a canvas
createGraphics__description__0 = Creates and returns a new p5.Renderer object. Use this class if you need to draw into an off-screen graphics buffer. The two parameters define the width and height in pixels.
createGraphics__returns = p5.Graphics: offscreen graphics buffer
createGraphics__params__w = Number: width of the offscreen graphics buffer
createGraphics__params__h = Number: height of the offscreen graphics buffer
createGraphics__params__renderer = Constant: (Optional) either P2D or WEBGL  undefined defaults to p2d
blendMode__description__0 = Blends the pixels in the display window according to the defined mode. There is a choice of the following modes to blend the source pixels (A) with the ones of pixels already in the display window (B): <ul> <li><code>BLEND</code> - linear interpolation of colours: C = A*factor + B. <b>This is the default blending mode.</b></li> <li><code>ADD</code> - sum of A and B</li> <li><code>DARKEST</code> - only the darkest colour succeeds: C = min(A*factor, B).</li> <li><code>LIGHTEST</code> - only the lightest colour succeeds: C = max(A*factor, B).</li> <li><code>DIFFERENCE</code> - subtract colors from underlying image.</li> <li><code>EXCLUSION</code> - similar to <code>DIFFERENCE</code>, but less extreme.</li> <li><code>MULTIPLY</code> - multiply the colors, result will always be darker.</li> <li><code>SCREEN</code> - opposite multiply, uses inverse values of the colors.</li> <li><code>REPLACE</code> - the pixels entirely replace the others and don't utilize alpha (transparency) values.</li> <li><code>REMOVE</code> - removes pixels from B with the alpha strength of A.</li> <li><code>OVERLAY</code> - mix of <code>MULTIPLY</code> and <code>SCREEN </code>. Multiplies dark values, and screens light values. <em>(2D)</em></li> <li><code>HARD_LIGHT</code> - <code>SCREEN</code> when greater than 50% gray, <code>MULTIPLY</code> when lower. <em>(2D)</em></li> <li><code>SOFT_LIGHT</code> - mix of <code>DARKEST</code> and <code>LIGHTEST</code>. Works like <code>OVERLAY</code>, but not as harsh. <em>(2D)</em> </li> <li><code>DODGE</code> - lightens light tones and increases contrast, ignores darks. <em>(2D)</em></li> <li><code>BURN</code> - darker areas are applied, increasing contrast, ignores lights. <em>(2D)</em></li> <li><code>SUBTRACT</code> - remainder of A and B <em>(3D)</em></li> </ul>
blendMode__description__1 = <em>(2D)</em> indicates that this blend mode <b>only</b> works in the 2D renderer. <em>(3D)</em> indicates that this blend mode <b>only</b> works in the WEBGL renderer.
blendMode__params__mode = Constant: blend mode to set for canvas.  either BLEND, DARKEST, LIGHTEST, DIFFERENCE, MULTIPLY,  EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT,  SOFT_LIGHT, DODGE, BURN, ADD, REMOVE or SUBTRACT
drawingContext__description__0 = The p5.js API provides a lot of functionality for creating graphics, but there is some native HTML5 Canvas functionality that is not exposed by p5. You can still call it directly using the variable <code>drawingContext</code>, as in the example shown. This is the equivalent of calling <code>canvas.getContext('2d');</code> or <code>canvas.getContext('webgl');</code>. See this <a href="https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D"> reference for the native canvas API</a> for possible drawing functions you can call.
noLoop__description__0 = Stops p5.js from continuously executing the code within <a href="#/p5/draw">draw()</a>. If <a href="#/p5/loop">loop()</a> is called, the code in <a href="#/p5/draw">draw()</a> begins to run continuously again. If using <a href="#/p5/noLoop">noLoop()</a> in <a href="#/p5/setup">setup()</a>, it should be the last line inside the block.
noLoop__description__1 = When <a href="#/p5/noLoop">noLoop()</a> is used, it's not possible to manipulate or access the screen inside event handling functions such as <a href="#/p5/mousePressed">mousePressed()</a> or <a href="#/p5/keyPressed">keyPressed()</a>. Instead, use those functions to call <a href="#/p5/redraw">redraw()</a> or <a href="#/p5/loop">loop()</a>, which will run <a href="#/p5/draw">draw()</a>, which can update the screen properly. This means that when <a href="#/p5/noLoop">noLoop()</a> has been called, no drawing can happen, and functions like <a href="#/p5/saveFrames">saveFrames()</a> or <a href="#/p5/loadPixels">loadPixels()</a> may not be used.
noLoop__description__2 = Note that if the sketch is resized, <a href="#/p5/redraw">redraw()</a> will be called to update the sketch, even after <a href="#/p5/noLoop">noLoop()</a> has been specified. Otherwise, the sketch would enter an odd state until <a href="#/p5/loop">loop()</a> was called.
noLoop__description__3 = Use <a href="#/p5/isLooping">isLooping()</a> to check current state of loop().
loop__description__0 = By default, p5.js loops through draw() continuously, executing the code within it. However, the <a href="#/p5/draw">draw()</a> loop may be stopped by calling <a href="#/p5/noLoop">noLoop()</a>. In that case, the <a href="#/p5/draw">draw()</a> loop can be resumed with loop().
loop__description__1 = Avoid calling loop() from inside setup().
loop__description__2 = Use <a href="#/p5/isLooping">isLooping()</a> to check current state of loop().
isLooping__description__0 = By default, p5.js loops through <a href="#/p5/draw">draw()</a> continuously, executing the code within it. If the sketch is stopped with <a href="#/p5/noLoop">noLoop()</a> or resumed with <a href="#/p5/loop">loop()</a>, isLooping() returns the current state for use within custom event handlers.
push__description__0 = The <a href="#/p5/push">push()</a> function saves the current drawing style settings and transformations, while <a href="#/p5/pop">pop()</a> restores these settings. Note that these functions are always used together. They allow you to change the style and transformation settings and later return to what you had. When a new state is started with <a href="#/p5/push">push()</a>, it builds on the current style and transform information. The <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions can be embedded to provide more control. (See the second example for a demonstration.)
push__description__1 = <a href="#/p5/push">push()</a> stores information related to the current transformation state and style settings controlled by the following functions: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a>, <a href="#/p5/noiseSeed">noiseSeed()</a>.
push__description__2 = In WEBGL mode additional style settings are stored. These are controlled by the following functions: <a href="#/p5/setCamera">setCamera()</a>, <a href="#/p5/ambientLight">ambientLight()</a>, <a href="#/p5/directionalLight">directionalLight()</a>, <a href="#/p5/pointLight">pointLight()</a>, <a href="#/p5/texture">texture()</a>, <a href="#/p5/specularMaterial">specularMaterial()</a>, <a href="#/p5/shininess">shininess()</a>, <a href="#/p5/normalMaterial">normalMaterial()</a> and <a href="#/p5/shader">shader()</a>.
pop__description__0 = The <a href="#/p5/push">push()</a> function saves the current drawing style settings and transformations, while <a href="#/p5/pop">pop()</a> restores these settings. Note that these functions are always used together. They allow you to change the style and transformation settings and later return to what you had. When a new state is started with <a href="#/p5/push">push()</a>, it builds on the current style and transform information. The <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions can be embedded to provide more control. (See the second example for a demonstration.)
pop__description__1 = <a href="#/p5/push">push()</a> stores information related to the current transformation state and style settings controlled by the following functions: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a>, <a href="#/p5/noiseSeed">noiseSeed()</a>.
pop__description__2 = In WEBGL mode additional style settings are stored. These are controlled by the following functions: <a href="#/p5/setCamera">setCamera()</a>, <a href="#/p5/ambientLight">ambientLight()</a>, <a href="#/p5/directionalLight">directionalLight()</a>, <a href="#/p5/pointLight">pointLight()</a>, <a href="#/p5/texture">texture()</a>, <a href="#/p5/specularMaterial">specularMaterial()</a>, <a href="#/p5/shininess">shininess()</a>, <a href="#/p5/normalMaterial">normalMaterial()</a> and <a href="#/p5/shader">shader()</a>.
redraw__description__0 = Executes the code within <a href="#/p5/draw">draw()</a> one time. This function allows the program to update the display window only when necessary, for example when an event registered by <a href="#/p5/mousePressed">mousePressed()</a> or <a href="#/p5/keyPressed">keyPressed()</a> occurs.
redraw__description__1 = In structuring a program, it only makes sense to call <a href="#/p5/redraw">redraw()</a> within events such as <a href="#/p5/mousePressed">mousePressed()</a>. This is because <a href="#/p5/redraw">redraw()</a> does not run <a href="#/p5/draw">draw()</a> immediately (it only sets a flag that indicates an update is needed).
redraw__description__2 = The <a href="#/p5/redraw">redraw()</a> function does not work properly when called inside <a href="#/p5/draw">draw()</a>.To enable/disable animations, use <a href="#/p5/loop">loop()</a> and <a href="#/p5/noLoop">noLoop()</a>.
redraw__description__3 = In addition you can set the number of redraws per method call. Just add an integer as single parameter for the number of redraws.
redraw__params__n = Integer: (Optional) Redraw for n-times. The default value is 1.
p5__description__0 = The <code>p5()</code> constructor enables you to activate "instance mode" instead of normal "global mode". This is an advanced topic. A short description and example is included below. Please see <a target="blank" href="https://www.youtube.com/watch?v=Su792jEauZg&feature=youtu.be"> Dan Shiffman's Coding Train video tutorial</a> or this <a target="blank" href="https://github.com/processing/p5.js/wiki/p5.js-overview#instantiation--namespace">tutorial page</a> for more info.
p5__description__1 = By default, all p5.js functions are in the global namespace (i.e. bound to the window object), meaning you can call them simply <code>ellipse()</code>, <code>fill()</code>, etc. However, this might be inconvenient if you are mixing with other JS libraries (synchronously or asynchronously) or writing long programs of your own. p5.js currently supports a way around this problem called "instance mode". In instance mode, all p5 functions are bound up in a single variable instead of polluting your global namespace.
p5__description__2 = Optionally, you can specify a default container for the canvas and any other elements to append to with a second argument. You can give the ID of an element in your html, or an html node itself.
p5__description__3 = Note that creating instances like this also allows you to have more than one p5 sketch on a single web page, as they will each be wrapped up with their own set up variables. Of course, you could also use iframes to have multiple sketches in global mode.
p5__params__sketch = Object: a function containing a p5.js sketch
p5__params__node = String|Object: ID or pointer to HTML DOM node to contain sketch in
applyMatrix__description__0 = Multiplies the current matrix by the one specified through the parameters. This is a powerful operation that can perform the equivalent of translate, scale, shear and rotate all at once. You can learn more about transformation matrices on <a href="https://en.wikipedia.org/wiki/Transformation_matrix"> Wikipedia</a>.
applyMatrix__description__1 = The naming of the arguments here follows the naming of the <a href= "https://html.spec.whatwg.org/multipage/canvas.html#dom-context-2d-transform"> WHATWG specification</a> and corresponds to a transformation matrix of the form: <blockquote>
applyMatrix__description__2 = <img style="max-width: 150px" src="assets/transformation-matrix.png" alt="The transformation matrix used when applyMatrix is called"/> </blockquote>
applyMatrix__params__a = Number|Array: numbers which define the 2×3 matrix to be multiplied, or an array of numbers
applyMatrix__params__b = Number: numbers which define the 2×3 matrix to be multiplied
applyMatrix__params__c = Number: numbers which define the 2×3 matrix to be multiplied
applyMatrix__params__d = Number: numbers which define the 2×3 matrix to be multiplied
applyMatrix__params__e = Number: numbers which define the 2×3 matrix to be multiplied
applyMatrix__params__f = Number: numbers which define the 2×3 matrix to be multiplied
resetMatrix__description__0 = Replaces the current matrix with the identity matrix.
rotate__description__0 = Rotates a shape by the amount specified by the angle parameter. This function accounts for <a href="#/p5/angleMode">angleMode</a>, so angles can be entered in either RADIANS or DEGREES.
rotate__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling rotate(HALF_PI) and then rotate(HALF_PI) is the same as rotate(PI). All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotate__description__2 = Technically, <a href="#/p5/rotate">rotate()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
rotate__params__angle = Number: the angle of rotation, specified in radians  or degrees, depending on current angleMode
rotate__params__axis = p5.Vector|Number[]: (Optional) (in 3d) the axis to rotate around
rotateX__description__0 = Rotates a shape around X axis by the amount specified in angle parameter. The angles can be entered in either RADIANS or DEGREES.
rotateX__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateX__params__angle = Number: the angle of rotation, specified in radians  or degrees, depending on current angleMode
rotateY__description__0 = Rotates a shape around Y axis by the amount specified in angle parameter. The angles can be entered in either RADIANS or DEGREES.
rotateY__description__1 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateY__params__angle = Number: the angle of rotation, specified in radians  or degrees, depending on current angleMode
rotateZ__description__0 = Rotates a shape around Z axis by the amount specified in angle parameter. The angles can be entered in either RADIANS or DEGREES.
rotateZ__description__1 = This method works in WEBGL mode only.
rotateZ__description__2 = Objects are always rotated around their relative position to the origin and positive numbers rotate objects in a clockwise direction. All transformations are reset when <a href="#/p5/draw">draw()</a> begins again.
rotateZ__params__angle = Number: the angle of rotation, specified in radians  or degrees, depending on current angleMode
scale__description__0 = Increases or decreases the size of a shape by expanding or contracting vertices. Objects always scale from their relative origin to the coordinate system. Scale values are specified as decimal percentages. For example, the function call scale(2.0) increases the dimension of a shape by 200%.
scale__description__1 = Transformations apply to everything that happens after and subsequent calls to the function multiply the effect. For example, calling scale(2.0) and then scale(1.5) is the same as scale(3.0). If <a href="#/p5/scale">scale()</a> is called within <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
scale__description__2 = Using this function with the z parameter is only available in WEBGL mode. This function can be further controlled with <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
scale__params__s = Number|p5.Vector|Number[]: percent to scale the object, or percentage to  scale the object in the x-axis if multiple arguments  are given
scale__params__y = Number: (Optional) percent to scale the object in the y-axis
scale__params__z = Number: (Optional) percent to scale the object in the z-axis (webgl only)
scale__params__scales = p5.Vector|Number[]: per-axis percents to scale the object
shearX__description__0 = Shears a shape around the x-axis by the amount specified by the angle parameter. Angles should be specified in the current angleMode. Objects are always sheared around their relative position to the origin and positive numbers shear objects in a clockwise direction.
shearX__description__1 = Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling shearX(PI/2) and then shearX(PI/2) is the same as shearX(PI). If <a href="#/p5/shearX">shearX()</a> is called within the <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
shearX__description__2 = Technically, <a href="#/p5/shearX">shearX()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions.
shearX__params__angle = Number: angle of shear specified in radians or degrees,  depending on current angleMode
shearY__description__0 = Shears a shape around the y-axis the amount specified by the angle parameter. Angles should be specified in the current angleMode. Objects are always sheared around their relative position to the origin and positive numbers shear objects in a clockwise direction.
shearY__description__1 = Transformations apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling shearY(PI/2) and then shearY(PI/2) is the same as shearY(PI). If <a href="#/p5/shearY">shearY()</a> is called within the <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again.
shearY__description__2 = Technically, <a href="#/p5/shearY">shearY()</a> multiplies the current transformation matrix by a rotation matrix. This function can be further controlled by the <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a> functions.
shearY__params__angle = Number: angle of shear specified in radians or degrees,  depending on current angleMode
translate__description__0 = Specifies an amount to displace objects within the display window. The x parameter specifies left/right translation, the y parameter specifies up/down translation.
translate__description__1 = Transformations are cumulative and apply to everything that happens after and subsequent calls to the function accumulates the effect. For example, calling translate(50, 0) and then translate(20, 0) is the same as translate(70, 0). If <a href="#/p5/translate">translate()</a> is called within <a href="#/p5/draw">draw()</a>, the transformation is reset when the loop begins again. This function can be further controlled by using <a href="#/p5/push">push()</a> and <a href="#/p5/pop">pop()</a>.
translate__params__x = Number: left/right translation
translate__params__y = Number: up/down translation
translate__params__z = Number: (Optional) forward/backward translation (webgl only)
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
createDiv__description__0 = Creates a <code>&lt;div&gt;&lt;/div&gt;</code> element in the DOM with given inner HTML.
createDiv__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createDiv__params__html = String: (Optional) inner HTML for element created
createP__description__0 = Creates a <code>&lt;p&gt;&lt;/p&gt;</code> element in the DOM with given inner HTML. Used for paragraph length text.
createP__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createP__params__html = String: (Optional) inner HTML for element created
createSpan__description__0 = Creates a <code>&lt;span&gt;&lt;/span&gt;</code> element in the DOM with given inner HTML.
createSpan__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createSpan__params__html = String: (Optional) inner HTML for element created
createImg__description__0 = Creates an <code>&lt;img&gt;</code> element in the DOM with given src and alternate text.
createImg__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createImg__params__src = String: src path or url for image
createImg__params__alt = String: <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Img#Attributes">alternate text</a> to be used if image does not load. You can use also an empty string (<code>""</code>) if that an image is not intended to be viewed.
createImg__params__crossOrigin = String: <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_settings_attributes">crossOrigin property</a> of the <code>img</code> element; use either 'anonymous' or 'use-credentials' to retrieve the image with cross-origin access (for later use with <code>canvas</code>. if an empty string(<code>""</code>) is passed, CORS is not used
createImg__params__successCallback = Function: (Optional) callback to be called once image data is loaded with the <a href="#/p5.Element">p5.Element</a> as argument
createA__description__0 = Creates an <code>&lt;a&gt;&lt;/a&gt;</code> element in the DOM for including a hyperlink.
createA__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createA__params__href = String: url of page to link to
createA__params__html = String: inner html of link element to display
createA__params__target = String: (Optional) target where new link should open,  could be _blank, _self, _parent, _top.
createSlider__description__0 = Creates a slider <code>&lt;input&gt;&lt;/input&gt;</code> element in the DOM. Use .size() to set the display length of the slider.
createSlider__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createSlider__params__min = Number: minimum value of the slider
createSlider__params__max = Number: maximum value of the slider
createSlider__params__value = Number: (Optional) default value of the slider
createSlider__params__step = Number: (Optional) step size for each tick of the slider (if step is set to 0, the slider will move continuously from the minimum to the maximum value)
createButton__description__0 = Creates a <code>&lt;button&gt;&lt;/button&gt;</code> element in the DOM. Use .size() to set the display size of the button. Use .mousePressed() to specify behavior on press.
createButton__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createButton__params__label = String: label displayed on the button
createButton__params__value = String: (Optional) value of the button
createCheckbox__description__0 = Creates a checkbox <code>&lt;input&gt;&lt;/input&gt;</code> element in the DOM. Calling .checked() on a checkbox returns if it is checked or not
createCheckbox__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createCheckbox__params__label = String: (Optional) label displayed after checkbox
createCheckbox__params__value = Boolean: (Optional) value of the checkbox; checked is true, unchecked is false
createSelect__description__0 = Creates a dropdown menu <code>&lt;select&gt;&lt;/select&gt;</code> element in the DOM. It also helps to assign select-box methods to <a href="#/p5.Element">p5.Element</a> when selecting existing select box. <ul> <li><code>.option(name, [value])</code> can be used to set options for the select after it is created.</li> <li><code>.value()</code> will return the currently selected option.</li> <li><code>.selected()</code> will return current dropdown element which is an instance of <a href="#/p5.Element">p5.Element</a></li> <li><code>.selected(value)</code> can be used to make given option selected by default when the page first loads.</li> <li><code>.disable()</code> marks whole of dropdown element as disabled.</li> <li><code>.disable(value)</code> marks given option as disabled</li> </ul>
createSelect__returns = p5.Element:
createSelect__params__multiple = Boolean: (Optional) true if dropdown should support multiple selections
createSelect__params__existing = Object: DOM select element
createRadio__description__0 = Creates a radio button element in the DOM.It also helps existing radio buttons assign methods of <a href="#/p5.Element/">p5.Element</a>. <ul> <li><code>.option(value, [label])</code> can be used to create a new option for the element. If an option with a value already exists, it will be returned. It is recommended to use string values as input for <code>value</code>. Optionally, a label can be provided as second argument for the option.</li> <li><code>.remove(value)</code> can be used to remove an option for the element. String values recommended as input for <code>value</code>.</li> <li><code>.value()</code> method will return the currently selected value.</li> <li><code>.selected()</code> method will return the currently selected input element.</li> <li><code>.selected(value)</code> method will select the option and return it. String values recommended as input for <code>value</code>.</li> <li><code>.disable(Boolean)</code> method will enable/disable the whole radio button element.</li> </ul>
createRadio__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createRadio__params__containerElement = Object: An container HTML Element either a div or span inside which all existing radio inputs will be considered as options.
createRadio__params__name = String: (Optional) A name parameter for each Input Element.
createColorPicker__description__0 = Creates a colorPicker element in the DOM for color input. The .value() method will return a hex string (#rrggbb) of the color. The .color() method will return a p5.Color object with the current chosen color.
createColorPicker__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createColorPicker__params__value = String|p5.Color: (Optional) default color of element
createInput__description__0 = Creates an <code>&lt;input&gt;&lt;/input&gt;</code> element in the DOM for text input. Use .<a href="#/p5.Element/size">size()</a> to set the display length of the box.
createInput__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createInput__params__value = String: default value of the input box
createInput__params__type = String: (Optional) type of text, ie text, password etc. Defaults to text.  Needs a value to be specified first.
createFileInput__description__0 = Creates an <code>&lt;input&gt;&lt;/input&gt;</code> element in the DOM of type 'file'. This allows users to select local files for use in a sketch.
createFileInput__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created DOM element
createFileInput__params__callback = Function: callback function for when a file is loaded
createFileInput__params__multiple = Boolean: (Optional) optional, to allow multiple files to be selected
createVideo__description__0 = Creates an HTML5 <code>&lt;video&gt;</code> element in the DOM for simple playback of audio/video. Shown by default, can be hidden with .<a href="#/p5.Element/hide">hide()</a> and drawn into canvas using <a href="#/p5/image">image()</a>. The first parameter can be either a single string path to a video file, or an array of string paths to different formats of the same video. This is useful for ensuring that your video can play across different browsers, as each supports different formats. See <a href='https://developer.mozilla.org/en-US/docs/Web/HTML/Supported_media_formats'>this page</a> for further information about supported formats.
createVideo__returns = p5.MediaElement: pointer to video <a href="#/p5.MediaElement">p5.MediaElement</a>
createVideo__params__src = String|String[]: path to a video file, or array of paths for  supporting different browsers
createVideo__params__callback = Function: (Optional) callback function to be called upon  'canplaythrough' event fire, that is, when the  browser can play the media, and estimates that  enough data has been loaded to play the media  up to its end without having to stop for  further buffering of content
createAudio__description__0 = Creates a hidden HTML5 <code>&lt;audio&gt;</code> element in the DOM for simple audio playback. The first parameter can be either a single string path to a audio file, or an array of string paths to different formats of the same audio. This is useful for ensuring that your audio can play across different browsers, as each supports different formats. See <a href='https://developer.mozilla.org/en-US/docs/Web/HTML/Supported_media_formats'>this page for further information about supported formats</a>.
createAudio__returns = p5.MediaElement: pointer to audio <a href="#/p5.MediaElement">p5.MediaElement</a>
createAudio__params__src = String|String[]: (Optional) path to an audio file, or array of paths  for supporting different browsers
createAudio__params__callback = Function: (Optional) callback function to be called upon  'canplaythrough' event fire, that is, when the  browser can play the media, and estimates that  enough data has been loaded to play the media  up to its end without having to stop for  further buffering of content
createCapture__description__0 = Creates a new HTML5 <code>&lt;video&gt;</code> element that contains the audio/video feed from a webcam. The element is separate from the canvas and is displayed by default. The element can be hidden using .<a href="#/p5.Element/hide">hide()</a>. The feed can be drawn onto the canvas using <a href="#/p5/image">image()</a>. The loadedmetadata property can be used to detect when the element has fully loaded (see second example).
createCapture__description__1 = More specific properties of the feed can be passing in a Constraints object. See the <a href='http://w3c.github.io/mediacapture-main/getusermedia.html#media-track-constraints'> W3C spec</a> for possible properties. Note that not all of these are supported by all browsers.
createCapture__description__2 = <em>Security note</em>: A new browser security specification requires that getUserMedia, which is behind <a href="#/p5/createCapture">createCapture()</a>, only works when you're running the code locally, or on HTTPS. Learn more <a href='http://stackoverflow.com/questions/34197653/getusermedia-in-chrome-47-without-using-https'>here</a> and <a href='https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia'>here</a>.
createCapture__returns = p5.Element: capture video <a href="#/p5.Element">p5.Element</a>
createCapture__params__type = String|Constant|Object: type of capture, either VIDEO or  AUDIO if none specified, default both,  or a Constraints object
createCapture__params__callback = Function: (Optional) function to be called once  stream has loaded
createElement__description__0 = Creates element with given tag in the DOM with given content.
createElement__returns = p5.Element: pointer to <a href="#/p5.Element">p5.Element</a> holding created node
createElement__params__tag = String: tag for the new element
createElement__params__content = String: (Optional) html content to be inserted into the element
deviceOrientation__description__0 = The system variable deviceOrientation always contains the orientation of the device. The value of this variable will either be set 'landscape' or 'portrait'. If no data is available it will be set to 'undefined'. either LANDSCAPE or PORTRAIT.
accelerationX__description__0 = The system variable accelerationX always contains the acceleration of the device along the x axis. Value is represented as meters per second squared.
accelerationY__description__0 = The system variable accelerationY always contains the acceleration of the device along the y axis. Value is represented as meters per second squared.
accelerationZ__description__0 = The system variable accelerationZ always contains the acceleration of the device along the z axis. Value is represented as meters per second squared.
pAccelerationX__description__0 = The system variable pAccelerationX always contains the acceleration of the device along the x axis in the frame previous to the current frame. Value is represented as meters per second squared.
pAccelerationY__description__0 = The system variable pAccelerationY always contains the acceleration of the device along the y axis in the frame previous to the current frame. Value is represented as meters per second squared.
pAccelerationZ__description__0 = The system variable pAccelerationZ always contains the acceleration of the device along the z axis in the frame previous to the current frame. Value is represented as meters per second squared.
rotationX__description__0 = The system variable rotationX always contains the rotation of the device along the x axis. If the sketch <a href="#/p5/angleMode"> angleMode()</a> is set to DEGREES, the value will be -180 to 180. If it is set to RADIANS, the value will be -PI to PI.
rotationX__description__1 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
rotationY__description__0 = The system variable rotationY always contains the rotation of the device along the y axis. If the sketch <a href="#/p5/angleMode"> angleMode()</a> is set to DEGREES, the value will be -90 to 90. If it is set to RADIANS, the value will be -PI/2 to PI/2.
rotationY__description__1 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
rotationZ__description__0 = The system variable rotationZ always contains the rotation of the device along the z axis. If the sketch <a href="#/p5/angleMode"> angleMode()</a> is set to DEGREES, the value will be 0 to 360. If it is set to RADIANS, the value will be 0 to 2*PI.
rotationZ__description__1 = Unlike rotationX and rotationY, this variable is available for devices with a built-in compass only.
rotationZ__description__2 = Note: The order the rotations are called is important, ie. if used together, it must be called in the order Z-X-Y or there might be unexpected behaviour.
pRotationX__description__0 = The system variable pRotationX always contains the rotation of the device along the x axis in the frame previous to the current frame. If the sketch <a href="#/p5/angleMode"> angleMode()</a> is set to DEGREES, the value will be -180 to 180. If it is set to RADIANS, the value will be -PI to PI.
pRotationX__description__1 = pRotationX can also be used with rotationX to determine the rotate direction of the device along the X-axis.
pRotationY__description__0 = The system variable pRotationY always contains the rotation of the device along the y axis in the frame previous to the current frame. If the sketch <a href="#/p5/angleMode"> angleMode()</a> is set to DEGREES, the value will be -90 to 90. If it is set to RADIANS, the value will be -PI/2 to PI/2.
pRotationY__description__1 = pRotationY can also be used with rotationY to determine the rotate direction of the device along the Y-axis.
pRotationZ__description__0 = The system variable pRotationZ always contains the rotation of the device along the z axis in the frame previous to the current frame. If the sketch <a href="#/p5/angleMode"> angleMode()</a> is set to DEGREES, the value will be 0 to 360. If it is set to RADIANS, the value will be 0 to 2*PI.
pRotationZ__description__1 = pRotationZ can also be used with rotationZ to determine the rotate direction of the device along the Z-axis.
turnAxis__description__0 = When a device is rotated, the axis that triggers the <a href="#/p5/deviceTurned">deviceTurned()</a> method is stored in the turnAxis variable. The turnAxis variable is only defined within the scope of deviceTurned().
setMoveThreshold__description__0 = The <a href="#/p5/setMoveThreshold">setMoveThreshold()</a> function is used to set the movement threshold for the <a href="#/p5/deviceMoved">deviceMoved()</a> function. The default threshold is set to 0.5.
setMoveThreshold__params__value = Number: The threshold value
setShakeThreshold__description__0 = The <a href="#/p5/setShakeThreshold">setShakeThreshold()</a> function is used to set the movement threshold for the <a href="#/p5/deviceShaken">deviceShaken()</a> function. The default threshold is set to 30.
setShakeThreshold__params__value = Number: The threshold value
deviceMoved__description__0 = The <a href="#/p5/deviceMoved">deviceMoved()</a> function is called when the device is moved by more than the threshold value along X, Y or Z axis. The default threshold is set to 0.5. The threshold value can be changed using <a href="https://p5js.org/reference/#/p5/setMoveThreshold">setMoveThreshold()</a>.
deviceTurned__description__0 = The <a href="#/p5/deviceTurned">deviceTurned()</a> function is called when the device rotates by more than 90 degrees continuously.
deviceTurned__description__1 = The axis that triggers the <a href="#/p5/deviceTurned">deviceTurned()</a> method is stored in the turnAxis variable. The <a href="#/p5/deviceTurned">deviceTurned()</a> method can be locked to trigger on any axis: X, Y or Z by comparing the turnAxis variable to 'X', 'Y' or 'Z'.
deviceShaken__description__0 = The <a href="#/p5/deviceShaken">deviceShaken()</a> function is called when the device total acceleration changes of accelerationX and accelerationY values is more than the threshold value. The default threshold is set to 30. The threshold value can be changed using <a href="https://p5js.org/reference/#/p5/setShakeThreshold">setShakeThreshold()</a>.
keyIsPressed__description__0 = The boolean system variable <a href="#/p5/keyIsPressed">keyIsPressed</a> is true if any key is pressed and false if no keys are pressed.
key__description__0 = The system variable key always contains the value of the most recent key on the keyboard that was typed. To get the proper capitalization, it is best to use it within <a href="#/p5/keyTyped">keyTyped()</a>. For non-ASCII keys, use the <a href="#/p5/keyCode">keyCode</a> variable.
keyCode__description__0 = The variable keyCode is used to detect special keys such as BACKSPACE, DELETE, ENTER, RETURN, TAB, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW. You can also check for custom keys by looking up the keyCode of any key on a site like this: <a href="http://keycode.info/">keycode.info</a>.
keyPressed__description__0 = The <a href="#/p5/keyPressed">keyPressed()</a> function is called once every time a key is pressed. The keyCode for the key that was pressed is stored in the <a href="#/p5/keyCode">keyCode</a> variable.
keyPressed__description__1 = For non-ASCII keys, use the keyCode variable. You can check if the keyCode equals BACKSPACE, DELETE, ENTER, RETURN, TAB, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW.
keyPressed__description__2 = For ASCII keys, the key that was pressed is stored in the key variable. However, it does not distinguish between uppercase and lowercase. For this reason, it is recommended to use <a href="#/p5/keyTyped">keyTyped()</a> to read the key variable, in which the case of the variable will be distinguished.
keyPressed__description__3 = Because of how operating systems handle key repeats, holding down a key may cause multiple calls to <a href="#/p5/keyTyped">keyTyped()</a> (and <a href="#/p5/keyReleased">keyReleased()</a> as well). The rate of repeat is set by the operating system and how each computer is configured. Browsers may have different default behaviors attached to various key events. To prevent any default behavior for this event, add "return false" to the end of the method.
keyPressed__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyReleased__description__0 = The <a href="#/p5/keyReleased">keyReleased()</a> function is called once every time a key is released. See <a href="#/p5/key">key</a> and <a href="#/p5/keyCode">keyCode</a> for more information. Browsers may have different default behaviors attached to various key events. To prevent any default behavior for this event, add "return false" to the end of the method.
keyReleased__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyTyped__description__0 = The <a href="#/p5/keyTyped">keyTyped()</a> function is called once every time a key is pressed, but action keys such as Backspace, Delete, Ctrl, Shift, and Alt are ignored. If you are trying to detect a keyCode for one of these keys, use the <a href="#/p5/keyPressed">keyPressed()</a> function instead. The most recent key typed will be stored in the key variable.
keyTyped__description__1 = Because of how operating systems handle key repeats, holding down a key will cause multiple calls to <a href="#/p5/keyTyped">keyTyped()</a> (and <a href="#/p5/keyReleased">keyReleased()</a> as well). The rate of repeat is set by the operating system and how each computer is configured. Browsers may have different default behaviors attached to various key events. To prevent any default behavior for this event, add "return false" to the end of the method.
keyTyped__params__event = Object: (Optional) optional KeyboardEvent callback argument.
keyIsDown__description__0 = The <a href="#/p5/keyIsDown">keyIsDown()</a> function checks if the key is currently down, i.e. pressed. It can be used if you have an object that moves, and you want several keys to be able to affect its behaviour simultaneously, such as moving a sprite diagonally. You can put in any number representing the keyCode of the key, or use any of the variable <a href="#/p5/keyCode">keyCode</a> names listed <a href="http://p5js.org/reference/#p5/keyCode">here</a>.
keyIsDown__returns = Boolean: whether key is down or not
keyIsDown__params__code = Number: The key to check for.
movedX__description__0 = The variable movedX contains the horizontal movement of the mouse since the last frame
movedY__description__0 = The variable movedY contains the vertical movement of the mouse since the last frame
mouseX__description__0 = The system variable mouseX always contains the current horizontal position of the mouse, relative to (0, 0) of the canvas. The value at the top-left corner is (0, 0) for 2-D and (-width/2, -height/2) for WebGL. If touch is used instead of mouse input, mouseX will hold the x value of the most recent touch point.
mouseY__description__0 = The system variable mouseY always contains the current vertical position of the mouse, relative to (0, 0) of the canvas. The value at the top-left corner is (0, 0) for 2-D and (-width/2, -height/2) for WebGL. If touch is used instead of mouse input, mouseY will hold the y value of the most recent touch point.
pmouseX__description__0 = The system variable pmouseX always contains the horizontal position of the mouse or finger in the frame previous to the current frame, relative to (0, 0) of the canvas. The value at the top-left corner is (0, 0) for 2-D and (-width/2, -height/2) for WebGL. Note: pmouseX will be reset to the current mouseX value at the start of each touch event.
pmouseY__description__0 = The system variable pmouseY always contains the vertical position of the mouse or finger in the frame previous to the current frame, relative to (0, 0) of the canvas. The value at the top-left corner is (0, 0) for 2-D and (-width/2, -height/2) for WebGL. Note: pmouseY will be reset to the current mouseY value at the start of each touch event.
winMouseX__description__0 = The system variable winMouseX always contains the current horizontal position of the mouse, relative to (0, 0) of the window.
winMouseY__description__0 = The system variable winMouseY always contains the current vertical position of the mouse, relative to (0, 0) of the window.
pwinMouseX__description__0 = The system variable pwinMouseX always contains the horizontal position of the mouse in the frame previous to the current frame, relative to (0, 0) of the window. Note: pwinMouseX will be reset to the current winMouseX value at the start of each touch event.
pwinMouseY__description__0 = The system variable pwinMouseY always contains the vertical position of the mouse in the frame previous to the current frame, relative to (0, 0) of the window. Note: pwinMouseY will be reset to the current winMouseY value at the start of each touch event.
mouseButton__description__0 = p5 automatically tracks if the mouse button is pressed and which button is pressed. The value of the system variable mouseButton is either LEFT, RIGHT, or CENTER depending on which button was pressed last. Warning: different browsers may track mouseButton differently.
mouseIsPressed__description__0 = The boolean system variable mouseIsPressed is true if the mouse is pressed and false if not.
mouseMoved__description__0 = The <a href="#/p5/mouseMoved">mouseMoved()</a> function is called every time the mouse moves and a mouse button is not pressed. Browsers may have different default behaviors attached to various mouse events. To prevent any default behavior for this event, add "return false" to the end of the method.
mouseMoved__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseDragged__description__0 = The <a href="#/p5/mouseDragged">mouseDragged()</a> function is called once every time the mouse moves and a mouse button is pressed. If no <a href="#/p5/mouseDragged">mouseDragged()</a> function is defined, the <a href="#/p5/touchMoved">touchMoved()</a> function will be called instead if it is defined. Browsers may have different default behaviors attached to various mouse events. To prevent any default behavior for this event, add "return false" to the end of the method.
mouseDragged__params__event = Object: (Optional) optional MouseEvent callback argument.
mousePressed__description__0 = The <a href="#/p5/mousePressed">mousePressed()</a> function is called once after every time a mouse button is pressed. The mouseButton variable (see the related reference entry) can be used to determine which button has been pressed. If no <a href="#/p5/mousePressed">mousePressed()</a> function is defined, the <a href="#/p5/touchStarted">touchStarted()</a> function will be called instead if it is defined. Browsers may have different default behaviors attached to various mouse events. To prevent any default behavior for this event, add "return false" to the end of the method.
mousePressed__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseReleased__description__0 = The <a href="#/p5/mouseReleased">mouseReleased()</a> function is called every time a mouse button is released. If no <a href="#/p5/mouseReleased">mouseReleased()</a> function is defined, the <a href="#/p5/touchEnded">touchEnded()</a> function will be called instead if it is defined. Browsers may have different default behaviors attached to various mouse events. To prevent any default behavior for this event, add "return false" to the end of the method.
mouseReleased__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseClicked__description__0 = The <a href="#/p5/mouseClicked">mouseClicked()</a> function is called once after a mouse button has been pressed and then released. Browsers handle clicks differently, so this function is only guaranteed to be run when the left mouse button is clicked. To handle other mouse buttons being pressed or released, see <a href="#/p5/mousePressed">mousePressed()</a> or <a href="#/p5/mouseReleased">mouseReleased()</a>. Browsers may have different default behaviors attached to various mouse events. To prevent any default behavior for this event, add "return false" to the end of the method.
mouseClicked__params__event = Object: (Optional) optional MouseEvent callback argument.
doubleClicked__description__0 = The <a href="#/p5/doubleClicked">doubleClicked()</a> function is executed every time a event listener has detected a dblclick event which is a part of the DOM L3 specification. The doubleClicked event is fired when a pointing device button (usually a mouse's primary button) is clicked twice on a single element. For more info on the dblclick event refer to mozilla's documentation here: <a href="https://developer.mozilla.org/en-US/docs/Web/Events/dblclick">https://developer.mozilla.org/en-US/docs/Web/Events/dblclick</a>
doubleClicked__params__event = Object: (Optional) optional MouseEvent callback argument.
mouseWheel__description__0 = The function <a href="#/p5/mouseWheel">mouseWheel()</a> is executed every time a vertical mouse wheel event is detected either triggered by an actual mouse wheel or by a touchpad. The event.delta property returns the amount the mouse wheel have scrolled. The values can be positive or negative depending on the scroll direction (on OS X with "natural" scrolling enabled, the signs are inverted). Browsers may have different default behaviors attached to various mouse events. To prevent any default behavior for this event, add "return false" to the end of the method. Due to the current support of the "wheel" event on Safari, the function may only work as expected if "return false" is included while using Safari.
mouseWheel__params__event = Object: (Optional) optional WheelEvent callback argument.
requestPointerLock__description__0 = The function <a href="#/p5/requestPointerLock">requestPointerLock()</a> locks the pointer to its current position and makes it invisible. Use <a href="#/p5/movedX">movedX</a> and <a href="#/p5/movedY">movedY</a> to get the difference the mouse was moved since the last call of draw. Note that not all browsers support this feature. This enables you to create experiences that aren't limited by the mouse moving out of the screen even if it is repeatedly moved into one direction. For example, a first person perspective experience.
exitPointerLock__description__0 = The function <a href="#/p5/exitPointerLock">exitPointerLock()</a> exits a previously triggered <a href="#/p5/requestPointerLock">pointer Lock</a> for example to make ui elements usable etc
touches__description__0 = The system variable touches[] contains an array of the positions of all current touch points, relative to (0, 0) of the canvas, and IDs identifying a unique touch as it moves. Each element in the array is an object with x, y, and id properties.
touches__description__1 = The touches[] array is not supported on Safari and IE on touch-based desktops (laptops).
touchStarted__description__0 = The touchStarted() function is called once after every time a touch is registered. If no <a href="#/p5/touchStarted">touchStarted()</a> function is defined, the <a href="#/p5/mousePressed">mousePressed()</a> function will be called instead if it is defined. Browsers may have different default behaviors attached to various touch events. To prevent any default behavior for this event, add "return false" to the end of the method.
touchStarted__params__event = Object: (Optional) optional TouchEvent callback argument.
touchMoved__description__0 = The <a href="#/p5/touchMoved">touchMoved()</a> function is called every time a touch move is registered. If no <a href="#/p5/touchMoved">touchMoved()</a> function is defined, the <a href="#/p5/mouseDragged">mouseDragged()</a> function will be called instead if it is defined. Browsers may have different default behaviors attached to various touch events. To prevent any default behavior for this event, add "return false" to the end of the method.
touchMoved__params__event = Object: (Optional) optional TouchEvent callback argument.
touchEnded__description__0 = The <a href="#/p5/touchEnded">touchEnded()</a> function is called every time a touch ends. If no <a href="#/p5/touchEnded">touchEnded()</a> function is defined, the <a href="#/p5/mouseReleased">mouseReleased()</a> function will be called instead if it is defined. Browsers may have different default behaviors attached to various touch events. To prevent any default behavior for this event, add "return false" to the end of the method.
touchEnded__params__event = Object: (Optional) optional TouchEvent callback argument.
createImage__description__0 = Creates a new <a href="#/p5.Image">p5.Image</a> (the datatype for storing images). This provides a fresh buffer of pixels to play with. Set the size of the buffer with the width and height parameters.
createImage__description__1 = .<a href="#/p5.Image/pixels">pixels</a> gives access to an array containing the values for all the pixels in the display window. These values are numbers. This array is the size (including an appropriate factor for the <a href="#/p5/pixelDensity">pixelDensity</a>) of the display window x4, representing the R, G, B, A values in order for each pixel, moving from left to right across each row, then down each column. See .<a href="#/p5.Image/pixels">pixels</a> for more info. It may also be simpler to use <a href="#/p5.Image/set">set()</a> or <a href="#/p5.Image/get">get()</a>.
createImage__description__2 = Before accessing the pixels of an image, the data must loaded with the <a href="#/p5.Image/loadPixels">loadPixels()</a> function. After the array data has been modified, the <a href="#/p5.Image/updatePixels">updatePixels()</a> function must be run to update the changes.
createImage__returns = p5.Image: the <a href="#/p5.Image">p5.Image</a> object
createImage__params__width = Integer: width in pixels
createImage__params__height = Integer: height in pixels
saveCanvas__description__0 = Save the current canvas as an image. The browser will either save the file immediately, or prompt the user with a dialogue window.
saveCanvas__params__selectedCanvas = p5.Element|HTMLCanvasElement: a variable  representing a specific html5 canvas (optional)
saveCanvas__params__filename = String (Optional)
saveCanvas__params__extension = String: (Optional) 'jpg' or 'png'
saveFrames__description__0 = Capture a sequence of frames that can be used to create a movie. Accepts a callback. For example, you may wish to send the frames to a server where they can be stored or converted into a movie. If no callback is provided, the browser will pop up save dialogues in an attempt to download all of the images that have just been created. With the callback provided the image data isn't saved by default but instead passed as an argument to the callback function as an array of objects, with the size of array equal to the total number of frames.
saveFrames__description__1 = Note that <a href="#/p5.Image/saveFrames">saveFrames()</a> will only save the first 15 frames of an animation. To export longer animations, you might look into a library like <a href="https://github.com/spite/ccapture.js/">ccapture.js</a>.
saveFrames__params__filename = String
saveFrames__params__extension = String: 'jpg' or 'png'
saveFrames__params__duration = Number: Duration in seconds to save the frames for.
saveFrames__params__framerate = Number: Framerate to save the frames in.
saveFrames__params__callback = Function(Array): (Optional) A callback function that will be executed  to handle the image data. This function  should accept an array as argument. The  array will contain the specified number of  frames of objects. Each object has three  properties: imageData - an  image/octet-stream, filename and extension.
loadImage__description__0 = Loads an image from a path and creates a <a href="#/p5.Image">p5.Image</a> from it.
loadImage__description__1 = The image may not be immediately available for rendering. If you want to ensure that the image is ready before doing anything with it, place the <a href="#/p5/loadImage">loadImage()</a> call in <a href="#/p5/preload">preload()</a>. You may also supply a callback function to handle the image when it's ready.
loadImage__description__2 = The path to the image should be relative to the HTML file that links in your sketch. Loading an image from a URL or other remote location may be blocked due to your browser's built-in security.
loadImage__description__3 = You can also pass in a string of a base64 encoded image as an alternative to the file path. Remember to add "data:image/png;base64," in front of the string.
loadImage__returns = p5.Image: the <a href="#/p5.Image">p5.Image</a> object
loadImage__params__path = String: Path of the image to be loaded
loadImage__params__successCallback = function(p5.Image): (Optional) Function to be called once  the image is loaded. Will be passed the  <a href="#/p5.Image">p5.Image</a>.
loadImage__params__failureCallback = Function(Event): (Optional) called with event error if  the image fails to load.
image__description__0 = Draw an image to the p5.js canvas.
image__description__1 = This function can be used with different numbers of parameters. The simplest use requires only three parameters: img, x, and y—where (x, y) is the position of the image. Two more parameters can optionally be added to specify the width and height of the image.
image__description__2 = This function can also be used with all eight Number parameters. To differentiate between all these parameters, p5.js uses the language of "destination rectangle" (which corresponds to "dx", "dy", etc.) and "source image" (which corresponds to "sx", "sy", etc.) below. Specifying the "source image" dimensions can be useful when you want to display a subsection of the source image instead of the whole thing. Here's a diagram to explain further: <img src="assets/drawImage.png"></img>
image__params__img = p5.Image|p5.Element|p5.Texture: the image to display
image__params__x = Number: the x-coordinate of the top-left corner of the image
image__params__y = Number: the y-coordinate of the top-left corner of the image
image__params__width = Number: (Optional) the width to draw the image
image__params__height = Number: (Optional) the height to draw the image
image__params__dx = Number: the x-coordinate of the destination  rectangle in which to draw the source image
image__params__dy = Number: the y-coordinate of the destination  rectangle in which to draw the source image
image__params__dWidth = Number: the width of the destination rectangle
image__params__dHeight = Number: the height of the destination rectangle
image__params__sx = Number: the x-coordinate of the subsection of the source image to draw into the destination rectangle
image__params__sy = Number: the y-coordinate of the subsection of the source image to draw into the destination rectangle
image__params__sWidth = Number: (Optional) the width of the subsection of the  source image to draw into the destination  rectangle
image__params__sHeight = Number: (Optional) the height of the subsection of the  source image to draw into the destination rectangle
tint__description__0 = Sets the fill value for displaying images. Images can be tinted to specified colors or made transparent by including an alpha value.
tint__description__1 = To apply transparency to an image without affecting its color, use white as the tint color and specify an alpha value. For instance, tint(255, 128) will make an image 50% transparent (assuming the default alpha range of 0-255, which can be changed with <a href="#/p5/colorMode">colorMode()</a>).
tint__description__2 = The value for the gray parameter must be less than or equal to the current maximum value as specified by <a href="#/p5/colorMode">colorMode()</a>. The default maximum value is 255.
tint__params__v1 = Number: red or hue value relative to  the current color range
tint__params__v2 = Number: green or saturation value  relative to the current color range
tint__params__v3 = Number: blue or brightness value  relative to the current color range
tint__params__alpha = Number (Optional)
tint__params__value = String: a color string
tint__params__gray = Number: a gray value
tint__params__values = Number[]: an array containing the red,green,blue &  and alpha components of the color
tint__params__color = p5.Color: the tint color
noTint__description__0 = Removes the current fill value for displaying images and reverts to displaying images with their original hues.
imageMode__description__0 = Set image mode. Modifies the location from which images are drawn by changing the way in which parameters given to <a href="#/p5/image">image()</a> are interpreted. The default mode is imageMode(CORNER), which interprets the second and third parameters of <a href="#/p5/image">image()</a> as the upper-left corner of the image. If two additional parameters are specified, they are used to set the image's width and height.
imageMode__description__1 = imageMode(CORNERS) interprets the second and third parameters of <a href="#/p5/image">image()</a> as the location of one corner, and the fourth and fifth parameters as the opposite corner.
imageMode__description__2 = imageMode(CENTER) interprets the second and third parameters of <a href="#/p5/image">image()</a> as the image's center point. If two additional parameters are specified, they are used to set the image's width and height.
imageMode__params__mode = Constant: either CORNER, CORNERS, or CENTER
pixels__description__0 = <a href='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference /Global_Objects/Uint8ClampedArray' target='_blank'>Uint8ClampedArray</a> containing the values for all the pixels in the display window. These values are numbers. This array is the size (include an appropriate factor for <a href="#/p5/pixelDensity">pixelDensity</a>) of the display window x4, representing the R, G, B, A values in order for each pixel, moving from left to right across each row, then down each column. Retina and other high density displays will have more pixels[] (by a factor of pixelDensity^2). For example, if the image is 100×100 pixels, there will be 40,000. On a retina display, there will be 160,000.
pixels__description__1 = The first four values (indices 0-3) in the array will be the R, G, B, A values of the pixel at (0, 0). The second four values (indices 4-7) will contain the R, G, B, A values of the pixel at (1, 0). More generally, to set values for a pixel at (x, y): <pre><code class="language-javascript">let d = pixelDensity(); for (let i = 0; i < d; i++) {"{"}  for (let j = 0; j < d; j++) {"{"}  // loop over  index = 4 * ((y * d + j) * width * d + (x * d + i));  pixels[index] = r;  pixels[index+1] = g;  pixels[index+2] = b;  pixels[index+3] = a;  {"}"} {"}"}</code></pre>
pixels__description__2 = While the above method is complex, it is flexible enough to work with any pixelDensity. Note that <a href="#/p5/set">set()</a> will automatically take care of setting all the appropriate values in <a href="#/p5/pixels">pixels[]</a> for a given (x, y) at any pixelDensity, but the performance may not be as fast when lots of modifications are made to the pixel array.
pixels__description__3 = Before accessing this array, the data must loaded with the <a href="#/p5/loadPixels">loadPixels()</a> function. After the array data has been modified, the <a href="#/p5/updatePixels">updatePixels()</a> function must be run to update the changes.
pixels__description__4 = Note that this is not a standard javascript array. This means that standard javascript functions such as <a href="#/p5/slice">slice()</a> or <a href="#/p5/arrayCopy">arrayCopy()</a> do not work.
blend__description__0 = Copies a region of pixels from one image to another, using a specified blend mode to do the operation.
blend__params__srcImage = p5.Image: source image
blend__params__sx = Integer: X coordinate of the source's upper left corner
blend__params__sy = Integer: Y coordinate of the source's upper left corner
blend__params__sw = Integer: source image width
blend__params__sh = Integer: source image height
blend__params__dx = Integer: X coordinate of the destination's upper left corner
blend__params__dy = Integer: Y coordinate of the destination's upper left corner
blend__params__dw = Integer: destination image width
blend__params__dh = Integer: destination image height
blend__params__blendMode = Constant: the blend mode. either  BLEND, DARKEST, LIGHTEST, DIFFERENCE,  MULTIPLY, EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT,  SOFT_LIGHT, DODGE, BURN, ADD or NORMAL.
copy__description__0 = Copies a region of the canvas to another region of the canvas and copies a region of pixels from an image used as the srcImg parameter into the canvas srcImage is specified this is used as the source. If the source and destination regions aren't the same size, it will automatically resize source pixels to fit the specified target region.
copy__params__srcImage = p5.Image|p5.Element: source image
copy__params__sx = Integer: X coordinate of the source's upper left corner
copy__params__sy = Integer: Y coordinate of the source's upper left corner
copy__params__sw = Integer: source image width
copy__params__sh = Integer: source image height
copy__params__dx = Integer: X coordinate of the destination's upper left corner
copy__params__dy = Integer: Y coordinate of the destination's upper left corner
copy__params__dw = Integer: destination image width
copy__params__dh = Integer: destination image height
filter__description__0 = Applies a filter to the canvas. The presets options are:
filter__description__1 = THRESHOLD Converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. The parameter must be between 0.0 (black) and 1.0 (white). If no level is specified, 0.5 is used.
filter__description__2 = GRAY Converts any colors in the image to grayscale equivalents. No parameter is used.
filter__description__3 = OPAQUE Sets the alpha channel to entirely opaque. No parameter is used.
filter__description__4 = INVERT Sets each pixel to its inverse value. No parameter is used.
filter__description__5 = POSTERIZE Limits each channel of the image to the number of colors specified as the parameter. The parameter can be set to values between 2 and 255, but results are most noticeable in the lower ranges.
filter__description__6 = BLUR Executes a Gaussian blur with the level parameter specifying the extent of the blurring. If no parameter is used, the blur is equivalent to Gaussian blur of radius 1. Larger values increase the blur.
filter__description__7 = ERODE Reduces the light areas. No parameter is used.
filter__description__8 = DILATE Increases the light areas. No parameter is used.
filter__description__9 = filter() does not work in WEBGL mode. A similar effect can be achieved in WEBGL mode using custom shaders. Adam Ferriss has written a <a href="https://github.com/aferriss/p5jsShaderExamples" target='_blank'>selection of shader examples</a> that contains many of the effects present in the filter examples.
filter__params__filterType = Constant: either THRESHOLD, GRAY, OPAQUE, INVERT,  POSTERIZE, BLUR, ERODE, DILATE or BLUR.  See Filters.js for docs on  each available filter
filter__params__filterParam = Number: (Optional) an optional parameter unique  to each filter, see above
get__description__0 = Get a region of pixels, or a single pixel, from the canvas.
get__description__1 = Returns an array of [R,G,B,A] values for any pixel or grabs a section of an image. If no parameters are specified, the entire image is returned. Use the x and y parameters to get the value of one pixel. Get a section of the display window by specifying additional w and h parameters. When getting an image, the x and y parameters define the coordinates for the upper-left corner of the image, regardless of the current <a href="#/p5/imageMode">imageMode()</a>.
get__description__2 = Getting the color of a single pixel with get(x, y) is easy, but not as fast as grabbing the data directly from <a href="#/p5/pixels">pixels[]</a>. The equivalent statement to get(x, y) using <a href="#/p5/pixels">pixels[]</a> with pixel density d is <pre><code class="language-javascript">let x, y, d; // set these to the coordinates let off = (y * width + x) * d * 4; let components = [  pixels[off],  pixels[off + 1],  pixels[off + 2],  pixels[off + 3] ]; print(components);</code></pre>
get__description__3 = See the reference for <a href="#/p5/pixels">pixels[]</a> for more information.
get__description__4 = If you want to extract an array of colors or a subimage from an p5.Image object, take a look at <a href="#/p5.Image/get">p5.Image.get()</a>
get__returns = p5.Image: the rectangle <a href="#/p5.Image">p5.Image</a>
get__params__x = Number: x-coordinate of the pixel
get__params__y = Number: y-coordinate of the pixel
get__params__w = Number: width
get__params__h = Number: height
loadPixels__description__0 = Loads the pixel data for the display window into the <a href="#/p5/pixels">pixels[]</a> array. This function must always be called before reading from or writing to <a href="#/p5/pixels">pixels[]</a>. Note that only changes made with <a href="#/p5/set">set()</a> or direct manipulation of <a href="#/p5/pixels">pixels[]</a> will occur.
set__description__0 = Changes the color of any pixel, or writes an image directly to the display window. The x and y parameters specify the pixel to change and the c parameter specifies the color value. This can be a <a href="#/p5.Color">p5.Color</a> object, or [R, G, B, A] pixel array. It can also be a single grayscale value. When setting an image, the x and y parameters define the coordinates for the upper-left corner of the image, regardless of the current <a href="#/p5/imageMode">imageMode()</a>.
set__description__1 = After using <a href="#/p5/set">set()</a>, you must call <a href="#/p5/updatePixels">updatePixels()</a> for your changes to appear. This should be called once all pixels have been set, and must be called before calling .<a href="#/p5/get">get()</a> or drawing the image.
set__description__2 = Setting the color of a single pixel with set(x, y) is easy, but not as fast as putting the data directly into <a href="#/p5/pixels">pixels[]</a>. Setting the <a href="#/p5/pixels">pixels[]</a> values directly may be complicated when working with a retina display, but will perform better when lots of pixels need to be set directly on every loop. See the reference for <a href="#/p5/pixels">pixels[]</a> for more information.
set__params__x = Number: x-coordinate of the pixel
set__params__y = Number: y-coordinate of the pixel
set__params__c = Number|Number[]|Object: insert a grayscale value | a pixel array |  a <a href="#/p5.Color">p5.Color</a> object | a <a href="#/p5.Image">p5.Image</a> to copy
updatePixels__description__0 = Updates the display window with the data in the <a href="#/p5/pixels">pixels[]</a> array. Use in conjunction with <a href="#/p5/loadPixels">loadPixels()</a>. If you're only reading pixels from the array, there's no need to call <a href="#/p5/updatePixels">updatePixels()</a> — updating is only necessary to apply changes. <a href="#/p5/updatePixels">updatePixels()</a> should be called anytime the pixels array is manipulated or <a href="#/p5/set">set()</a> is called, and only changes made with <a href="#/p5/set">set()</a> or direct changes to <a href="#/p5/pixels">pixels[]</a> will occur.
updatePixels__params__x = Number: (Optional) x-coordinate of the upper-left corner of region  to update
updatePixels__params__y = Number: (Optional) y-coordinate of the upper-left corner of region  to update
updatePixels__params__w = Number: (Optional) width of region to update
updatePixels__params__h = Number: (Optional) height of region to update
loadJSON__description__0 = Loads a JSON file from a file or a URL, and returns an Object. Note that even if the JSON file contains an Array, an Object will be returned with index numbers as keys.
loadJSON__description__1 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. JSONP is supported via a polyfill and you can pass in as the second argument an object with definitions of the json callback following the syntax specified <a href="https://github.com/camsong/ fetch-jsonp">here</a>.
loadJSON__description__2 = This method is suitable for fetching files up to size of 64MB.
loadJSON__returns = Object|Array: JSON data
loadJSON__params__path = String: name of the file or url to load
loadJSON__params__jsonpOptions = Object: (Optional) options object for jsonp related settings
loadJSON__params__datatype = String: (Optional) "json" or "jsonp"
loadJSON__params__callback = Function: (Optional) function to be executed after  <a href="#/p5/loadJSON">loadJSON()</a> completes, data is passed  in as first argument
loadJSON__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
loadStrings__description__0 = Reads the contents of a file and creates a String array of its individual lines. If the name of the file is used as the parameter, as in the above example, the file must be located in the sketch directory/folder.
loadStrings__description__1 = Alternatively, the file maybe be loaded from anywhere on the local computer using an absolute path (something that starts with / on Unix and Linux, or a drive letter on Windows), or the filename parameter can be a URL for a file found on a network.
loadStrings__description__2 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed.
loadStrings__description__3 = This method is suitable for fetching files up to size of 64MB.
loadStrings__returns = String[]: Array of Strings
loadStrings__params__filename = String: name of the file or url to load
loadStrings__params__callback = Function: (Optional) function to be executed after <a href="#/p5/loadStrings">loadStrings()</a>  completes, Array is passed in as first  argument
loadStrings__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
loadTable__description__0 = Reads the contents of a file or URL and creates a <a href="#/p5.Table">p5.Table</a> object with its values. If a file is specified, it must be located in the sketch's "data" folder. The filename parameter can also be a URL to a file found online. By default, the file is assumed to be comma-separated (in CSV format). Table only looks for a header row if the 'header' option is included.
loadTable__description__1 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. Calling <a href="#/p5/loadTable">loadTable()</a> inside <a href="#/p5/preload">preload()</a> guarantees to complete the operation before <a href="#/p5/setup">setup()</a> and <a href="#/p5/draw">draw()</a> are called. Outside of <a href="#/p5/preload">preload()</a>, you may supply a callback function to handle the object:
loadTable__description__2 = All files loaded and saved use UTF-8 encoding. This method is suitable for fetching files up to size of 64MB.
loadTable__returns = Object: <a href="#/p5.Table">Table</a> object containing data
loadTable__params__filename = String: name of the file or URL to load
loadTable__params__extension = String: (Optional) parse the table by comma-separated values "csv", semicolon-separated  values "ssv", or tab-separated values "tsv"
loadTable__params__header = String: (Optional) "header" to indicate table has header row
loadTable__params__callback = Function: (Optional) function to be executed after  <a href="#/p5/loadTable">loadTable()</a> completes. On success, the  <a href="#/p5.Table">Table</a> object is passed in as the  first argument.
loadTable__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
loadXML__description__0 = Reads the contents of a file and creates an XML object with its values. If the name of the file is used as the parameter, as in the above example, the file must be located in the sketch directory/folder.
loadXML__description__1 = Alternatively, the file maybe be loaded from anywhere on the local computer using an absolute path (something that starts with / on Unix and Linux, or a drive letter on Windows), or the filename parameter can be a URL for a file found on a network.
loadXML__description__2 = This method is asynchronous, meaning it may not finish before the next line in your sketch is executed. Calling <a href="#/p5/loadXML">loadXML()</a> inside <a href="#/p5/preload">preload()</a> guarantees to complete the operation before <a href="#/p5/setup">setup()</a> and <a href="#/p5/draw">draw()</a> are called.
loadXML__description__3 = Outside of <a href="#/p5/preload">preload()</a>, you may supply a callback function to handle the object.
loadXML__description__4 = This method is suitable for fetching files up to size of 64MB.
loadXML__returns = Object: XML object containing data
loadXML__params__filename = String: name of the file or URL to load
loadXML__params__callback = Function: (Optional) function to be executed after <a href="#/p5/loadXML">loadXML()</a>  completes, XML object is passed in as  first argument
loadXML__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
loadBytes__description__0 = This method is suitable for fetching files up to size of 64MB.
loadBytes__returns = Object: an object whose 'bytes' property will be the loaded buffer
loadBytes__params__file = String: name of the file or URL to load
loadBytes__params__callback = Function: (Optional) function to be executed after <a href="#/p5/loadBytes">loadBytes()</a>  completes
loadBytes__params__errorCallback = Function: (Optional) function to be executed if there  is an error
httpGet__description__0 = Method for executing an HTTP GET request. If data type is not specified, p5 will try to guess based on the URL, defaulting to text. This is equivalent to calling <code>httpDo(path, 'GET')</code>. The 'binary' datatype will return a Blob object, and the 'arrayBuffer' datatype will return an ArrayBuffer which can be used to initialize typed arrays (such as Uint8Array).
httpGet__returns = Promise: A promise that resolves with the data when the operation  completes successfully or rejects with the error after  one occurs.
httpGet__params__path = String: name of the file or url to load
httpGet__params__datatype = String: (Optional) "json", "jsonp", "binary", "arrayBuffer",  "xml", or "text"
httpGet__params__data = Object|Boolean: (Optional) param data passed sent with request
httpGet__params__callback = Function: (Optional) function to be executed after  <a href="#/p5/httpGet">httpGet()</a> completes, data is passed in  as first argument
httpGet__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
httpPost__description__0 = Method for executing an HTTP POST request. If data type is not specified, p5 will try to guess based on the URL, defaulting to text. This is equivalent to calling <code>httpDo(path, 'POST')</code>.
httpPost__returns = Promise: A promise that resolves with the data when the operation  completes successfully or rejects with the error after  one occurs.
httpPost__params__path = String: name of the file or url to load
httpPost__params__datatype = String: (Optional) "json", "jsonp", "xml", or "text".  If omitted, <a href="#/p5/httpPost">httpPost()</a> will guess.
httpPost__params__data = Object|Boolean: (Optional) param data passed sent with request
httpPost__params__callback = Function: (Optional) function to be executed after  <a href="#/p5/httpPost">httpPost()</a> completes, data is passed in  as first argument
httpPost__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
httpDo__description__0 = Method for executing an HTTP request. If data type is not specified, p5 will try to guess based on the URL, defaulting to text. For more advanced use, you may also pass in the path as the first argument and a object as the second argument, the signature follows the one specified in the Fetch API specification. This method is suitable for fetching files up to size of 64MB when "GET" is used.
httpDo__returns = Promise: A promise that resolves with the data when the operation  completes successfully or rejects with the error after  one occurs.
httpDo__params__path = String: name of the file or url to load
httpDo__params__method = String: (Optional) either "GET", "POST", or "PUT",  defaults to "GET"
httpDo__params__datatype = String: (Optional) "json", "jsonp", "xml", or "text"
httpDo__params__data = Object: (Optional) param data passed sent with request
httpDo__params__callback = Function: (Optional) function to be executed after  <a href="#/p5/httpGet">httpGet()</a> completes, data is passed in  as first argument
httpDo__params__errorCallback = Function: (Optional) function to be executed if  there is an error, response is passed  in as first argument
httpDo__params__options = Object: Request object options as documented in the  "fetch" API <a href="https://developer.mozilla.org/en/docs/Web/API/Fetch_API">reference</a>
createWriter__returns = p5.PrintWriter:
createWriter__params__name = String: name of the file to be created
createWriter__params__extension = String (Optional)
save__description__0 = Saves a given element(image, text, json, csv, wav, or html) to the client's computer. The first parameter can be a pointer to element we want to save. The element can be one of <a href="#/p5.Element">p5.Element</a>,an Array of Strings, an Array of JSON, a JSON object, a <a href="#/p5.Table">p5.Table </a>, a <a href="#/p5.Image">p5.Image</a>, or a p5.SoundFile (requires p5.sound). The second parameter is a filename (including extension).The third parameter is for options specific to this type of object. This method will save a file that fits the given parameters. If it is called without specifying an element, by default it will save the whole canvas as an image file. You can optionally specify a filename as the first parameter in such a case. <strong>Note that it is not recommended to call this method within draw, as it will open a new save dialog on every render.</strong>
save__params__objectOrFilename = Object|String: (Optional) If filename is provided, will  save canvas as an image with  either png or jpg extension  depending on the filename.  If object is provided, will  save depending on the object  and filename (see examples  above).
save__params__filename = String: (Optional) If an object is provided as the first  parameter, then the second parameter  indicates the filename,  and should include an appropriate  file extension (see examples above).
save__params__options = Boolean|String: (Optional) Additional options depend on  filetype. For example, when saving JSON,  <code>true</code> indicates that the  output will be optimized for filesize,  rather than readability.
saveJSON__description__0 = Writes the contents of an Array or a JSON object to a .json file. The file saving process and location of the saved file will vary between web browsers.
saveJSON__params__json = Array|Object
saveJSON__params__filename = String
saveJSON__params__optimize = Boolean: (Optional) If true, removes line breaks  and spaces from the output  file to optimize filesize  (but not readability).
saveStrings__description__0 = Writes an array of Strings to a text file, one line per String. The file saving process and location of the saved file will vary between web browsers.
saveStrings__params__list = String[]: string array to be written
saveStrings__params__filename = String: filename for output
saveStrings__params__extension = String: (Optional) the filename's extension
saveStrings__params__isCRLF = Boolean: (Optional) if true, change line-break to CRLF
saveTable__description__0 = Writes the contents of a <a href="#/p5.Table">Table</a> object to a file. Defaults to a text file with comma-separated-values ('csv') but can also use tab separation ('tsv'), or generate an HTML table ('html'). The file saving process and location of the saved file will vary between web browsers.
saveTable__params__Table = p5.Table: the <a href="#/p5.Table">Table</a> object to save to a file
saveTable__params__filename = String: the filename to which the Table should be saved
saveTable__params__options = String: (Optional) can be one of "tsv", "csv", or "html"
abs__description__0 = Calculates the absolute value (magnitude) of a number. Maps to Math.abs(). The absolute value of a number is always positive.
abs__returns = Number: absolute value of given number
abs__params__n = Number: number to compute
ceil__description__0 = Calculates the closest int value that is greater than or equal to the value of the parameter. Maps to Math.ceil(). For example, ceil(9.03) returns the value 10.
ceil__returns = Integer: rounded up number
ceil__params__n = Number: number to round up
constrain__description__0 = Constrains a value between a minimum and maximum value.
constrain__returns = Number: constrained number
constrain__params__n = Number: number to constrain
constrain__params__low = Number: minimum limit
constrain__params__high = Number: maximum limit
dist__description__0 = Calculates the distance between two points, in either two or three dimensions. If you looking for distance between two vectors see <a herf="#/p5.Vector/dist">dist()</a>
dist__returns = Number: distance between the two points
dist__params__x1 = Number: x-coordinate of the first point
dist__params__y1 = Number: y-coordinate of the first point
dist__params__x2 = Number: x-coordinate of the second point
dist__params__y2 = Number: y-coordinate of the second point
dist__params__z1 = Number: z-coordinate of the first point
dist__params__z2 = Number: z-coordinate of the second point
exp__description__0 = Returns Euler's number e (2.71828...) raised to the power of the n parameter. Maps to Math.exp().
exp__returns = Number: e^n
exp__params__n = Number: exponent to raise
floor__description__0 = Calculates the closest int value that is less than or equal to the value of the parameter. Maps to Math.floor().
floor__returns = Integer: rounded down number
floor__params__n = Number: number to round down
lerp__description__0 = Calculates a number between two numbers at a specific increment. The amt parameter is the amount to interpolate between the two values where 0.0 equal to the first point, 0.1 is very near the first point, 0.5 is half-way in between, and 1.0 is equal to the second point. If the value of amt is more than 1.0 or less than 0.0, the number will be calculated accordingly in the ratio of the two given numbers. The lerp function is convenient for creating motion along a straight path and for drawing dotted lines.
lerp__returns = Number: lerped value
lerp__params__start = Number: first value
lerp__params__stop = Number: second value
lerp__params__amt = Number: number
log__description__0 = Calculates the natural logarithm (the base-e logarithm) of a number. This function expects the n parameter to be a value greater than 0.0. Maps to Math.log().
log__returns = Number: natural logarithm of n
log__params__n = Number: number greater than 0
mag__description__0 = Calculates the magnitude (or length) of a vector. A vector is a direction in space commonly used in computer graphics and linear algebra. Because it has no "start" position, the magnitude of a vector can be thought of as the distance from the coordinate 0,0 to its x,y value. Therefore, <a href="#/p5/mag">mag()</a> is a shortcut for writing dist(0, 0, x, y).
mag__returns = Number: magnitude of vector from (0,0) to (a,b)
mag__params__a = Number: first value
mag__params__b = Number: second value
map__description__0 = Re-maps a number from one range to another.
map__description__1 = In the first example above, the number 25 is converted from a value in the range of 0 to 100 into a value that ranges from the left edge of the window (0) to the right edge (width).
map__returns = Number: remapped number
map__params__value = Number: the incoming value to be converted
map__params__start1 = Number: lower bound of the value's current range
map__params__stop1 = Number: upper bound of the value's current range
map__params__start2 = Number: lower bound of the value's target range
map__params__stop2 = Number: upper bound of the value's target range
map__params__withinBounds = Boolean: (Optional) constrain the value to the newly mapped range
max__description__0 = Determines the largest value in a sequence of numbers, and then returns that value. <a href="#/p5/max">max()</a> accepts any number of Number parameters, or an Array of any length.
max__returns = Number: maximum Number
max__params__n0 = Number: Number to compare
max__params__n1 = Number: Number to compare
max__params__nums = Number[]: Numbers to compare
min__description__0 = Determines the smallest value in a sequence of numbers, and then returns that value. <a href="#/p5/min">min()</a> accepts any number of Number parameters, or an Array of any length.
min__returns = Number: minimum Number
min__params__n0 = Number: Number to compare
min__params__n1 = Number: Number to compare
min__params__nums = Number[]: Numbers to compare
norm__description__0 = Normalizes a number from another range into a value between 0 and 1. Identical to map(value, low, high, 0, 1). Numbers outside of the range are not clamped to 0 and 1, because out-of-range values are often intentional and useful. (See the example above.)
norm__returns = Number: normalized number
norm__params__value = Number: incoming value to be normalized
norm__params__start = Number: lower bound of the value's current range
norm__params__stop = Number: upper bound of the value's current range
pow__description__0 = Facilitates exponential expressions. The <a href="#/p5/pow">pow()</a> function is an efficient way of multiplying numbers by themselves (or their reciprocals) in large quantities. For example, pow(3, 5) is equivalent to the expression 3 × 3 × 3 × 3 × 3 and pow(3, -5) is equivalent to 1 / 3 × 3 × 3 × 3 × 3. Maps to Math.pow().
pow__returns = Number: n^e
pow__params__n = Number: base of the exponential expression
pow__params__e = Number: power by which to raise the base
round__description__0 = Calculates the integer closest to the n parameter. For example, round(133.8) returns the value 134. Maps to Math.round().
round__returns = Integer: rounded number
round__params__n = Number: number to round
round__params__decimals = Number: (Optional) number of decimal places to round to, default is 0
sq__description__0 = Squares a number (multiplies a number by itself). The result is always a positive number, as multiplying two negative numbers always yields a positive result. For example, -1 * -1 = 1.
sq__returns = Number: squared number
sq__params__n = Number: number to square
sqrt__description__0 = Calculates the square root of a number. The square root of a number is always positive, even though there may be a valid negative root. The square root s of number a is such that s*s = a. It is the opposite of squaring. Maps to Math.sqrt().
sqrt__returns = Number: square root of number
sqrt__params__n = Number: non-negative number to square root
fract__description__0 = Calculates the fractional part of a number.
fract__returns = Number: fractional part of x, i.e, {"{"}x{"}"}
fract__params__num = Number: Number whose fractional part needs to be found out
createVector__description__0 = Creates a new <a href="#/p5.Vector">p5.Vector</a> (the datatype for storing vectors). This provides a two or three dimensional vector, specifically a Euclidean (also known as geometric) vector. A vector is an entity that has both magnitude and direction.
createVector__returns = p5.Vector:
createVector__params__x = Number: (Optional) x component of the vector
createVector__params__y = Number: (Optional) y component of the vector
createVector__params__z = Number: (Optional) z component of the vector
noise__description__0 = Returns the Perlin noise value at specified coordinates. Perlin noise is a random sequence generator producing a more naturally ordered, harmonic succession of numbers compared to the standard <b>random()</b> function. It was invented by Ken Perlin in the 1980s and been used since in graphical applications to produce procedural textures, natural motion, shapes, terrains etc.<br /><br /> The main difference to the <b>random()</b> function is that Perlin noise is defined in an infinite n-dimensional space where each pair of coordinates corresponds to a fixed semi-random value (fixed only for the lifespan of the program; see the <a href="#/p5/noiseSeed">noiseSeed()</a> function). p5.js can compute 1D, 2D and 3D noise, depending on the number of coordinates given. The resulting value will always be between 0.0 and 1.0. The noise value can be animated by moving through the noise space as demonstrated in the example above. The 2nd and 3rd dimension can also be interpreted as time.<br /><br />The actual noise is structured similar to an audio signal, in respect to the function's use of frequencies. Similar to the concept of harmonics in physics, perlin noise is computed over several octaves which are added together for the final result. <br /><br />Another way to adjust the character of the resulting sequence is the scale of the input coordinates. As the function works within an infinite space the value of the coordinates doesn't matter as such, only the distance between successive coordinates does (eg. when using <b>noise()</b> within a loop). As a general rule the smaller the difference between coordinates, the smoother the resulting noise sequence will be. Steps of 0.005-0.03 work best for most applications, but this will differ depending on use.
noise__returns = Number: Perlin noise value (between 0 and 1) at specified  coordinates
noise__params__x = Number: x-coordinate in noise space
noise__params__y = Number: (Optional) y-coordinate in noise space
noise__params__z = Number: (Optional) z-coordinate in noise space
noiseDetail__description__0 = Adjusts the character and level of detail produced by the Perlin noise  function. Similar to harmonics in physics, noise is computed over  several octaves. Lower octaves contribute more to the output signal and  as such define the overall intensity of the noise, whereas higher octaves  create finer grained details in the noise sequence. By default, noise is computed over 4 octaves with each octave contributing  exactly half than its predecessor, starting at 50% strength for the 1st  octave. This falloff amount can be changed by adding an additional function  parameter. Eg. a falloff factor of 0.75 means each octave will now have  75% impact (25% less) of the previous lower octave. Any value between  0.0 and 1.0 is valid, however note that values greater than 0.5 might  result in greater than 1.0 values returned by <b>noise()</b>. By changing these parameters, the signal created by the <b>noise()</b>  function can be adapted to fit very specific needs and characteristics.
noiseDetail__params__lod = Number: number of octaves to be used by the noise
noiseDetail__params__falloff = Number: falloff factor for each octave
noiseSeed__description__0 = Sets the seed value for <b>noise()</b>. By default, <b>noise()</b> produces different results each time the program is run. Set the <b>value</b> parameter to a constant to return the same pseudo-random numbers each time the software is run.
noiseSeed__params__seed = Number: the seed value
randomSeed__description__0 = Sets the seed value for <a href="#/p5/random">random()</a>.
randomSeed__description__1 = By default, <a href="#/p5/random">random()</a> produces different results each time the program is run. Set the seed parameter to a constant to return the same pseudo-random numbers each time the software is run.
randomSeed__params__seed = Number: the seed value
random__description__0 = Return a random floating-point number.
random__description__1 = Takes either 0, 1 or 2 arguments.
random__description__2 = If no argument is given, returns a random number from 0 up to (but not including) 1.
random__description__3 = If one argument is given and it is a number, returns a random number from 0 up to (but not including) the number.
random__description__4 = If one argument is given and it is an array, returns a random element from that array.
random__description__5 = If two arguments are given, returns a random number from the first argument up to (but not including) the second argument.
random__returns = Number: the random number
random__params__min = Number: (Optional) the lower bound (inclusive)
random__params__max = Number: (Optional) the upper bound (exclusive)
random__params__choices = Array: the array to choose from
randomGaussian__description__0 = Returns a random number fitting a Gaussian, or  normal, distribution. There is theoretically no minimum or maximum  value that <a href="#/p5/randomGaussian">randomGaussian()</a> might return. Rather, there is  just a very low probability that values far from the mean will be  returned; and a higher probability that numbers near the mean will  be returned. Takes either 0, 1 or 2 arguments.  If no args, returns a mean of 0 and standard deviation of 1.  If one arg, that arg is the mean (standard deviation is 1).  If two args, first is mean, second is standard deviation.
randomGaussian__returns = Number: the random number
randomGaussian__params__mean = Number: (Optional) the mean
randomGaussian__params__sd = Number: (Optional) the standard deviation
acos__description__0 = The inverse of <a href="#/p5/cos">cos()</a>, returns the arc cosine of a value. This function expects the values in the range of -1 to 1 and values are returned in the range 0 to PI (3.1415927) if the angleMode is RADIANS or 0 to 180 if the angle mode is DEGREES.
acos__returns = Number: the arc cosine of the given value
acos__params__value = Number: the value whose arc cosine is to be returned
asin__description__0 = The inverse of <a href="#/p5/sin">sin()</a>, returns the arc sine of a value. This function expects the values in the range of -1 to 1 and values are returned in the range -PI/2 to PI/2 if the angleMode is RADIANS or -90 to 90 if the angle mode is DEGREES.
asin__returns = Number: the arc sine of the given value
asin__params__value = Number: the value whose arc sine is to be returned
atan__description__0 = The inverse of <a href="#/p5/tan">tan()</a>, returns the arc tangent of a value. This function expects the values in the range of -Infinity to Infinity (exclusive) and values are returned in the range -PI/2 to PI/2 if the angleMode is RADIANS or -90 to 90 if the angle mode is DEGREES.
atan__returns = Number: the arc tangent of the given value
atan__params__value = Number: the value whose arc tangent is to be returned
atan2__description__0 = Calculates the angle (in radians) from a specified point to the coordinate origin as measured from the positive x-axis. Values are returned as a float in the range from PI to -PI if the angleMode is RADIANS or 180 to -180 if the angleMode is DEGREES. The atan2<a href="#/p5/">()</a> function is most often used for orienting geometry to the position of the cursor.
atan2__description__1 = Note: The y-coordinate of the point is the first parameter, and the x-coordinate is the second parameter, due the the structure of calculating the tangent.
atan2__returns = Number: the arc tangent of the given point
atan2__params__y = Number: y-coordinate of the point
atan2__params__x = Number: x-coordinate of the point
cos__description__0 = Calculates the cosine of an angle. This function takes into account the current <a href="#/p5/angleMode">angleMode</a>. Values are returned in the range -1 to 1.
cos__returns = Number: the cosine of the angle
cos__params__angle = Number: the angle
sin__description__0 = Calculates the sine of an angle. This function takes into account the current <a href="#/p5/angleMode">angleMode</a>. Values are returned in the range -1 to 1.
sin__returns = Number: the sine of the angle
sin__params__angle = Number: the angle
tan__description__0 = Calculates the tangent of an angle. This function takes into account the current <a href="#/p5/angleMode">angleMode</a>. Values are returned in the range of all real numbers.
tan__returns = Number: the tangent of the angle
tan__params__angle = Number: the angle
degrees__description__0 = Converts a radian measurement to its corresponding value in degrees. Radians and degrees are two ways of measuring the same thing. There are 360 degrees in a circle and 2*PI radians in a circle. For example, 90° = PI/2 = 1.5707964. This function does not take into account the current <a href="#/p5/angleMode">angleMode</a>.
degrees__returns = Number: the converted angle
degrees__params__radians = Number: the radians value to convert to degrees
radians__description__0 = Converts a degree measurement to its corresponding value in radians. Radians and degrees are two ways of measuring the same thing. There are 360 degrees in a circle and 2*PI radians in a circle. For example, 90° = PI/2 = 1.5707964. This function does not take into account the current <a href="#/p5/angleMode">angleMode</a>.
radians__returns = Number: the converted angle
radians__params__degrees = Number: the degree value to convert to radians
angleMode__description__0 = Sets the current mode of p5 to given mode. Default mode is RADIANS.
angleMode__params__mode = Constant: either RADIANS or DEGREES
textAlign__description__0 = Sets the current alignment for drawing text. Accepts two arguments: horizAlign (LEFT, CENTER, or RIGHT) and vertAlign (TOP, BOTTOM, CENTER, or BASELINE).
textAlign__description__1 = The horizAlign parameter is in reference to the x value of the <a href="#/p5/text">text()</a> function, while the vertAlign parameter is in reference to the y value.
textAlign__description__2 = So if you write textAlign(LEFT), you are aligning the left edge of your text to the x value you give in <a href="#/p5/text">text()</a>. If you write textAlign(RIGHT, TOP), you are aligning the right edge of your text to the x value and the top of edge of the text to the y value.
textAlign__params__horizAlign = Constant: horizontal alignment, either LEFT,  CENTER, or RIGHT
textAlign__params__vertAlign = Constant: (Optional) vertical alignment, either TOP,  BOTTOM, CENTER, or BASELINE
textLeading__description__0 = Sets/gets the spacing, in pixels, between lines of text. This setting will be used in all subsequent calls to the <a href="#/p5/text">text()</a> function.
textLeading__params__leading = Number: the size in pixels for spacing between lines
textSize__description__0 = Sets/gets the current font size. This size will be used in all subsequent calls to the <a href="#/p5/text">text()</a> function. Font size is measured in pixels.
textSize__params__theSize = Number: the size of the letters in units of pixels
textStyle__description__0 = Sets/gets the style of the text for system fonts to NORMAL, ITALIC, BOLD or BOLDITALIC. Note: this may be is overridden by CSS styling. For non-system fonts (opentype, truetype, etc.) please load styled fonts instead.
textStyle__params__theStyle = Constant: styling for text, either NORMAL,  ITALIC, BOLD or BOLDITALIC
textWidth__description__0 = Calculates and returns the width of any character or text string.
textWidth__returns = Number: the calculated width
textWidth__params__theText = String: the String of characters to measure
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
loadFont__description__0 = Loads an opentype font file (.otf, .ttf) from a file or a URL, and returns a PFont Object. This method is asynchronous, meaning it may not finish before the next line in your sketch is executed.
loadFont__description__1 = The path to the font should be relative to the HTML file that links in your sketch. Loading fonts from a URL or other remote location may be blocked due to your browser's built-in security.
loadFont__returns = p5.Font: <a href="#/p5.Font">p5.Font</a> object
loadFont__params__path = String: name of the file or url to load
loadFont__params__callback = Function: (Optional) function to be executed after  <a href="#/p5/loadFont">loadFont()</a> completes
loadFont__params__onError = Function: (Optional) function to be executed if  an error occurs
text__description__0 = Draws text to the screen. Displays the information specified in the first parameter on the screen in the position specified by the additional parameters. A default font will be used unless a font is set with the <a href="#/p5/textFont">textFont()</a> function and a default size will be used unless a font is set with <a href="#/p5/textSize">textSize()</a>. Change the color of the text with the <a href="#/p5/fill">fill()</a> function. Change the outline of the text with the <a href="#/p5/stroke">stroke()</a> and <a href="#/p5/strokeWeight">strokeWeight()</a> functions.
text__description__1 = The text displays in relation to the <a href="#/p5/textAlign">textAlign()</a> function, which gives the option to draw to the left, right, and center of the coordinates.
text__description__2 = The x2 and y2 parameters define a rectangular area to display within and may only be used with string data. When these parameters are specified, they are interpreted based on the current <a href="#/p5/rectMode">rectMode()</a> setting. Text that does not fit completely within the rectangle specified will not be drawn to the screen. If x2 and y2 are not specified, the baseline alignment is the default, which means that the text will be drawn upwards from x and y.
text__description__3 = <b>WEBGL</b>: Only opentype/truetype fonts are supported. You must load a font using the <a href="#/p5/loadFont">loadFont()</a> method (see the example above). <a href="#/p5/stroke">stroke()</a> currently has no effect in webgl mode. Learn more about working with text in webgl mode on the <a href="https://github.com/processing/p5.js/wiki/Getting-started-with-WebGL-in-p5#text">wiki</a>.
text__params__str = String|Object|Array|Number|Boolean: the alphanumeric  symbols to be displayed
text__params__x = Number: x-coordinate of text
text__params__y = Number: y-coordinate of text
text__params__x2 = Number: (Optional) by default, the width of the text box,  see <a href="#/p5/rectMode">rectMode()</a> for more info
text__params__y2 = Number: (Optional) by default, the height of the text box,  see <a href="#/p5/rectMode">rectMode()</a> for more info
textFont__description__0 = Sets the current font that will be drawn with the <a href="#/p5/text">text()</a> function. If textFont() is called without any argument, it will return the current font if one has been set already. If not, it will return the name of the default font as a string. If textFont() is called with a font to use, it will return the p5 object.
textFont__description__1 = <b>WEBGL</b>: Only fonts loaded via <a href="#/p5/loadFont">loadFont()</a> are supported.
textFont__returns = Object: the current font / p5 Object
textFont__params__font = Object|String: a font loaded via <a href="#/p5/loadFont">loadFont()</a>, or a String representing a <a href="https://mzl.la/2dOw8WD">web safe font</a> (a font that is generally available across all systems)
textFont__params__size = Number: (Optional) the font size to use
append__description__0 = Adds a value to the end of an array. Extends the length of the array by one. Maps to Array.push().
append__returns = Array: the array that was appended to
append__params__array = Array: Array to append
append__params__value = Any: to be added to the Array
arrayCopy__description__0 = Copies an array (or part of an array) to another array. The src array is copied to the dst array, beginning at the position specified by srcPosition and into the position specified by dstPosition. The number of elements to copy is determined by length. Note that copying values overwrites existing values in the destination array. To append values instead of overwriting them, use <a href="#/p5/concat">concat()</a>.
arrayCopy__description__1 = The simplified version with only two arguments, arrayCopy(src, dst), copies an entire array to another of the same size. It is equivalent to arrayCopy(src, 0, dst, 0, src.length).
arrayCopy__description__2 = Using this function is far more efficient for copying array data than iterating through a for() loop and copying each element individually.
arrayCopy__params__src = Array: the source Array
arrayCopy__params__srcPosition = Integer: starting position in the source Array
arrayCopy__params__dst = Array: the destination Array
arrayCopy__params__dstPosition = Integer: starting position in the destination Array
arrayCopy__params__length = Integer: number of Array elements to be copied
concat__description__0 = Concatenates two arrays, maps to Array.concat(). Does not modify the input arrays.
concat__returns = Array: concatenated array
concat__params__a = Array: first Array to concatenate
concat__params__b = Array: second Array to concatenate
reverse__description__0 = Reverses the order of an array, maps to Array.reverse()
reverse__returns = Array: the reversed list
reverse__params__list = Array: Array to reverse
shorten__description__0 = Decreases an array by one element and returns the shortened array, maps to Array.pop().
shorten__returns = Array: shortened Array
shorten__params__list = Array: Array to shorten
shuffle__description__0 = Randomizes the order of the elements of an array. Implements <a href='http://Bost.Ocks.org/mike/shuffle/' target=_blank> Fisher-Yates Shuffle Algorithm</a>.
shuffle__returns = Array: shuffled Array
shuffle__params__array = Array: Array to shuffle
shuffle__params__bool = Boolean: (Optional) modify passed array
sort__description__0 = Sorts an array of numbers from smallest to largest, or puts an array of words in alphabetical order. The original array is not modified; a re-ordered array is returned. The count parameter states the number of elements to sort. For example, if there are 12 elements in an array and count is set to 5, only the first 5 elements in the array will be sorted.
sort__returns = Array: the sorted list
sort__params__list = Array: Array to sort
sort__params__count = Integer: (Optional) number of elements to sort, starting from 0
splice__description__0 = Inserts a value or an array of values into an existing array. The first parameter specifies the initial array to be modified, and the second parameter defines the data to be inserted. The third parameter is an index value which specifies the array position from which to insert data. (Remember that array index numbering starts at zero, so the first position is 0, the second position is 1, and so on.)
splice__returns = Array: the list
splice__params__list = Array: Array to splice into
splice__params__value = Any: value to be spliced in
splice__params__position = Integer: in the array from which to insert data
subset__description__0 = Extracts an array of elements from an existing array. The list parameter defines the array from which the elements will be copied, and the start and count parameters specify which elements to extract. If no count is given, elements will be extracted from the start to the end of the array. When specifying the start, remember that the first array element is 0. This function does not change the source array.
subset__returns = Array: Array of extracted elements
subset__params__list = Array: Array to extract from
subset__params__start = Integer: position to begin
subset__params__count = Integer: (Optional) number of values to extract
float__description__0 = Converts a string to its floating point representation. The contents of a string must resemble a number, or NaN (not a number) will be returned. For example, float("1234.56") evaluates to 1234.56, but float("giraffe") will return NaN.
float__description__1 = When an array of values is passed in, then an array of floats of the same length is returned.
float__returns = Number: floating point representation of string
float__params__str = String: float string to parse
int__description__0 = Converts a boolean, string, or float to its integer representation. When an array of values is passed in, then an int array of the same length is returned.
int__returns = Number: integer representation of value
int__params__n = String|Boolean|Number: value to parse
int__params__radix = Integer: (Optional) the radix to convert to (default: 10)
int__params__ns = Array: values to parse
str__description__0 = Converts a boolean, string or number to its string representation. When an array of values is passed in, then an array of strings of the same length is returned.
str__returns = String: string representation of value
str__params__n = String|Boolean|Number|Array: value to parse
byte__description__0 = Converts a number, string representation of a number, or boolean to its byte representation. A byte can be only a whole number between -128 and 127, so when a value outside of this range is converted, it wraps around to the corresponding byte representation. When an array of number, string or boolean values is passed in, then an array of bytes the same length is returned.
byte__returns = Number: byte representation of value
byte__params__n = String|Boolean|Number: value to parse
byte__params__ns = Array: values to parse
char__description__0 = Converts a number or string to its corresponding single-character string representation. If a string parameter is provided, it is first parsed as an integer and then translated into a single-character string. When an array of number or string values is passed in, then an array of single-character strings of the same length is returned.
char__returns = String: string representation of value
char__params__n = String|Number: value to parse
char__params__ns = Array: values to parse
unchar__description__0 = Converts a single-character string to its corresponding integer representation. When an array of single-character string values is passed in, then an array of integers of the same length is returned.
unchar__returns = Number: integer representation of value
unchar__params__n = String: value to parse
unchar__params__ns = Array: values to parse
hex__description__0 = Converts a number to a string in its equivalent hexadecimal notation. If a second parameter is passed, it is used to set the number of characters to generate in the hexadecimal notation. When an array is passed in, an array of strings in hexadecimal notation of the same length is returned.
hex__returns = String: hexadecimal string representation of value
hex__params__n = Number: value to parse
hex__params__digits = Number (Optional)
hex__params__ns = Number[]: array of values to parse
unhex__description__0 = Converts a string representation of a hexadecimal number to its equivalent integer value. When an array of strings in hexadecimal notation is passed in, an array of integers of the same length is returned.
unhex__returns = Number: integer representation of hexadecimal value
unhex__params__n = String: value to parse
unhex__params__ns = Array: values to parse
join__description__0 = Combines an array of Strings into one String, each separated by the character(s) used for the separator parameter. To join arrays of ints or floats, it's necessary to first convert them to Strings using <a href="#/p5/nf">nf()</a> or nfs().
join__returns = String: joined String
join__params__list = Array: array of Strings to be joined
join__params__separator = String: String to be placed between each item
match__description__0 = This function is used to apply a regular expression to a piece of text, and return matching groups (elements found inside parentheses) as a String array. If there are no matches, a null value will be returned. If no groups are specified in the regular expression, but the sequence matches, an array of length 1 (with the matched text as the first element of the array) will be returned.
match__description__1 = To use the function, first check to see if the result is null. If the result is null, then the sequence did not match at all. If the sequence did match, an array is returned.
match__description__2 = If there are groups (specified by sets of parentheses) in the regular expression, then the contents of each will be returned in the array. Element [0] of a regular expression match returns the entire matching string, and the match groups start at element [1] (the first group is [1], the second [2], and so on).
match__returns = String[]: Array of Strings found
match__params__str = String: the String to be searched
match__params__regexp = String: the regexp to be used for matching
matchAll__description__0 = This function is used to apply a regular expression to a piece of text, and return a list of matching groups (elements found inside parentheses) as a two-dimensional String array. If there are no matches, a null value will be returned. If no groups are specified in the regular expression, but the sequence matches, a two dimensional array is still returned, but the second dimension is only of length one.
matchAll__description__1 = To use the function, first check to see if the result is null. If the result is null, then the sequence did not match at all. If the sequence did match, a 2D array is returned.
matchAll__description__2 = If there are groups (specified by sets of parentheses) in the regular expression, then the contents of each will be returned in the array. Assuming a loop with counter variable i, element [i][0] of a regular expression match returns the entire matching string, and the match groups start at element [i][1] (the first group is [i][1], the second [i][2], and so on).
matchAll__returns = String[]: 2d Array of Strings found
matchAll__params__str = String: the String to be searched
matchAll__params__regexp = String: the regexp to be used for matching
nf__description__0 = Utility function for formatting numbers into strings. There are two versions: one for formatting floats, and one for formatting ints.
nf__description__1 = The values for the digits, left, and right parameters should always be positive integers.
nf__description__2 = (NOTE): Be cautious when using left and right parameters as it prepends numbers of 0's if the parameter if greater than the current length of the number.
nf__description__3 = For example if number is 123.2 and left parameter passed is 4 which is greater than length of 123 (integer part) i.e 3 than result will be 0123.2. Same case for right parameter i.e. if right is 3 than the result will be 123.200.
nf__returns = String: formatted String
nf__params__num = Number|String: the Number to format
nf__params__left = Integer|String: (Optional) number of digits to the left of the  decimal point
nf__params__right = Integer|String: (Optional) number of digits to the right of the  decimal point
nf__params__nums = Array: the Numbers to format
nfc__description__0 = Utility function for formatting numbers into strings and placing appropriate commas to mark units of 1000. There are two versions: one for formatting ints, and one for formatting an array of ints. The value for the right parameter should always be a positive integer.
nfc__returns = String: formatted String
nfc__params__num = Number|String: the Number to format
nfc__params__right = Integer|String: (Optional) number of digits to the right of the  decimal point
nfc__params__nums = Array: the Numbers to format
nfp__description__0 = Utility function for formatting numbers into strings. Similar to <a href="#/p5/nf">nf()</a> but puts a "+" in front of positive numbers and a "-" in front of negative numbers. There are two versions: one for formatting floats, and one for formatting ints. The values for left, and right parameters should always be positive integers.
nfp__returns = String: formatted String
nfp__params__num = Number: the Number to format
nfp__params__left = Integer: (Optional) number of digits to the left of the decimal  point
nfp__params__right = Integer: (Optional) number of digits to the right of the  decimal point
nfp__params__nums = Number[]: the Numbers to format
nfs__description__0 = Utility function for formatting numbers into strings. Similar to <a href="#/p5/nf">nf()</a> but puts an additional "_" (space) in front of positive numbers just in case to align it with negative numbers which includes "-" (minus) sign.
nfs__description__1 = The main usecase of nfs() can be seen when one wants to align the digits (place values) of a non-negative number with some negative number (See the example to get a clear picture). There are two versions: one for formatting float, and one for formatting int.
nfs__description__2 = The values for the digits, left, and right parameters should always be positive integers.
nfs__description__3 = (IMP): The result on the canvas basically the expected alignment can vary based on the typeface you are using.
nfs__description__4 = (NOTE): Be cautious when using left and right parameters as it prepends numbers of 0's if the parameter if greater than the current length of the number.
nfs__description__5 = For example if number is 123.2 and left parameter passed is 4 which is greater than length of 123 (integer part) i.e 3 than result will be 0123.2. Same case for right parameter i.e. if right is 3 than the result will be 123.200.
nfs__returns = String: formatted String
nfs__params__num = Number: the Number to format
nfs__params__left = Integer: (Optional) number of digits to the left of the decimal  point
nfs__params__right = Integer: (Optional) number of digits to the right of the  decimal point
nfs__params__nums = Array: the Numbers to format
split__description__0 = The <a href="#/p5/split">split()</a> function maps to String.split(), it breaks a String into pieces using a character or string as the delimiter. The delim parameter specifies the character or characters that mark the boundaries between each piece. A String[] array is returned that contains each of the pieces.
split__description__1 = The <a href="#/p5/splitTokens">splitTokens()</a> function works in a similar fashion, except that it splits using a range of characters instead of a specific character or sequence.
split__returns = String[]: Array of Strings
split__params__value = String: the String to be split
split__params__delim = String: the String used to separate the data
splitTokens__description__0 = The <a href="#/p5/splitTokens">splitTokens()</a> function splits a String at one or many character delimiters or "tokens." The delim parameter specifies the character or characters to be used as a boundary.
splitTokens__description__1 = If no delim characters are specified, any whitespace character is used to split. Whitespace characters include tab (\t), line feed (\n), carriage return (\r), form feed (\f), and space.
splitTokens__returns = String[]: Array of Strings
splitTokens__params__value = String: the String to be split
splitTokens__params__delim = String: (Optional) list of individual Strings that will be used as  separators
trim__description__0 = Removes whitespace characters from the beginning and end of a String. In addition to standard whitespace characters such as space, carriage return, and tab, this function also removes the Unicode "nbsp" character.
trim__returns = String: a trimmed String
trim__params__str = String: a String to be trimmed
trim__params__strs = Array: an Array of Strings to be trimmed
day__description__0 = p5.js communicates with the clock on your computer. The <a href="#/p5/day">day()</a> function returns the current day as a value from 1 - 31.
day__returns = Integer: the current day
hour__description__0 = p5.js communicates with the clock on your computer. The <a href="#/p5/hour">hour()</a> function returns the current hour as a value from 0 - 23.
hour__returns = Integer: the current hour
minute__description__0 = p5.js communicates with the clock on your computer. The <a href="#/p5/minute">minute()</a> function returns the current minute as a value from 0 - 59.
minute__returns = Integer: the current minute
millis__description__0 = Returns the number of milliseconds (thousandths of a second) since starting the sketch (when <code>setup()</code> is called). This information is often used for timing events and animation sequences.
millis__returns = Number: the number of milliseconds since starting the sketch
month__description__0 = p5.js communicates with the clock on your computer. The <a href="#/p5/month">month()</a> function returns the current month as a value from 1 - 12.
month__returns = Integer: the current month
second__description__0 = p5.js communicates with the clock on your computer. The <a href="#/p5/second">second()</a> function returns the current second as a value from 0 - 59.
second__returns = Integer: the current second
year__description__0 = p5.js communicates with the clock on your computer. The <a href="#/p5/year">year()</a> function returns the current year as an integer (2014, 2015, 2016, etc).
year__returns = Integer: the current year
plane__description__0 = Draw a plane with given a width and height
plane__params__width = Number: (Optional) width of the plane
plane__params__height = Number: (Optional) height of the plane
plane__params__detailX = Integer: (Optional) Optional number of triangle  subdivisions in x-dimension
plane__params__detailY = Integer: (Optional) Optional number of triangle  subdivisions in y-dimension
box__description__0 = Draw a box with given width, height and depth
box__params__width = Number: (Optional) width of the box
box__params__Height = Number: (Optional) height of the box
box__params__depth = Number: (Optional) depth of the box
box__params__detailX = Integer: (Optional) Optional number of triangle  subdivisions in x-dimension
box__params__detailY = Integer: (Optional) Optional number of triangle  subdivisions in y-dimension
sphere__description__0 = Draw a sphere with given radius.
sphere__description__1 = DetailX and detailY determines the number of subdivisions in the x-dimension and the y-dimension of a sphere. More subdivisions make the sphere seem smoother. The recommended maximum values are both 24. Using a value greater than 24 may cause a warning or slow down the browser.
sphere__params__radius = Number: (Optional) radius of circle
sphere__params__detailX = Integer: (Optional) optional number of subdivisions in x-dimension
sphere__params__detailY = Integer: (Optional) optional number of subdivisions in y-dimension
cylinder__description__0 = Draw a cylinder with given radius and height
cylinder__description__1 = DetailX and detailY determines the number of subdivisions in the x-dimension and the y-dimension of a cylinder. More subdivisions make the cylinder seem smoother. The recommended maximum value for detailX is 24. Using a value greater than 24 may cause a warning or slow down the browser.
cylinder__params__radius = Number: (Optional) radius of the surface
cylinder__params__height = Number: (Optional) height of the cylinder
cylinder__params__detailX = Integer: (Optional) number of subdivisions in x-dimension;  default is 24
cylinder__params__detailY = Integer: (Optional) number of subdivisions in y-dimension;  default is 1
cylinder__params__bottomCap = Boolean: (Optional) whether to draw the bottom of the cylinder
cylinder__params__topCap = Boolean: (Optional) whether to draw the top of the cylinder
cone__description__0 = Draw a cone with given radius and height
cone__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a cone. More subdivisions make the cone seem smoother. The recommended maximum value for detailX is 24. Using a value greater than 24 may cause a warning or slow down the browser.
cone__params__radius = Number: (Optional) radius of the bottom surface
cone__params__height = Number: (Optional) height of the cone
cone__params__detailX = Integer: (Optional) number of segments,  the more segments the smoother geometry  default is 24
cone__params__detailY = Integer: (Optional) number of segments,  the more segments the smoother geometry  default is 1
cone__params__cap = Boolean: (Optional) whether to draw the base of the cone
ellipsoid__description__0 = Draw an ellipsoid with given radius
ellipsoid__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a cone. More subdivisions make the ellipsoid appear to be smoother. Avoid detail number above 150, it may crash the browser.
ellipsoid__params__radiusx = Number: (Optional) x-radius of ellipsoid
ellipsoid__params__radiusy = Number: (Optional) y-radius of ellipsoid
ellipsoid__params__radiusz = Number: (Optional) z-radius of ellipsoid
ellipsoid__params__detailX = Integer: (Optional) number of segments,  the more segments the smoother geometry  default is 24. Avoid detail number above  150, it may crash the browser.
ellipsoid__params__detailY = Integer: (Optional) number of segments,  the more segments the smoother geometry  default is 16. Avoid detail number above  150, it may crash the browser.
torus__description__0 = Draw a torus with given radius and tube radius
torus__description__1 = DetailX and detailY determine the number of subdivisions in the x-dimension and the y-dimension of a torus. More subdivisions make the torus appear to be smoother. The default and maximum values for detailX and detailY are 24 and 16, respectively. Setting them to relatively small values like 4 and 6 allows you to create new shapes other than a torus.
torus__params__radius = Number: (Optional) radius of the whole ring
torus__params__tubeRadius = Number: (Optional) radius of the tube
torus__params__detailX = Integer: (Optional) number of segments in x-dimension,  the more segments the smoother geometry  default is 24
torus__params__detailY = Integer: (Optional) number of segments in y-dimension,  the more segments the smoother geometry  default is 16
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
ambientLight__description__0 = Creates an ambient light with a color. Ambient light is light that comes from everywhere on the canvas. It has no particular source.
ambientLight__params__v1 = Number: red or hue value relative to  the current color range
ambientLight__params__v2 = Number: green or saturation value  relative to the current color range
ambientLight__params__v3 = Number: blue or brightness value  relative to the current color range
ambientLight__params__alpha = Number: (Optional) the alpha value
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
directionalLight__description__0 = Creates a directional light with a color and a direction
directionalLight__description__1 = A maximum of 5 directionalLight can be active at one time
directionalLight__params__v1 = Number: red or hue value (depending on the current color mode),
directionalLight__params__v2 = Number: green or saturation value
directionalLight__params__v3 = Number: blue or brightness value
directionalLight__params__position = p5.Vector: the direction of the light
directionalLight__params__color = Number[]|String|p5.Color: color Array, CSS color string,  or <a href="#/p5.Color">p5.Color</a> value
directionalLight__params__x = Number: x axis direction
directionalLight__params__y = Number: y axis direction
directionalLight__params__z = Number: z axis direction
pointLight__description__0 = Creates a point light with a color and a light position
pointLight__description__1 = A maximum of 5 pointLight can be active at one time
pointLight__params__v1 = Number: red or hue value (depending on the current color mode),
pointLight__params__v2 = Number: green or saturation value
pointLight__params__v3 = Number: blue or brightness value
pointLight__params__x = Number: x axis position
pointLight__params__y = Number: y axis position
pointLight__params__z = Number: z axis position
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
loadModel__description__0 = Load a 3d model from an OBJ or STL file.
loadModel__description__1 = <a href="#/p5/loadModel">loadModel()</a> should be placed inside of <a href="#/p5/preload">preload()</a>. This allows the model to load fully before the rest of your code is run.
loadModel__description__2 = One of the limitations of the OBJ and STL format is that it doesn't have a built-in sense of scale. This means that models exported from different programs might be very different sizes. If your model isn't displaying, try calling <a href="#/p5/loadModel">loadModel()</a> with the normalized parameter set to true. This will resize the model to a scale appropriate for p5. You can also make additional changes to the final size of your model with the <a href="#/p5/scale">scale()</a> function.
loadModel__description__3 = Also, the support for colored STL files is not present. STL files with color will be rendered without color properties.
loadModel__returns = p5.Geometry: the <a href="#/p5.Geometry">p5.Geometry</a> object
loadModel__params__path = String: Path of the model to be loaded
loadModel__params__normalize = Boolean: If true, scale the model to a  standardized size when loading
loadModel__params__successCallback = function(p5.Geometry): (Optional) Function to be called  once the model is loaded. Will be passed  the 3D model object.
loadModel__params__failureCallback = Function(Event): (Optional) called with event error if  the model fails to load.
loadModel__params__fileType = String: (Optional) The file extension of the model  (<code>.stl</code>, <code>.obj</code>).
model__description__0 = Render a 3d model to the screen.
model__params__model = p5.Geometry: Loaded 3d model to be rendered
loadShader__description__0 = Creates a new <a href="#/p5.Shader">p5.Shader</a> object from the provided vertex and fragment shader files.
loadShader__description__1 = The shader files are loaded asynchronously in the background, so this method should be used in <a href="#/p5/preload">preload()</a>.
loadShader__description__2 = Note, shaders can only be used in WEBGL mode.
loadShader__returns = p5.Shader: a shader object created from the provided vertex and fragment shader files.
loadShader__params__vertFilename = String: path to file containing vertex shader source code
loadShader__params__fragFilename = String: path to file containing fragment shader source code
loadShader__params__callback = Function: (Optional) callback to be executed after loadShader completes. On success, the p5.Shader object is passed as the first argument.
loadShader__params__errorCallback = Function: (Optional) callback to be executed when an error occurs inside loadShader. On error, the error is passed as the first argument.
createShader__description__0 = Creates a new <a href="#/p5.Shader">p5.Shader</a> object from the provided vertex and fragment shader code.
createShader__description__1 = Note, shaders can only be used in WEBGL mode.
createShader__returns = p5.Shader: a shader object created from the provided vertex and fragment shaders.
createShader__params__vertSrc = String: source code for the vertex shader
createShader__params__fragSrc = String: source code for the fragment shader
shader__description__0 = Sets the <a href="#/p5.Shader">p5.Shader</a> object to be used to render subsequent shapes.
shader__description__1 = Custom shaders can be created using the <a href="#/p5/createShader">createShader()</a> and <a href="#/p5/loadShader">loadShader()</a> functions.
shader__description__2 = Use <a href="#/p5/resetShader">resetShader()</a> to restore the default shaders.
shader__description__3 = Note, shaders can only be used in WEBGL mode.
shader__params__s = p5.Shader: the <a href="#/p5.Shader">p5.Shader</a> object to use for rendering shapes.
resetShader__description__0 = Restores the default shaders. Code that runs after resetShader() will not be affected by the shader previously set by <a href="#/p5/shader">shader()</a>
texture__description__0 = Sets the texture that will be used to render subsequent shapes.
texture__description__1 = A texture is like a "skin" that wraps around a 3D geometry. Currently supported textures are images, video, and offscreen renders.
texture__description__2 = To texture a geometry created with <a href="#/p5/beginShape">beginShape()</a>, you will need to specify uv coordinates in <a href="#/p5/vertex">vertex()</a>.
texture__description__3 = Note, texture() can only be used in WEBGL mode.
texture__description__4 = You can view more materials in this <a href="https://p5js.org/examples/3d-materials.html">example</a>.
texture__params__tex = p5.Image|p5.MediaElement|p5.Graphics|p5.Texture: image to use as texture
textureMode__description__0 = Sets the coordinate space for texture mapping. The default mode is IMAGE which refers to the actual coordinates of the image. NORMAL refers to a normalized space of values ranging from 0 to 1.
textureMode__description__1 = With IMAGE, if an image is 100×200 pixels, mapping the image onto the entire size of a quad would require the points (0,0) (100, 0) (100,200) (0,200). The same mapping in NORMAL is (0,0) (1,0) (1,1) (0,1).
textureMode__params__mode = Constant: either IMAGE or NORMAL
textureWrap__description__0 = Sets the global texture wrapping mode. This controls how textures behave when their uv's go outside of the 0 to 1 range. There are three options: CLAMP, REPEAT, and MIRROR.
textureWrap__description__1 = CLAMP causes the pixels at the edge of the texture to extend to the bounds. REPEAT causes the texture to tile repeatedly until reaching the bounds. MIRROR works similarly to REPEAT but it flips the texture with every new tile.
textureWrap__description__2 = REPEAT & MIRROR are only available if the texture is a power of two size (128, 256, 512, 1024, etc.).
textureWrap__description__3 = This method will affect all textures in your sketch until a subsequent textureWrap() call is made.
textureWrap__description__4 = If only one argument is provided, it will be applied to both the horizontal and vertical axes.
textureWrap__params__wrapX = Constant: either CLAMP, REPEAT, or MIRROR
textureWrap__params__wrapY = Constant: (Optional) either CLAMP, REPEAT, or MIRROR
normalMaterial__description__0 = Normal material for geometry is a material that is not affected by light. It is not reflective and is a placeholder material often used for debugging. Surfaces facing the X-axis, become red, those facing the Y-axis, become green and those facing the Z-axis, become blue. You can view all possible materials in this <a href="https://p5js.org/examples/3d-materials.html">example</a>.
ambientMaterial__description__0 = Ambient material for geometry with a given color. Ambient material defines the color the object reflects under any lighting. For example, if the ambient material of an object is pure red, but the ambient lighting only contains green, the object will not reflect any light. Here's an <a href="https://p5js.org/examples/3d-materials.html">example containing all possible materials</a>.
ambientMaterial__params__v1 = Number: gray value, red or hue value  (depending on the current color mode),
ambientMaterial__params__v2 = Number: (Optional) green or saturation value
ambientMaterial__params__v3 = Number: (Optional) blue or brightness value
ambientMaterial__params__color = Number[]|String|p5.Color: color, color Array, or CSS color string
emissiveMaterial__description__0 = Sets the emissive color of the material used for geometry drawn to the screen. This is a misnomer in the sense that the material does not actually emit light that effects surrounding polygons. Instead, it gives the appearance that the object is glowing. An emissive material will display at full strength even if there is no light for it to reflect.
emissiveMaterial__params__v1 = Number: gray value, red or hue value  (depending on the current color mode),
emissiveMaterial__params__v2 = Number: (Optional) green or saturation value
emissiveMaterial__params__v3 = Number: (Optional) blue or brightness value
emissiveMaterial__params__a = Number: (Optional) opacity
emissiveMaterial__params__color = Number[]|String|p5.Color: color, color Array, or CSS color string
specularMaterial__description__0 = Specular material for geometry with a given color. Specular material is a shiny reflective material. Like ambient material it also defines the color the object reflects under ambient lighting. For example, if the specular material of an object is pure red, but the ambient lighting only contains green, the object will not reflect any light. For all other types of light like point and directional light, a specular material will reflect the color of the light source to the viewer. Here's an <a href="https://p5js.org/examples/3d-materials.html">example containing all possible materials</a>.
specularMaterial__params__gray = Number: number specifying value between white and black.
specularMaterial__params__alpha = Number: (Optional) alpha value relative to current color range  (default is 0-255)
specularMaterial__params__v1 = Number: red or hue value relative to  the current color range
specularMaterial__params__v2 = Number: green or saturation value  relative to the current color range
specularMaterial__params__v3 = Number: blue or brightness value  relative to the current color range
specularMaterial__params__color = Number[]|String|p5.Color: color Array, or CSS color string
shininess__description__0 = Sets the amount of gloss in the surface of shapes. Used in combination with specularMaterial() in setting the material properties of shapes. The default and minimum value is 1.
shininess__params__shine = Number: Degree of Shininess.  Defaults to 1.
camera__description__0 = Sets the position of the current camera in a 3D sketch. Parameters for this function define the camera's position, the center of the sketch (where the camera is pointing), and an up direction (the orientation of the camera).
camera__description__1 = This function simulates the movements of the camera, allowing objects to be viewed from various angles. Remember, it does not move the objects themselves but the camera instead. For example when the centerX value is positive, and the camera is rotating to the right side of the sketch, the object will seem like it's moving to the left.
camera__description__2 = See this <a href = "https://www.openprocessing.org/sketch/740258">example</a> to view the position of your camera.
camera__description__3 = If no parameters are given, the following default is used: camera(0, 0, (height/2) / tan(PI/6), 0, 0, 0, 0, 1, 0)
camera__params__x = Number: (Optional) camera position value on x axis
camera__params__y = Number: (Optional) camera position value on y axis
camera__params__z = Number: (Optional) camera position value on z axis
camera__params__centerX = Number: (Optional) x coordinate representing center of the sketch
camera__params__centerY = Number: (Optional) y coordinate representing center of the sketch
camera__params__centerZ = Number: (Optional) z coordinate representing center of the sketch
camera__params__upX = Number: (Optional) x component of direction 'up' from camera
camera__params__upY = Number: (Optional) y component of direction 'up' from camera
camera__params__upZ = Number: (Optional) z component of direction 'up' from camera
perspective__description__0 = Sets a perspective projection for the current camera in a 3D sketch. This projection represents depth through foreshortening: objects that are close to the camera appear their actual size while those that are further away from the camera appear smaller.
perspective__description__1 = The parameters to this function define the viewing frustum (the truncated pyramid within which objects are seen by the camera) through vertical field of view, aspect ratio (usually width/height), and near and far clipping planes.
perspective__description__2 = If no parameters are given, the following default is used: perspective(PI/3, width/height, eyeZ/10, eyeZ*10), where eyeZ is equal to ((height/2) / tan(PI/6)).
perspective__params__fovy = Number: (Optional) camera frustum vertical field of view,  from bottom to top of view, in <a href="#/p5/angleMode">angleMode</a> units
perspective__params__aspect = Number: (Optional) camera frustum aspect ratio
perspective__params__near = Number: (Optional) frustum near plane length
perspective__params__far = Number: (Optional) frustum far plane length
ortho__description__0 = Sets an orthographic projection for the current camera in a 3D sketch and defines a box-shaped viewing frustum within which objects are seen. In this projection, all objects with the same dimension appear the same size, regardless of whether they are near or far from the camera.
ortho__description__1 = The parameters to this function specify the viewing frustum where left and right are the minimum and maximum x values, top and bottom are the minimum and maximum y values, and near and far are the minimum and maximum z values.
ortho__description__2 = If no parameters are given, the following default is used: ortho(-width/2, width/2, -height/2, height/2).
ortho__params__left = Number: (Optional) camera frustum left plane
ortho__params__right = Number: (Optional) camera frustum right plane
ortho__params__bottom = Number: (Optional) camera frustum bottom plane
ortho__params__top = Number: (Optional) camera frustum top plane
ortho__params__near = Number: (Optional) camera frustum near plane
ortho__params__far = Number: (Optional) camera frustum far plane
frustum__description__0 = Sets the frustum of the current camera as defined by the parameters.
frustum__description__1 = A frustum is a geometric form: a pyramid with its top cut off. With the viewer's eye at the imaginary top of the pyramid, the six planes of the frustum act as clipping planes when rendering a 3D view. Thus, any form inside the clipping planes is visible; anything outside those planes is not visible.
frustum__description__2 = Setting the frustum changes the perspective of the scene being rendered. This can be achieved more simply in many cases by using <a href="https://p5js.org/reference/#/p5/perspective">perspective()</a>.
frustum__description__3 = If no parameters are given, the following default is used: frustum(-width/2, width/2, -height/2, height/2, 0, max(width, height)).
frustum__params__left = Number: (Optional) camera frustum left plane
frustum__params__right = Number: (Optional) camera frustum right plane
frustum__params__bottom = Number: (Optional) camera frustum bottom plane
frustum__params__top = Number: (Optional) camera frustum top plane
frustum__params__near = Number: (Optional) camera frustum near plane
frustum__params__far = Number: (Optional) camera frustum far plane
createCamera__description__0 = Creates a new <a href="#/p5.Camera">p5.Camera</a> object and sets it as the current (active) camera.
createCamera__description__1 = The new camera is initialized with a default position (see <a href="#/p5.Camera/camera">camera()</a>) and a default perspective projection (see <a href="#/p5.Camera/perspective">perspective()</a>). Its properties can be controlled with the <a href="#/p5.Camera">p5.Camera</a> methods.
createCamera__description__2 = Note: Every 3D sketch starts with a default camera initialized. This camera can be controlled with the global methods <a href="#/p5/camera">camera()</a>, <a href="#/p5/perspective">perspective()</a>, <a href="#/p5/ortho">ortho()</a>, and <a href="#/p5/frustum">frustum()</a> if it is the only camera in the scene.
createCamera__returns = p5.Camera: The newly created camera object.
setCamera__description__0 = Sets the current (active) camera of a 3D sketch. Allows for switching between multiple cameras.
setCamera__params__cam = p5.Camera: p5.Camera object
setAttributes__description__0 = Set attributes for the WebGL Drawing context. This is a way of adjusting how the WebGL renderer works to fine-tune the display and performance.
setAttributes__description__1 = Note that this will reinitialize the drawing context if called after the WebGL canvas is made.
setAttributes__description__2 = If an object is passed as the parameter, all attributes not declared in the object will be set to defaults.
setAttributes__description__3 = The available attributes are:  alpha - indicates if the canvas contains an alpha buffer default is false
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
