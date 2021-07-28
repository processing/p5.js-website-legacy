description__0 = p5의 <a href = 'https://github.com/processing/p5.js/wiki/Getting-started-with-WebGL-in-p5'>WebGL 모드</a>용 카메라를 위한 클래스입니다. 3D씬 렌더링에 필요한 카메라 위치, 방향, 투영 정보 등을 포함합니다.<br><br>createCamera()로 새로운 p5.Camera 객체를 생성하고, 아래의 메소드들을 통해 이를 제어할 수 있습니다. 이러한 방식으로 생성된 카메라는, 여타 메소드들을 통해 변경하지 않는 한, 화면에 기본값으로 설정된 위치 및 투시 투영법을 사용합니다. 여러 대의 카메라 생성 또한 가능한데, 이 경우 setCamera() 메소드로 현재 카메라를 설정할 수 있습니다.<br><br>참고: 아래의 메소드들은 다음 2개의 좌표계에서 작동합니다: 월드 좌표계는 X,Y,Z축 상의 원점에 대한 위치를 나타내는 반면, 로컬 좌표계는 카메라 시점에서의 위치(좌-우, 위-아래, 앞-뒤)를 나타냅니다. move() 메소드는 카메라의 자체 축을 따라 움직이는 반면, setPosition()은 월드 스페이스에서의 카메라의 위치를 설정합니다.
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
perspective__description__0 = p5.Camera 객체의 투시 투영법을 설정하고, perspective() 구문에 따라 해당 투영법의 매개변수를 설정합니다.
ortho__description__0 = p5.Camera 객체의 직교 투영법을 설정하고, ortho() 구문에 따라 해당 투영법의 매개변수를 설정합니다.
frustum__description__0 = Sets the camera's frustum. Accepts the same parameters as the global <a href="#/p5/frustum">frustum()</a>. More information on this function can be found there.
pan__description__0 = 패닝은 카메라 화면을 좌우로 회전합니다.
pan__params__angle = Number: amount to rotate camera in current <a href="#/p5/angleMode">angleMode</a> units. Greater than 0 values rotate counterclockwise (to the left).
tilt__description__0 = 틸트는 카메라 화면을 상하로 회전합니다.
tilt__params__angle = Number: amount to rotate camera in current <a href="#/p5/angleMode">angleMode</a> units. Greater than 0 values rotate counterclockwise (to the left).
lookAt__description__0 = 월드 스페이스 위치에서 보도록 카메라 방향을 조정합니다.
lookAt__params__x = Number: x position of a point in world space
lookAt__params__y = Number: y position of a point in world space
lookAt__params__z = Number: z position of a point in world space
camera__description__0 = 카메라의 위치와 방향을 설정합니다. p5.Camera 객체에 camera()를 호출하는 것과 동일한 효과를 갖습니다.
move__description__0 = 현재 카메라 방향을 유지하면서 그 로컬축을 따라 이동합니다.
move__params__x = Number: amount to move along camera's left-right axis
move__params__y = Number: amount to move along camera's up-down axis
move__params__z = Number: amount to move along camera's forward-backward axis
setPosition__description__0 = 현재 카메라 방향을 유지하면서 카메라의 위치를 월드 스페이스에서의 위치로 설정합니다.
setPosition__params__x = Number: x position of a point in world space
setPosition__params__y = Number: y position of a point in world space
setPosition__params__z = Number: z position of a point in world space
