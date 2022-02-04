description__0 = Creates a new <a href="#/p5.Image">p5.Image</a>. A <a href="#/p5.Image">p5.Image</a> is a canvas backed representation of an image.
description__1 = p5 can display .gif, .jpg and .png images. Images may be displayed in 2D and 3D space. Before an image is used, it must be loaded with the <a href="#/p5/loadImage">loadImage()</a> function. The <a href="#/p5.Image">p5.Image</a> class contains fields for the width and height of the image, as well as an array called <a href="#/p5.Image/pixels">pixels[]</a> that contains the values for every pixel in the image.
description__2 = The methods described below allow easy access to the image's pixels and alpha channel and simplify the process of compositing.
description__3 = Before using the <a href="#/p5.Image/pixels">pixels[]</a> array, be sure to use the <a href="#/p5.Image/loadPixels">loadPixels()</a> method on the image to make sure that the pixel data is properly loaded.
params__width = Number
params__height = Number
width__description__0 = Image width.
height__description__0 = Image height.
pixels__description__0 = Array containing the values for all the pixels in the display window. These values are numbers. This array is the size (include an appropriate factor for pixelDensity) of the display window x4, representing the R, G, B, A values in order for each pixel, moving from left to right across each row, then down each column. Retina and other high density displays may have more pixels (by a factor of pixelDensity^2). For example, if the image is 100×100 pixels, there will be 40,000. With pixelDensity = 2, there will be 160,000. The first four values (indices 0-3) in the array will be the R, G, B, A values of the pixel at (0, 0). The second four values (indices 4-7) will contain the R, G, B, A values of the pixel at (1, 0). More generally, to set values for a pixel at (x, y): <pre><code class="language-javascript">let d = pixelDensity(); for (let i = 0; i < d; i++) {"{"}  for (let j = 0; j < d; j++) {"{"}  // loop over  index = 4 * ((y * d + j) * width * d + (x * d + i));  pixels[index] = r;  pixels[index+1] = g;  pixels[index+2] = b;  pixels[index+3] = a;  {"}"} {"}"}</code></pre>
pixels__description__1 = Before accessing this array, the data must loaded with the <a href="#/p5.Image/loadPixels">loadPixels()</a> function. After the array data has been modified, the <a href="#/p5.Image/updatePixels">updatePixels()</a> function must be run to update the changes.
loadPixels__description__0 = Loads the pixels data for this image into the [pixels] attribute.
updatePixels__description__0 = Updates the backing canvas for this image with the contents of the [pixels] array.
updatePixels__description__1 = If this image is an animated GIF then the pixels will be updated in the frame that is currently displayed.
updatePixels__params__x = Integer: x-offset of the target update area for the  underlying canvas
updatePixels__params__y = Integer: y-offset of the target update area for the  underlying canvas
updatePixels__params__w = Integer: height of the target update area for the  underlying canvas
updatePixels__params__h = Integer: height of the target update area for the  underlying canvas
get__description__0 = Get a region of pixels from an image.
get__description__1 = If no params are passed, the whole image is returned. If x and y are the only params passed a single pixel is extracted. If all params are passed a rectangle region is extracted and a <a href="#/p5.Image">p5.Image</a> is returned.
get__returns = p5.Image: the rectangle <a href="#/p5.Image">p5.Image</a>
get__params__x = Number: x-coordinate of the pixel
get__params__y = Number: y-coordinate of the pixel
get__params__w = Number: width
get__params__h = Number: height
set__description__0 = Set the color of a single pixel or write an image into this <a href="#/p5.Image">p5.Image</a>.
set__description__1 = Note that for a large number of pixels this will be slower than directly manipulating the pixels array and then calling <a href="#/p5.Image/updatePixels">updatePixels()</a>.
set__params__x = Number: x-coordinate of the pixel
set__params__y = Number: y-coordinate of the pixel
set__params__a = Number|Number[]|Object: grayscale value | pixel array |  a <a href="#/p5.Color">p5.Color</a> | image to copy
resize__description__0 = Resize the image to a new width and height. To make the image scale proportionally, use 0 as the value for the wide or high parameter. For instance, to make the width of an image 150 pixels, and change the height using the same proportion, use resize(150, 0).
resize__params__width = Number: the resized image width
resize__params__height = Number: the resized image height
copy__description__0 = Copies a region of pixels from one image to another. If no srcImage is specified this is used as the source. If the source and destination regions aren't the same size, it will automatically resize source pixels to fit the specified target region.
copy__params__srcImage = p5.Image|p5.Element: source image
copy__params__sx = Integer: X coordinate of the source's upper left corner
copy__params__sy = Integer: Y coordinate of the source's upper left corner
copy__params__sw = Integer: source image width
copy__params__sh = Integer: source image height
copy__params__dx = Integer: X coordinate of the destination's upper left corner
copy__params__dy = Integer: Y coordinate of the destination's upper left corner
copy__params__dw = Integer: destination image width
copy__params__dh = Integer: destination image height
mask__description__0 = Masks part of an image from displaying by loading another image and using its alpha channel as an alpha channel for this image. Masks are cumulative, one applied to an image object, they cannot be removed.
mask__params__srcImage = p5.Image: source image
filter__description__0 = Applies an image filter to a <a href="#/p5.Image">p5.Image</a>
filter__description__1 = THRESHOLD Converts the image to black and white pixels depending if they are above or below the threshold defined by the level parameter. The parameter must be between 0.0 (black) and 1.0 (white). If no level is specified, 0.5 is used.
filter__description__2 = GRAY Converts any colors in the image to grayscale equivalents. No parameter is used.
filter__description__3 = OPAQUE Sets the alpha channel to entirely opaque. No parameter is used.
filter__description__4 = INVERT Sets each pixel to its inverse value. No parameter is used.
filter__description__5 = POSTERIZE Limits each channel of the image to the number of colors specified as the parameter. The parameter can be set to values between 2 and 255, but results are most noticeable in the lower ranges.
filter__description__6 = BLUR Executes a Gaussian blur with the level parameter specifying the extent of the blurring. If no parameter is used, the blur is equivalent to Gaussian blur of radius 1. Larger values increase the blur.
filter__description__7 = ERODE Reduces the light areas. No parameter is used.
filter__description__8 = DILATE Increases the light areas. No parameter is used.
filter__description__9 = filter() does not work in WEBGL mode. A similar effect can be achieved in WEBGL mode using custom shaders. Adam Ferriss has written a <a href="https://github.com/aferriss/p5jsShaderExamples" target='_blank'>selection of shader examples</a> that contains many of the effects present in the filter examples.
filter__params__filterType = Constant: either THRESHOLD, GRAY, OPAQUE, INVERT,  POSTERIZE, ERODE, DILATE or BLUR.  See Filters.js for docs on  each available filter
filter__params__filterParam = Number: (Optional) an optional parameter unique  to each filter, see above
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
blend__params__blendMode = Constant: the blend mode. either  BLEND, DARKEST, LIGHTEST, DIFFERENCE,  MULTIPLY, EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT,  SOFT_LIGHT, DODGE, BURN, ADD or NORMAL. Available blend modes are: normal | multiply | screen | overlay |  darken | lighten | color-dodge | color-burn | hard-light |  soft-light | difference | exclusion | hue | saturation |  color | luminosity <a href="http://blogs.adobe.com/webplatform/2013/01/28/blending-features-in-canvas/">http://blogs.adobe.com/webplatform/2013/01/28/blending-features-in-canvas/</a>
save__description__0 = Saves the image to a file and force the browser to download it. Accepts two strings for filename and file extension Supports png (default), jpg, and gif  Note that the file will only be downloaded as an animated GIF if the p5.Image was loaded from a GIF file.
save__params__filename = String: give your file a name
save__params__extension = String: 'png' or 'jpg'
reset__description__0 = Starts an animated GIF over at the beginning state.
getCurrentFrame__description__0 = Gets the index for the frame that is currently visible in an animated GIF.
getCurrentFrame__returns = Number: The index for the currently displaying frame in animated GIF
setFrame__description__0 = Sets the index of the frame that is currently visible in an animated GIF
setFrame__params__index = Number: the index for the frame that should be displayed
numFrames__description__0 = Returns the number of frames in an animated GIF
numFrames__returns = Number:
play__description__0 = Plays an animated GIF that was paused with <a href="#/p5.Image/pause">pause()</a>
pause__description__0 = Pauses an animated GIF.
delay__description__0 = Changes the delay between frames in an animated GIF. There is an optional second parameter that indicates an index for a specific frame that should have its delay modified. If no index is given, all frames will have the new delay.
delay__params__d = Number: the amount in milliseconds to delay between switching frames
delay__params__index = Number: (Optional) the index of the frame that should have the new delay value {"{"}optional{"}"}
