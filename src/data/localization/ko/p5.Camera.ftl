description__0 = p5의 <a href = 'https://github.com/processing/p5.js/wiki/Getting-started-with-WebGL-in-p5'>WebGL 모드</a>용 카메라를 위한 클래스입니다. 3D씬 렌더링에 필요한 카메라 위치, 방향, 투영 정보 등을 포함합니다.
description__1 = createCamera()로 새로운 p5.Camera 객체를 생성하고, 아래의 메소드들을 통해 이를 제어할 수 있습니다. 이러한 방식으로 생성된 카메라는, 여타 메소드들을 통해 변경하지 않는 한, 화면에 기본값으로 설정된 위치 및 투시 투영법을 사용합니다. 여러 대의 카메라 생성 또한 가능한데, 이 경우 setCamera() 메소드로 현재 카메라를 설정할 수 있습니다.
description__2 = 참고: 아래의 메소드들은 다음 2개의 좌표계에서 작동합니다: 월드 좌표계는 X,Y,Z축 상의 원점에 대한 위치를 나타내는 반면, 로컬 좌표계는 카메라 시점에서의 위치(좌-우, 위-아래, 앞-뒤)를 나타냅니다. move() 메소드는 카메라의 자체 축을 따라 움직이는 반면, setPosition()은 월드 공간에서의 카메라의 위치를 설정합니다.
description__3 = 카메라 객체의 속성인 <code>eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ</code> 은 카메라 위치, 화면방향, 투영을 지정하며, <a href="#/p5/createCamera">createCamera()</a> 함수를 통해 형성된 카메라 객체에도 찾을 수 있습니다.
params__rendererGL = RendererGL: WebGL 렌더러의 인스턴스
eyeX__description__0 = x 축에 있는 카메라 위치 값
eyeY__description__0 = y 축에 있는 카메라 위치 값
eyeZ__description__0 = z 축에 있는 카메라 위치 값
centerX__description__0 = 스케치의 중심을 표시하는 x 좌표
centerY__description__0 = 스케치의 중심을 표시하는 y 좌표
centerZ__description__0 = 스케치의 중심을 표시하는 z 좌표
upX__description__0 = 카메라의 '위' 방향을 표시하는 x 구성요소
upY__description__0 = 카메라의 '위' 방향을 표시하는 y 구성요소
upZ__description__0 = 카메라의 '위' 방향을 표시하는 z 구성요소
perspective__description__0 = p5.Camera 객체의 투시 투영법을 설정하고, perspective() 구문에 따라 해당 투영법의 매개변수를 설정합니다.
ortho__description__0 = p5.Camera 객체의 직교 투영법을 설정하고, ortho() 구문에 따라 해당 투영법의 매개변수를 설정합니다.
frustum__description__0 = 주어진 매개변수로 퍼스펙티브 매트릭스 (perspective matrix)를 만듧니다.
frustum__description__1 = frustum은 피라미드 모양의 상단을 바닥과 평행한 면에서 잘라낸 기하학적 모양입니다. 이 피라미드의 위에 보는 사람의 눈이 있다 가정하면서 여섯 면은 장면의 특정 부분만 렌더링하는데에 쓰이는 가상의 면인 clipping plane입니다. 3D로 렌더링 할 시, 이 여섯 면 안에 있는 물체는 보이며, 그 바깥에 있는 물체는 보이지 않습니다. 이 <https://docs.unity3d.com/kr/530/Manual/UnderstandingFrustum.html">링크</a>를 통해 더 자세히 알 수 있습니다.
frustum__description__2 = frustum을 설정하면 렌더링되는 장면이 달라집니다. 이는 간단하게 <a href="https://p5js.org/reference/#/p5/perspective">perspective()</a> 함수를 통해 이룰 수도 있습니다.
frustum__params__left = 숫자: (선택 사항) 카메라 frustum의 왼쪽 면
frustum__params__right = 숫자: (선택 사항) 카메라 frustum의 오른쪽 면
frustum__params__bottom = 숫자: (선택 사항) 카메라 frustum의 밑 면
frustum__params__top = 숫자: (선택 사항) 카메라 frustum의 위 면
frustum__params__near = 숫자: (선택 사항) 카메라 frustum의 근거리 면
frustum__params__far = 숫자: (선택 사항) 카메라 frustum의 장거리 면
pan__description__0 = 패닝은 카메라 화면을 좌우로 회전합니다.
pan__params__angle = 숫자: 현재 <a href="#/p5/angleMode">angleMode</a> 단위로 카메라를 회전할 정도. 0을 초과하는 숫자는 카메라를 시계방향(왼쪽)으로 회전시킵니다.
tilt__description__0 = 틸트는 카메라 화면을 상하로 회전합니다.
tilt__params__angle = 숫자: 현재 <a href="#/p5/angleMode">angleMode</a> 단위로 카메라를 회전할 정도. 0을 초과하는 숫자는 카메라를 시계방향(왼쪽)으로 회전시킵니다.
lookAt__description__0 = 월드 공간 위치에서 보도록 카메라 방향을 조정합니다.
lookAt__params__x = 숫자: 월드 공간 속 한 점의 x 위치
lookAt__params__y = 숫자: 월드 공간 속 한 점의 y 위치
lookAt__params__z = 숫자: 월드 공간 속 한 점의 z 위치
camera__description__0 = 카메라의 위치와 방향을 설정합니다. p5.Camera 객체에 camera()를 호출하는 것과 동일한 효과를 갖습니다.
move__description__0 = 현재 카메라 방향을 유지하면서 그 로컬축을 따라 이동합니다.
move__params__x = 숫자: 카메라의 좌우축에서 움직일 정도
move__params__y = 숫자: 카메라의 상하축에서 움직일 정도
move__params__z = 숫자: 카메라의 앞뒤축에서 움직일 정도
setPosition__description__0 = 현재 카메라 방향을 유지하면서 카메라의 위치를 월드 공간에서의 위치로 설정합니다.
setPosition__params__x = 숫자: 월드 공간 속 한 점의 x 위치
setPosition__params__y = 숫자: 월드 공간 속 한 점의 y 위치
setPosition__params__z = 숫자: 월드 공간 속 한 점의 z 위치
