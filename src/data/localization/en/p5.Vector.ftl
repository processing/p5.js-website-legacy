description__0 = A class to describe a two or three dimensional vector, specifically a Euclidean (also known as geometric) vector. A vector is an entity that has both magnitude and direction. The datatype, however, stores the components of the vector (x, y for 2D, and x, y, z for 3D). The magnitude and direction can be accessed via the methods <a href="#/p5.Vector/mag">mag()</a> and <a href="#/p5.Vector/heading">heading()</a>.
description__1 = In many of the p5.js examples, you will see <a href="#/p5.Vector">p5.Vector</a> used to describe a position, velocity, or acceleration. For example, if you consider a rectangle moving across the screen, at any given instant it has a position (a vector that points from the origin to its location), a velocity (the rate at which the object's position changes per time unit, expressed as a vector), and acceleration (the rate at which the object's velocity changes per time unit, expressed as a vector).
description__2 = Since vectors represent groupings of values, we cannot simply use traditional addition/multiplication/etc. Instead, we'll need to do some "vector" math, which is made easy by the methods inside the <a href="#/p5.Vector">p5.Vector</a> class.
params__x = Number: (Optional) x component of the vector
params__y = Number: (Optional) y component of the vector
params__z = Number: (Optional) z component of the vector
x__description__0 = The x component of the vector
y__description__0 = The y component of the vector
z__description__0 = The z component of the vector
toString__description__0 = Returns a string representation of a vector v by calling String(v) or v.toString(). This method is useful for logging vectors in the console.
toString__returns = String:
set__description__0 = Sets the x, y, and z component of the vector using two or three separate variables, the data from a <a href="#/p5.Vector">p5.Vector</a>, or the values from a float array.
set__params__x = Number: (Optional) the x component of the vector
set__params__y = Number: (Optional) the y component of the vector
set__params__z = Number: (Optional) the z component of the vector
set__params__value = p5.Vector|Number[]: the vector to set
copy__description__0 = Gets a copy of the vector, returns a <a href="#/p5.Vector">p5.Vector</a> object.
copy__returns = p5.Vector: the copy of the <a href="#/p5.Vector">p5.Vector</a> object
add__description__0 = Adds x, y, and z components to a vector, adds one vector to another, or adds two independent vectors together. The version of the method that adds two vectors together is a static method and returns a <a href="#/p5.Vector">p5.Vector</a>, the others acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
add__params__x = Number: the x component of the vector to be added
add__params__y = Number: (Optional) the y component of the vector to be added
add__params__z = Number: (Optional) the z component of the vector to be added
add__params__value = p5.Vector|Number[]: the vector to add
add__params__v1 = p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to add
add__params__v2 = p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to add
add__params__target = p5.Vector: (Optional) the vector to receive the result
rem__description__0 = Gives remainder of a vector when it is divided by another vector. See examples for more context.
rem__params__x = Number: the x component of divisor vector
rem__params__y = Number: the y component of divisor vector
rem__params__z = Number: the z component of divisor vector
rem__params__value = p5.Vector | Number[]: divisor vector
rem__params__v1 = p5.Vector: dividend <a href="#/p5.Vector">p5.Vector</a>
rem__params__v2 = p5.Vector: divisor <a href="#/p5.Vector">p5.Vector</a>
sub__description__0 = Subtracts x, y, and z components from a vector, subtracts one vector from another, or subtracts two independent vectors. The version of the method that subtracts two vectors is a static method and returns a <a href="#/p5.Vector">p5.Vector</a>, the other acts directly on the vector. Additionally, you may provide arguments to this function as an array. See the examples for more context.
sub__params__x = Number: the x component of the vector to subtract
sub__params__y = Number: (Optional) the y component of the vector to subtract
sub__params__z = Number: (Optional) the z component of the vector to subtract
sub__params__value = p5.Vector|Number[]: the vector to subtract
sub__params__v1 = p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to subtract from
sub__params__v2 = p5.Vector: a <a href="#/p5.Vector">p5.Vector</a> to subtract
sub__params__target = p5.Vector: (Optional) the vector to receive the result
mult__description__0 = Multiplies the vector by a scalar, multiplies the x, y, and z components from a vector, or multiplies the x, y, and z components of two independent vectors. When multiplying a vector by a scalar, the x, y, and z components of the vector are all multiplied by the scalar. When multiplying a vector by a vector, the x, y, z components of both vectors are multiplied by each other (for example, with two vectors a and b: a.x * b.x, a.y * b.y, a.z * b.z). The static version of this method creates a new <a href="#/p5.Vector">p5.Vector</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.
mult__params__n = Number: The number to multiply with the vector
mult__params__x = Number: The number to multiply with the x component of the vector
mult__params__y = Number: The number to multiply with the y component of the vector
mult__params__z = Number: (Optional) The number to multiply with the z component of the vector
mult__params__arr = Number[]: The array to multiply with the components of the vector
mult__params__v = p5.Vector: The vector to multiply with the components of the original vector
mult__params__target = p5.Vector: (Optional) the vector to receive the result
mult__params__v0 = p5.Vector
mult__params__v1 = p5.Vector
div__description__0 = Divides the vector by a scalar, divides a vector by the x, y, and z arguments, or divides the x, y, and z components of two vectors against each other. When dividing a vector by a scalar, the x, y, and z components of the vector are all divided by the scalar. When dividing a vector by a vector, the x, y, z components of the source vector are treated as the dividend, and the x, y, z components of the argument is treated as the divisor (for example with two vectors a and b: a.x / b.x, a.y / b.y, a.z / b.z). The static version of this method creates a new <a href="#/p5.Vector">p5.Vector</a> while the non static version acts on the vector directly. Additionally, you may provide arguments to this function as an array. See the examples for more context.
div__params__n = Number: The number to divide the vector by
div__params__x = Number: The number to divide with the x component of the vector
div__params__y = Number: The number to divide with the y component of the vector
div__params__z = Number: (Optional) The number to divide with the z component of the vector
div__params__arr = Number[]: The array to divide the components of the vector by
div__params__v = p5.Vector: The vector to divide the components of the original vector by
div__params__target = p5.Vector: (Optional) the vector to receive the result
div__params__v0 = p5.Vector
div__params__v1 = p5.Vector
mag__description__0 = Calculates the magnitude (length) of the vector and returns the result as a float (this is simply the equation sqrt(x*x + y*y + z*z).)
mag__returns = Number: magnitude of the vector
mag__params__vecT = p5.Vector: the vector to return the magnitude of
magSq__description__0 = Calculates the squared magnitude of the vector and returns the result as a float (this is simply the equation <em>(x*x + y*y + z*z)</em>.) Faster if the real length is not required in the case of comparing vectors, etc.
magSq__returns = Number: squared magnitude of the vector
dot__description__0 = Calculates the dot product of two vectors. The version of the method that computes the dot product of two independent vectors is a static method. See the examples for more context.
dot__returns = Number: the dot product
dot__params__x = Number: x component of the vector
dot__params__y = Number: (Optional) y component of the vector
dot__params__z = Number: (Optional) z component of the vector
dot__params__value = p5.Vector: value component of the vector or a <a href="#/p5.Vector">p5.Vector</a>
dot__params__v1 = p5.Vector: the first <a href="#/p5.Vector">p5.Vector</a>
dot__params__v2 = p5.Vector: the second <a href="#/p5.Vector">p5.Vector</a>
cross__description__0 = Calculates and returns a vector composed of the cross product between two vectors. Both the static and non static methods return a new <a href="#/p5.Vector">p5.Vector</a>. See the examples for more context.
cross__returns = p5.Vector: <a href="#/p5.Vector">p5.Vector</a> composed of cross product
cross__params__v = p5.Vector: <a href="#/p5.Vector">p5.Vector</a> to be crossed
cross__params__v1 = p5.Vector: the first <a href="#/p5.Vector">p5.Vector</a>
cross__params__v2 = p5.Vector: the second <a href="#/p5.Vector">p5.Vector</a>
dist__description__0 = Calculates the Euclidean distance between two points (considering a point as a vector object). If you are looking to calculate distance with 2 points see <a href="#/p5/dist">dist()</a>
dist__returns = Number: the distance
dist__params__v = p5.Vector: the x, y, and z coordinates of a <a href="#/p5.Vector">p5.Vector</a>
dist__params__v1 = p5.Vector: the first <a href="#/p5.Vector">p5.Vector</a>
dist__params__v2 = p5.Vector: the second <a href="#/p5.Vector">p5.Vector</a>
normalize__description__0 = Normalize the vector to length 1 (make it a unit vector).
normalize__returns = p5.Vector: normalized <a href="#/p5.Vector">p5.Vector</a>
normalize__params__v = p5.Vector: the vector to normalize
normalize__params__target = p5.Vector: (Optional) the vector to receive the result
limit__description__0 = Limit the magnitude of this vector to the value used for the <b>max</b> parameter.
limit__params__max = Number: the maximum magnitude for the vector
setMag__description__0 = Set the magnitude of this vector to the value used for the <b>len</b> parameter.
setMag__params__len = Number: the new length for this vector
heading__description__0 = Calculate the angle of rotation for this vector(only 2D vectors). p5.Vectors created using <a href="#/p5/createVector">createVector()</a> will take the current <a href="#/p5/angleMode">angleMode</a> into consideration, and give the angle in radians or degree accordingly.
heading__returns = Number: the angle of rotation
setHeading__description__0 = Rotate the vector to a specific angle (only 2D vectors), magnitude remains the same
setHeading__params__angle = Number: the angle of rotation
rotate__description__0 = Rotate the vector by an angle (only 2D vectors), magnitude remains the same
rotate__params__angle = Number: the angle of rotation
rotate__params__v = p5.Vector
rotate__params__target = p5.Vector: (Optional) the vector to receive the result
angleBetween__description__0 = Calculates and returns the angle between two vectors. This function will take the current <a href="#/p5/angleMode">angleMode</a> into consideration, and give the angle in radians or degree accordingly.
angleBetween__returns = Number: the angle between (in radians)
angleBetween__params__value = p5.Vector: the x, y, and z components of a <a href="#/p5.Vector">p5.Vector</a>
lerp__description__0 = Linear interpolate the vector to another vector
lerp__params__x = Number: the x component
lerp__params__y = Number: the y component
lerp__params__z = Number: the z component
lerp__params__amt = Number: the amount of interpolation; some value between 0.0  (old vector) and 1.0 (new vector). 0.9 is very near  the new vector. 0.5 is halfway in between.
lerp__params__v = p5.Vector: the <a href="#/p5.Vector">p5.Vector</a> to lerp to
lerp__params__v1 = p5.Vector
lerp__params__v2 = p5.Vector
lerp__params__target = p5.Vector: (Optional) the vector to receive the result
reflect__description__0 = Reflect the incoming vector about a normal to a line in 2D, or about a normal to a plane in 3D This method acts on the vector directly
reflect__params__surfaceNormal = p5.Vector: the <a href="#/p5.Vector">p5.Vector</a> to reflect about, will be normalized by this method
array__description__0 = Return a representation of this vector as a float array. This is only for temporary use. If used in any other fashion, the contents should be copied by using the <b>p5.Vector.<a href="#/p5.Vector/copy">copy()</a></b> method to copy into your own array.
array__returns = Number[]: an Array with the 3 values
equals__description__0 = Equality check against a <a href="#/p5.Vector">p5.Vector</a>
equals__returns = Boolean: whether the vectors are equals
equals__params__x = Number: (Optional) the x component of the vector
equals__params__y = Number: (Optional) the y component of the vector
equals__params__z = Number: (Optional) the z component of the vector
equals__params__value = p5.Vector|Array: the vector to compare
fromAngle__description__0 = Make a new 2D vector from an angle
fromAngle__returns = p5.Vector: the new <a href="#/p5.Vector">p5.Vector</a> object
fromAngle__params__angle = Number: the desired angle, in radians (unaffected by <a href="#/p5/angleMode">angleMode</a>)
fromAngle__params__length = Number: (Optional) the length of the new vector (defaults to 1)
fromAngles__description__0 = Make a new 3D vector from a pair of ISO spherical angles
fromAngles__returns = p5.Vector: the new <a href="#/p5.Vector">p5.Vector</a> object
fromAngles__params__theta = Number: the polar angle, in radians (zero is up)
fromAngles__params__phi = Number: the azimuthal angle, in radians  (zero is out of the screen)
fromAngles__params__length = Number: (Optional) the length of the new vector (defaults to 1)
random2D__description__0 = Make a new 2D unit vector from a random angle
random2D__returns = p5.Vector: the new <a href="#/p5.Vector">p5.Vector</a> object
random3D__description__0 = Make a new random 3D unit vector.
random3D__returns = p5.Vector: the new <a href="#/p5.Vector">p5.Vector</a> object
