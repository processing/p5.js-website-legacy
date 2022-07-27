description__0 = Thin wrapper around a renderer, to be used for creating a graphics buffer object. Use this class if you need to draw into an off-screen graphics buffer. The two parameters define the width and height in pixels. The fields and methods for this class are extensive, but mirror the normal drawing API for p5.
params__w = Number: width
params__h = Number: height
params__renderer = Constant: the renderer to use, either P2D or WEBGL
params__pInst = P5: (Optional) pointer to p5 instance
reset__description__0 = Resets certain values such as those modified by functions in the Transform category and in the Lights category that are not automatically reset with graphics buffer objects. Calling this in <a href='#/p5/draw'>draw()</a> will copy the behavior of the standard canvas.
remove__description__0 = Removes a Graphics object from the page and frees any resources associated with it.
