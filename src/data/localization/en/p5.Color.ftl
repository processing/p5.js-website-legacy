description__0 = Each color stores the color mode and level maxes that was applied at the time of its construction. These are used to interpret the input arguments (at construction and later for that instance of color) and to format the output e.g. when <a href="#/p5/saturation">saturation()</a> is requested.
description__1 = Internally, we store an array representing the ideal RGBA values in floating point form, normalized from 0 to 1. From this we calculate the closest screen color (RGBA levels from 0 to 255) and expose this to the renderer.
description__2 = We also cache normalized, floating point components of the color in various representations as they are calculated. This is done to prevent repeating a conversion that has already been performed.
toString__description__0 = This function returns the color formatted as a string. This can be useful for debugging, or for using p5.js with other libraries.
toString__returns = String: the formatted string
toString__params__format = String: (Optional) How the color string will be formatted. Leaving this empty formats the string as rgba(r, g, b, a). '#rgb' '#rgba' '#rrggbb' and '#rrggbbaa' format as hexadecimal color codes. 'rgb' 'hsb' and 'hsl' return the color formatted in the specified color mode. 'rgba' 'hsba' and 'hsla' are the same as above but with alpha channels. 'rgb%' 'hsb%' 'hsl%' 'rgba%' 'hsba%' and 'hsla%' format as percentages.
setRed__description__0 = The setRed function sets the red component of a color. The range depends on your color mode, in the default RGB mode it's between 0 and 255.
setRed__params__red = Number: the new red value
setGreen__description__0 = The setGreen function sets the green component of a color. The range depends on your color mode, in the default RGB mode it's between 0 and 255.
setGreen__params__green = Number: the new green value
setBlue__description__0 = The setBlue function sets the blue component of a color. The range depends on your color mode, in the default RGB mode it's between 0 and 255.
setBlue__params__blue = Number: the new blue value
setAlpha__description__0 = The setAlpha function sets the transparency (alpha) value of a color. The range depends on your color mode, in the default RGB mode it's between 0 and 255.
setAlpha__params__alpha = Number: the new alpha value
