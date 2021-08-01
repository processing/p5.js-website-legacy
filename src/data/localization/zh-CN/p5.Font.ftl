description__0 = Base class for font handling
params__pInst = P5: (Optional) pointer to p5 instance
font__description__0 = Underlying opentype font implementation
textBounds__description__0 = Returns a tight bounding box for the given text string using this font
textBounds__returns = Object: a rectangle object with properties: x, y, w, h
textBounds__params__line = String: a line of text
textBounds__params__x = Number: x-position
textBounds__params__y = Number: y-position
textBounds__params__fontSize = Number: (Optional) font size to use (optional) Default is 12.
textBounds__params__options = Object: (Optional) opentype options (optional)  opentype fonts contains alignment and baseline options.  Default is 'LEFT' and 'alphabetic'
textToPoints__description__0 = Computes an array of points following the path for specified text
textToPoints__returns = Array: an array of points, each with x, y, alpha (the path angle)
textToPoints__params__txt = String: a line of text
textToPoints__params__x = Number: x-position
textToPoints__params__y = Number: y-position
textToPoints__params__fontSize = Number: font size to use (optional)
textToPoints__params__options = Object: (Optional) an (optional) object that can contain: sampleFactor - the ratio of path-length to number of samples (default=.1); higher values yield more points and are therefore more precise simplifyThreshold - if set to a non-zero value, collinear points will be be removed from the polygon; the value represents the threshold angle to use when determining whether two edges are collinear
