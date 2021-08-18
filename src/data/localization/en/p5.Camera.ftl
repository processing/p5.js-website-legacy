description__0 = This class describes a camera for use in p5's <a href="https://github.com/processing/p5.js/wiki/Getting-started-with-WebGL-in-p5"> WebGL mode</a>. It contains camera position, orientation, and projection information necessary for rendering a 3D scene.
description__1 = New p5.Camera objects can be made through the <a href="#/p5/createCamera">createCamera()</a> function and controlled through the methods described below. A camera created in this way will use a default position in the scene and a default perspective projection until these properties are changed through the various methods available. It is possible to create multiple cameras, in which case the current camera can be set through the <a href="#/p5/setCamera">setCamera()</a> method.
description__2 = Note: The methods below operate in two coordinate systems: the 'world' coordinate system describe positions in terms of their relationship to the origin along the X, Y and Z axes whereas the camera's 'local' coordinate system describes positions from the camera's point of view: left-right, up-down, and forward-backward. The <a href="#/p5.Camera/move">move()</a> method, for instance, moves the camera along its own axes, whereas the <a href="#/p5.Camera/setPosition">setPosition()</a> method sets the camera's position in world-space.
description__3 = The camera object propreties <code>eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ</code> which describes camera position, orientation, and projection are also accessible via the camera object generated using <a href="#/p5/createCamera">createCamera()</a>
params__rendererGL = RendererGL: instance of WebGL renderer
eyeX__description__0 = camera position value on x axis
eyeY__description__0 = camera position value on y axis
eyeZ__description__0 = camera position value on z axis
centerX__description__0 = x coordinate representing center of the sketch
centerY__description__0 = y coordinate representing center of the sketch
centerZ__description__0 = z coordinate representing center of the sketch
upX__description__0 = x component of direction 'up' from camera
upY__description__0 = y component of direction 'up' from camera
upZ__description__0 = z component of direction 'up' from camera
perspective__description__0 = Sets a perspective projection. Accepts the same parameters as the global <a href="#/p5/perspective">perspective()</a>. More information on this function can be found there.
ortho__description__0 = Sets an orthographic projection. Accepts the same parameters as the global <a href="#/p5/ortho">ortho()</a>. More information on this function can be found there.
frustum__description__0 = Sets the camera's frustum. Accepts the same parameters as the global <a href="#/p5/frustum">frustum()</a>. More information on this function can be found there.
pan__description__0 = Panning rotates the camera view to the left and right.
pan__params__angle = Number: amount to rotate camera in current <a href="#/p5/angleMode">angleMode</a> units. Greater than 0 values rotate counterclockwise (to the left).
tilt__description__0 = Tilting rotates the camera view up and down.
tilt__params__angle = Number: amount to rotate camera in current <a href="#/p5/angleMode">angleMode</a> units. Greater than 0 values rotate counterclockwise (to the left).
lookAt__description__0 = Reorients the camera to look at a position in world space.
lookAt__params__x = Number: x position of a point in world space
lookAt__params__y = Number: y position of a point in world space
lookAt__params__z = Number: z position of a point in world space
camera__description__0 = Sets the camera's position and orientation. Accepts the same parameters as the global <a href="#/p5/camera">camera()</a>. More information on this function can be found there.
move__description__0 = Move camera along its local axes while maintaining current camera orientation.
move__params__x = Number: amount to move along camera's left-right axis
move__params__y = Number: amount to move along camera's up-down axis
move__params__z = Number: amount to move along camera's forward-backward axis
setPosition__description__0 = Set camera position in world-space while maintaining current camera orientation.
setPosition__params__x = Number: x position of a point in world space
setPosition__params__y = Number: y position of a point in world space
setPosition__params__z = Number: z position of a point in world space
