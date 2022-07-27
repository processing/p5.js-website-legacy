description__0 = 2차원 및 3차원 벡터, 특히 유클리드 (기하학) 벡터를 설명하는 클래스입니다. 벡터는 크기와 방향을 모두 지닌 개체입니다. 하지만, 그 데이터 유형은 벡터의 성분(2D의 경우 x와 y, 3D의 경우 x, y, z)을 저장합니다. 크기와 방향은 각각 mag() 및 heading() 메소드를 통해 접근할 수 있습니다.
description__1 = p5.Vector는 위치, 속도, 가속을 다루는 수많은 p5.js 예제에서 사용됩니다. 예를 들어, 화면을 가로질러 움직이는 직사각형을 만들려면, 이 물체의 위치(원점에서 그 위치를 가리키는 벡터), 속도(단위 시간당 객체의 위치가 변하는 속도, 벡터로 표시), 그리고 가속도(단위 시간당 객체의 속도가 변하는 속도, 벡터로 표시)를 반드시 고려해야 합니다.
description__2 = 벡터는 그룹화된 값들을 나타냅니다. 따라서, 전통적인 덧셈/곱셈 대신, p5.Vector 클래스 내부의 벡터 수학 메소드를 사용해서 계산해야 합니다.
params__x = 숫자: (선택 사항) 벡터의 x성분
params__y = 숫자: (선택 사항) 벡터의 y성분
params__z = 숫자: (선택 사항) 벡터의 z성분
x__description__0 = 벡터의 x성분
y__description__0 = 벡터의 y성분
z__description__0 = 벡터의 z성분
set__description__0 = 두 세개의 개별 변수, p5.Vector 데이터, 또는 실수(float) 배열의 값들을 사용하여 벡터의 x, y, z 성분을 설정합니다.
set__params__x = 숫자: (선택 사항) 벡터의 x 성분
set__params__y = 숫자: (선택 사항) 벡터의 x 성분
set__params__z = 숫자: (선택 사항) 벡터의 z 성분
set__params__value = p5.Vector|숫자 배열[]: 설정할 벡터
copy__description__0 = 벡터의 복사본을 가져와 p5.Vector 객체를 반환합니다.
copy__returns = p5.Vector: <a href="#/p5.Vector">p5.Vector</a> 객체의 복사본
add__description__0 = x, y, z 성분을 벡터에 더하거나, 한 벡터를 다른 벡터에 더하거나, 또는 2개의 독립 벡터를 더합니다. 2개의 독립 벡터를 더하는 메소드는 정적 메소드에 해당하며, p5.Vector를 반환합니다. 다른 메소드들은 벡터에 직접 작용합니다. 자세한 내용을 위해서 예제를 참고할 수 있습니다.
add__params__x = 숫자: 추가할 벡터의 x 성분
add__params__y = 숫자: (선택 사항) 추가할 벡터의 y 성분
add__params__z = 숫자: (선택 사항) 추가할 벡터의 z 성분
add__params__value = p5.Vector|숫자 배열[]: 추가할 벡터
add__params__v1 = p5.Vector: 추가할 <a href="#/p5.Vector">p5.Vector</a>
add__params__v2 = p5.Vector: 추가할 <a href="#/p5.Vector">p5.Vector</a>
add__params__target = p5.Vector: (선택 사항) 결과를 받을 벡터
rem__description__0 = 한 벡터를 다른 벡터로 나눌 때의 나머지(remainder)를 구합니다. 자세한 내용을 위해서 예제를 참고할 수 있습니다.
rem__params__x = 숫자: 나누는 벡터의 x 성분
rem__params__y = 숫자: 나누는 벡터의 y 성분
rem__params__z = 숫자: 나누는 벡터의 z 성분
rem__params__value = p5.Vector | 숫자 배열[]: 나누는 벡터
rem__params__v1 = p5.Vector: 나누어지는 <a href="#/p5.Vector">p5.Vector</a>
rem__params__v2 = p5.Vector: 나누는 <a href="#/p5.Vector">p5.Vector</a>
sub__description__0 = x, y, z성분을 벡터에서 빼거나, 한 벡터에서 다른 벡터를 빼거나, 또는 2개의 독립 벡터를 뺍니다. 2개의 독립 벡터를 빼는 메소드는 정적 메소드에 해당하며, p5.Vector를 반환합니다. 다른 메소드들은 벡터에 직접 작용합니다. 자세한 내용은 예제를 참고할 수 있습니다.
sub__params__x = 숫자: 뺄샘할 벡터의 x 성분
sub__params__y = 숫자: (선택 사항) 뺄샘할 벡터의 y 성분
sub__params__z = 숫자: (선택 사항) 뺄샘할 벡터의 z 성분
sub__params__value = p5.Vector|숫자 배열[]: 뺄샘할 벡터
sub__params__v1 = p5.Vector: 뺄샘할 <a href="#/p5.Vector">p5.Vector</a>
sub__params__v2 = p5.Vector: 뺄샘할 <a href="#/p5.Vector">p5.Vector</a>
sub__params__target = p5.Vector: (선택 사항) 결과를 받을 벡터
mult__description__0 = 벡터에 스칼라를 곱합니다. 정적 메소드인 경우 새로운 p5.Vector를 생성하는 반면, 정적 메소드가 아닌 경우 벡터에 직접 작용합니다. 자세한 내용을 위해서 예제를 참고할 수 있습니다.
mult__params__n = 숫자: 벡터로 곱할 숫자
mult__params__x = 숫자: 벡터의 x 성분에 곱할 숫자
mult__params__y = 숫자: 벡터의 y 성분에 곱할 숫자
mult__params__z = 숫자: (선택 사항) 벡터의 z 성분에 곱할 숫자
mult__params__arr = 숫자 배열[]: 벡터의 성분들에 곱할 숫자 배열
mult__params__v = p5.Vector: 원본 벡터의 성분들에 곱할 벡터
mult__params__target = p5.Vector: (선택 사항) 결과를 받을 벡터
mult__params__v0 = p5.Vector
mult__params__v1 = p5.Vector
div__description__0 = 벡터를 스칼라로 나눕니다. 정적 메소드인 경우 새로운 p5.Vector를 생성하는 반면, 정적 메소드가 아닌 경우 벡터에 직접 작용합니다. 자세한 내용을 위해서 예제를 참고할 수 있습니다.
div__params__n = 숫자: 벡터를 나눌 숫자
div__params__x = 숫자: 벡터의 x 성분에 나눌 숫자
div__params__y = 숫자: 벡터의 y 성분에 나눌 숫자
div__params__z = 숫자: (선택 사항) 벡터의 z 성분에 나눌 숫자 
div__params__arr = 숫자 배열[]: 벡터의 성분들을 나눌 숫자
div__params__v = p5.Vector: 원본 벡터의 성분들을 나눌 벡터
div__params__target = p5.Vector: (선택 사항) 결과를 받을 벡터
div__params__v0 = p5.Vector
div__params__v1 = p5.Vector
mag__description__0 = 벡터의 크기(길이)를 계산하고 그 결과를 실수(float)으로 반환합니다. (이는 수식 sqrt(x*x + y*y + z*z)과도 같습니다.)
mag__returns = 숫자: 벡터의 크기(길이)
mag__params__vecT = p5.Vector: 크기를 찾을 벡터
magSq__description__0 = 벡터의 제곱 크기를 계산하고 그 결과를 실수(float)로 반환합니다. (이는 수식 sqrt(x*x + y*y + z*z)과도 같습니다.) 벡터를 비교하는 등의 경우에서 실제 길이를 포함하지 않으면 더 빠르게 계산됩니다.
magSq__returns = 숫자: 벡터 크기의 제곱
dot__description__0 = 두 벡터의 내적을 계산합니다. 2개의 독립 벡터의 내적을 계산하는 메소드는 정적 메소드에 해당합니다. 자세한 내용을 위해서 예제를 참고할 수 있습니다.
dot__returns = 숫자: the dot product
dot__params__x = 숫자: 벡터의 x 성분
dot__params__y = 숫자: (선택 사항) 벡터의 y 성분
dot__params__z = 숫자: (선택 사항) 벡터의 z 성분
dot__params__value = p5.Vector: 벡터의 내적 값 또는 <a href="#/p5.Vector">p5.Vector</a> 객체
dot__params__v1 = p5.Vector: 첫 번째 <a href="#/p5.Vector">p5.Vector</a> 객체
dot__params__v2 = p5.Vector: 두 번째 <a href="#/p5.Vector">p5.Vector</a> 객체
cross__description__0 = 두 벡터의 외적으로 구성된 벡터를 계산하고 반환합니다. 정적 및 비정적 메소드 모두 새로운 p5.Vector를 반환합니다. 자세한 내용을 위해서 예제를 참고할 수 있습니다.
cross__returns = p5.Vector: 외적을 가진 <a href="#/p5.Vector">p5.Vector</a> 객체
cross__params__v = p5.Vector: 외적을 구할 <a href="#/p5.Vector">p5.Vector</a> 객체
cross__params__v1 = p5.Vector: 첫 번째 <a href="#/p5.Vector">p5.Vector</a> 객체
cross__params__v2 = p5.Vector: 두 번째 <a href="#/p5.Vector">p5.Vector</a> 객체
dist__description__0 = 두 점 사이의 유클리드 거리를 계산합니다 (점을 벡터 객체로 간주).
dist__returns = 숫자: 두 점 사이의 거리
dist__params__v = p5.Vector: x, y, z 좌표를 가진 <a href="#/p5.Vector">p5.Vector</a>
dist__params__v1 = p5.Vector: 첫 번째 <a href="#/p5.Vector">p5.Vector</a> 객체
dist__params__v2 = p5.Vector: 두 번째 <a href="#/p5.Vector">p5.Vector</a> 객체
normalize__description__0 = 벡터를 길이 1로 정규화합니다. (단위 벡터로 만듭니다.)
normalize__returns = p5.Vector: 정규화된 <a href="#/p5.Vector">p5.Vector</a> 객체
normalize__params__v = p5.Vector: 정규화할 벡터
normalize__params__target = p5.Vector: (선택 사항) 결과를 받을 벡터
limit__description__0 = 벡터의 크기를 매개변수 <b>max</b>의 값으로 제한합니다.
limit__params__max = 숫자: 벡터의 최댓값
setMag__description__0 = 벡터의 크기를 매개변수 <b>len</b>의 값으로 제한합니다.
setMag__params__len = 숫자: 벡터의 새로운 크리
heading__description__0 = 벡터의 회전 각도를 계산합니다. (2D 벡터만 해당)
heading__returns = 숫자: 회전 각도
setHeading__description__0 = 벡터를 회전시킵니다 (2D 벡터만 해당. 벡터의 크기는 유지됩니다.
setHeading__params__angle = 숫자: 회전의 각도
rotate__description__0 = 벡터를 특정 각도로 회전하되 (2D 벡터만 해당), 크기는 동일하게 유지합니다.
rotate__params__angle = 숫자: 회전의 각도
rotate__params__v = p5.Vector
rotate__params__target = p5.Vector: (선택 사항) 결과를 받을 벡터
angleBetween__description__0 = 두 벡터 사이의 각도 (라디안 단위)를 계산하고 반환합니다.
angleBetween__returns = 숫자: 벡터 사이의 각도 (라디안 단위)
angleBetween__params__value = p5.Vector: <a href="#/p5.Vector">p5.Vector</a> 객체의 x, y, z 성분
lerp__description__0 = 한 벡터와 다른 벡터를 선형적으로 보간합니다.
lerp__params__x = 숫자: 벡터의 x 성분
lerp__params__y = 숫자: 벡터의 y 성분
lerp__params__z = 숫자: 벡터의 z 성분
lerp__params__amt = 숫자: 보간의 정도; 0.0 (구 벡터)과 1.0 (신 벡터) 사이의 값. 0.9은 새로운 벡터에 가까운 값입니다. 0.5은 두 벡터의 정중앙입니다.
lerp__params__v = p5.Vector: 선형적 보간을 할 <a href="#/p5.Vector">p5.Vector</a> 객체
lerp__params__v1 = p5.Vector
lerp__params__v2 = p5.Vector
lerp__params__target = p5.Vector: (선택 사항) 결과를 받을 벡터
reflect__description__0 = 2D 선 또는 3D 평면의 법선에 들어오는 벡터를 반영합니다. 이 메소드는 벡터에 직접 작용합니다.
reflect__params__surfaceNormal = p5.Vector: 반영 법선이 될 <a href="#/p5.Vector">p5.Vector</a> 객체가 정규화됩니다.
array__description__0 = 벡터의 표현을 실수 배열로 반환합니다. 이는 일시적으로만 사용됩니다. 다른 경우에도, p5.Vector.copy() 메소드를 통해 배열에 내용을 복사해야 합니다.
array__returns = 숫자 배열[]: 3 가지 값을 가진 배열
equals__description__0 = p5.Vector에 대한 평등 검사
equals__returns = 불리언: 벡터의 평등함 여부
equals__params__x = 숫자: (선택 사항) 벡터의 x 성분
equals__params__y = 숫자: (선택 사항) 벡터의 y 성분
equals__params__z = 숫자: (선택 사항) 벡터의 z 성분
equals__params__value = p5.Vector|배열: 비교할 벡터
fromAngle__description__0 = 특정 각도에서 새로운 2D 벡터를 생성합니다.
fromAngle__returns = p5.Vector: 새로운 <a href="#/p5.Vector">p5.Vector</a> 객체
fromAngle__params__angle = 숫자: 원하는 라디안 단위의 각도 (<a href="#/p5/angleMode">angleMode</a>에 영향받지 않은 가도)
fromAngle__params__length = 숫자: (선택 사항) 새로운 벡터의 크리 (기본값은 1)
fromAngles__description__0 = 구면각 (spherical angle)의 쌍에서 새로운 3D 벡터를 생성합니다.
fromAngles__returns = p5.Vector: 새로운 <a href="#/p5.Vector">p5.Vector</a> 객체
fromAngles__params__theta = 라디안 단위, 극각 (0는 위로 향함)
fromAngles__params__phi = 숫자: 라디안 단위, 방위각 (0은 화면 바깥에 있음)
fromAngles__params__length = 숫자: (선택 사항) 새로운 벡터의 크리 (기본값은 1)
random2D__description__0 = 임의의 각도에서 새로운 2D 단위 벡터를 생성합니다.
random2D__returns = p5.Vector: 새로운 <a href="#/p5.Vector">p5.Vector</a> 객체
random3D__description__0 = 새로운 임의의 3D 단위 벡터를 생성합니다.
random3D__returns = p5.Vector: 새로운 <a href="#/p5.Vector">p5.Vector</a> 객체
