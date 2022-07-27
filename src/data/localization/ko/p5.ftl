description__0 = p5 인스턴스 생성자 입니다.
description__1 = p5 인스턴스는 p5 스케치와 관련된 모든 속성과 메소드(method)를 보유합니다. 도래할 스케치 클로저(closure)를 예상하고, 생성된 p5 캔버스를 노드에 연결하기 위해 선택적으로 노드 매개변수를 취할 수 있습니다. 스케치 클로저는 새로이 생성된 p5 인스턴스를 유일한 인수로 취하며, 또 선택적으로, 스케치 실행을 위해 <a href="#/p5/preload">preload()</a>, <a href="#/p5/setup">setup()</a>, 그리고/또는 <a href="#/p5/draw">draw()</a> 속성을 담을 수 있습니다.
description__2 = p5 스케치는 "전역" 또는 "인스턴스" 모드에서 실행됩니다: "전역 모드" - 모든 속성과 메소드가 윈도우에 속함 "인스턴스 모드" - 모든 속성과 메소드가 특정 p5 객체에 구속됨
returns = P5: p5 인스턴스
params__sketch = 함수: 주어진 p5 인스턴스에 선택적으로 <a href="#/p5/preload">preload()</a>, <a href="#/p5/setup">setup()</a>, 그리고/또는 <a href="#/p5/draw">draw()</a> 속성을 설정할 수 있는 클로저
params__node = HTML Element: (선택 사항) 캔버스에 속할 요소
describe__description__0 = 스크린리더 (Screen Reader)를 위한 캔버스의 전체적인 서술적 묘사를 설정합니다. 첫 번째 매개변수는 문자열이며, 설정할 묘사입니다. 두 번째 매개변수는 선택 사항이며, 묘사의 표시법을 지정합니다.
describe__description__1 = <code class="language-javascript">describe(text, LABEL)</code>은 설명을 모든 사용자에게 <a href="https://ko.vvikipedia.org/wiki/Museum_label" target="_blank"> 박물관 라벨/캡션</a>을 캔버스 옆 <code class="language-javascript"><div class="p5Label"></div></code> 칸 안에 나타냅니다. CSS를 통해서 스타일을 자유자재로 바꿀 수 있습니다.
describe__description__2 = <code class="language-javascript">describe(text, FALLBACK)</code>는 설정된 묘사를 스크린리더 사용자들에게만 이용가능케 하며, <a href="https://developer.mozilla.org/ko/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank">캔버스의 부가적 문서객체모델 (DOM)</a>에 설정됩니다. 두번 째 매개변수가 없을 시, 기본적으로 묘사는 스크린리더 사용자들에게만 이용가능합니다.
describe__params__text = 문자열: 켄버스의 설명
describe__params__display = 상수: (선택 사항) LABEL 또는 FALLBACK
describeElement__description__0 = 스크린리더 (Screen Reader)를 위한 캔버스의 요소(도형, 또는 도형의 모임)의 서술적 묘사를 설정합니다. 첫 번째 매개변수는 묘사할 요소의 이름입니다. 두 번째 매개변수는 문자열이며 설정할 묘사입니다. 세 번째 매개변수는 선택 사항이며, 묘사의 표시법을 지정합니다.
describeElement__description__1 = <code class="language-javascript">describe(text, LABEL)</code>은 설명을 모든 사용자에게 <a href="https://ko.vvikipedia.org/wiki/Museum_label" target="_blank"> 박물관 라벨/캡션</a>을 캔버스 옆 <code class="language-javascript"> <div class="p5Label"></div> </code> 칸 안에 나타냅니다. CSS를 통해서 스타일을 자유자재로 바꿀 수 있습니다.
describeElement__description__2 = <code class="language-javascript">describeElement(name, text, FALLBACK)</code>는 설정된 묘사를 스크린리더 사용자들에게만 이용가능케 하며, <a href="https://developer.mozilla.org/ko/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank">캔버스의 부가적 문서객체모델 (DOM)</a>에 설정됩니다. 두번 째 매개변수가 없을 시, 기본적으로 묘사는 스크린리더 사용자들에게만 이용가능합니다.
describeElement__params__name = 문자열: 요소의 이름
describeElement__params__text = 문자열: 요소의 설명 및 묘사
describeElement__params__display = 상수: (선택 사항) LABEL 또는 FALLBACK
textOutput__description__0 = <code class="language-javascript">textOutput()</code> 함수는 스크린리더 (Screen Reader)를 위한 도형의 설명을 출력합니다. 이 설명은 자동적으로 만들어지며, 첫 부분은 캔버스의 높이 및 너비, 배경색, 그리고 캔버스상 요소 (도형, 또는 도형의 모임)의 개수를 출력합니다 (예: 'Your output is a, 400 by 400 pixels, lavender blue canvas containing the following 4 shapes:'). 다음은 각 요소의 색, 위치, 넓이 등의 정보를 출력합니다 (예: "orange ellipse at top left covering 1% of the canvas"). 각 요소에 대한 구체적 정보는 선택해서 볼 수 있습니다. 요소들의 목록이 제공됩니다. 이 목록에는 도형, 색, 위치, 좌표와 넓이가 묘사되어 있습니다 (예: "orange ellipse location=top left area=2").
textOutput__description__1 = <code class="language-javascript">textOutput()</code>과 <code class="language-javascript">texOutput(FALLBACK)</code>은 출력물을 스크린리더 (Screen Reader)에 사용되는 <a href="https://developer.mozilla.org/ko/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> 캔버스의 부가적 문서객체모델 (DOM)</a>에 제공합니다. <code class="language-javascript">textOutput(LABEL)</code>은 캔버스 옆 추가적인 div요소를 만들고 그 안에 설명을 출력합니다. 이는 스크린리더를 사용하지 않지만 코딩하는 동안 출력물을 보면서 하고 싶어하는 유저들에게 유용합니다. 하지만 LABEL을 사용할 시 스크린리더 사용자들에게는 의미없는 중복성을 만들 수 있습니다. 그 이유로 LABEL은 스케치를 만드는 동안에만 사용하고 스케치를 출판하거나 스크린리더 사용자들에게 나누기 전에 지우는 것을 권장합니다.
textOutput__params__display = 상수: (선택 사항) FALLBACK 또는 LABEL
gridOutput__description__0 = <code class="language-javascript">gridOutput()</code>은 캔버스의 내용물을 위치적에 따라 격자 (grid) 형식으로 나열합니다. 이 테이블을 출력하기 전에 컨버스의 전반적 설명을 출력합니다. 캔버스의 높이 및 너비, 배경색, 그리고 캔버스상 요소 (도형, 또는 도형의 모임)의 개수를 출력합니다 (예: 'Your output is a, 400 by 400 pixels, lavender blue canvas containing the following 4 shapes:'). 그리드는 내용물을 위치적으로 설명하며, 각 요소는 위치의 격자 위 셀 (cell)에 놓입니다. 각 셀에는 특정 요소의 색상과 모양이 저장되어 있습니다 (예: "orange ellipse"). 각 요소에 대한 구체적 정보는 선택해서 볼 수 있습니다. 각 요소의 모양, 색, 위치, 넓이 등의 정보가 표기되어 있는 목록 (예: "orange ellipse location=top left area=1%")도 사용 가능합니다.
gridOutput__description__1 = <code class="language-javascript">gridOutput()</code> and <code class="language-javascript">gridOutput(FALLBACK)</code>은 출력물을 스크린리더 (Screen Reader)에 사용되는 <a href="https://developer.mozilla.org/ko/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> 캔버스의 부가적 문서객체모델 (DOM)</a>에 제공합니다. <code class="language-javascript">gridOutput(LABEL)</code>은 캔버스 옆 추가적인 div요소를 만들고 그 안에 설명을 출력합니다. 이는 스크린리더를 사용하지 않지만 코딩하는 동안 출력물을 보면서 하고 싶어하는 유저들에게 유용합니다. 하지만 LABEL을 사용할 시 스크린리더 사용자들에게는 의미없는 중복성을 만들 수 있습니다. 그 이유로 LABEL은 스케치를 만드는 동안에만 사용하고 스케치를 출판하거나 스크린리더 사용자들에게 나누기 전에 지우는 것을 권장합니다.
gridOutput__params__display = 상수: (선택 사항) FALLBACK 또는 LABEL
alpha__description__0 = 픽셀 배열로부터 알파값을 추출합니다.
alpha__returns = 알파값
alpha__params__color = p5.Color|숫자 배열[]| 문자열: p5.Color 객체, 색상 요소 또는 CSS 색상
blue__description__0 = 색상 또는 픽셀 배열로부터 파랑값을 추출합니다.
blue__returns = 파랑값
blue__params__color = p5.Color 객체, 색상 요소, CSS 색상
brightness__description__0 = 색상 또는 픽셀 배열로부터 HSB 밝기값을 추출합니다.
brightness__returns = 밝기값
brightness__params__color = p5.Color 객체, 색상 요소, CSS 색상
color__description__0 = 색상 함수를 이용해 색상 데이터의 매개변수를 저장합니다. 이 때, 매개변수는 colorMode()의 설정에 따라 RGB 또는 HSB 값으로 처리됩니다. 기본 모드인 RGB값은 0부터 255까지이며, 따라서 color(255,204,0)와 같은 함수는 밝은 노랑색을 반환하게 됩니다.
color__description__1 = 만약에 color() 함수에 매개변수가 1개만 적히면, 회색 음영(grayscale)값으로 처리됩니다. 여기에 추가되는 두번째 변수는 투명도를 설정할 수 있는 알파값으로서 처리됩니다. 세번째 변수가 추가되었을 때 비로소 RGB나 HSB값으로 처리됩니다. RGB나 HSB값을 정하는 3개의 변수가 존재할 때 추가되는 네번째 변수는 알파값으로 적용됩니다.
color__description__2 = 나아가, p5는 RGB, RGBA, Hex CSS 색상 문자열과 모든 색상명 문자열 역시 지원합니다. 그 경우, 알파값은 괄호 내 2번째 매개변수 추가를 통해서가 아닌, RGBA 형식에 따라 지정될 수 있습니다.
color__returns = 색상 결과
color__params__gray = 숫자: 흑과 백 사이의 값 지정
color__params__alpha = 숫자: 현재 색상 범위(기본값: 0-255)에 대한 알파값
color__params__v1 = 숫자: 현재 색상 범위 내 빨강색(R) 또는 색조값 지정
color__params__v2 = 숫자: green or saturation value  relative to the current color range
color__params__v3 = 숫자: 현재 색상 범위 내 파랑색(B) 또는 색조값 지정
color__params__value = 문자열: 색상 문자열
color__params__values = 숫자 배열[]: RGB 및 알파값을 포함한 숫자 배열
color__params__color = p5.Color
green__description__0 = 색상 또는 픽셀 배열로부터 초록값을 추출합니다.
green__returns = 초록값
green__params__color = p5.Color 객체, 색상 요소, CSS 색상
hue__description__0 = 색상 또는 픽셀 배열로부터 색조를 추출합니다.
hue__description__1 = 색조는 HSB와 HSL상 모두 존재합니다. 이 함수는 HSB 색상 객체를 사용할 경우(또는 HSB 색상 모드로 지정된 픽셀 배열을 사용할 경우) HSB로 표준화된 색조 값을 반환합니다. 기본값으로는 HSL로 표준화된 색조를 반환합니다. (단, 최대 색조를 별도 지정한 경우 다른 값을 반환합니다.)
hue__returns = 색조
hue__params__color = 객체, 색상 요소 또는 CSS 색상
lerpColor__description__0 = 두 가지 색상을 혼합하고, 그 사이에 존재하는 제 3의 색상을 찾습니다. 여기서 매개변수 amt는 두 개의 값 사이를 선형적으로 보간합니다. 예를 들어, 0.0은 첫 번째 값과 동일한 색상값을, 0.1은 첫 번째 값에 매우 가까운 색상값을, 0.5는 두 값 사이의 중간 색상값을 나타내는 식입니다. 이 때, 0 미만의 값은 0으로, 1이상의 값은 1로 자동 변환됩니다. 이 점에서 lerpColor()는 lerp()와 다르게 작동하는 셈인데, 이처럼 lerpColor()는 색상값을 0과 1사이로 조정하여 지정된 범위를 벗어난 색상 생성을 방지합니다.
lerpColor__description__1 = 색상이 보간되는 방식은 현재 지정된 색상 모드에 따라 달라집니다.
lerpColor__returns = p5.Color: 선형적으로 보간된 색상
lerpColor__params__c1 = 이 색상으로부터 선형 보간
lerpColor__params__c2 = 이 색상을 향해 선형 보간
lerpColor__params__amt = 숫자: 0과 1 사이의 숫자
lightness__description__0 = 색상 또는 픽셀 배열로부터 HSL 명도를 추출합니다.
lightness__returns = 숫자: 명도
lightness__params__color = p5.Color|숫자 배열[]|문자열: p5.Color 객체, 색상 요소 또는 CSS 색상
red__description__0 = 색상 또는 픽셀 배열로부터 빨강값을 추출합니다.
red__returns = 숫자: 빨강값
red__params__color = p5.Color|숫자 배열[]|문자열: p5.Color 객체, 색상 요소 또는 CSS 색상
saturation__description__0 = 색상 또는 픽셀 배열로부터 채도값을 추출합니다. 채도값은 HSB와 HSL에서 각각 다르게 측정됩니다. 이 함수는 HSL 채도를 기본값으로 제공합니다. 하지만, HSB 색상 객체가 제공 될 때 (또는 색상 모드가 HSB이면서 픽셀 배열이 제공될 때) HSB 채도값을 반환합니다.
saturation__description__1 = Saturation is scaled differently in HSB and HSL. This function will return the HSB saturation when supplied with an HSB color object (or when supplied with a pixel array while the color mode is HSB), but will default to the HSL saturation otherwise.
saturation__returns = 숫자: 채도값
saturation__params__color = p5.Color|숫자 배열[]|문자열: p5.Color 객체, 색상 요소 또는 CSS 색상
background__description__0 = background() 함수는 p5.js 캔버스의 배경색을 설정합니다. 배경색의 기본값은 투명입니다. 이 함수는 주로 <a href="#/p5/draw">draw()</a> 함수 안에 위치하며, 매 프레임마다 캔버스 화면을 초기화하기 위해 사용됩니다. 하지만, 애니메이션의 첫 프레임 배경을 지정하거나 배경색을 최초 한번만 지정할 경우, <a href="#/p5/setup">setup()</a> 함수 안에 쓰이기도 합니다.
background__description__1 = 색상은 현재 색상 모드(colorMode)에 따라 RGB, HSB, 또는 HSL값으로 지정됩니다. (기본값으로 제공되는 색상 모드는 RGB이고, 그 색상 범위는 0부터 255까지 해당합니다.) 알파값의 기본 제공 범위 역시 0부터 255까지입니다.
background__description__2 = 단일한 문자열 인수에 대해 RGB, RGBA, Hex CSS 색상 문자열과 더불어 명명된 모든 색상 문자열이 지원됩니다. 단, 투명도인 알파값을 설정하기 위해서는 반드시 RGBA를 사용해야 합니다.
background__description__3 = <a href="#/p5.Color">p5.Color</a> 객체를 통해 배경색을 설정할 수 있습니다.
background__description__4 = <a href="#/p5.Image">p5.Image</a>를 통해 배경 이미지를 설정할 수 있습니다.
background__params__color = p5.Color: color() 함수로 생성된 모든 값
background__params__colorstring = 문자열, 지원되는 문자열 형식: 색상 문자열, 정수의 rgb()나 rgba(), 백분율의 rgb()나 rgba(), 3자리 숫자의 hex, 6자리 숫자의 hex
background__params__a = 숫자: (선택 사항) 현재 색상 범위에 따른 배경색 투명도 (기본값은 0-255)
background__params__gray = 숫자: 흑과 백 사이의 값 지정
background__params__v1 = 숫자: 빨강값 또는 색조값 (현재 색상 모드에 따라 상이)
background__params__v2 = 숫자: 초록값 또는 채도값 (현재 색상 모드에 따라 상이)
background__params__v3 = 숫자: 파랑값 또는 밝기값 (현재 색상 모드에 따라 상이)
background__params__values = 숫자 배열[]: 빨강값, 초록값, 파랑값, 알파값을 포함한 배열
background__params__image = p5.Image: loadImage()나 createImage()로 생성된 이미지를 배경 이미지로 설정하는 경우 (스케치 화면과 반드시 동일한 사이즈일 것)
clear__description__0 = 버퍼에 있는 픽셀들을 지우는 함수로, 오직 캔버스만 비게 됩니다. createVideo()나 createDiv()와 같은, createX()류의 메소드로 지정된 객체들을 제거하진 않습니다. 메인 그래픽이 아닌, createGraphics()로 생성된 부가적인 그래픽의 경우, 그 전체 또는 일부를 투명하게 처리할 수 있습니다. 이 함수는 모든 픽셀을 100% 투명하게 만듭니다.
colorMode__description__0 = colorMode()는 p5.js가 색상 데이터를 해석하는 방식을 결정합니다. 기본값으로, fill(), stroke(), background(), color()의 매개변수는 RGB 색상 모드에서 처리되며, 그 범위는 0부터 255까지입니다. 이 기본값은 colorMode(RGB, 255)와 동일한 효과를 지닙니다. colorMode(HSB)로 설정을 변경하면 HSB 색상 시스템을 사용할 수 있습니다. HSB 색상 시스템은 그 기본값으로 colorMode(HSB, 360, 100, 100, 1)와 같이 설정됩니다. 색상 모드는 HSL로도 설정가능합니다.
colorMode__description__1 = 참고: 모든 색상 객체들은 생성 당시에 지정된 색상 모드를 반영합니다. 따라서, 이미 생성된 색상 객체 중 일부에만 적용되는 색상 모드를 지정할 수도 있습니다.
colorMode__params__mode = 상수: RGB(빨강Red/초록Green/파랑색Blue), HSB(색조Hue/채도Saturation/밝기Brightness), HSL(색조Hue/채도Saturation/명도Lightness) 중 하나
colorMode__params__max = 숫자: (선택 사항) 모든 값들의 범위
colorMode__params__max1 = 숫자: (선택 사항) 모든 값들의 범위
colorMode__params__max2 = 숫자: 현재 지정된 색상 모드의 색상 범위에 따른 빨강값 또는 색조값
colorMode__params__max3 = 숫자: 현재 지정된 색상 모드의 색상 범위에 따른 초록값 또는 채도값
colorMode__params__maxA = 숫자: (선택 사항) 알파값의 범위
fill__description__0 = 도형의 면을 채울 색상을 지정합니다. 예를 들어, fill(204, 102, 0) 함수를 실행하면, 이 명령어 다음에 그려진 모든 도형들이 주황색으로 칠해집니다. 이 때, 색상값은 colorMode()로 지정된 현재의 색상 모드에 따라 RGB 또는 HSB로 지정됩니다. (기본값으로 제공되는 색상 모드는 RGB이고, 그 색상 범위는 0부터 255까지 해당합니다.) 알파값의 기본 제공 범위 역시 0부터 255까지입니다.
fill__description__1 = 단일한 문자열 인수에 대해 RGB, RGBA, Hex CSS 색상 문자열과 더불어 명명된 모든 색상 문자열이 지원됩니다. 단, 투명도인 알파값을 설정하기 위해서는 반드시 RGBA를 사용해야 합니다.
fill__description__2 = <a href="#/p5.Color">Color</a> 객체로도 색상을 지정할 수 있습니다.
fill__params__v1 = 숫자: 현재 지정된 색상 모드의 색상 범위에 따른 빨강값 또는 색조값
fill__params__v2 = 숫자: 현재 지정된 색상 모드의 색상 범위에 따른 초록값 또는 채도값
fill__params__v3 = 숫자:현재 지정된 색상 모드의 색상 범위에 따른 파랑값 또는 밝기값
fill__params__alpha = 숫자: (선택사항)
fill__params__value = 문자열: 색상 문자열
fill__params__gray = 숫자: 회색값
fill__params__values = 숫자 배열[]: 색상의 빨강값, 초록값, 파랑값, 그리고 알파값을 포함한 배열
fill__params__color = p5.Color: 면채우기 색상
noFill__description__0 = 도형에 색을 채우지 않도록 설정합니다. noStroke()과 noFill()을 동시에 사용하면, 화면에 아무것도 나타나지 않습니다.
noStroke__description__0 = 선이나 윤곽선을 그리지 않도록 설정합니다. noStroke()과 noFill()을 동시에 사용하면, 화면에 아무것도 나타나지 않습니다.
stroke__description__0 = 그려질 선 또는 도형 윤곽선의 색상을 설정합니다. 이 때, 색상값은 colorMode()로 지정된 현재의 색상 모드에 따라 RGB 또는 HSB로 지정됩니다. (기본값으로 제공되는 색상 모드는 RGB이고, 그 색상 범위는 0부터 255까지 해당합니다.)
stroke__description__1 = 단일한 문자열 인수에 대해 RGB, RGBA, Hex CSS 색상 문자열과 더불어 명명된 모든 색상 문자열이 지원됩니다. 단, 투명도인 알파값을 설정하기 위해서는 반드시 RGBA를 사용해야 합니다.
stroke__description__2 = p5.Color 객체를 통해 선의 색상을 설정할 수 있습니다.
stroke__params__v1 = 숫자: 현재 지정된 색상 모드의 색상 범위에 따른 빨강값 또는 색조값
stroke__params__v2 = 숫자: 현재 지정된 색상 모드의 색상 범위에 따른 초록값 또는 채도값
stroke__params__v3 = 숫자:현재 지정된 색상 모드의 색상 범위에 따른 파랑값 또는 밝기값
stroke__params__alpha = 숫자: (선택사항)
stroke__params__value = 문자열: 색상 문자열
stroke__params__gray = 숫자: 회색값
stroke__params__values = 숫자 배열[]: 색상의 빨강값, 초록값, 파랑값, 그리고 알파값을 포함한 배열
stroke__params__color = p5.Color: 선의 색상
erase__description__0 = <a href="#/p5/erase">erase()</a> 함수의 영향을 받는 모든 드로잉을 캔버스로부터 지웁니다. 지워진 영역은 캔버스 이면의 웹 페이지 화면을 드러냅니다. 이러한 지우기 행위는 <a href="#/p5/noErase">noErase()</a>로 취소할 수 있습니다.
erase__description__1 = <a href="#/p5/erase">erase()</a> 함수와 <a href="#/p5/noErase">noErase()</a> 함수 사이에서 <a href="#/p5/image">image()</a>나 <a href="#/p5/background">background()</a>로 그려진 드로잉은 캔버스에서 지워지지 않습니다.
erase__params__strengthFill = 숫자: (선택 사항) 도형의 면을 지우는 강도로서의 (0부터 255사이) 숫자. 별도 지정한 숫자가 없는 경우, 최고 강도인 255가 기본값으로 적용
erase__params__strengthStroke = 숫자: (선택 사항) 도형의 테두리를 지우는 강도로서의 (0부터 255사이) 숫자. 별도 지정한 숫자가 없는 경우, 최고 강도인 255가 기본값으로 적용
noErase__description__0 = <a href="#/p5/erase">erase()</a>의 지우기 행위를 중단합니다. <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, 그리고 <a href="#/p5/blendMode">blendMode()</a> 함수로 설정된 사항들은 <a href="#/p5/erase">erase()</a> 함수가 호출되기 전의 상태로 돌아갑니다.
arc__description__0 = 화면에 호, 즉 아치형 선을 그립니다. x좌표, y좌표, w(너비), h(높이), 시작점, 끝점을 지정하면 호는 열린 파이 조각의 형태로 그려집니다. 모드 변수를 설정하기에 따라, 호는 각각 반원(OPEN), 닫힌 반원(CHORD), 닫힌 파이 조각(PIE) 형태로 그려집니다. <a href="#/p5/ellipseMode">ellipseMode()</a> 함수를 이용하면 시작점을 변경할 수 있습니다.
arc__description__1 = 호는 언제나 시계방향으로 시작점으로부터 끝점까지 그려집니다. 만약 원 하나를 그리기 위해 arc()의 시작점을 0으로, 끝점을 TWO_PI으로 설정할 경우, 시작점과 끝점이 동일하여 아무것도 그려지지 않습니다. 원을 그릴 때는 <a href="#/p5/ellipse">ellipse()</a> 함수를, 원의 일부를 그릴 때는 arc() 함수를 이용할 수 있습니다.
arc__params__x = 숫자: 호를 포함하는 원의 x좌표
arc__params__y = 숫자: 호를 포함하는 원의 y좌표값
arc__params__w = 숫자: 호를 포함하는 원의 너비값
arc__params__h = 숫자: 호를 포함하는 원의 높이값
arc__params__start = 숫자: 라디안 단위, 호의 시작점 각도값
arc__params__stop = 숫자: 라디안 단위, 호의 끝점 각도값
arc__params__mode = 상수: (선택 사항) 호를 그리는 방식들로, CHORD, PIEC, OPEN 중 선택 가능
arc__params__detail = 숫자: (선택 사항) 호의 윤곽선을 구성하는 꼭짓점 개수를 지정. 기본값은 25. (WebGL 모드용)
ellipse__description__0 = 화면에 타원을 그립니다. 너비와 높이가 동일한 값으로 지정될 경우, 원이 그려집니다. 처음 두 변수는 각각 타원의 x좌표와 y좌표를, 3번째와 4번째 변수는 각각 타원의 너비와 높이를 지정합니다. 높이값 입력을 생략할 경우, 너비값이 높이값으로 동일하게 적용됩니다. 너비나 높이에 음수로 입력해도 그 절대값이 반영됩니다.
ellipse__description__1 = <a href="#/p5/ellipseMode">ellipseMode()</a> 함수를 이용하면 타원의 시작점을 원의 중심으로 지정할 지의 여부를 결정할 수 있습니다.
ellipse__params__x = 숫자: 타원의 x좌표
ellipse__params__y = 숫자: 타원의 y좌표값
ellipse__params__w = 숫자: 타원의 너비값
ellipse__params__h = 숫자: (선택사항) 타원의 높이값
ellipse__params__detail = 정수: (선택사항) 타원을 몇 개의 부분으로 나누어 그릴 것인지 지정 (WebGL 모드용)
circle__description__0 = 화면에 원을 그립니다. 원은 닫힌 도형으로, 중심점으로부터 주어진 거리에있는 모든 점들의 집합입니다.이 함수는 높이와 너비가 다른 타원을 그려내는 ellipse() 함수와는 달리, 너비와 높이가 모두 동일한 원을 그립니다. 이 경우, 높이와 너비는 원의 지름과 같습니다. 기본값으로, 처음 두 매개변수는 원의 중심 위치를 설정하고, 세 번째 매개 변수는 원의 지름을 설정합니다.
circle__params__x = 숫자: 원 중심점의 x좌표
circle__params__y = 숫자: 원 중심점의 y좌표
circle__params__d = 숫자: 원의 지름
line__description__0 = 화면에 선분, 즉 두 점을 연결하는 곧은 선을 그립니다. line() 함수에 4개의 변수를 입력하여 이차원 평면에 선을 그릴 수 있습니다. stroke() 함수를 사용해 선의 색상을 지정할 수 있습니다. 선은 면을 갖지 않으므로, 면채우기 함수인 fill()은 적용되지 않습니다. 기본값으로 제공되는 선의 두께는 1픽셀이며, 이를 변경하기 위해 strokeWeight() 함수를 사용할 수 있습니다.
line__params__x1 = 숫자: 1번째 점의 x좌표값
line__params__y1 = 숫자: 1번째 점의 y좌표값
line__params__x2 = 숫자: 2번째 점의 y좌표값
line__params__y2 = 숫자: 1번째 점의 z좌표값
line__params__z1 = 숫자: 2번째 점의 x좌표값
line__params__z2 = 숫자: 2번째 점의 z좌표값
point__description__0 = 화면 좌표에 해당하는, 1픽셀 크기의 점을 그립니다. 첫 번째 매개변수는 점의 x좌표값을, 두 번째 매개변수는 점의 y좌표값입니다. 점의 색상은 stroke() 함수로 변경할 수 있습니다. 점의 크기는 strokeWeight() 함수로 변경할 수 있습니다.
point__params__x = 숫자: x좌표값
point__params__y = 숫자: y좌표값
point__params__z = 숫자: z좌표값 (WebGL 모드용)
point__params__coordinate_vector = p5.Vector: 좌표 벡터
quad__description__0 = 사각형을 그립니다. 사각형은 4개의 변을 가진 다각형으로, 얼핏 직사각형과 유사하게 들리나 직사각형과는 달리 변 사이의 각도가 90도로 고정되어 있지 않습니다. 처음 한 쌍의 변수는 최초의 꼭짓점을 설정하며, 뒤이은 다른 쌍들은 시계 방향이나 반시계 방향에 따라 나머지 3개의 꼭짓점 위치를 설정합니다. z 변수는 WebGL 모드에서 quad() 함수를 사용하는 경우에만 적용됩니다.
quad__params__x1 = 숫자: 1번째 꼭짓점의 x좌표값
quad__params__y1 = 숫자: 1번째 꼭짓점의 y좌표값
quad__params__x2 = 숫자: 2번째 꼭짓점의 y좌표값
quad__params__y2 = 숫자: 3번째 꼭짓점의 x좌표값
quad__params__x3 = 숫자: 4번째 꼭짓점의 x좌표값
quad__params__y3 = 숫자: 4번째 꼭짓점의 y좌표값
quad__params__x4 = 숫자: 2번째 꼭짓점의 z좌표값
quad__params__y4 = 숫자: 3번째 꼭짓점의 z좌표값
quad__params__detailX = 숫자: (선택 사항) 가로축에 있는 세그멘트의 수
quad__params__detailY = 숫자: (선택 사항) 세로축에 있는 세그멘트의 수
quad__params__z1 = 숫자: 2번째 꼭짓점의 x좌표값
quad__params__z2 = 숫자: 3번째 꼭짓점의 y좌표값
quad__params__z3 = 숫자: 1번째 꼭짓점의 z좌표값
quad__params__z4 = 숫자: 4번째 꼭짓점의 z좌표값
rect__description__0 = 화면에 직사각형을 그립니다. 직사각형은 변이 4개이고 모든 변 사이의 각도가 90도인 도형을 뜻합니다. 처음 두 변수는 좌측 상단 꼭짓점의 좌표를, 3번째 변수는 사각형의 너비를, 4번째 변수는 그 높이를 설정합니다. rectMode() 함수로 사각형 그리기 모드를 변경하면, 모든 매개변수값들이 달리 해석됩니다. 
rect__description__1 = 5번째, 6번째, 7번째, 8번째 매개변수를 입력하면, 각각 좌측 상단, 우측 상단, 우측 하단, 좌측 하단 모퉁이들의 각도를 지정하게 됩니다. 이 때 특정 각도 변수가 누락되면, 직전에 입력된 변수와 동일한 값이 적용됩니다.
rect__params__x = 숫자: 직사각형의 x좌표값
rect__params__y = 숫자: 직사각형의 y좌표값
rect__params__w = 숫자: 직사각형의 너비값
rect__params__h = 숫자: 직사각형의 높이값
rect__params__tl = 숫자: (선택 사항) 좌측 상단 모퉁이 각도값.
rect__params__tr = 숫자: (선택 사항) 우측 상단 모퉁이 각도값.
rect__params__br = 숫자: (선택 사항) 우측 하단 모퉁이 각도값.
rect__params__bl = 숫자: (선택 사항) 좌측 하단 모퉁이 각도값.
rect__params__detailX = 정수: (선택 사항) x축 방향의 선분 수 (WebGL 모드용)
rect__params__detailY = 정수: (선택 사항) y축 방향의 선분 수 (WebGL 모드용)
square__description__0 = 화면에 정사각형을 그립니다. 정사각형은 동일한 길이의 네 개의 변을 갖고, 모든 변 사이의 각도가 90도인 도형을 뜻합니다. 이 함수는 rect()함수의 특수한 사례와도 같은데, 너비와 높이가 같고 변의 길이를 라는 매개변수로 처리하게 됩니다. 기본값으로, 처음 두 변수는 처음 두 변수는 좌측 상단 꼭짓점의 좌표를, 3번째 변수는 변의 길이를 지정합니다. rectMode() 함수로 사각형 그리기 모드를 변경하면, 모든 매개변수값들이 달리 해석됩니다. 
square__description__1 = 5번째, 6번째, 7번째매개변수를 입력하면, 각각 좌측 상단, 우측 상단, 우측 하단, 좌측 하단 모퉁이들의 각도를 지정하게 됩니다. 이 때 특정 각도 변수가 누락되면, 직전에 입력된 변수와 동일한 값이 적용됩니다.
square__params__x = 숫자: 정사각형의 x좌표값
square__params__y = 숫자: 정사각형의 y좌표값
square__params__s = 숫자: 정사각형의 너비 및 높이값
square__params__tl = 숫자: (선택 사항) 좌측 상단 모퉁이 각도값.
square__params__tr = 숫자: (선택 사항) 우측 상단 모퉁이 각도값.
square__params__br = 숫자: (선택 사항) 우측 하단 모퉁이 각도값.
square__params__bl = 숫자: (선택 사항) 좌측 하단 모퉁이 각도값.
triangle__description__0 = 삼각형은 세 개의 점을 이어 만들어진 평면을 뜻합니다. 처음 두 인수는 1번째 꼭짓점을, 중간의 두 변수는 2번째 꼭짓점을, 마지막 두 인수는 3번째 꼭짓점을 지정합니다.
triangle__params__x1 = 숫자：1번째 꼭짓점의 x좌표값
triangle__params__y1 = 숫자：1번째 꼭짓점의 y좌표값
triangle__params__x2 = 숫자：2번째 꼭짓점의 x좌표값
triangle__params__y2 = 숫자：2번째 꼭짓점의 y좌표값
triangle__params__x3 = 숫자：3번째 꼭짓점의 x좌표값
triangle__params__y3 = 숫자：3번째 꼭짓점의 y좌표값
ellipseMode__description__0 = ellipse(), circle(), 그리고 arc() 함수의 매개변수들이 해석되는 방식을 변경하여, 타원이 그려지는 시작점 위치를 변경합니다.
ellipseMode__description__1 = 기본적으로 제공되는 모드는 ellipseMode(CENTER) 함수와도 같습니다. 이는 ellipse() 함수의 처음 두 매개변수를 타원의 중심점으로, 3번째와 4번째 변수를 각각 그 너비와 높이값으로서 해석합니다.
ellipseMode__description__2 = ellipseMode(RADIUS) 역시 ellipse() 함수의 처음 두 매개변수를 타원의 중심점으로 해석하나, 3번째와 4번째 변수를 각각 너비와 높이의 중간 지점값으로 해석합니다.
ellipseMode__description__3 = ellipseMode(CORNER)는 ellipse() 함수의 처음 두 매개변수를 도형의 좌측 상단을 기준으로 해석하고, 3번째와 4번째 변수를 각각 그 너비와 높이로 해석합니다. 
ellipseMode__description__4 = ellipseMode(CORNERS)는 ellipse() 함수의 처음 두 매개변수를 도형의 바운딩 박스 중 한 모퉁이의 위치값으로서 해석합니다. 그리고, 3번째와 4번째 변수는 그 정반대 모퉁이의 위치값으로 해석합니다.
ellipseMode__description__5 = 이 함수의 모든 매개변수(CENTER, RADIUS, CORNER, CORNERS)들은 반드시 대문자로 작성되어야 합니다. 자바스크립트에서는 대소문자 구분이 매우 중요하답니다.
ellipseMode__params__mode = 상수：CENTER, RADIUS, CORNER, 또는 CORNERS
noSmooth__description__0 = 모든 그래픽의 가장자리를 울퉁불퉁하게 처리합니다. smooth() 함수는 2D 모드상 언제나 기본값으로 활성화되며, 그래픽을 부드럽게 처리합니다. 따라서, noSmooth() 함수를 호출해야만 도형, 이미지, 폰트 등의 부드러운 처리를 비활성화할 수 있습니다. 반면, 3D 모드에서는 noSmooth()가 기본값으로 활성화됩니다. 따라서, smooth() 함수를 호출해야만 부드러운 처리가 가능합니다.
rectMode__description__0 = rect() 함수의 매개변수들이 해석되는 방식을 변경하여, 직사각형이 그려지는 시작점 위치를 변경합니다.
rectMode__description__1 = 기본적으로 제공되는 모드는 rectMode(CORNER) 함수와도 같습니다. 이는 rect() 함수의 처음 두 매개변수를도형의 좌측 상단을 기준으로 해석하고, 3번째와 4번째 변수를 각각 그 너비와 높이값로서 해석합니다. 
rectMode__description__2 = rectMode(CORNERS)는 rect() 함수의 처음 두 매개변수를 한 모퉁이의 위치값으로 서 해석합니다. 그리고, 3번째와 4번째 변수는 그 정반대 모퉁이의 위치값으로 해석합니다.
rectMode__description__3 = ellipseMode(CENTER)는 rect() 함수의 처음 두 매개변수를 타원의 중심점으로, 3번째와 4번째 변수를 각각 그 너비와 높이값으로서 해석합니다. 
rectMode__description__4 = rectMode(RADIUS) 역시 rect() 함수의 처음 두 매개변수를 타원의 중심점으로 해석하나, 3번째와 4번째 변수를 각각 너비와 높이의 중간 지점값으로 해석합니다.
rectMode__description__5 = 이 함수의 모든 매개변수(CORNER, CORNERS, CENTER, RADIUS)들은 반드시 대문자로 작성되어야 합니다. 자바스크립트에서는 대소문자 구분이 매우 중요하답니다.
rectMode__params__mode = 상수：CORNER, CORNERS, CENTER 또는 RADIUS
smooth__description__0 = 모든 그래픽을 부드럽게 처리하며, 불러온 이미지 또는 크기가 재조정된 이미지의 화질을 향상합니다. smooth()는 2D 모드상 언제나 기본값으로 활성화되며. 따라서, noSmooth() 함수를 호출해야만 도형, 이미지, 폰트 등의 부드러운 그래픽 처리를 비활성화할 수 있습니다. 반면, 3D 모드에서는 noSmooth()가 기본값으로 활성화됩니다. 따라서, smooth() 함수를 호출해야만 부드러운 그래픽 처리가 가능합니다.
strokeCap__description__0 = 선의 양끝에 대한 렌더링 스타일을 설정합니다. 선의 양끝은 매개변수 SQAURE로 각지게, PROJECT로 조금 더 길게, 그리고 ROUND로 둥글게 처리될 수 있습니다. 이 중에서 ROUND는 기본값으로 적용됩니다.
strokeCap__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeCap__params__cap = 상수：SQUARE, PROJECT 또는 ROUND
strokeJoin__description__0 = 두 선분 간의 이음새에 대한 스타일을 설정합니다. 이음새는 매개변수 MITER로 각지게, BEVEL로 베벨 처리되듯 비스듬히 깎인 형태로, ROUND로 둥글게 처리될 수 있습니다. 이 중에서 MITER는 기본값으로 적용됩니다.
strokeJoin__description__1 = The parameter to this method must be written in ALL CAPS because they are predefined as constants in ALL CAPS and Javascript is a case-sensitive language.
strokeJoin__params__join = 상수：MITER, BEVEL 또는 ROUND
strokeWeight__description__0 = 선, 점, 그리고 도형 윤곽선을 그릴 때 쓰이는 함수인 stroke()의 결과값 두께를 설정합니다. 모든 두께는 픽셀 단위로 지정됩니다.
strokeWeight__params__weight = 숫자：선의 두께 (픽셀 단위)
bezier__description__0 = 화면에 3차 베지에 곡선을 그립니다. 베지에 곡선은 일련의 고정점 및 제어점들로 정의됩니다. 처음 두 매개변수는 1번째 고정점을, 마지막 두 매개변수는 마지막 고정점을 지정합니다. 중간의 두 매개변수는 두 개의 제어점을 지정하며, 이는 곧 곡선의 모양을 정의하게 됩니다. 여기서 제어점은 그 자신을 향해 곡선을 당기는 역할을 합니다. 
bezier__description__1 = 베지에 곡선은 프랑스 출신 자동차 엔지니어인 피에르 베지에(Pierre Bezier)가 개발하였으며, 컴퓨터 그래픽상 부드럽게 경사진 곡선을 정의하는 데에 주로 사용됩니다. <a href="#/p5/curve">curve()</a> 함수와도 관련있습니다.
bezier__params__x1 = 숫자: 1번째 고정점의 x좌표값
bezier__params__y1 = 숫자: 1번째 고정점의 y좌표값
bezier__params__x2 = 숫자: 1번째 제어점의 x좌표값
bezier__params__y2 = 숫자: 1번째 제어점의 y좌표값
bezier__params__x3 = 숫자: 2번째 제어점의 x좌표값
bezier__params__y3 = 숫자: 2번째 제어점의 y좌표값
bezier__params__x4 = 숫자: 2번째 고정점의 x좌표값
bezier__params__y4 = 숫자: 2번째 고정점의 y좌표값
bezier__params__z1 = 숫자: 1번째 고정점의 z좌표값
bezier__params__z2 = 숫자: 1번째 제어점의 z좌표값
bezier__params__z3 = 숫자: 2번째 제어점의 z좌표값
bezier__params__z4 = 숫자: 2번째 고정점의 z좌표값
bezierDetail__description__0 = 베지에 곡선들의 해상도를 설정합니다. 기본값은 20입니다.
bezierDetail__description__1 = 이 함수는 WebGL 렌더러용으로만 사용되며, 기본 캔버스 렌더러에서는 이 함수를 사용하지 않습니다.
bezierDetail__params__detail = 숫자: 곡선들의 해상도값
bezierPoint__description__0 = 점 a, b, c, d로 정의된 베지에 곡선에서 위치 t를 계산합니다. 매개변수 a와 d는 각각 곡선의 1번째 점과 마지막 점에, b와 c는 제어점에 해당합니다. 마지막 매개변수인 t는 0과 1사이에서 표현됩니다. 함수는 먼저 x좌표를 호출한 다음, y좌표를 호출하여 위치 t를 찾게됩니다.
bezierPoint__returns = 숫자: 위치 t에 해당하는 베지에 곡선의 값
bezierPoint__params__a = 숫자: 곡선의 1번째 점 좌표값
bezierPoint__params__b = 숫자: 1번째 제어점 좌표값
bezierPoint__params__c = 숫자: 2번째 제어점 좌표값
bezierPoint__params__d = 숫자: 곡선의 2번째 점 좌표값
bezierPoint__params__t = 숫자: 0과 1 사이의 값
bezierTangent__description__0 = 위치 t에서 곡선의 점 a, b, c, d에 대한 탄젠트를 계산합니다. 매개변수 a와 d는 각각 곡선의 1번째 점과 마지막 점에, b와 c는 제어점에 해당합니다. 마지막 매개변수인 t는 0과 1사이에서 표현됩니다.
bezierTangent__returns = 숫자: 위치 t에 해당하는 탄젠트
bezierTangent__params__a = 숫자: 곡선의 1번째 점 좌표값
bezierTangent__params__b = 숫자: 1번째 제어점 좌표값
bezierTangent__params__c = 숫자: 2번째 제어점 좌표값
bezierTangent__params__d = 숫자: 곡선의 2번째 점 좌표값
bezierTangent__params__t = 숫자: 0과 1 사이의 값
curve__description__0 = 화면에 두 점 사이에 위치한 곡선을 그립니다. 이 때, 곡선의 형태는 함수의 매개변수들 중 가운데 네 개를 통해 정의됩니다. 처음 두 매개변수는 1번째 제어점의 좌표값을 지정하는데, 마치 이 제어점에서 곡선이 비롯된 것처럼 보이게 됩니다. 마지막 두 매개변수들은 마찬가지 원리로 또다른 제어점의 좌표를 지정합니다. curve() 함수를 조합하거나 curveVertex()를 사용하여 좀 더 긴 곡선을 만들 수 있습니다. 부가적으로, curveTightness()을 통해 곡선의 화질을 조절할 수 있습니다. curve() 함수는 캣멀롬 스플라인(Catmull-Rom Spline)을 구현합니다.
curve__params__x1 = 숫자: 최초 제어점의 x좌표값
curve__params__y1 = 숫자: 최초 제어점의 y좌표값
curve__params__x2 = 숫자: 1번째 점의 y좌표값
curve__params__y2 = 숫자: 2번째 점의 x좌표값
curve__params__x3 = 숫자: 마지막 제어점의 x좌표값
curve__params__y3 = 숫자: 마지막 제어점의 y좌표값
curve__params__x4 = 숫자: 1번째 점의 z좌표값
curve__params__y4 = 숫자: 2번째 점의 z좌표값
curve__params__z1 = 숫자: 1번째 점의 x좌표값
curve__params__z2 = 숫자: 2번째 점의 y좌표값
curve__params__z3 = 숫자: 최초 제어점의 z좌표값
curve__params__z4 = 숫자: 마지막 제어점의 z좌표값
curveDetail__description__0 = 곡선들의 해상도를 설정합니다. <br>기본값은 20이고, 최소값은 3입니다.
curveDetail__description__1 = 이 함수는 WebGL 렌더러용으로만 사용되며, 기본 캔버스 렌더러에서는 이 함수를 사용하지 않습니다.
curveDetail__description__2 = 
curveDetail__params__resolution = 숫자: 곡선들의 해상도값
curveTightness__description__0 = curve()와 curveVertex() 함수를 사용하여 모양을 변경합니다. 곡선의 팽팽함(tightness)을 지정하는 매개변수 t는, 두 꼭짓점 사이에 곡선이 들어맞는 정도를 결정합니다. 값 0.0은 곡선의 팽팽함에 대한 기본값이며(이 값을 통해 곡선을 캣멀롬 스플라인으로 정의), 값 1.0은 모든 점을 직선 상태로 연결하게 됩니다. -5.0와 5.0 사이의 값들은 화면상 인식 가능한 범위 내에서 값의 크기에 비례하여 곡선을 변형합니다.
curveTightness__params__amount = 숫자: 원래 꼭짓점으로부터 변형된 정도의 양
curvePoint__description__0 = 점 a, b, c, d로 정의된 곡선에서 위치 t를 계산합니다. 매개변수 a와 d는 곡선의 제어점에, b와 c는 각각 곡선의 시작점과 끝점에 해당합니다. 마지막 매개변수인 t는 0과 1사이에서 표현됩니다. 함수는 먼저 x좌표를 호출한 다음, y좌표를 호출하여 위치 t를 찾게됩니다.
curvePoint__returns = 숫자: 위치 t에 해당하는 베지어값
curvePoint__params__a = 숫자: 곡선의 1번째 제어점 좌표값
curvePoint__params__b = 숫자: 1번째 점 좌표값
curvePoint__params__c = 숫자: 2번째 점 좌표값
curvePoint__params__d = 숫자: 곡선의 2번째 제어점 좌표값
curvePoint__params__t = 숫자: 0과 1 사이의 값
curveTangent__description__0 = 위치 t에서 곡선의 점 a, b, c, d에 대한 탄젠트를 계산합니다. 매개변수 a와 d는 각각 곡선 위 점에, b와 c는 제어점에 해당합니다. 마지막 매개변수인 t는 0과 1사이에서 표현됩니다.
curveTangent__returns = 숫자: 위치 t에 해당하는 탄젠트
curveTangent__params__a = 숫자: 곡선의 1번째 점 좌표값
curveTangent__params__b = 숫자: 1번째 제어점 좌표값
curveTangent__params__c = 숫자: 2번째 제어점 좌표값
curveTangent__params__d = 숫자: 곡선의 2번째 점 좌표값
curveTangent__params__t = 숫자: 0과 1 사이의 값
beginContour__description__0 = beginContour()와 endContour() 함수를 사용하여 특정 도형 내부에 그 음수 좌표에 상응하는 동일한 도형 윤곽선을 그릴 수 있습니다. 예를 들어, 동그라미의 안쪽에 또다른 작은 동그라미를 그릴 수 있습니다. beginContour()는 도형의 꼭짓점을 기록하기 시작하고, endContour()는 그 기록을 중지합니다. 이 때, 안쪽의 도형을 정의하는 꼭짓점은 바깥쪽의 도형과 반대 순서로 그려져야 합니다. 먼저 바깥에 위치한 원래 도형의 꼭짓점을 시계 방향으로 그리고, 그 다음 내부의 도형을 시계 반대 방향으로 그립니다.
beginContour__description__1 =  beginContour()/endContour() 함수는 반드시 <a href="#/p5/beginShape">beginShape()/</a>/Shape">endShape()</a> 함수 사이에 작성되어야 합니다. 또한, beingContour()/endContour() 함수 사이에는 translate(), rotate(), scale()과 같은 변형 함수나 ellipse() 및 rect()와 같은 도형그리기 함수가 사용될 수 없습니다.
beginContour__description__2 = 
beginShape__description__0 = <a href="#/p5/beginShape">beginShape()</a>과 <a href="#/p5/endShape">endShape()</a>를 사용하여 좀 더 복잡한 모양을 만들 수 있습니다. beingShape()은 도형의 꼭짓점을 기록하기 시작하고, <a href="#/p5/endShape">endShape()</a>은 그 기록을 중지합니다. 함수의 매개변수를 통해 꼭짓점으로 어떤 도형을 그릴지 결정할 수 있습니다. 별도의 매개변수가 지정되지 않으면, 비정형의 다각형이 그려집니다. 
beginShape__description__1 = <a href="#/p5/beginShape">beginShape()</a>에 쓰이는 매개변수로는 POINTS, LINES, TRIANGLES, TRIANGLE_FAN, TRIANGLE_STRIP, QUADS, QUAD_STRIP, 그리고 TESS(WebGL 전용)가 있습니다. <a href="#/p5/beginShape">beginShape()</a> 함수를 호출한 다음, 꼭짓점 지정을 위해 vertex() 명령문을 반드시 작성해야 합니다. 도형그리기를 멈추려면 <a href="#/p5/endShape">endShape()</a> 함수를 호출하면 됩니다. 각 도형은 현재 지정된 선그리기(stroke) 및 면채우기(fill) 색상으로 그려집니다.
beginShape__description__2 = <a href="#/p5/beginShape">beginShape()</a>와 <a href="#/p5/endShape">endShape()</a> 함수들 사이에는 <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>과 같은 변형 함수나 <a href="#/p5/ellipse">ellipse()</a>, <a href="#/p5/rect">rect()</a>와 같은 도형그리기 함수를 사용할 수 없습니다.
beginShape__description__3 = LINES - 여려 개의 분리 된 선들을 그립니다.
beginShape__description__4 = TRIANGLES - 여러 개의 분리 된 삼각형들을 그립니다.
beginShape__description__5 = TRIANGLE_FAN - 여러 개의 연결 된 삼각형들을 그립니다. 이 삼각형들은 첫 꼭짓점을 공통적으로 하며 부채 모양으로 그려집니다.
beginShape__description__6 = TRIANGLE_STRIP - 여러 개의 연결 된 삼각형들을 그립니다. 이 삼각형들은 한 줄로 그려집니다. 
beginShape__description__7 = QUADS - 여러 개의 분리 된 사각형들을 그립니다. 
beginShape__description__8 = QUAD_STRIP - 여러 개의 연결 된 사각형들을 한 줄로 그립니다.
beginShape__description__9 = TESS (WebGl만 가능) - 모자이크 세공 (tessellation)을 위한 불규칙적 도형을 그립니다.
beginShape__description__10 = <a href="#/p5/beginShape">beginShape()</a> 함수는 호출할 시, 이후에 여러 개의 <a href="#/p5/vertex">vertex()</a> 명령들을 호출해야 합니다.그림 그리기를 멈추려면 <a href="#/p5/endShape">endShape()</a> 함수를 호출합니다. 각 도형은 현재의 윤곽선 색으로 그려지며, 면은 현재의 면 색으로 채워집니다.
beginShape__description__11 = <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, 또는 <a href="#/p5/scale">scale()</a>와 같은 변형 함수들은 <a href="#/p5/beginShape">beginShape()</a> 함수 안에서 사용할 수 없습니다. 또한, <a href="#/p5/ellipse">ellipse()</a>와 <a href="#/p5/rect">rect()</a> 같은 함수들을 <a href="#/p5/beginShape">beginShape()</a> 함수 안에서 사용할 수 없습니다.
beginShape__params__kind = 상수: (선택 사항) POINTS, LINES, TRIANGLES, TRIANGLE_FAN, TRIANGLE_STRIP, QUADS 또는 QUAD_STRIP
bezierVertex__description__0 = 베지에 곡선의 꼭짓점 좌표를 지정합니다. bezierVertex()은 매 호출마다 베지에 곡선의 제어점 2개와 고정점 1개의 위치를 정의하고, 이 새로운 선분을 선 또는 도형에 더합니다. bezierVertex()는 WebGL상 2D 및 3D 모드 모두에 적용될 수 있습니다. 2D 모드에서는 6개의 매개변수가, 3D 모드에서는 9개의 매개변수(z좌표값 포함)가 필요합니다.
bezierVertex__description__1 = <a href="#/p5/beginShape">beginShape()</a> 함수 안에 작성된 bezierVertex()를 호출하기에 앞서, vertex() 함수를 bezierVertex() 윗줄에 작성하여 곡선의 1번째 고정점을 설정해야 합니다. bezierVertex() 함수는 반드시 <a href="#/p5/beginShape">beginShape()/</a>/Shape">endShape()</a> 함수 사이에 작성되어야하며, <a href="#/p5/beginShape">beginShape()</a> 함수에 MODE나 POINTS 매개변수가 지정되지 않은 경우에만 사용가능 합니다.
bezierVertex__params__x2 = 숫자: 1번째 제어점의 x좌표값
bezierVertex__params__y2 = 숫자: 1번째 제어점의 y좌표값
bezierVertex__params__x3 = 숫자: 2번째 제어점의 x좌표값
bezierVertex__params__y3 = 숫자: 2번째 제어점의 y좌표값
bezierVertex__params__x4 = 숫자: 고정점의 x좌표값
bezierVertex__params__y4 = 숫자: 고정점의 y좌표값
bezierVertex__params__z2 = 숫자: 1번째 제어점의 z좌표값 (WebGL 모드용)
bezierVertex__params__z3 = 숫자: 2번째 제어점의 z좌표값 (WebGL 모드용)
bezierVertex__params__z4 = 숫자: 고정점의 z좌표값 (WebGL 모드용)
curveVertex__description__0 = 곡선의 꼭짓점 좌표를 지정합니다. 이 함수는 반드시 <a href="#/p5/beginShape">beginShape()/</a>/Shape">endShape()</a> 함수 사이에 작성되어야하며, <a href="#/p5/beginShape">beginShape()</a> 함수에 MODE나 POINTS 매개변수가 지정되지 않은 경우에만 사용가능 합니다. 또한, 이 함수는 WebGL상 2D 및 3D 모드 모두에 적용될 수 있습니다. 2D 모드에서는 2개의 매개변수가, 3D 모드에서는 3개의 매개변수가 필요합니다.
curveVertex__description__1 = curveVertex()로 그려진 일련의 선들 중 1번째 점과 마지막 점을 통해 각각 전체 곡선의 시작점과 끝점을 알 수 있습니다. 2번째와 3번째 사이에도 작은 곡선을 만들기 위해선 최소 4개의 점들이 필요합니다. curveVertex() 함수로 5번째 점을 추가하면 함수는 2번째, 3번째, 4번째 점들 사이에 곡선을 그립니다. curveVertex() 함수는 캣멀롬 스플라인(Catmull-Rom Spline)을 구현합니다. 
curveVertex__params__x = 숫자: 꼭짓점의 x좌표값
curveVertex__params__y = 숫자: 꼭짓점의 y좌표값
curveVertex__params__z = 숫자: (선택 사항) 꼭짓점의 z좌표값 (WebGL 모드용)
endContour__description__0 = beginContour()와 endContour() 함수를 사용하여 특정 도형 내부에 그 음수 좌표에 상응하는 동일한 도형 윤곽선을 그릴 수 있습니다. 예를 들어, 동그라미의 안쪽에 또다른 작은 동그라미를 그릴 수 있습니다. beginContour()는 도형의 꼭짓점을 기록하기 시작하고, endContour()는 그 기록을 중지합니다. 이 때, 안쪽의 도형을 정의하는 꼭짓점은 바깥쪽의 도형과 반대 순서로 그려져야 합니다. 먼저 바깥에 위치한 원래 도형의 꼭짓점을 시계 방향으로 그리고, 그 다음 내부의 도형을 시계 반대 방향으로 그립니다.
endContour__description__1 = beginContour()/endContour() 함수는 반드시 <a href="#/p5/beginShape">beginShape()/</a>/Shape">endShape()</a> 함수 사이에 작성되어야 합니다. 또한, beingContour()/endContour() 함수 사이에는 translate(), rotate(), scale()과 같은 변형 함수나 ellipse() 및 rect()와 같은 도형그리기 함수가 사용될 수 없습니다.
endShape__description__0 = <a href="#/p5/endShape">endShape()</a>은 <a href="#/p5/beginShape">beginShape()</a>과 한 쌍을 이루는 함수로, 반드시 beginShape() 다음에 호출될 수 있습니다. <a href="#/p5/endShape">endShape()</a> 함수가 호출되면, <a href="#/p5/beginShape">beginShape()</a> 함수가 호출된 이래로 정의된 모든 이미지 데이터가이미지 버퍼로서 처리됩니다. <a href="#/p5/endShape">endShape()</a>의 MODE 매개변수로는 상수 CLOSE를 씁니다.
endShape__params__mode = 상수: CLOSE로 도형 닫기
quadraticVertex__description__0 = 2차 베지에 곡선의 꼭짓점 좌표를 지정합니다. quadraticVertex()은 매 호출마다 베지에 곡선의 제어점 1개와 고정점 1개의 위치를 정의하고, 이 새로운 선분을 선 또는 도형에 더합니다. <a href="#/p5/beginShape">beginShape()</a> 함수 안에 작성된 quadraticVertex()를 호출하기에 앞서, vertex() 함수를 quadraticVertex() 윗줄에 작성하여 곡선의 1번째 고정점을 설정해야 합니다. quadraticVertex()는 WebGL상 2D 및 3D 모드 모두에 적용될 수 있습니다. 2D 모드에서는 6개의 매개변수가, 3D 모드에서는 9개의 매개변수(z좌표값 포함)가 필요합니다.
quadraticVertex__description__1 = quadraticVertex() 함수는 반드시 <a href="#/p5/beginShape">beginShape()/</a>/Shape">endShape()</a> 함수 사이에 작성되어야하며, <a href="#/p5/beginShape">beginShape()</a> 함수에 MODE나 POINTS 매개변수가 지정되지 않은 경우에만 사용가능 합니다.
quadraticVertex__params__cx = 숫자: 제어점의 x좌표값
quadraticVertex__params__cy = 숫자: 제어점의 y좌표값
quadraticVertex__params__x3 = 숫자: 고정점의 y좌표값
quadraticVertex__params__y3 = 숫자: 제어점의 z좌표값 (WebGL 모드용)
quadraticVertex__params__cz = 숫자: 고정점의 x좌표값
quadraticVertex__params__z3 = 숫자: 고정점의 z좌표값 (WebGL 모드용)
vertex__description__0 = 모든 도형들은 꼭짓점 연결을 통해 구축됩니다. vertex() 함수를 사용하여 점, 선, 삼각형, 사각형, 그리고 다각형의 꼭짓점 좌표를 지정할 수 있습니다.는 데에 쓰입니다. 이 때, vertex() 함수는 반드시 <a href="#/p5/beginShape">beginShape()/</a>/Shape">endShape()</a> 함수 사이에 작성되어야합니다.
vertex__params__x = 숫자: 꼭짓점의 x좌표값
vertex__params__y = 숫자: 꼭짓점의 y좌표값
vertex__params__z = 숫자: 꼭짓점의 z좌표값
vertex__params__u = 숫자: (선택 사항) 꼭짓점의 u좌표값
vertex__params__v = 숫자: (선택 사항) 꼭짓점의 v좌표값
normal__description__0 = 이후에 <a href="#/p5/vertex">vertex()</a> 함수로 그려질 꼭짓점들을 위한 3D 꼭짓점의 노멀 (normal)을 설정합니다. 도형의 면에 수직방향이 노멀 벡터이며, 이는 빛의 반사량을 지정합니다.
normal__params__vector = 벡터: 노멀을 표시하는 p5.Vector.
normal__params__x = 숫자: 꼭짓점의 x좌표값
normal__params__y = 숫자: 꼭짓점의 y좌표값
normal__params__z = 숫자: 꼭짓점의 z좌표값
VERSION__description__0 = 본 p5.js 버전.
P2D__description__0 = 기본적 이차원적 렌더러 (2D Renderer).
WEBGL__description__0 = p5.js의 렌더 모드들 중 하나: P2D (기본)와 WEBGL. WEBGL은 제 3의 차원, 'Z'를 추가함으로서 3D 렌더를 가능하게 합니다.
HALF_PI__description__0 = HALF_PI는 1.57079632679489661923 값을 갖는 상수입니다. 지름에 대한 원주율의 절반에 해당하며, 삼각 함수 <a href="#/p5/sin">sin()</a>과 cos()와 함께 쓰면 더욱 유용합니다.
PI__description__0 = PI는 3.14159265358979323846 값을 갖는 상수입니다. 지름에 대한 원주율을 의미하며, 삼각 함수 <a href="#/p5/sin">sin()</a>과 cos()와 함께 쓰면 더욱 유용합니다.
QUARTER_PI__description__0 = QUARTER_PI는 0.7853982 값을 갖는 상수입니다. 지름에 대한 원주율의 1/4에 해당하며, 삼각 함수 sin()과 cos()와 함께 쓰면 더욱 유용합니다.
TAU__description__0 = TAU는 TWO_PI의 약어로, 이는 6.28318530717958647693 값을 갖는 상수입니다. 지름에 대한 원주율의 2배에 해당하며, 삼각 함수 sin()과 cos()와 함께 쓰면 더욱 유용합니다.
TWO_PI__description__0 = TWO_PI는6.28318530717958647693 값을 갖는 상수입니다. 지름에 대한 원주율의 2배에 해당하며, 삼각 함수 sin()과 cos()와 함께 쓰면 더욱 유용합니다.
DEGREES__description__0 = p5.js가 각도를 해석하고 계산하는 방법을 설정하기 위해, angleMode() 함수와 그 매개변수(DEGREES 또는 RADIANS)를 사용합니다.
RADIANS__description__0 = p5.js가 각도를 해석하고 계산하는 방법을 설정하기 위해, angleMode() 함수와 그 매개변수(DEGREES 또는 RADIANS)를 사용합니다.
HSB__description__0 = HSB (색도, 채도값, 발기)는 색상 모델의 일종입니다. <a href="https://www.theteams.kr/teams/12872/post/72252">이 링크를</a> 통해 더 자세히 배울 수 있습니.
AUTO__description__0 = AUTO는 특정 요소의 높이나 너비 (둘 중 하나)를 그 요소의 너비나 높이에 따라 자동적으로 정할 수 있게 합니다. 따라서 <a href="/#/p5.Element/size">size()</a>에 AUTO를 지정할 수 있는 매개변수는 1 개로 제한됩니다.
print__description__0 = print() 함수는 브라우저 콘솔창에 출력할 때 사용됩니다. 프로그램이 생성하는 데이터를 확인할 때 주로 도움됩니다. 함수는 매번 호출될 때마다 콘솔창에 새로운 텍스트 줄을 만듭니다. 개별 요소는 큰따옴표로 분리하고, 더하기 연산자(+)로 두 요소를 결합할 수 있습니다.
print__description__1 =
    인수없이 print()를 호출하면, window.print()와 동일하게 브라우저상 인쇄 기능을 켭니다. 콘솔창에 빈 줄을 출력하려면 print('
    ')을 작성하면 됩니다.
print__params__contents = 전부: 출력할 숫자, 문자열, 객체, 불리언, 배열의 조합
frameCount__description__0 = 시스템 변수 frameCount는 프로그램 시작 이후 화면에 나타난 프레임의 개수를 측정합니다. <a href="#/p5/setup">setup()</a> 함수의 기본값은 0이고, <a href="#/p5/draw">draw()</a> 함수의 첫 번째 반복 실행이 마치면 1씩 증가하는 식입니다.
deltaTime__description__0 = <a href="#/p5/deltaTime">deltaTime</a> 은 전 프레임의 시작 시간과 본 프레임의 시작 시간의 차를 저장합니다.
deltaTime__description__1 = 이 변수는 시간적으로 민감한 애니매시션, 또는 프레임레이트와 관계없이 일정해야 하는 물리학적 계산에 유용합니다.
focused__description__0 = p5.js 프로그램이 등장하는 화면창의 초점이 맞는지 여부를 확인하며, 이는 곧 스케치가 마우스나 키보드 입력을 허용한다는 것을 의미합니다. 화면창의 초점이 맞으면 변수는 true이고, 그렇지 않으면 false입니다.
cursor__description__0 = 마우스 커서를 사전에 정의된 기호나 이미지로 설정하거나, 숨김 상태일 경우 이를 해제합니다. 특정 이미지를 커서로 설정할 경우, 권장 사이즈는 16x16 또는 32x32 입니다. 매개변수 x와 y의 값은 이미지의 실제 크기보다 훨씬 더 작아야 합니다.
cursor__params__type = 문자열|상수: ARROW, CROSS, HAND, MOVE, TEXT, WAIT. CSS 요소인 'grab', 'progress', 'cell' 등. 외부: 커서 이미지의 경로(허용 파일 확장자:.cur, .gif, .jpg, .jpeg, .png, url 주소. 참고: <ah ref='https://developer.mozilla.org/ko/docs/Web/CSS/cursor'>https://developer.mozilla.org/ko/docs/Web/CSS/cursor</a>
cursor__params__x = 숫자: (선택 사항) 커서의 수평 활성 지점 (32미만으로 지정)
cursor__params__y = 숫자: (선택 사항) 커서의 수직 활성 지점 (32미만으로 지정)
frameRate__description__0 = 화면에 나타날 프레임 수를 매 초단위로 지정합니다. 예를 들어, frameRate(30)은 초당 30회씩 새로 고침을 시도합니다. 프로세서가 지정된 속도를 유지할만큼 빠르지 않다면, 프레임 속도에 달성되지 않습니다. <a href="#/p5/setup">setup()</a> 함수 내에서 프레임 속도를 설정하는 것을 권장합니다. 기본값으로 제공되는 프레임 속도는 디스플레이의 프레임 속도('새로 고침 빈도')를 기준으로 합니다. 초당 24 프레임 정도면 애니메이션을 부드럽게 재생할 수 있습니다. 이 함수는 setFrameRate(val)와 동일한 효과를 갖습니다.
frameRate__description__1 = 별도의 인수없이 frameRate() 함수를 호출하면 현재 프레임 속도가 반환됩니다. 프레임 속도를 반환하기 위해서는 <a href="#/p5/draw">draw()</a> 함수를 한 번 이상 실행해야 합니다. 이는 getFrameRate() 함수와도 동일합니다.
frameRate__description__2 = 숫자형이 아니거나 양수가 아닌 숫자형의 인수로 frameRate() 함수를 호출하면 마찬가지로 현재 프레임 속도를 반환합니다.
frameRate__params__fps = 숫자：1초 동안 화면에 나타날 프레임 수
noCursor__description__0 = 화면상 커서를 숨깁니다.
displayWidth__description__0 = <a href="#/p5/pixelDensity">pixelDensity</a> 함수의 기본값에 따라 화면의 너비값을 저장하는 시스템 변수입니다. 모든 디스플레이에서 프로그램을 전체 화면으로 실행시킬 때 사용합니다. 실제 화면 크기값을 반환하려면 여기에 pixelDensity를 곱하면 됩니다.
displayHeight__description__0 = <a href="#/p5/pixelDensity">pixelDensity</a> 함수의 기본값에 따라 화면의 높이값을 저장하는 시스템 변수입니다. 모든 디스플레이에서 프로그램을 전체 화면으로 실행시킬 때 사용합니다. 실제 화면 크기값을 반환하려면 여기에 pixelDensity를 곱하면 됩니다.
windowWidth__description__0 = 사용자의 윈도우 화면 너비값을 저장해주는 시스템 변수로, window.innerWidth에 매핑됩니다.
windowHeight__description__0 = 사용자의 윈도우 화면 높이값을 저장해주는 시스템 변수로, window.innerHeight에 매핑됩니다.
windowResized__description__0 = <a href="#/p5/windowResized">windowResized()</a> 함수는 브라우저 창의 크기가 조정될 때마다 한 번씩 호출됩니다. 캔버스 크기를 재조정하거나 새 윈도우 화면의 크기에 맞춰 조정할 때 유용합니다.
windowResized__params__event = 객체: (선택 사항) 이벤트 콜백 (callback) 인자값.
width__description__0 = 생성된 캔버스의 너비값을 저장하는 시스템 변수입니다. 이 값은 <a href="#/p5/createCanvas">createCanvas()</a> 함수의 1번째 매개변수로 지정됩니다. createCanvas(320, 240)는 너비 변수를 320으로 설정한 사례입니다. 프로그램에 <a href="#/p5/createCanvas">createCanvas()</a>를 사용하지 않을 경우, 너비는 기본값인 100으로 설정됩니다.
height__description__0 = 생성된 캔버스의 높이값을 저장하는 시스템 변수입니다. 이 값은 <a href="#/p5/createCanvas">createCanvas()</a> 함수의 2번째 매개변수로 지정됩니다. createCanvas(320, 240)는 높이 변수를 240으로 설정한 사례입니다. 프로그램에 <a href="#/p5/createCanvas">createCanvas()</a>를 사용하지 않을 경우, 높이는 기본값인 100으로 설정됩니다.
fullscreen__description__0 = 사용자가 지정한 인수값을 기준으로 스케치를 전체 화면으로 설정합니다. 인수를 지정하지 않으면 현재 전체 화면 모드를 반환합니다. 위의 예제는 브라우저 제한으로 인해 마우스 입력과같은 사용자 입력이 있을 때 이 함수를 호출합니다.
fullscreen__returns = 불리언: 현재 전체 화면 상태
fullscreen__params__val = 불리언: (선택 사항) 스케치를 전체 화면 모드로 실행할 지의 여부
pixelDensity__description__0 = 픽셀 밀도가 높은 디스플레이의 픽셀 크기를 조정합니다. pixelDensity()는 그 기본값으로 화면의 픽셀 밀도와 일치하도록 설정되어 있으며, pixelDensity(1)를 호출하여 이를 해제할 수 있습니다. 별도의 인수없이 pixelDensity() 함수를 호출하면, 스케치의 현재 픽셀 밀도가 반환됩니다.
pixelDensity__params__val = 숫자: 스케치의 픽셀 크기를 조정할 지 여부 또는 조정값
displayDensity__description__0 = 스케치가 실행 중인 현재 디스플레이의 픽셀 밀도를 반환합니다.
displayDensity__returns = 숫자: 디스플레이의 현재 픽셀 밀도
getURL__description__0 = 현재 URL을 받아옵니다.
getURL__returns = 문자열: url
getURLPath__description__0 = 현재 URL 경로를 배열로 받아옵니다.
getURLPath__returns = 문자열 배열[]：경로 요소의 배열
getURLParams__description__0 = 현재 URL 매개변수들을 객체로 받아옵니다.
getURLParams__returns = 객체: URL 매개변수들
preload__description__0 = <a href="#/p5/preload">preload()</a> 함수는 <a href="#/p5/setup">setup()</a> 함수 직전에 호출되며, 외부 파일의 비동기 불러오기를 차단하기 위해 사용됩니다. <a href="#/p5/preload">preload()</a> 함수로 외부 파일 사전 불러오기가 설정되면, <a href="#/p5/setup">setup()</a> 함수는 불러오기 호출이 완료될 때까지 대기합니다. 불러오기 호출 이외의 다른 함수(loadImage, loadJOSN, loadFont, loadString)는 <a href="#/p5/preload">preload()</a> 함수 안에 포함되지 않아야 합니다. 만약 비동기 불러오기를 선호한다면, 불러오기 메소드를 <a href="#/p5/setup">setup()</a> 함수 안에 포함시키거나, 그 외의 영역에서 callback 매개변수를 사용하여 호출하면 됩니다.
preload__description__1 =  기본값으로 'loading..'이라는 텍스트가 화면에 나타납니다. 나만의 로딩 페이지를 만들려면 id가 p5_loading으로 지정된 HTML 요소를 추가하면 됩니다. 자세한 정보는 <a href='http://bit.ly/2kQ6Nio'>여기</a>에 있습니다.
setup__description__0 = <a href="#/p5/setup">setup()</a> 함수는 프로그램 실행시 단 한번 호출됩니다. 함수는 화면 크기나 배경색 등의 초기 환경 요소를 정의하고, 또 이미지나 폰트같은 미디어 파일을 불러오는 데에 쓰입니다. <a href="#/p5/setup">setup()</a> 함수는 프로그램당 한 개씩만 존재할 수 있으며, 최초 한 번 실행된 이후에는 재호출되지 않아야 합니다.
setup__description__1 = 참고: <a href="#/p5/setup">setup()</a> 함수 안에 선언된 변수는, <a href="#/p5/draw">draw()</a> 함수를 비롯한 여타 함수들이 접근할 수 없습니다.
setup__description__2 = 
draw__description__0 = <a href="#/p5/draw">draw()</a> 함수는 <a href="#/p5/setup">setup()</a> 함수 직후에 호출되며, 프로그램 실행이 중단되거나 <a href="#/p5/noLoop">noLoop()</a> 함수가 호출되기 전까지 블록 내에 포함된 코드들을 계속 실행합니다. 만약 <a href="#/p5/setup">setup()</a> 함수에서 <a href="#/p5/noLoop">noLoop()</a>가 호출된다면, <a href="#/p5/draw">draw()</a> 함수는 단 한 번 실행됩니다. <a href="#/p5/draw">draw()</a> 함수는 자동으로 호출되며, 명시적으로 호출하면 안됩니다.
draw__description__1 = <a href="#/p5/draw">draw()</a> 함수는 항상 <a href="#/p5/noLoop">noLoop()</a>, <a href="#/p5/redraw">redraw()</a>, 그리고 loop() 함수로 제어됩니다. <a href="#/p5/noLoop">noLoop()</a>함수가 <a href="#/p5/draw">draw()</a> 함수에 포함된 코드 실행을 멈추면, <a href="#/p5/redraw">redraw()</a> 함수가 <a href="#/p5/draw">draw()</a> 함수 안에 포함된 코드들을 한 번만 실행하게 됩니다. loop() 함수의 경우, <a href="#/p5/draw">draw()</a> 함수 안에 있는 코드를 계속해서 반복적으로 실행되게 합니다.
draw__description__2 = <a href="#/p5/draw">draw()</a> 함수가 초당 호출되는 횟수는 frameRate() 함수를 통해 조정할 수 있습니다.
draw__description__3 = <a href="#/p5/draw">draw()</a> 함수는 한 스케치당 한 번만 작성되어야 하며, 코드를 계속 실행하거나 mousePressed()와 같은 이벤트를 처리할 때 반드시 필요합니다. 때로는 위의 예제처럼 비어있는 <a href="#/p5/draw">draw()</a> 함수를 호출하기도 합니다.
draw__description__4 = 드로잉의 좌표계가 매 <a href="#/p5/draw">draw()</a> 함수가 호출될 때마다 리셋되는 점에 유의해야 합니다. <a href="#/p5/draw">draw()</a> 함수 안에서 변형 함수(scale, rotate, translate)가 실행될 경우, <a href="#/p5/draw">draw()</a> 함수가 재호출되는 시점에 그 효과들은 무효화되고, 따라서 시간이 지나도 변형 내용이 누적되지 않습니다. 반면, 한 번 선언된 스타일(fill, stroke 등)은 계속해서 적용됩니다.
remove__description__0 = 전체 p5 스케치를 제거합니다. 이 함수는 캔버스와 p5.js로 생성한 모든 요소들을 제거합니다. 또한, 그리기 반복(draw loop)를 중지하고, 윈도우 전역 범위에서 선언된 속성이나 메소드의 구속력을 해제합니다. 새로운 p5 스케치를 만들고자 할 경우에는 변수 p5를 남겨둡니다. 원한다면 p5 = null로 처리하여 이를 제거할 수 있습니다. p5 라이브러리로 생성한 모든 함수, 변수, 그리고 객체가 제거되지만, 사용자가 코드로 생성한 여타 전역 변수들은 그대로 유지됩니다.
disableFriendlyErrors__description__0 = 스케치를 만드는 동안 '친근한 에러 시스템 (Friendly Error System, FES)'을 필요시 비활성화하여 성능을 향상시킵니다. <a href='https://github.com/processing/p5.js/wiki/Optimizing-p5.js-Code-for-Performance#disable-the-friendly-error-system-fes'>친근한 에러 시스템 비활성화하기</a>에 더 자세히 기록되어 있습니다.
let__description__0 = 새로운 변수를 생성하고 그 이름을 지정합니다. 변수는 값을 담는 컨테이너입니다.
let__description__1 = <a href="#/p5/let">let</a>으로 선언된 변수는 블록 단위의 적용 범위를 갖습니다. 즉, 변수가 작성된 블록 내에서만 존재하고 사용될 수 있음을 뜻합니다.
let__description__2 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/let'>MDN Entry</a>에서 발췌: 블록 범위의 지역 변수를 선언하고, 선택적으로 그 값을 초기화합니다.
const__description__0 = 새로운 상수를 생성하고 그 이름을 지정합니다. 마치 <a href="#/p5/let">let</a>으로 생성된 변수처럼, <a href="#/p5/const">const</a>로 생성된 상수는 값을 담는 컨테이너입니다. 하지만, 상수는 한 번 산언된 다음 변경할 수 없습니다.
const__description__1 = const로 선언된 상수는 블록 단위의 적용 범위를 갖습니다. 즉, 상수가 작성된 블록 내에서만 존재하고 사용될 수 있음을 뜻합니다. 상수는 자신이 존재하고 있는 범위 내에서 재선언될 수 없습니다.
const__description__2 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/const'>MDN Entry</a>에서 발췌: 읽기만 가능한 상수를 선언합니다. const는 블록 단위로 적용되며, let으로 선언된 변수들과 유사합니다. 상수값은 재지정을 통해 변경될 수 없으며, 재선언될 수 없습니다.
===__description__0 = 완전 항등 연산자 '===' 는 두 값이 같으면서 동시에 동일한 유형인지 여부를 확인합니다.
===__description__1 = 비교 표현식은 항상 불리언으로 연산됩니다.
===__description__2 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Operators/Comparison_Operators'>MDN Entry</a>에서 발췌: 이 연산자는 피연산자들이 동일한 값이 아니고/또는 동일한 유형이 아닐 때 참(true)을 반환합니다.
===__description__3 = 웹상의 몇몇 예제에서 피연산자 간의 비교를 위해 이중 등호(==)를 사용하는 것을 볼 수 있습니다. 이는 자바스크립트상의 완전 항등 연산자(===)에 해당하지 않으며, 두 피연산자의 값들을 비교하기에 앞서, 그 유형이 동일한지의 여부를 비교하게 됩니다.
>__description__0 = 비교 연산자 > 는 왼쪽 값이 오른쪽 값보다 큰 경우 참(true)으로 연산합니다.
>__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Operators/Comparison_Operators'>MDN 발췌 비교 연산자 상세 설명은 여기에 있습니다.</a>
>=__description__0 = 비교 연산자 >= 는 왼쪽 값이 오른쪽 값보다 크거나 같은 경우 참(true)로 연산합니다.
>=__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Operators/Comparison_Operators'>MDN 발췌 비교 연산자 상세 설명은 여기에 있습니다.</a>
>=__description__2 = 
<__description__0 = 비교 연산자 < 는 왼쪽 값이 오른쪽 값보다 작은 경우 참(true)으로 연산합니다.
<__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Operators/Comparison_Operators'>MDN 발췌 비교 연산자 상세 설명은 여기에 있습니다.</a>
<__description__2 = 
<=__description__0 = 비교 연산자 <= 는 왼쪽 값이 오른쪽 값보다 작거나 같은 경우 참(true)로 연산합니다.
<=__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Operators/Comparison_Operators'>MDN 발췌 비교 연산자 상세 설명은 여기에 있습니다.</a>
if-else__description__0 = if-else문으로 코드의 흐름을 제어할 수 있습니다.
if-else__description__1 = 'if' 바로 다음 괄호 안에 조건을 지정할 수 있으며, 조건이 <a href = 'https://developer.mozilla.org/ko/docs/Glossary/truthy'>참(truthy)</a>으로 연산되면 뒤따른 중괄호 사이의 코드가 실행됩니다. 조건이 <a href = 'https://developer.mozilla.org/ko/docs/Glossary/Falsy'>거짓(falsy)</a>으로 연산되면 'else' 뒤에 오는 중괄호 사이의 코드가 대신 실행됩니다.
if-else__description__2 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/if...else'>MDN Entry</a>에서 발췌: 지정된 조건이 참일 경우, if문은 명령문을 실행합니다. 조건이 거짓이면 다른 명령문을 실행할 수 잇습니다.
function__description__0 = 새로운 <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Guide/Functions'>함수 (function)</a>를 생성하고 함수명을 지정합니다. 함수란, 작업을 수행하는 일련의 명령문을 뜻합니다.
function__description__1 = 선택적으로, 함수는 매개변수를 가질 수 있습니다.<a href = 'https://developer.mozilla.org/ko/docs/Glossary/Parameter'>매개변수(parameter)</a>란, 특정 함수에만 그 사용 범위가 지정된 변수를 뜻하며 함수 호출시 그 값을 지정할 수 있습니다.
function__description__2 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/function'>MDN Entry</a>에서 발췌: 사용자가 지정한 매개변수를 사용하여 함수를 선언합니다.
return__description__0 = 함수가 반환할 값을 지정합니다. <br><a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/return'>MDN Entry 발췌 함수(function) 상세 설명</a>
boolean__description__0 = 불리언 (boolean)은 자바스크립트에서 지정한 7개의 <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Data_structures#Primitive_values'>기본 데이터 유형</a> 중 하나입니다. 불리언은 참(true) 또는 거짓(false)으로 값을 나타냅니다.
boolean__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Data_structures#Boolean_type'>MDN Entry</a>에서 발췌: 불리언은 논리적 개체를 나타내며 참(true) 또는 거짓(false)이라는 두 개의 값만 갖습니다.
boolean__returns = 불리언: 특정 값의 불리언형 표식
boolean__params__n = 문자열|불리언|숫자|배열[]: 분해할 값
string__description__0 = 문자열(string)은 자바스크립트에서 지정한 7개의 <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Data_structures#Primitive_values'>기본 데이터 유형</a> 중 하나입니다. 문자열은 일련의 텍스트 문자들을 뜻하며, 자바스크립트에서 문자열 값은 작은 따옴표나 큰따옴표로 묶여 표현됩니다.
string__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Glossary/string'>MDN Entry</a>에서 발췌: 문자열은 텍스트를 나타낼 때 사용하는 일련의 문자들입니다.
number__description__0 = 숫자(number)는 자바스크립트에서 지정한 7개의 <a href = 'https://developer.mozilla.org/ko/docs/Web/JavaScript/Data_structures#Primitive_values'>기본 데이터 유형</a> 중 하나입니다. 숫자는 정수 또는 10진수로 표현됩니다.
number__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Glossary/number'>MDN Entry 발췌 숫자(number) 상세 설명은 여기에 있습니다.</a>
object__description__0 = <a href = 'https://developer.mozilla.org/ko/docs/Learn/JavaScript/Objects/Basics'>MDN Entry 발췌 객체(object) 기초 설명</a>: 객체(object)는 데이터 그리고/또는 함수의 모음을 뜻합니다. 일반적으로 여러 개의 변수와 함수로 구성됩니다. 변수와 함수가 객체 안에 포함된 경우, 각각을 속성(property)과 메소드(method)라 부릅니다.
class__description__0 = 클래스(class)를 생성하고 그 이름을 지정합니다. 클래스는 객체(object) 생성을 위한 하나의 템플릿입니다.
class__description__1 = <a href = 'https://developer.mozilla.org/ko/docs/Glossary/number'>MDN Entry</a>에서 발췌: 클래스 선언을 통해 새로운 Class를 생성합니다. 이 때, 새로운 Class의 이름은 프로토타입 기반 상속을 통해 지정됩니다.
for__description__0 = for문을 사용하여 특정 부분의 코드에 대한 반복문(loop)을 만듭니다.
for__description__1 = 'for 반복문 (for loop)'은 괄호 속 3개의 다른 표현식들로 구성되며, 각각의 표현식은 모두 선택 사항입니다. 이 표현식들은 반복 실행(loop)의 횟수를 제어합니다. 1번째 표현식은 반복문의 초기 상태를 설정하는 명령문입니다. 2번째 표현식은 매 반복 실행에 앞서 조건 충족 여부를 확인합니다. 이 표현식이 거짓(false)를 반환하면 반복 실행이 종료됩니다. 3번째 표현식은 반복문의 가장 마지막 단계에 실행됩니다.
for__description__2 = for 반복문의 본문(중괄호 사이의 영역)에 포함된 코드는 2번째와 3번째 표현식의 연산과정 사이에 실행됩니다.
for__description__3 = 여타 반복문과 마찬가지로, for 반복문 역시 반복이 '종료'되는 시점이나, 조건을 더이상 충족하지 않아 거짓(false)으로 연산되는 시점을 명시해야 합니다. 앞서 설명된 2번째 표현식을 통해, for 반복문의 조건이 거짓으로 연산되는 시점을 정할 수 있습니다. for반복문의 조건이 언젠가 거짓으로 처리되는 시점을 지정함으로써, 해당 반복문이 무한으로 실행되지 않도록 처리하기 위함입니다. 그렇지 않으면, 브라우저가 중단될 수 있습니다.
for__description__4 = <a href ='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/for'>MDN Entry</a>에서 발췌: for 반복문은 조건이 거짓(false)으로 연산될 때까지 지정된 명령문을 실행합니다. 명령문을 실행한 후에는 조건 충족 여부를 다시 평가하여, 명령문이 최소 1번 실행되도록 합니다.
while__description__0 = while문을 사용하여 특정 부분의 코드에 대한 반복문(loop)을 만듭니다.
while__description__1 = 'while 반복문(while loop)'을 사용하면, 소괄호 속 조건이 거짓(false)이 될 때까지 중괄호 속 본문의 코드가 반복적으로 실행됩니다. for 반복문과 달리, while 반복문은 그 본문 속 코드를 실행하기 앞서 조건 충족 여부를 먼저 확인합니다. 따라서, 최초 실행시 조건이 거짓일 경우, while문 속 본문과 명령문은 절대 실행되지 않습니다.
while__description__2 = 여타 반복문과 마찬가지로, while 반복문 역시 반복이 '종료'되는 시점이나, 조건을 더이상 충족하지 않아 거짓(false)으로 연산되는 시점을 명시해야 합니다. while 반복문의 조건이 언젠가 거짓으로 처리되는 시점을 지정함으로써, 해당 반복문이 무한으로 실행되지 않도록 처리하기 위함입니다. 그렇지 않을 경우, 브라우저가 중단될 수 있습니다.
while__description__3 = <a href ='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/while'>MDN Entry</a>에서 발췌: while 반복문은 조건이 참(true)인 경우에 한해 지정된 명령문을 실행합니다. 명령문 실행에 앞서 조건 충족 여부가 평가됩니다.
createCanvas__description__0 = 캔버스를 생성하고 픽셀 단위로 크기를 설정합니다. <a href="#/p5/createCanvas">createCanvas()</a>는 <a href="#/p5/setup">setup()</a> 함수 시작시 단 한 번만 실행되어야 합니다. <a href="#/p5/createCanvas">createCanvas()</a>를 한 번 이상 호출하면 스케치가 예기치 못한 반응을 보일 수 있습니다. 두 개 이상의 캔버스가 필요하다면 createGraphics()를 이용합니다.
createCanvas__description__1 = 설정된 캔버스 사이즈는 시스템 변수인 너비(width)와 높이(height)에 각각 저장됩니다. <a href="#/p5/createCanvas">createCanvas()</a> 함수를 생략하면, 스케치의 크기는 기본값인 100x100 픽셀로 지정됩니다.
createCanvas__description__2 = 캔버스의 위치 지정 방법은 <a href = 'https://github.com/processing/p5.js/wiki/Positioning-your-canvas'>캔버스 위치 지정하기</a> 위키 페이지에 있습니다.
createCanvas__returns = p5.Renderer
createCanvas__params__w = 숫자: 캔버스의 너비값
createCanvas__params__h = 숫자: 캔버스의 높이값
createCanvas__params__renderer = 상수: (선택 사항) P2D 또는 WEBGL
resizeCanvas__description__0 = 사용자가 지정한 너비와 높이로 캔버스 크기를 재조정합니다. 이 함수를 사용하면 캔버스는 클리어되며, <a href="#/p5/draw">draw()</a> 함수가 곧바로 호출되어 스케치를 재조정된 크기의 캔버스로 다시 렌더링되게 합니다.
resizeCanvas__params__w = 숫자: 캔버스의 너비값
resizeCanvas__params__h = 숫자: 캔버스의 높이값
resizeCanvas__params__noRedraw = 불리언: (선택 사항) 캔버스를 곧바로 다시 그리지 않도록 처리할지의 여부 
noCanvas__description__0 = 캔버스가 불필요한 p5 스케치를 위해 기본적으로 제공되는 캔버스를 제거합니다.
createGraphics__description__0 = 새로운 p5.Renderer 객체를 생성하고 반환합니다. 화면 밖 그래픽 버퍼(off-screen graphic buffer)에 그리려면 이 클래스를 사용합니다. 2개의 매개변수는 너비와 높이를 픽셀 단위로 지정합니다.
createGraphics__returns = p5.Graphics: 화면 밖 그래픽 버퍼
createGraphics__params__w = 숫자: 화면 밖 그래픽 버퍼의 너비값
createGraphics__params__h = 숫자: 화면 밖 그래픽 버퍼의 높이값
createGraphics__params__renderer = 상수：P2D 또는 WEBGL, 기본값은 P2D
blendMode__description__0 = 사용자가 지정한 모드에 따라 디스플레이 화면상의 픽셀들을 혼합합니다. 소스 픽셀 (A)를 디스플레이 화면 (B)상에 있는 픽셀과 혼합하기 위해 다음 모드를 선택할 수 있습니다:<br><ul><li><code>BLEND</code> - 색상 선형 보간:C = (A)*계수 + (B). 기본 혼합 모드입니다.</li><li><code>ADD</code> - (A)와 (B)의 합</li><li><code>DARKEST</code> - 가장 어두운 색상만 혼합됩니다：C = min(A*계수, B).</li><li><code>LIGHTEST </code> - 가장 밝은 색상만 혼합됩니다.：C = max(A*계수, B).</li><li><code>DIFFERENCE</code> - 기본 이미지에서 색상값을 뺄셈합니다.</li><li><code>EXCLUSION</code> - DIFFERENCE와 유사하지만 덜 극적입니다.</li><li><code>MULTIPLY</code> - 색상을 곱하는 것으로, 결과값은 좀 더 어둡습니다.</li><li><code>SCREEN</code> - MULTIPLY와 반대로 색상의 반전된 값을 사용합니다.</li><li><code>REPLACE</code> - 픽셀이 다른 픽셀을 완전히 대체하며 알파값(투명도)를 사용하지 않습니다.</li><li><code>OVERLAY</code> - MULTIPLY와 SCREEN의 혼합으로, 어두운 값을 곱하고 밝은 값의 반전된 값을 사용합니다. (2D)</li><li><code>HARD_LIGHT</code> - 회색값이 50%보다 높으면 SCREEN로, 낮으면 MULTIPLY로 처리합니다. (2D)</li><li><code>SOFT_LIGHT</code> - DARKEST와 LIGHTEST 혼합으로, OVERLAY처럼 작동하나 덜 강합니다. (2D)</li><li><code>DODGE</code> - 밝은 색조를 더 밝게 처리하고 대비를 높이며, 어두운 영역은 무시합니다. (2D)</li><li><code>BURN</code> - 어두운 영역이 적용되어 대비가 증가하고 밝기는 무시됩니다. (2D)</li><li><code>SUBTRACT</code> - (A)와 (B)의 나머지(3D)</li></ul>
blendMode__description__1 = <em>(2D)</em>는 2D 렌더러에서만 작동하는 혼합 모드를 뜻합니다.
blendMode__description__2 = <em>(3D)</em>는 WEBGL 렌더러에서만 작동하는 혼합 모드를 뜻합니다.
blendMode__description__3 = 
blendMode__params__mode = 상수：캔버스에 설정되는 혼합 모드. BLEND, DARKEST, LIGHTEST, DIFFERENCE, MULTIPLY, EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT, SOFT_LIGHT, DODGE, BURN, ADD, REMOVE 또는 SUBTRACT 중 하나
drawingContext__description__0 = p5.js API는 다양한 그래픽 제작 기능들을 제공하지만, p5에 노출되지 않는 HTML5 고유의 캔버스 기능이 있습니다. 그러한 기능들은 예제처럼 drawingContext 변수를 사용하여 직접 호출할 수 있습니다. 이는 canvas.getContext('2d') 또는 canvas.getContext('webgl') 함수를 호출하는 것과도 같습니다. 호출 가능한 함수는 <a href ='https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D'>기본 캔버스 API 레퍼런스</a>에 있습니다.
noLoop__description__0 = p5.js가 <a href="#/p5/draw">draw()</a> 함수 안에 포함된 코드를 계속 실행하지 않도록 합니다. loop() 함수가 호출될 경우, <a href="#/p5/draw">draw()</a> 함수 안의 코드가 다시 계속 실행 됩니다. <a href="#/p5/setup">setup()</a> 함수 안에 <a href="#/p5/noLoop">noLoop()</a> 함수를 사용할 경우, <a href="#/p5/setup">setup()</a> 함수 블록의 가장 마지막 줄에 작성합니다.
noLoop__description__1 = <a href="#/p5/noLoop">noLoop()</a>을 사용하면, mousePressed()나 keyPressed()와 같은 이벤트 처리 함수를 통해 화면에 접근하거나 조정할 수 없습니다. 대신,  <a href="#/p5/redraw">redraw()</a>나 loop() 함수들을 이용하여, 화면 업데이트 함수인 <a href="#/p5/draw">draw()</a>를 재실행시켜 이벤트 처리 함수를 실행할 수 있습니다. 다시 말해, <a href="#/p5/noLoop">noLoop()</a> 함수가 호출된다는 것은 <a href="#/p5/draw">draw()</a>가 실행되지 않으며, <a href="#/p5/saveFrames">saveFrames()</a>이나 <a href="#/p5/loadPixels">loadPixels()</a>와 같은 함수 역시 사용할 수 없음을 뜻합니다.
noLoop__description__2 = 스케치 크기를 재조정하면, <a href="#/p5/noLoop">noLoop()</a> 함수가 호출되지 않더라도 <a href="#/p5/redraw">redraw()</a>가 호출되어 스케치를 업데이트하는 점에 유의해야 합니다. 그렇지 않으면, 스케치는 <a href="#/p5/loop">loop()</a>가 호출될 때까지 예기치 못한 반응을 보일 수 있습니다.
noLoop__description__3 = loop()의 상태를 확인할 때 <a href="#/p5/isLooping">isLooping()</a>를 사용합니다.
loop__description__0 = 기본적으로 p5.js는 <a href="#/p5/draw">draw()</a> 함수 안에 포함된 코드를 계속해서 반복 실행(loop)합니다. 하지만 <a href="#/p5/draw">draw()</a> 함수의 반복 실행 기능은 <a href="#/p5/noLoop">noLoop()</a> 함수를 통해 중단할 수 있습니다. 이때 <a href="#/p5/draw">draw()</a>의 반복 실행 기능은 loop() 함수를 통해 재개할 수 있습니다.
loop__description__1 = <a href="#/p5/setup">setup()</a> 함수 안에서 loop()의 사용을 권장하지 않습니다.
loop__description__2 = loop()의 상태를 확인할 때 <a href="#/p5/isLooping">isLooping()</a>를 사용합니다.
isLooping__description__0 = 기본적으로 p5.js는 <a href="#/p5/draw">draw()</a> 함수 안에 포함된 코드를 계속해서 반복 실행(loop)합니다. 하지만 <a href="#/p5/draw">draw()</a> 함수의 반복 실행 기능은 <a href="#/p5/noLoop">noLoop()</a> 함수를 통해 중단할 수 있고 <a href="#/p5/draw">draw()</a>의 반복 실행 기능은 loop() 함수를 통해 재개할 수 있습니다. 이때 isLooping()은 현재 상태를 반환합니다.
push__description__0 = push() 함수는 현재의 드로잉 스타일 설정과 변형을 저장하고, pop() 함수는 이 설정들을 복구합니다. 이 함수들은 항상 함께 쓰이는 점에 유의해야 합니다. 이 함수들을 통해 스타일과 변형 설정을 변경한 뒤에도 이전 설정 상태로 돌아갈 수 있습니다. push()와 pop() 함수들은 설정 사항에 대해 좀 더 많은 권한을 제공합니다. (두 번째 예제를 참고)
push__description__1 =  push()는 다음의 함수들을 통해 지정된 현재 변형 상태 및 스타일 설정 사항을 저장합니다: fill(), noFill(), noStroke(), stroke(), tint(), noTint(), strokeWeight(), strokeCap(), strokeJoin(), imageMode(), rectMode(), ellipseMode(), colorMode(), textAlign(), textFont(), textSize(), textLeading(), applyMatrix(), resetMatrix(), rotate(), scale(), shearX(), shearY(), translate(), noiseSeed().
push__description__2 = WebGL 모드에서는 다음의 함수들을 통해 지정된, 더욱 다양한 스타일 설정 사항이 저장될 수 있습니다:  setCamera(), ambientLight(), directionalLight(), pointLight(), texture(), specularMaterial(), shininess(), normalMaterial(), 그리고 shader()
push__description__3 = 
push__description__4 = 
pop__description__0 = push() 함수는 현재의 드로잉 스타일 설정과 변형을 저장하고, pop() 함수는 이 설정들을 복구합니다. 이 함수들은 항상 함께 쓰이는 점에 유의해야 합니다. 이 함수들을 통해 스타일과 변형 설정을 변경한 뒤에도 이전 설정 상태로 돌아갈 수 있습니다. push()와 pop() 함수들은 설정 사항에 대해 좀 더 많은 권한을 제공합니다. (두 번째 예제.)
pop__description__1 =  push()는 다음의 함수들을 통해 지정된 현재 변형 상태 및 스타일 설정 사항을 저장합니다: fill(), noFill(), noStroke(), stroke(), tint(), noTint(), strokeWeight(), strokeCap(), strokeJoin(), imageMode(), rectMode(), ellipseMode(), colorMode(), textAlign(), textFont(), textSize(), textLeading(), applyMatrix(), resetMatrix(), rotate(), scale(), shearX(), shearY(), translate(), noiseSeed().
pop__description__2 = WebGL 모드에서는 다음의 함수들을 통해 지정된, 더욱 다양한 스타일 설정 사항이 저장될 수 있습니다:  setCamera(), ambientLight(), directionalLight(), pointLight(), texture(), specularMaterial(), shininess(), normalMaterial(), 그리고 shader()
pop__description__3 = 
pop__description__4 = 
redraw__description__0 = <a href="#/p5/draw">draw()</a> 함수 안에 포함된 코드를 한 번 재실행합니다. 이 함수를 통해 필요시에만 화면을 업데이트할 수 있습니다. mousePressed()나 keyPressed()가 지정한 이벤트를 발생시킬 때가 그 예입니다.
redraw__description__1 = 프로그램의 구조를 고려하면, mousePressed()와 같은 이벤트 함수에 <a href="#/p5/redraw">redraw()</a>를 호출하는 것이 좋습니다. 이는 <a href="#/p5/redraw">redraw()</a>가 <a href="#/p5/draw">draw()</a>함수를 즉각적으로 실행시키지 않기 때문입니다. <a href="#/p5/redraw">redraw()</a>는 화면 업데이트가 필요함을 알리는 표식 설정만합니다.
redraw__description__2 = 
redraw__description__3 = 
redraw__description__4 = 
redraw__params__n = 정수: (선택 사항) n번 간 <a href="#/p5/redraw">redraw()</a> 함수 실행. 기본값은 1
p5__description__0 = p5() 생성자로 전역 모드 대신 인스턴스 모드를 활성화할 수 있습니다. 이는 고급 활용 사례에 해당합니다. 간단한 설명과 예제가 아래에 있습니다. 자세한 내용은 다니엘 쉬프만(Dan Shiffman)의 <a target="blank" href="https://www.youtube.com/watch?v=Su792jEauZg&feature=youtu.be">코딩 트레인(Coding Train) 비디오 튜토리얼</a> 또는 <a target="blank" href="https://github.com/processing/p5.js/wiki/p5.js-overview#instantiation--namespace">이 페이지</a>에 있습니다. 
p5__description__1 = 기본적으로 모든 p5.js 함수들은 전역 네임스페이스에 속합니다. (즉, 화면창 객체에 구속됩니다.) 이는, p5.js 함수들을 ellipse(), fill()과 같은 이름으로 불러올 수 있음을 뜻합니다. 하지만, 이러한 방식은 자바스크립트의 여타 (동기식 또는 비동기식) 라이브러리를 사용하거나 긴 코딩을 작성할 때 다소 불편할 수 있습니다. 따라서, p5.js는 인스턴스 모드를 통해 이 문제를 해결할 수 있는 방법을 지원합니다. 인스턴스 모드에서는 모든 p5 함수의 전역 네임 스페이스를 오염시키는 대신, 이를 단일 변수에 구속되게 만듭니다.
p5__description__2 = 선택적으로 캔버스나 다른 요소에 추가할 두 번째 인수로서 기본 컨테이너를 지정할 수 있습니다. HTML상 요소의 id나 노드 자체를 추가(append)할 수 있습니다.
p5__description__3 = 이처럼 인스턴스를 만들면, 단일 웹페이지에 두 개 이상의 p5 스케치를 사용할 수 있게 됩니다. 각각의 고유한 설정 변수에 의거하기 때문입니다. 물론, 전역 모드에서도 iframe 기능을 이용하면 복수의 스케치를 웹페이지에 사용할 수 있습니다.
p5__params__sketch = 객체: p5.js 스케치를 포함하는 함수
p5__params__node = 문자열|객체: 스케치를 포함할 HTML DOM 노드 ID 또는 포인터
applyMatrix__description__0 = 현재 행렬(matrix)에 매개변수로 지정된 행렬을 곱합니다. 평행 이동과 같은 연속 이동(translate), 크기 조정(scale), 전단(shear), 회전(rotate)을 한 번에 수행할 수 있습니다. <a href='https://ko.wikipedia.org/wiki/%EB%B3%80%ED%99%98%ED%96%89%EB%A0%AC'>변환행렬 위키피디아</a>에서 더 많은 정보를 확인할 수 있습니다.
applyMatrix__description__1 = 이 때, 인수들은 <a href='https://html.spec.whatwg.org/multipage/canvas.html#dom-context-2d-transform'>WHATWG 사양</a>에 따라 그 이름이 지정되며, 다음과 같은 형식의 변환 행렬에 상응합니다：<blockquote><p><img style='max-width: 150px' src='assets/transformation-matrix.png' alt='applyMatrix() 함수 호출시 사용되는 변환 행렬'></p></blockquote>
applyMatrix__description__2 = 
applyMatrix__description__3 = 
applyMatrix__params__a = 숫자: 곱할 2x3 행렬 정의
applyMatrix__params__b = 숫자: 곱할 2x3 행렬 정의
applyMatrix__params__c = 숫자: 곱할 2x3 행렬 정의
applyMatrix__params__d = 숫자: 곱할 2x3 행렬 정의
applyMatrix__params__e = 숫자: 곱할 2x3 행렬 정의
applyMatrix__params__f = 숫자: 곱할 2x3 행렬 정의
resetMatrix__description__0 = 현재 행렬을 항등 행렬로 바꿉니다.
rotate__description__0 = 사용자가 지정한 각도 매개변수에 따라 도형을 회전합니다. 이 함수는 angleMode() 함수의 영향을 받으며, 괄호 안에 RADIANS 또는 DEGREES를 입력하여  각도가 해석되는 방식을 지정할 수 있습니다.
rotate__description__1 = 객체는 항상 원점에 대한 상대적 위치를 중심으로 회전하며, 양수를 입력할 경우 시계 방향으로 객체를 회전합니다. 이러한 변형(transformation) 함수는 그것이 호출된 뒤 후속적으로 호출된 모든 변형 함수들에 적용됩니다. 예를 들어, rotate(HALF_PI)를 호출한 뒤 rotate(HALF_PI)를 호출하면, 결과적으로 rotate(PI)와 동일한 효과를 갖습니다. 모든 변형은 <a href="#/p5/draw">draw()</a> 함수가 다시 시작하는 시점에 리셋됩니다.
rotate__description__2 = 좀 더 기술적으로 설명하자면, rotate() 함수는 현재 변환 행렬에 회전 행렬을 곱하는 셈입니다. 이 함수는 push()와 pop() 함수를 통해 추가적으로 제어 가능합니다.
rotate__description__3 = 
rotate__description__4 = 
rotate__params__angle = 숫자: 현재 angleMode의 매개변수인 RADIANS(라디안) 또는 DEGREES(도)의 설정 사항에 따른 회전각
rotate__params__axis = p5.Vector|숫자 배열[]: (선택 사항) 3D의 경우, 회전축
rotateX__description__0 = x축을 따라 회전합니다.
rotateX__params__angle = 숫자: 현재 angleMode의 매개변수인 RADIANS(라디안) 또는 DEGREES(도)의 설정 사항에 따른 회전각
rotateY__description__0 = y축을 따라 회전합니다.
rotateY__params__angle = 숫자: 현재 angleMode의 매개변수인 RADIANS(라디안) 또는 DEGREES(도)의 설정 사항에 따른 회전각
rotateZ__description__0 = z축을 따라 회전합니다. (WebGL 모드 전용)
rotateZ__params__angle = 숫자: 현재 angleMode의 매개변수인 RADIANS(라디안) 또는 DEGREES(도)의 설정 사항에 따른 회전각
scale__description__0 = 꼭짓점을 확장하거나 축소하여 도형의 크기를 키우거나 줄입니다. 객체의 크기는 언제나 좌표계에 대한 상대적 원점을 기준으로 조정됩니다. 크기값들은 10진수 백분율로 지정됩니다. 예를 들어, scale(2.0) 함수를 호출하면 도형의 크기를 200% 증가시킵니다.
scale__description__1 = 이러한 변형(transformation) 함수는 호출된 뒤 후속적으로 호출된 모든 변형 함수들에 적용됩니다. 예를 들어, scale(2.0)을 호출한 뒤 scale(1.5)를 호출하면, 결과적으로 scale(3.0)과 동일한 효과를 갖습니다. 모든 변형은 <a href="#/p5/draw">draw()</a> 함수가 다시 시작하는 시점에 리셋됩니다.
scale__description__2 = 매개변수 z는 오직 WebGL 모드에서만 사용 가능합니다. 이 함수는 push()와 pop() 함수를 통해 추가적으로 제어 가능합니다.
scale__description__3 =
scale__description__4 =
scale__params__s = 숫자|p5.Vector|숫자 배열[]：객체 크기를 조정하는 백분율, 또는 여러 인수를 지정할 경우 x축에서의 객체 크기 배율을 조정하는 백분율
scale__params__y = 숫자: (선택 사항) y축에서의 객체 크기를 조정하는 백분율
scale__params__z = 숫자: (선택 사항) z축에서의 객체 크기를 조정하는 백분율 (WebGL 모드용)
scale__params__scales = p5.Vector|숫자 배열[]: 축을 기준으로 객체의 크기 조정
shearX__description__0 = 사용자가 지정한 각도 매개변수에 따라 도형을 x축에서 전단(shear)합니다. 이 함수는 angleMode() 함수의 영향을 받습니다. 객체는 항상 원점에 대한 상대적 위치를 중심으로 전단되며, 양수를 입력할 경우 시계 방향으로 객체를 전단합니다.
shearX__description__1 =  이러한 변형(transformation) 함수는  호출된 뒤 후속적으로 호출된 모든 변형 함수들에 적용되어, 그 효과들이 누적됩니다. 예를 들어, shearX(PI/2)를 호출한 뒤 shearX(PI/2)를 또 호출하면, 결과적으로 shearX(PI)와 동일한 효과를 갖습니다. <a href="#/p5/draw">draw()</a> 함수 내에서 shearX()를 호출하면, 반복 실행이 다시 시작되는 시점에 모든 변형 내용이 리셋됩니다.
shearX__description__2 = 보다 기술적으로 설명하자면, shearX() 함수는 현재 변환 행렬에 회전 행렬을 곱하는 셈입니다. 이 함수는 push()와 pop() 함수를 통해 추가적으로 제어 가능합니다.
shearX__description__3 = 
shearX__description__4 = 
shearX__params__angle = 숫자: 현재 angleMode의 매개변수인 RADIANS(라디안) 또는 DEGREES(도)의 설정 사항에 따른 전단각
shearY__description__0 = 사용자가 지정한 각도 매개변수에 따라 도형을 y축에서 전단(shear)합니다. 이 함수는 angleMode() 함수의 영향을 받습니다. 객체는 항상 원점에 대한 상대적 위치를 중심으로 전단되며, 양수를 입력할 경우 시계 방향으로 객체를 전단합니다.
shearY__description__1 = 이러한 변형(transformation) 함수는 호출된 뒤 후속적으로 호출된 모든 변형 함수들에 적용되어, 그 효과들이 누적됩니다. 예를 들어, shearY(PI/2)를 호출한 뒤 shearY(PI/2)를 또 호출하면, 결과적으로 shearY(PI)와 동일한 효과를 갖습니다. <a href="#/p5/draw">draw()</a> 함수 내에서 shearY()를 호출하면, 반복 실행이 다시 시작되는 시점에 모든 변형 내용이 리셋됩니다.
shearY__description__2 = 보다 기술적으로 설명하자면, shearY() 함수는 현재 변환 행렬에 회전 행렬을 곱하는 셈입니다. 이 함수는 push()와 pop() 함수를 통해 추가적으로 제어 가능합니다.
shearY__description__3 = 
shearY__description__4 = 
shearY__params__angle = 숫자: 현재 angleMode의 매개변수인 RADIANS(라디안) 또는 DEGREES(도)의 설정 사항에 따른 전단각
translate__description__0 = 디스플레이 화면 내에서 객체를 이동시킬 정도를 지정합니다. 매개변수 x는 좌/우 이동을, 매개변수 y는 상/하 이동을 지정합니다.
translate__description__1 = 이러한 변형(transformation) 함수는 호출된 뒤 후속적으로 호출된 모든 변형 함수들에 적용되어, 그 효과들이 누적됩니다. 예를 들어, translate(50, 0)를 호출한 뒤 translate(20, 0)를 또 호출하면, 결과적으로 translate(70, 0)와 동일한 효과를 갖습니다. <a href="#/p5/draw">draw()</a> 함수 내에서 translate()을 호출하면, 반복 실행이 다시 시작되는 시점에 모든 변형 내용이 리셋됩니다.
translate__description__2 = 이 함수는 push()와 pop() 함수를 통해 추가적으로 제어 가능합니다.
translate__params__x = 숫자: 좌/우 이동
translate__params__y = 숫자: 상/하 이동
translate__params__z = 숫자: 앞/뒤 이동 (WebGL 모드용)
translate__params__vector = p5.Vector: 이동시킬 벡터
storeItem__description__0 = 로컬 저장소에 값을 키 이름(key name)으로 저장합니다. 로컬 저장소는 브라우저에 저장되며, 브라우징 세션과 페이지를 다시 불러오는 사이에 유지됩니다. 키(key)는 변수명과 동일하게 지정될 수 있으나, 반드시 그럴 필요는 없습니다. 저장된 항목(item)을 가져오는 방법은 <a href = 'https://p5js.org/reference/#/p5/getItem'>getItem</a>에 있습니다.
storeItem__description__1 = 비밀번호나 개인 정보와같이 민감한 데이터는 로컬 저장소에 저장되면 안됩니다.
storeItem__params__key = 문자열:
storeItem__params__value = 문자열|숫자|객체|불리언|p5.Color|p5.Vector:
getItem__description__0 = storeItem()로 저장한 항목(item)의 값을 로컬 저장소로부터 반환합니다.
getItem__returns = 숫자|객체|문자열|불리언|p5.Color|p5.Vector: 저장된 항목의 값
getItem__params__key = 문자열: 로컬 저장소에 저장시 사용할 이름
clearStorage__description__0 = 현재 영역에서 storeItem()으로 설정된 모든 로컬 저장소 항목(item)을 제거합니다.
removeItem__description__0 = storeItem()으로 저장된 항목(item)을 제거합니다.
removeItem__params__key = 문자열
createStringDict__description__0 = 키-값(key-value) 쌍 또는 사용자가 지정한 객체를 사용하여 p5.StringDict의 새로운 인스턴스를 생성합니다.
createStringDict__returns = p5.StringDict:
createStringDict__params__key = 문자열:
createStringDict__params__value = 문자열:
createStringDict__params__object = 객체: 객체
createNumberDict__description__0 = 키-값(key-value) 쌍 또는 사용자가 지정한 객체를 사용하여 p5.NumberDict의 새로운 인스턴스를 생성합니다.
createNumberDict__returns = p5.NumberDict:
createNumberDict__params__key = 숫자:
createNumberDict__params__value = 숫자
createNumberDict__params__object = 객체: 객체
select__description__0 = 지정한 ID, 클래스, 또는 태그 이름(접두어 '#'로 ID를, '.'로 클래스 지정 가능, 태그는 별도의 접두어 없음)에 해당하는 요소를 페이지 내에서 검색하고, p5.Element를 반환합니다. 클래스나 태그의 이름이 2개 이상의 요소로 지정된 경우, 1번째 요소만 반환됩니다. 문서 객체 모델 (DOM) 노드는 .elt로 검섹할 수 있습니다. 아무 것도 검색되지 않을 경우 null을 반환합니다. 검색할 컨테이너를 별도로 지정할 수 있습니다.
select__returns = 검색된 노드를 포함한 p5.Element
select__params__selectors = 문자열: 찾을 요소의 CSS 선택 문자열 (selector string)
select__params__container = 문자열|p5.Element|HTML 요소: (선택 사항) id, p5.Element, 또는 HTML 요소 내에서 검색
selectAll__description__0 = 지정한 클래스 또는 태그 이름('.'로 클래스 지정 가능, 태그는 별도의 접두어 없음)에 해당하는 요소를 페이지 내에서 검색하고, p5.Element 배열로 반환합니다. 문서 객체 모델 (DOM) 노드는 .elt로 검색할 수 있습니다. 아무 것도 검색되지 않을 경우 빈 배열을 반환합니다. 검색할 컨테이너를 별도로 지정할 수 있습니다.
selectAll__returns = 검색된 노드를 포함한 p5.Element 배열
selectAll__params__selectors = 문자열: 찾을 요소의 CSS 선택 문자열 (selector string)
selectAll__params__container = 문자열: (선택 사항) id, p5.Element, 또는 HTML 요소 내에서 검색
removeElements__description__0 = createCanvase() 또는 createGraphics()로 생성된 캔버스와 그래픽을 제외하고, p5로 생성된 모든 요소를 제거합니다. 이벤트 핸들러 역시 제거되며, 요소가 문서 객체 모델 (DOM)에서 제거됩니다.
changed__description__0 = .changed() 함수는 요소값이 변경될 때 호출됩니다. 특정 요소의 이벤트 리스너와 연결하는 데에 사용됩니다.
changed__params__fxn = 함수|불리언: 요소값이 변경될 때 발생하는 함수. 거짓(false)이 전달되면 이전 실행 함수는 더이상 실행 불가
input__description__0 = .input() 함수는 요소가 사용자 입력을 감지할 때 호출됩니다. 입력 이벤트는 키 또는 슬라이더 요소의 변경을 감지합니다. 특정 요소의 이벤트 리스너와 연결하는 데에 사용됩니다.
input__params__fxn = 함수|불리언: 요소가 사용자 입력을 감지할 때 발생하는 함수. 거짓(false)이 전달되면 이전 실행 함수는 더이상 실행 불가
createDiv__description__0 = 주어진 내부 HTML을 사용하여 문서 객체 모델 (DOM)에 <div></div> 요소를 생성합니다.
createDiv__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createDiv__params__html = 문자열: (선택 사항) 요소를 생성한 내부 HTML
createP__description__0 = 주어진 내부 HTML을 사용하여 문서 객체 모델 (DOM)에 <p></p> 요소를 생성합니다. 문단형 텍스트 작성시 사용됩니다.
createP__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createP__params__html = 문자열: (선택 사항) 요소를 생성한 내부 HTML
createSpan__description__0 = 주어진 내부 HTML을 사용하여 문서 객체 모델 (DOM)에 <span></span> 요소를 생성합니다.
createSpan__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createSpan__params__html = 문자열: (선택 사항) 요소를 생성한 내부 HTML
createImg__description__0 = 주어진 src와 대체 텍스트(alt text)를 사용하여 문서 객체 모델 (DOM)에 <img> 요소를 생성합니다.
createImg__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createImg__params__src = 문자열: 이미지의 src 또는 url 경로
createImg__params__alt = 문자열: 이미지가 로드되지 않을 경우 사용할 <a href='https://developer.mozilla.org/ko/docs/Web/HTML/Element/Img#Attributes'>대체 텍스트</a>. 빈 문자열(" ")로 이미지 숨기기 가능
createImg__params__crossOrigin = 문자열: img 요소의 <a href='https://developer.mozilla.org/ko/docs/Web/HTML/Attributes/crossorigin'>교차 출처 속성(crossOrigin property)</a>. '익명(anonymous)' 또는 '사용 자격 증명(use-credentials)'을 통해 교차 출처 권한이 있는 이미지를 검색할 수 있습니다. 이는 캔버스에 이미지를 사용하기 위함이며, 빈 문자열(" ")이 전달된 경우 교차 출처 리소스 공유(CORS)는 사용되지 않습니다.
createImg__params__successCallback = 함수: (선택 사항) 인수로 지정된 p5.Element가 이미지 데이터를 불러왔을 때 호출되는 콜백 함수
createA__description__0 = 문서 객체 모델 (DOM)에 하이퍼링크를 포함한 <a></a> 요소를 생성합니다.
createA__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createA__params__href = 문자열: 링크될 페이지 url
createA__params__html = 문자열: 화면에 보여질 링크 요소의 내부 HTML
createA__params__target = 문자열: (선택 사항) 새로운 링크가 보여질 대상, _blank, _self, _parent, _top 중 지정 가능
createSlider__description__0 = 문서 객체 모델 (DOM)에 슬라이더 <input></input> 요소를 생성합니다. .size() 함수로 슬라이더의 길이를 설정합니다.
createSlider__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createSlider__params__min = 숫자: 슬라이더의 최소값
createSlider__params__max = 숫자: 슬라이더의 최대값
createSlider__params__value = 숫자: (선택 사항) 슬라이더의 기본값
createSlider__params__step = 숫자: (선택 사항) 슬라이더의 단위당 이동 크기(이동 크기가 0으로 지정된 경우, 슬라이더는 최소값과 최대값 사이를 부드럽게 이동합니다.)
createButton__description__0 = 문서 객체 모델 (DOM)에 <button></button> 요소를 생성합니다. .size() 함수로 버튼의 크기를 설정합니다. .mousePressed() 함수로 버튼이 클릭됐을 때의 행동을 지정합니다.
createButton__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createButton__params__label = 문자열: 버튼 위에 나타나는 레이블
createButton__params__value = 문자열: (선택 사항) 버튼값
createCheckbox__description__0 = 문서 객체 모델 (DOM)에 체크박스<input></input> 요소를 생성합니다. .checked() 함수를 통해 체크되었는지의 여부를 반환합니다.
createCheckbox__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createCheckbox__params__label = 문자열: (선택 사항) 체크박스 위에 나타나는 레이블
createCheckbox__params__value = 불리언: (선택 사항) 체크박스의 값. 체크는 참(true), 체크 해제는 거짓(false)
createSelect__description__0 = 문서 객체 모델 (DOM)에 드롭다운 메뉴<select></select> 요소를 생성합니다. 이미 생성된 셀렉트 박스(select box)를 선택할 경우, p5.Element에 select-box 메소드를 지정하는 데에도 쓰입니다. 셀렉트 박스 생성 후, .option() 메소드로 선택지(option)를 설정할 수 있습니다. .selected() 메소드는 p5.Element 인스턴스인 현재 드롭다운 요소를 반환합니다. .selected() 메소드는 특정 선택지를 최초 페이지 로드시의 기본값으로서 설정할 수 있습니다. .disable() 메소드는 특정 선택지를 비활성화하고, 별도로 지정된 인수가 없는 경우엔 전체 드롭다운 요소를 비활성화 상태로 표시합니다.
createSelect__returns = p5.Element
createSelect__params__multiple = 불리언: (선택 사항) 드롭다운이 여러 개의 선택지를 제공할 경우 참(true) 
createSelect__params__existing = 객체: 문서 객체 모델 셀렉트 요소
createRadio__description__0 = 문서 객체 모델 (DOM)에 라디오 버튼<input></input> 요소를 생성합니다. 라디오 버튼 생성 후, .option() 메소드로 옵션을 설정할 수 있습니다. .value() 메소드는 현재 선택된 옵션을 반환합니다.
createRadio__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createRadio__params__containerElement = 객체: 옵션으로 설정 될 모든 라디오 입력소들이 있는 div 또는 span의 HTML 컨테인어.
createRadio__params__name = 문자열: (선택 사항) 각 입력 요소의 매개변수 명.
createColorPicker__description__0 = 문서 객체 모델 (DOM)에 색상 입력을 위한 색상 추출(colorPicker) 요소를 생성합니다. .value() 메소드는 색상의 헥사(Hex) 문자열(#rrggbb)을 반환합니다. .color() 메소드는 현재 선택된 색상의 p5.Color 객체를 반환합니다.
createColorPicker__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createColorPicker__params__value = 문자열|p5.Color: (선택 사항) 요소의 색상 기본값
createInput__description__0 = 문서 객체 모델 (DOM)에 텍스트 입력을 위한 <input></input> 요소를 생성합니다. .size() 함수로 상자의 크기를 설정합니다.
createInput__returns = p5.Element: 생성된 노드를 담고있는 p5.Element에 대한 포인터
createInput__params__value = 문자열: (선택 사항) 입력 상자의 기본값
createInput__params__type = 문자열: (선택 사항) 텍스트 유형 (예: text, password 등) 기본값은 text
createFileInput__description__0 = '파일(file)' 유형의 문서 객체 모델 (DOM)에 <input></input> 요소를 생성합니다. 스케치에 사용할 로컬 파일을 선택할 수 있게 됩니다.
createFileInput__returns = p5.Element: 생성된 DOM 요소를 담고있는 p5.Element에 대한 포인터
createFileInput__params__callback = 함수: (선택 사항) 파일이 로드될 때의 콜백 함수
createFileInput__params__multiple = 문자열: (선택 사항) 여러 파일 선택 허용
createVideo__description__0 = 문서 객체 모델 (DOM)에 간단한 오디오/비디오 재생을 위한 HTML5 <video> 요소를 생성합니다. 화면에 나타나기가 기본값이며, .hide()로 숨길 수 있습니다. video() 함수를 통해 캔버스에 그릴 수 있습니다. 1번째 매개변수는 비디오 파일에 대한 단일 문자열 경로이거나, 또는 동일한 비디오 파일이 여러 개의 형식을 갖는 경우, 문자열 경로들의 배열로 지정됩니다. 특히, 다양한 파일 형식을 지정하여 여러 종류의 브라우저에서 재생될 수 있도록 하는 데에 용이합니다. 지원되는 파일 형식에 대한 자세한 내용은 <a href = 'https://developer.mozilla.org/ko/docs/Web/Media/Formats'>이 페이지</a>에 있습니다.
createVideo__returns = p5.MediaElement: 비디오 p5.Element에 대한 포인터
createVideo__params__src = 문자열|문자열 배열[]: 비디오 파일 경로, 또는 경로들의 배열(여러 종류의 브라우저 지원)
createVideo__params__callback = 함수: (선택 사항) 브라우저의 미디어 재생가능 상태를 뜻하는, 'canplaythrough' 이벤트 발생시에 호출되는 함수. 추가 버퍼링 없이도, 미디어를 끝까지 재생할 수 있는 충분한 데이터가 로드된 것으로 평가.
createAudio__description__0 = 문서 객체 모델 (DOM)에 간단한 오디오 재생을 위한 HTML5 <audio> 요소를 생성합니다. 1번째 매개변수는 오디오 파일에 대한 단일 문자열 경로이거나, 또는 동일한 오디오 파일이 여러 개의 형식을 갖는 경우, 문자열 경로들의 배열로 지정됩니다. 특히, 다양한 파일 형식을 지정하여 여러 종류의 브라우저에서 재생될 수 있도록 하는 데에 용이합니다. 지원되는 파일 형식에 대한 자세한 내용은 <a href = 'https://developer.mozilla.org/ko/docs/Web/Media/Formats'>이 페이지</a>에 있습니다. 
createAudio__returns = p5.MediaElement: 오디오 p5.Element에 대한 포인터
createAudio__params__src = 문자열|문자열 배열[]: 오디오 파일 경로, 또는 경로들의 배열(여러 종류의 브라우저 지원)
createAudio__params__callback = 함수: (선택 사항) 브라우저의 미디어 재생가능 상태를 뜻하는, 'canplaythrough' 이벤트 발생시에 호출되는 함수. 추가 버퍼링 없이도, 미디어를 끝까지 재생할 수 있는 충분한 데이터가 로드된 것으로 평가.
createCapture__description__0 = 웹캠의 오디오/비디오 피드를 담는 <video> 요소를 생성합니다. 이 요소는 캔버스와는 별개로 작동합니다. '화면에 나타내기'가 기본값으로 주어지며, .hide()를 사용하여 화면으로부터 숨길 수 있습니다. image() 함수를 사용하여 피드를 캔버스에 그릴 수 있습니다. loadedmetadata 속성을 사용하여 요소가 완전히 로드된 시점을 감지할 수 있습니다. (2번째 예제 참고)
createCapture__description__1 =  피드의 구체적인 속성은 제약 조건(Constraints) 객체를 전달할 수 있습니다. 속성 및 제약 조건 객체에 대해 <a href = 'https://w3c.github.io/mediacapture-main/getusermedia.html#media-track-constraints'>W3C 사양</a>에 더 자세하게 설명되어 있습니다. 이 기능을 지원하지 않는 브라우저도 있는 것을 유의해야 합니다.
createCapture__description__2 = 보안 정보: 최신 브라우저 보안 사양은 createCapture() 이면의 getUserMedia() 메소드가 로컬 또는 HTTPS에서 코드 실행시에만 작동할 것을 요구합니다. 자세한 사항은 <a href = 'https://stackoverflow.com/questions/34197653/getusermedia-in-chrome-47-without-using-https'>여기</a>와 <a href = 'https://developer.mozilla.org/ko/docs/Web/API/MediaDevices/getUserMedia'>여기</a>에 있습니다.
createCapture__description__3 =
createCapture__description__4 =
createCapture__params__type = 문자열|상수|객체: 캡처 유형, VIDEO 또는 AUDIO 중 하나로 지정 가능. 별도의 매개변수가 지정되지 않을 경우 기본값으로 둘 다 또는 제약 조건 객체
createCapture__params__callback = 함수: (선택 사항) 스트림 로드 완료 후 1번 호출되는 함수
createElement__description__0 = 지정된 콘텐츠를 지닌 DOM에 태그된 요소를 생성합니다.
createElement__params__tag = 문자열: 새로운 요소의 태그
createElement__params__content = 문자열: (선택 사항) 요소 안에 삽입될 HTML 콘텐츠
deviceOrientation__description__0 = 시스템 변수 deviceOrientation는 기기의 방향을 담습니다. 변수값은 LANDSCAPE(가로) 또는 PORTRAIT(세로)로 설정가능합니다. 사용 가능한 데이터가 없는 경우, '정의되지 않음(undefined)로 설정됩니다.
accelerationX__description__0 = 시스템 변수 accelerationX는 기기의 x축상 가속도값을 담습니다. 값은 초당 미터 제곱으로 표기됩니다.
accelerationY__description__0 = 시스템 변수 accelerationY는 기기의 y축상 가속도값을 담습니다. 값은 초당 미터 제곱으로 표기됩니다.
accelerationZ__description__0 = 시스템 변수 accelerationZ는 기기의 z축상 가속도값을 담습니다. 값은 초당 미터 제곱으로 표기됩니다.
pAccelerationX__description__0 = 시스템 변수 pAccelerationX는 기기의 직전 프레임부터 현재 프레임까지의 x축상 가속도값을 담습니다. 값은 초당 미터 제곱으로 표기됩니다.
pAccelerationY__description__0 = 시스템 변수 pAccelerationY는 기기의 직전 프레임부터 현재 프레임까지의 y축상 가속도값을 담습니다. 값은 초당 미터 제곱으로 표기됩니다.
pAccelerationZ__description__0 = 시스템 변수 pAccelerationZ는 기기의 직전 프레임부터 현재 프레임까지의 z축상 가속도값을 담습니다. 값은 초당 미터 제곱으로 표기됩니다.
rotationX__description__0 = 시스템 변수 rotationX는 기기의 x축상 회전값을 담습니다. 스케치의 angleMode()가 DEGREES로 설정된 경우 값의 범위는 -180부터 180까지이고, RADIANS로 설정된 경우 -PI부터 PI까지입니다.
rotationX__description__1 = 참고: rotation 함수를 호출하는 순서를 주의해야 합니다. 여러 축에 대한 회전 함수를 동시에 사용할 경우, 반드시 Z-X-Y 순서로 호출해야 합니다. 그렇지 않으면 예기지 못한 결과가 발생할 수 있습니다.
rotationY__description__0 = 시스템 변수 rotationY는 기기의 y축상 회전값을 담습니다. 스케치의 angleMode()가 DEGREES로 설정된 경우 값의 범위는 -90부터 90까지이고, RADIANS로 설정된 경우 -PI/2부터 PI/2까지입니다.
rotationY__description__1 = 참고: rotation 함수를 호출하는 순서를 주의해야 합니다. 여러 축에 대한 회전 함수를 동시에 사용할 경우, 반드시 Z-X-Y 순서로 호출해야 합니다. 그렇지 않으면 예기지 못한 결과가 발생할 수 있습니다.
rotationZ__description__0 = 시스템 변수 rotationZ는 기기의 z축상 회전값을 담습니다. 스케치의 angleMode()가 DEGREES로 설정된 경우 값의 범위는 0부터 360까지이고, RADIANS로 설정된 경우 0부터 2*PI까지입니다.
rotationZ__description__1 = rotationX 및 rotationY와는 달리, 이 변수는 나침반이 내장된 기기에 한해 사용가능합니다.
rotationZ__description__2 = 참고: rotation 함수를 호출하는 순서를 주의해야 합니다. 여러 축에 대한 회전 함수를 동시에 사용할 경우, 반드시 Z-X-Y 순서로 호출해야 합니다. 그렇지 않으면 예기지 못한 결과가 발생할 수 있습니다.
pRotationX__description__0 = 시스템 변수 pRotationX는 기기의 직전 프레임부터 현재 프레임까지의 x축상 회전값을 담습니다. 스케치의 angleMode()가 DEGREES로 설정된 경우 값의 범위는 -180부터 180까지이고, RADIANS로 설정된 경우 -PI부터 PI까지입니다.
pRotationX__description__1 = pRotationX와 rotationX를 함께 사용하여 기기의 x축상 회전 방향을 정할 수 있습니다.
pRotationY__description__0 = 시스템 변수 pRotationY는 기기의 직전 프레임부터 현재 프레임까지의 y축상 회전값을 담습니다. 스케치의 angleMode()가 DEGREES로 설정된 경우 값의 범위는 -90부터 90까지이고, RADIANS로 설정된 경우 -PI/2부터 PI/2까지입니다.
pRotationY__description__1 = pRotationY와 rotationY를 함께 사용하여 기기의 y축상 회전 방향을 정할 수 있습니다.
pRotationZ__description__0 = 시스템 변수 pRotationZ는 기기의 직전 프레임부터 현재 프레임까지의 z축상 회전값을 담습니다. 스케치의 angleMode()가 DEGREES로 설정된 경우 값의 범위는 -90부터 90까지이고, RADIANS로 설정된 경우 0부터 2*PI까지입니다.
pRotationZ__description__1 = pRotationZ와 rotationZ를 함께 사용하여 기기의 z축상 회전 방향을 정할 수 있습니다.
turnAxis__description__0 = 장치가 회전시, deviceTurned() 메소드를 트리거하는 축을 turnAxis 변수에 저장합니다. turnAxis 변수는 deviceTurned() 함수가 지정한 범위 내에서만 정의됩니다.
setMoveThreshold__description__0 = setMoveThreshold() 함수로 deviceMoved() 함수의 이동 임계값을 설정합니다. 기본 임계값은 0.5입니다.
setMoveThreshold__params__value = 숫자: 임계값
setShakeThreshold__description__0 = setShakeThreshold() 함수로 deviceShaken() 함수의 이동 임계값을 설정합니다. 기본 임계값은 30입니다.
setShakeThreshold__params__value = 숫자: 임계값
deviceMoved__description__0 = deviceMoved() 함수는 장치가 X,Y,Z 축을 따라 임계값 이상으로 이동할 때 호출됩니다. 기본 임계값은 0.5입니다. 임계값은 setMoveThreshold()로 변경할 수 있습니다.
deviceTurned__description__0 = deviceTurned() 함수는 기기가 90도 이상을 계속해서 회전할 때 호출됩니다.
deviceTurned__description__1 = deviceTurned() 메소드를 트리거하는 축이 turnAxis 변수에 저장됩니다. turnAxis 변수를 X,Y,Z와 비교하여, 메소드를 트리거할 축을 정하고 해당 설정을 잠글 수 있습니다.
deviceShaken__description__0 = deviceShaken() 함수는 accelerationX와 accelerationY의 전체 가속도 변화량이 임계값보다 클 때 호출됩니다. 기본 임계값은 30입니다. 임계값은 setShakeThreshold()로 변경할 수 있습니다.
keyIsPressed__description__0 = 불리언 시스템 변수 keyIsPressed입니다. 자판키를 누르면 참(true)을, 누르지 않을 때 거짓(false)을 반환합니다.
key__description__0 = 시스템 변수 key는 가장 마지막으로 입력된 자판키값을 담습니다. keyTyped() 함수를 통해 대소문자를 반영할 수 있습니다. ASCII 자판키가 아닌 경우, keyCode 변수를 사용합니다.
keyCode__description__0 = 다음의 keyCode 변수로 특수키 입력을 감지할 수 있습니다: BACKSPACE, DELETE, ENTER, RETURN, TAB, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW. <a href='http://keycode.info/'>keycode.info</a>에서 원하는 자판키의 keyCode를 확인할 수 있습니다.
keyPressed__description__0 = keyPressed() 함수는 자판을 누를 때마다 한 번씩 호출됩니다. 누른 키의 keyCode는 keyCode 변수에 저장됩니다. 
keyPressed__description__1 = ASCII 자판키가 아닌 경우, keyCode 변수를 사용합니다. keyCode가 BACKSPACE, DELETE, ENTER, RETURN, TAB, ESCAPE, SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW에 해당하는지의 여부를 확인할 수 있습니다.
keyPressed__description__2 = ASCII 자판키의 경우, 가장 마지막으로 누른 자판키값이 key 변수에 저장되나, 대소문자가 구분되지 않습니다. 대소문자 구분을 원할 경우, keyTyped()를 통해 key 변수를 받을 수 있습니다.
keyPressed__description__3 = 컴퓨터 운영 체제의 자판키 입력 반복 처리 방식으로 인해, 자판키를 계속 누르면 keyTyped()를 여러 번 호출하는 경우가 발생할 수 있습니다. 반복 속도는 운영 체제와 컴퓨터 구성 방식마다 다릅니다.
keyPressed__description__4 = 자판키 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
keyPressed__params__event = 객체: (선택 사항) KeyboardEvent 콜백 (callback) 인자값.
keyReleased__description__0 = keyReleased() 함수는 자판을 놓을 때마다 한 번씩 호출됩니다. 자세한 내용은 <a href='https://p5js.org/reference/#/p5/key'>key</a>와 <a href='https://p5js.org/reference/#/p5/keyCode'>keyCode</a>에 있습니다.
keyReleased__description__1 = 자판키 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
keyReleased__params__event = 객체: (선택 사항) KeyboardEvent 콜백 (callback) 인자값.
keyTyped__description__0 = keyTyped() 함수는 자판을 누를 때마다 한번씩 호출되지만, 백스페이즈, 딜리트, 컨트롤, 쉬프트, 알트키는 무시됩니다. 언급된 자판키 입력 감지를 원할 경우, keyPressed() 함수를 사용하면 됩니다. 가장 마지막으로 입력된 자판키값이 key 변수에 저장됩니다.
keyTyped__description__1 = 컴퓨터 운영 체제의 자판키 입력 반복 처리 방식으로 인해, 자판키를 계속 누르면 keyTyped()를 여러 번 호출하는 경우가 발생할 수 있습니다. (keyReleased()도 마찬가지 입니다.) 반복 속도는 운영 체제와 컴퓨터 구성 방식마다 다릅니다.
keyTyped__description__2 = 자판키 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
keyTyped__params__event = 객체: (선택 사항) KeyboardEvent 콜백 (callback) 인자값.
keyIsDown__description__0 = keyIsDown() 함수는 키가 현재 내려가있는지, 즉 눌리는지의 여부를 확인합니다. 이미지를 대각선으로 움직일 때처럼, 동시에 여러 자판키가 객체의 이동 방향에 영향을 주도록 설정할 때 사용됩니다. <a href='http://p5js.org/zh-Hans/reference/#p5/keyCode'>여기</a>에 나열된 keyCode 변수 이름이나 keyCode 숫자를 넣을 수 있습니다.
keyIsDown__returns = 불리언: 자판을 눌려있는지의 여부
keyIsDown__params__code = 숫자: 확인할 자판키
movedX__description__0 = movedX 변수는 직전 프레임 이후의 마우스 수평 이동을 담습니다.
movedY__description__0 = movedY 변수는 직전 프레임 이후의 마우스 수직 이동을 담습니다.
mouseX__description__0 = 시스템 변수 mouseX는 캔버스 (0,0)에 대한 마우스의 현재 수평 위치를 담습니다. 2D상 (0,0)은 좌측 상단, WebGL상에서는 (-너비/2, 높이/2)를 의미합니다. 마우스 입력 대신 터치가 사용될 경우, mouseX는 가장 마지막 터치 지점의 x좌표값을 담습니다.
mouseY__description__0 = 시스템 변수 mouseY는 캔버스 (0,0)에 대한 마우스의 현재 수직 위치를 담습니다. 2D상 (0,0)은 좌측 상단, WebGL상에서는 (-너비/2, 높이/2)를 의미합니다. 마우스 입력 대신 터치가 사용될 경우, mouseY는 가장 마지막 터치 지점의 y좌표값을 담습니다.
pmouseX__description__0 = 시스템 변수 pmouseX는 직전 프레임에서의 캔버스 (0,0)에 대한 마우스 및 터치 수평 위치를 담습니다. 2D상 (0,0)은 좌측 상단, WebGL상에서는 (-너비/2, 높이/2)를 의미합니다. 참고: pmouseX는 매 터치 이벤트가 시작할 때마다 현재의 mouseX값으로 리셋됩니다.
pmouseY__description__0 = 시스템 변수 pmouseY는 직전 프레임에서의 캔버스 (0,0)에 대한 마우스 및 터치 수직 위치를 담습니다. 2D상 (0,0)은 좌측 상단, WebGL상에서는 (-너비/2, 높이/2)를 의미합니다. 참고: pmouseY는 매 터치 이벤트가 시작할 때마다 현재의 mouseY값으로 리셋됩니다.
winMouseX__description__0 = 시스템 변수 winMouseX는 캔버스 (0,0)에 대한 마우스의 현재 수평 위치를 담습니다.
winMouseY__description__0 = 시스템 변수 winMouseY는 캔버스 (0,0)에 대한 마우스의 현재 수직 위치를 담습니다.
pwinMouseX__description__0 = 시스템 변수 pwinMouseX는 직전 프레임에서의 캔버스 (0,0)에 대한 마우스 수평 위치를 담습니다. 2D상 (0,0)은 좌측 상단, WebGL상에서는 (-너비/2, 높이/2)를 의미합니다. 참고: pwinMouseX는 매 터치 이벤트가 시작할 때마다 현재의 winMouseX값으로 리셋됩니다.
pwinMouseY__description__0 = 시스템 변수 pwinMouseY는 직전 프레임에서의 캔버스 (0,0)에 대한 마우스 수직 위치를 담습니다. 2D상 (0,0)은 좌측 상단, WebGL상에서는 (-너비/2, 높이/2)를 의미합니다. 참고: pwinMouseY는 매 터치 이벤트가 시작할 때마다 현재의 winMouseY값으로 리셋됩니다.
mouseButton__description__0 = p5는 마우스 버튼을 눌렀는 지의 여부와 어떤 버튼을 눌렀는지를 자동으로 추적합니다. 시스템 변수 mouseButton의 값은 마지막으로 누른 버튼에 따라 LEFT, RIGHT, 또는 CENTER로 처리됩니다. 경고: 브라우저에 따라 마우스 버튼을 다르게 추적할 수 있습니다.
mouseIsPressed__description__0 = 불리언 시스템 변수 mouseIsPressed는 마우스가 눌렸을 경우 참(true)이고 그렇지 않을 경우 거짓(false)로 처리됩니다.
mouseMoved__description__0 = mouseMoved() 함수는 마우스 버튼이 눌리지 않은 상태에서 움직일 때마다 한 번씩 호출됩니다.
mouseMoved__description__1 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
mouseMoved__params__event = 객체: (선택 사항) MouseEvent 콜백 (callback) 인자값.
mouseDragged__description__0 = mouseDragged() 함수는 마우스 버튼이 눌린 상태에서 움직일 때마다 한 번씩 호출됩니다. mouseDragged() 함수가 정의되지 않고, touchMoved() 함수가 정의된 경우, 후자가 대신 호출됩니다.
mouseDragged__description__1 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
mouseDragged__params__event = 객체: (선택 사항) MouseEvent 콜백 (callback) 인자값.
mousePressed__description__0 = mousePressed() 함수는 마우스 버튼이 눌릴 때마다 한 번씩 호출됩니다. 이 때, mouseButton 변수(관련 레퍼런스 참고)를 통해 어떤 마우스 버튼이 눌렸는지 확인할 수 있습니다. mousePressed() 함수가 정의되지 않고, touchStarted() 함수가 정의된 경우, 후자가 대신 호출됩니다.
mousePressed__description__1 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
mousePressed__params__event = 객체: (선택 사항) MouseEvent 콜백 (callback) 인자값.
mouseReleased__description__0 = mouseReleased() 함수는 마우스 버튼이 놓일 때마다 한 번씩 호출됩니다. mouseReleased() 함수가 정의되지 않고, touchEnded() 함수가 정의된 경우, 후자가 대신 호출됩니다.
mouseReleased__description__1 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
mouseReleased__params__event = 객체: (선택 사항) MouseEvent 콜백 (callback) 인자값.
mouseClicked__description__0 = mouseClicked() 함수는 마우스 버튼이 눌리고 놓일 때마다 한 번씩 호출됩니다.
mouseClicked__description__1 = 이 함수는 마우스 왼쪽 버튼을 클릭할 때 실행되며, 브라우저마다 마우스 클릭을 다르게 처리합니다. 클릭하거나 놓을 여타 마우스 버튼을 처리하고 싶다면 mousePressed() 또는 mouseReleased()를 참고할 수 있습니다.
mouseClicked__description__2 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
mouseClicked__params__event = 객체: (선택 사항) MouseEvent 콜백 (callback) 인자값.
doubleClicked__description__0 = doubleClicked() 함수는 이벤트 리스너가 DOM L3 사양 중 하나인 더블 클릭(dbclick)을 감지할 때마다 실행됩니다. doubleClicked 이벤트는 포인팅 장치의 버튼(보통, 마우스 기본 버튼)을 특정 요소 위에서 두 번 연속 클릭시 시작합니다. dbclick 이벤트에 대한 자세한 정보는 <a href='https://developer.mozilla.org/en-US/docs/Web/Events/dblclick'>Mozilla 문서</a>에서 확인할 수 있습니다.
doubleClicked__params__event = 객체: (선택 사항) MouseEvent 콜백 (callback) 인자값.
mouseWheel__description__0 = mouseWheel() 함수는 실제 마우스 휠 또는 터치 패드상의 수직 마우스 휠 이벤트를 감지할 때마다 실행됩니다. 
mouseWheel__description__1 = event.delta 속성은 마우스 휠이 스크롤된 양을 값으로 반환합니다. 값은 스크롤 방향에 따라 양수 또는 음수 부호와 함께 표기됩니다. ('자연' 스크롤이 활성화된 OS X의 경우, 부호가 반전됩니다.)
mouseWheel__description__2 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
mouseWheel__description__3 =  현재 Safari의 경우 'wheel' 이벤트를 지원하는 관계로, 메소드에 "return false"를 포함해야 함수가 예상대로 작동할 수 있습니다.
mouseWheel__params__event = 객체: (선택 사항) WheelEvent 콜백 (callback) 인자값.
requestPointerLock__description__0 = requestPointerLock() 함수는 포인터를 현재 위치로 잠그고 숨깁니다. movedX와 movedY를 사용하여 <a href="#/p5/draw">draw()</a> 함수의 마지막 호출 이후에 마우스가 이동한 값을 가져올 수 있습니다.
requestPointerLock__description__1 = 모든 브라우저가 이 기능을 지원하지는 않습니다.
requestPointerLock__description__2 = 이 함수를 사용하면 마우스를 특정 방향으로 계속 움직여도 화면 밖으로 벗어나지 않도록 처리할 수 있습니다. 1인칭 시점 구현 등에 용이합니다.
exitPointerLock__description__0 = exitPointerLock() 함수는 이전에 설정된 <a href ='https://p5js.org/reference/#/p5/requestPointerLock'>포인터 잠금</a>을 종료합니다. UI 요소 활성화 등을 위해 사용됩니다.
touches__description__0 = 시스템 변수 touches[]는 캔버스 (0,0)에 대한 현재의 모든 터치 포인트 위치, 그리고 터치를 식별하는 고유 ID를 담습니다.배열 속 요소들은 각각 x, y, 그리고 id 속성을 갖는 객체들입니다.
touches__description__1 = touch[] 배열은 터치 기반 데스크톱 및 노트북상의 Safari나 Internet Explorer에서 지원되지 않습니다.
touches__description__2 = 
touchStarted__description__0 = touchStarted() 함수는 터치가 등록될 때마다 한 번씩 호출됩니다. touchStarted() 함수가 정의되지 않고, mousePressed() 함수가 정의된 경우, 후자가 대신 호출됩니다.
touchStarted__description__1 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
touchStarted__params__event = 객체: (선택 사항) TouchEvent 콜백 (callback) 인자값.
touchMoved__description__0 = touchMoved() 함수는 터치가 등록될 때마다 한 번씩 호출됩니다. touchMoved() 함수가 정의되지 않고, mouseDragged() 함수가 정의된 경우, 후자가 대신 호출됩니다.
touchMoved__description__1 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
touchMoved__params__event = 객체: (선택 사항) TouchEvent 콜백 (callback) 인자값.
touchEnded__description__0 = touchEnded() 함수는 터치가 등록될 때마다 한 번씩 호출됩니다. touchEnded() 함수가 정의되지 않고, mouseReleased() 함수가 정의된 경우, 후자가 대신 호출됩니다.
touchEnded__description__1 = 마우스 입력을 통한 이벤트 발생이 브라우저 기본값으로 설정되어있는 경우, 메소드 말미에 "return false"를 넣어 브라우저 기본값 이벤트 발생을 방지할 수 있습니다.
touchEnded__params__event = 객체: (선택 사항) TouchEvent 콜백 (callback) 인자값.
createImage__description__0 = 새로운 p5.Image(이미지 저장을 위한 데이터 유형)를 생성합니다. 이 함수는 새 픽셀 버퍼를 제공합니다. 너비 및 높이 매개변수로 버퍼 크기를 설정합니다. 
createImage__description__1 = .pixels를 통해 디스플레이 화면의 모든 픽셀값이 담긴 배열에 접근합니다. 픽셀값은 숫자로 표현됩니다. 배열은 디스플레이 화면의 4배 크기(픽셀 밀도에 대한 인수 포함)로, 각 픽셀에 대한 R, G, B, A값을 나타냅니다. 배열은 행의 좌에서 우로, 그 다음 열로 내려가는 순으로 채워집니다. 자세한 내용은 .pixels 레퍼런스에 있습니다. 몇몇 경우에서는 set() 및 get() 함수를 사용하는 편이 더 편리할 수 있습니다.
createImage__description__2 = 이미지의 픽셀에 접근하기에 앞서, loadPixels() 함수를 통해 픽셀을 불러와야 합니다. 또한, 배열 데이터를 수정한 후에는 updatePixels()로 수정된 내용을 반영해야 합니다.
createImage__returns = p5.Image: p5.Image 객체
createImage__params__width = 정수: 픽셀 단위 너비값
createImage__params__height = 정수: 픽셀 단위 높이값
saveCanvas__description__0 = 현재 캔버스를 이미지로 저장합니다. 브라우저에 따라 파일을 즉시 저장하거나 사용자에게 대화 상자를 표시합니다.
saveCanvas__params__selectedCanvas = p5.Element|HTMLCanvasElement: (선택 사항) 특정 HTML5 캔버스를 나타내는 변수
saveCanvas__params__filename = 문자열: (선택 사항) 저장할 경우 파일명
saveCanvas__params__extension = 문자열: (선택 사항) 'jpg' 또는 'png'로 저장될 파일형식
saveFrames__description__0 = 동영상 제작에 사용되는 일련의 프레임을 캡처합니다. 콜백을 허용하는 함수로, 프레임을 서버로 보내 저장하거나 동영상으로 변환할 수 있습니다. 콜백을 지정하지 않으면, 생성된 모든 이미지 다운로드를 위한 대화 상자가 브라우저에 팝업창으로 나타납니다. 콜백을 지정할 경우 이미지 데이터를 자동 저장하는 대신, 총 프레임 수와 동일한 갯수의 크기를 갖는 객체 배열을 콜백 함수에 인수로서 전달합니다.
saveFrames__description__1 = saveFrames() 함수는 애니메이션의 처음 15개의 프레임만 저장합니다. 재생 시간이 더 긴 애니메이션을 만들 시 <a href='https://github.com/spite/ccapture.js/'>ccapture.js</a>와 같은 라이브러리를 참고할 수 있습니다.
saveFrames__description__2 = 
saveFrames__params__filename = 문자열:
saveFrames__params__extension = 문자열: 'jpg' 또는 'png'
saveFrames__params__duration = 숫자: 프레임을 저장할 시간(초)
saveFrames__params__framerate = 숫자: 저장할 프레임 속도
saveFrames__params__callback = 함수(배열): (선택 사항) 이미지 데이터를 처리하는 콜백 함수. 이 함수는 배열을 인수로만 받습니다. 지정된 개수의 객체 프레임이 배열에 포함됩니다. 각 객체는 다음의 3가지 속성을 가집니다: imageData - 이미지/옥텟 스트림, 파일명, 파일 확장자
loadImage__description__0 = 사용자가 지정한 경로로부터 이미지를 불러오고 p5.Image를 생성합니다. 
loadImage__description__1 = 이미지를 불러와도 곧바로 렌더링되지 않는 경우가 있습니다. 여타 작업을 수행하기에 앞서 이미지 로드를 완료하려면, loadImage()를 <a href="#/p5/preload">preload()</a> 함수 안에서 호출하면 됩니다. 또는, 로드가 완료된 이미지 처리를 위한 콜백 함수를 지정할 수 있습니다. 
loadImage__description__2 = 이미지 경로는 스케치에 링크된 HTML 파일에 대한 상대 경로를 사용합니다. URL이나 원격 경로를 이용하면 브라우저의 보안 설정에 따라 이미지를 불러오는 데에 문제가 생길 수 있습니다.
loadImage__description__3 = 이미지 경로 대신 base64 문자열로 된 이미지를 사용할 수 있습니다. 이때 "data:image/png;base64,"를 문자열 앞에 표기해야 합니다.
loadImage__returns = p5.Image: p5.Image 객체
loadImage__params__path = 문자열: 불러올 이미지 경로
loadImage__params__successCallback = 함수(p5.Image): (선택 사항) 이미지 불러오기 후 호출되는 함수로, p5.Image가 전달됩니다.
loadImage__params__failureCallback = 함수(Event): (선택 사항) 이미지 불러오기 실패시 이벤트 에러와 함께 호출되는 함수
image__description__0 = p5.js 캔버스에 이미지를 그립니다.
image__description__1 = image() 함수는 크게 세가지 방법으로 사용할 수 있습니다. 가장 간단한 방법은 img, x, y 3개의 변수를 사용하는 방법입니다. x, y는 이미지의 (x,y) 좌표값 위치입니다. img, x, y에 더해 이미지의 너비와 높이를 설정하는 2개의 변수를 추가로 사용합니다.
image__description__2 = 8개의 변수를 모두 사용하는 경우도 있습니다. 먼저, 변수 구별을 위해 p5.js에서 사용하는 용어를 배워봅시다. 첫 번째 용어는 '목적 사각형(destination rectagle)'으로, dx, dy 등의 변수가 이에 해당합니다. 두 번째 용어는 '원본 이미지(source image)'로, sx, sy등의 변수가 이에 해당합니다. '원본 이미지'의 크기 설정을 통해 이미지의 일부만을 화면상 나타나게할 수 있습니다. 자세한 사항은 아래 도식에 있습니다. <img src="assets/drawImage.png"></img>
image__params__img = p5.Image, p5.Element: 화면에 나타낼 이미지
image__params__x = 숫자: 왼쪽 위 모서리의 x좌표값
image__params__y = 숫자: 왼쪽 위 모서리의 y좌표값
image__params__width = 숫자: (선택 사항) 이미지 너비값
image__params__height = 숫자: (선택 사항) 이미지 높이값
image__params__dx = 숫자: 원본 이미지를 배치할 목적지 사각형의 x좌표값
image__params__dy = 숫자: 원본 이미지를 배치할 목적지 사각형의 y좌표값
image__params__dWidth = 숫자: 목적지 사각형의 너비값
image__params__dHeight = 숫자: 목적지 사각형의 높이값
image__params__sx = 숫자: 목적지 사각형에 배치할 원본 이미지 일부의 x좌표값
image__params__sy = 숫자: 목적지 사각형에 배치할 원본 이미지 일부의 y좌표값
image__params__sWidth = 숫자: (선택 사항) 목적지 사각형에 배치할 원본 이미지 일부의 너비값
image__params__sHeight = 숫자: (선택 사항) 목적지 사각형에 배치할 원본 이미지 일부의 높이값
tint__description__0 = 화면에 나타날 이미지의 면채우기 값을 설정합니다. 이미지에 색조를 입히거나 알파값을 통해 투명도를 조정할 수 있습니다.
tint__description__1 = 이미지 본래의 색상을 유지하면서 투명도를 적용하려면, 흰색 색조에 알파값을 지정하면 됩니다. 예를 들어 tint(255, 128)는 이미지를 50% 투명하게 만듭니다. (기본 알파 범위 0-255를 가정, 범위는 colorMode()로 조정 가능)
tint__description__2 = 회색값 매개변수는 현재 colorMode()에 따른 최대값보다 작거나 같아야합니다. 기본 최대값은 255입니다.
tint__params__v1 = 숫자: 현재 색상 범위에 대한 빨강값 또는 색조값
tint__params__v2 = 숫자: 현재 색상 범위에 대한 초록값 또는 채도값
tint__params__v3 = 숫자: 현재 색상 범위에 대한 파랑값 또는 밝기값
tint__params__alpha = 숫자:
tint__params__value = 문자열: 색상 문자열
tint__params__gray = 숫자: 회색값
tint__params__values = 숫자 배열[]: 색상의 R, G, B & 알파값을 담는 배열
tint__params__color = p5.Color: 입힐 색조의 색상]
noTint__description__0 = 화면에 나타날 이미지의 현재 면채우기 값을 제거하고 이미지의 본래 색상으로 되돌아갑니다.
imageMode__description__0 = 이미지의 모드를 설정합니다. image()의 매개변수가 해석되는 방식을 변경하여 이미지가 그려지는 위치를 수정합니다. 기본 모드는 imageMode(CORNER)이며, image()의 2번째 및 3번째 매개변수를 이미지의 좌측 상단 모퉁이의 좌표값으로 해석합니다. 추가 매개변수 2개를 통해 이미지의 너비와 높이도 설정할 수 있습니다.
imageMode__description__1 = imageMode(CORNERS)는 image()의 2번째 및 3번째 매개변수를 모퉁이 한 개의 좌표값으로 해석합니다. 그리고, 4번째 및 5번째 매개변수를 그 반대편 모퉁이의 좌표값으로 해석합니다.
imageMode__description__2 = imageMode(CENTER)는 2번째 및 3번째 매개변수를 이미지의 중심점 좌표값으로 해석합니다. 추가 매개변수 2개를 통해 이미지의 너비와 높이도 설정할 수 있습니다.
imageMode__params__mode = 상수: CORNER, CORNERS 또는 CENTER
pixels__description__0 = 디스플레이 화면의 모든 픽셀값을 담는 <a href ='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8ClampedArray'>Uint8ClampedArray</a>입니다. 픽셀값은 숫자로 표현됩니다. 배열은 디스플레이 화면의 4배 크기(픽셀 밀도에 대한 인수 포함)로, 각 픽셀에 대한 R, G, B, A값을 나타냅니다. 배열은 행의 좌에서 우로, 그 다음 열로 내려가는 순으로 채워집니다. Retina를 비롯한 기타 고밀도 디스플레이는 (pixelDensity^2 계수로 인해) 크기가 더 큰 픽셀 배열[]을 갖기도 합니다. 일반 디스플레이 화면상 이미지가 100x100 픽셀이고 그 배열이 40,000이라면, Retina에서 배열은 160,000이 됩니다. 
pixels__description__1 = 배열상 처음 4개의 값들(즉, 인덱스 0-3)은 (0,0) 픽셀에서의 R, G, B, A값을, 그 다음 4개의 값들(즉, 인덱스 4-7)은 (1,0) 픽셀에서의 R, G, B, A값을 담습니다. 특정 좌표 (x,y)에서의 픽셀값을 설정하는 방법은 아래의 예제와 같습니다.
pixels__description__2 = 다소 복잡해보이는 예제지만, 모든 픽셀 밀도(pixelDensity)를 사용할 수 있을정도로 유연합니다. set()은 임의의 pixelDensity에서 주어진 (x,y)에 대한 픽셀 배열[]의 모든 값들을 자동으로 설정합니다. 배열을 여러 차례 수정할 경우, 성능이 느려질 수 있습니다.
pixels__description__3 = 이 배열을 사용하기 전, 데이터를 <a href="#/p5/loadPixels">loadPixels()</a> 함수로 로딩해야 합니다. 또, 배열의 정보가 수정되었을 경우 <a href="#/p5/updatePixels">updatePixels()</a> 함수를 호출해야 이 수정된 부분들을 반영할 수 있습니다.
pixels__description__4 = 이 레퍼런스는 표준 자바스크립트 배열이 아니고, 따라서 <a href="#/p5/slice">slice()</a>나 <a href="#/p5/arrayCopy">arrayCopy()</a>와 같은 표준 자바스크립트 함수가 작동하지 않습니다.
blend__description__0 = 사용자가 지정한 혼합 모드를 사용하여, 한 이미지의 픽셀 영역을 다른 이미지로 복사합니다.
blend__params__srcImage = p5.Image: 원본 이미지
blend__params__sx = 정수: 원본 영역의 좌측 상단 모퉁이 x좌표값
blend__params__sy = 정수: 원본 영역의 좌측 상단 모퉁이 y좌표값
blend__params__sw = 정수: 원본 이미지 너비값
blend__params__sh = 정수: 원본 이미지 높이값
blend__params__dx = 정수: 대상 영역의 좌측 상단 모퉁이 x좌표값
blend__params__dy = 정수: 대상 영역의 좌측 상단 모퉁이 y좌표값
blend__params__dw = 정수: 대상 이미지 너비값
blend__params__dh = 정수: 대상 이미지 높이값
blend__params__blendMode = 상수: 혼합 모드. BLEND, DARKEST, LIGHTEST, DIFFERENCE, MULTIPLY, EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT, SOFT_LIGHT, DODGE, BURN, ADD or NORMAL 중 하나
copy__description__0 = 캔버스의 한 영역을 다른 영역에 복사하고, srcImg 매개변수로 사용되는 한 이미지의 픽셀 영역을 캔버스에 복사합니다. srcImage는 원본 이미지로, 사용자가 지정합니다. 원본과 복사 대상 영역의 크기가 같지 않을 경우, 원본 픽셀 영역의 크기를 대상 영역의 크기에 맞게 자동으로 재조정합니다.
copy__params__srcImage = p5.Image|p5 요소: 원본 이미지
copy__params__sx = 정수: 원본 영역의 좌측 상단 모퉁이 x좌표값
copy__params__sy = 정수: 원본 영역의 좌측 상단 모퉁이 y좌표값
copy__params__sw = 정수: 원본 이미지 너비값
copy__params__sh = 정수: 원본 이미지 높이값
copy__params__dx = 정수: 대상 영역의 좌측 상단 모퉁이 x좌표값
copy__params__dy = 정수: 대상 영역의 좌측 상단 모퉁이 y좌표값
copy__params__dw = 정수: 대상 이미지 너비값
copy__params__dh = 정수: 대상 이미지 높이값
filter__description__0 = 캔버스에 필터를 적용합니다.
filter__description__1 = THRESHOLD: 이미지를 인계값에 따라 흰색이나 검은색 픽셀로 바꿉니다. 이 인계값은 매개변수로 정해지며, 0.0 (검은)과 1.0 (흰) 사이에 있는 값입니다. 매개변수를 지정하지 않을 시 0.5가 사용됩니다.
filter__description__2 = GRAY: 이미지의 모든 색상을 그레이 스케일로 변환합니다. 별도의 매개변수를 사용하지 않습니다.
filter__description__3 = OPAQUE: 알파 채널을 완전히 불투명하게 설정합니다. 별도의 매개변수를 사용하지 않습니다.
filter__description__4 = INVERT: 각 픽셀을 그 역의 값으로 설정합니다. 별도의 매개변수를 사용하지 않습니다.
filter__description__5 = POSTERIZE: 이미지의 각 채널을 매개변수로 지정한 색상 수로 제한합니다. 매개변수는 2부터 255사이의 값으로 설정 가능하나, 낮은 범위에서 가장 두드러진 결과를 볼 수 있습니다.
filter__description__6 = BLUR: 블러 범위를 설정하는 level 매개변수를 사용하여 가우시안 블러를 실행합니다. 별도의 매개변수를 지정하지 않으면, 반경 1의 가우시안 블러와 동일한 효과가 됩니다. 값이 클수록 흐림 정도가 증가합니다.
filter__description__7 = ERODE: 밝은 영역을 줄입니다. 별도의 매개변수를 사용하지 않습니다.
filter__description__8 = DILATE: 밝은 영역을 증가시킵니다. 별도의 매개변수를 사용하지 않습니다.
filter__description__9 = WebGL 모드에서는 filter()가 작동하지 않으나, 커스텀 셰이더를 사용하여 유사한 효과를 얻을 수 있습니다. 아담 페리스(Adam Ferriss)가 작성한 <a href='https://github.com/aferriss/p5jsShaderExamples'>셰이더 예제</a> 중, filter()와 유사한 효과를 나타내는 예제들이 있습니다.
filter__params__filterType = 상수: THRESHOLD, GRAY, OPAQUE, INVERT, POSTERIZE, BLUR, ERODE, DILATE, BLUR 중 하나. 각 필터에 대한 문서는 Filters.js를 참조.
filter__params__filterParam = 숫자: (선택 사항) 각 필터 고유의 선택적 매개변수
get__description__0 = 지정된 픽셀 영역 또는 단일 픽셀을 캔버스로부터 받아옵니다.
get__description__1 = 특정 픽셀에 대한 [R,G,B,A] 값의 배열이나, 이미지의 한 영역을 반환합니다. 별도의 매개변수를 지정하지 않는 경우, 전체 이미지를 반환합니다. 매개변수 x, y를 통해 특정 픽셀의 좌표값을 받아올 수 있습니다. 추가 매개변수 w, h를 통해 디스플레이 창의 한 영역을 지정할 수도 있습니다. 이미지를 받아올 때, 매개변수 x와 y는 현재 imageMode()와 관계없이 좌측 상단 모퉁이의 좌표값을 정의합니다. 
get__description__2 = get(x,y) 함수로 픽셀 1개의 색상을 받아오는 것은 쉬운 방법이지만, pixels[] 배열로부터 직접 데이터를 받아오는 것만큼 빠르진 않습니다. pixels[] 배열과 픽셀 밀도 매개변수 d를 사용하여 get(x,y)과 동일한 효과를 나타낼 수 있고, 구체적인 명령문은 다음의 예제와 같습니다.
get__description__3 = 더 많은 정보는 <a href="#/p5/pixels">pixels[]</a> 레퍼런스를 확인할 수 있습니다.
get__description__4 = p5.Image 객체의 하위 이미지로부터 색상 배열을 추출하는 방법은 <a href="#/p5.Image/get">p5.Image.get()</a>에 있습니다.
get__returns = p5.Image: 직사각형 p5.Image
get__params__x = 숫자: 픽셀의 x좌표값
get__params__y = 숫자: 픽셀의 y좌표값
get__params__w = 숫자: 너비
get__params__h = 숫자: 높이
loadPixels__description__0 = 디스플레이 창의 픽셀 데이터를 pixels[] 배열에 불러옵니다. 이 함수는 pixels[] 배열을 작성하거나 읽어오기 전에 호출되어야 합니다. set() 함수 또는 pixels[] 배열 직접 조작을 통한 변경 사항만 반영합니다.
set__description__0 = 특정 픽셀의 색상을 변경하거나, 디스플레이 창에 이미지를 직접 작성합니다.
set__description__1 = 매개변수 x와 y는 변경할 픽셀을 지정하고, 매개변수 c는 색상값을 지정합니다. 색상값으로는 p5.Color 객체, [R,G,B,A] 베열, 또는 단일 그레이 스케일값을 사용할 수 있습니다. 이미지 설정시, 매개변수 x와 y는 현재 imageMode()와 관계없이 좌측 상단 모퉁이의 좌표값을 정의합니다.
set__description__2 = set() 함수 사용 후에는 반드시 updatePixels()를 호출하여 변경 사항을 반영해야 합니다. 호출 시점은 픽셀 설정을 완료한 이후이면서 동시에, .get() 또는 그리기 함수 호출 이전이어야 합니다.
set__description__3 = set(x,y) 함수로 픽셀 1개의 색상을 받아오는 것은 쉬운 방법이지만, pixels[] 배열로부터 직접 데이터를 받아오는 것만큼 빠르진 않습니다. 레티나 디스플레이에선 pixels[] 배열값을 직접 설정하는 것이 복잡할 수 있으나, 많은 양의 픽셀들이 반복 실행되도록 설정된 경우 그 작업 성능이 향상됩니다.
set__description__4 = 자세한 내용은 pixels[]에 있습니다. 
set__description__5 = 
set__description__6 = 
set__params__x = 숫자: 픽셀의 x좌표값
set__params__y = 숫자: 픽셀의 y좌표값
set__params__c = 숫자|숫자 배열[]|객체: 채도값 | 픽셀 배열 | <a href="#/p5.Color">p5.Color</a> 객체 | <a href="#/p5.Image">p5.Image</a> 객체
updatePixels__description__0 = pixels[] 배열의 데이터로 디스플레이 창을 업데이트합니다. loadPixels()와 함께 사용합니다. 배열로부터 픽셀값을 읽어오기만 할 경우, updatePixels()를 사용할 필요가 없습니다. 업데이트는 배열값 변경 사항을 적용하는 데에만 필요합니다. updatePixels()는 픽셀 배열을 수정하거나 set() 함수를 호출할 때마다 매번 호출되어야하며, set() 함수 또는 pixels[] 배열 직접 조작을 통한 변경 사항만 반영합니다.
updatePixels__params__x = 숫자: (선택 사항) 업데이트할 영역의 좌측 상단 모퉁이 x좌표값
updatePixels__params__y = 숫자: (선택 사항) 업데이트할 영역의 좌측 상단 모퉁이 y좌표값
updatePixels__params__w = 숫자: (선택 사항) 업데이트할 영역의 너비값
updatePixels__params__h = 숫자: (선택 사항) 업데이트할 영역의 높이값
loadJSON__description__0 = 파일 또는 URL로부터 JSON 파일을 불러오고, 객체를 반환합니다. JSON 파일에 배열이 포함된 경우, 인덱스 번호를 키(key)로 사용하여 객체를 반환할 수 있습니다.
loadJSON__description__1 = 이는 비동기적 메소드으로, 스케치상의 다음 코드 줄이 실행되기 전에 함수 실행이 완료되지 않을 수 있습니다. JSONP는 polyfill을 통해 지원되며, <a href ='https://github.com/camsong/fetch-jsonp'>여기</a>의 구문에 따라 JSON 콜백 함수가 정의한 객체를 2번째 인수로 전달할 수 있습니다.
loadJSON__description__2 = 이 방법은 최대 64MB 크기의 파일을 불러오는 데에 적합합니다.
loadJSON__description__3 = [1번째 예제] <a href="#/p5/preload">preload()</a> 함수 안에 loadJSON() 함수를 호출하여, 모든 불러오기 작업이 <a href="#/p5/setup">setup()</a>과 <a href="#/p5/draw">draw()</a> 함수가 호출되기에 앞서 완료되도록 처리합니다.
loadJSON__description__4 = [2번째 예제] <a href="#/p5/preload">preload()</a> 함수 밖의 영역에서 콜백 함수를 2번째 예제와 같이 작성하여 객체를 처리할 수 있습니다.
loadJSON__description__5 = 
loadJSON__description__6 = 
loadJSON__returns = 객체|배열: JSON 데이터
loadJSON__params__path = 문자열: 불러올 파일명 또는 URL
loadJSON__params__jsonpOptions = 객체: (선택 사항) jsonp 관련 설정을 위한 객체
loadJSON__params__datatype = 문자열: "json" 또는 "jsonp"
loadJSON__params__callback = 함수: (선택 사항) loadJSON()이 완료된 이후 실행될 함수, 데이터를 1번재 인수로 전달
loadJSON__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수, 반응(response)이 1번째 인수로 전달
loadStrings__description__0 = 파일의 내용을 읽어와 개별 행에 대한 문자열 배열을 생성합니다. 위의 예제처럼 파일명(filename)을 매개변수로 사용할 경우, 해당 파일이 스케치 디렉토리/폴더(directory/folder) 안에 있어야 합니다.
loadStrings__description__1 = 절대 경로(Unix 및 Linux의 경우 with/on 으로, 윈도우의 경우 드라이브 문자로 시작)로도 로컬 컴퓨터로부터 파일을 불러올 수 있습니다. 또는, 매개변수 filename을 URL 또는 네트워크상의 파일로 지정할 수 있습니다.
loadStrings__description__2 = 이는 비동기적 메소드으로, 스케치상의 다음 코드 줄이 실행되기 전에 함수 실행이 완료되지 않을 수 있습니다.
loadStrings__description__3 = 이 방법은 최대 64MB 크기의 파일을 불러오는 데에 적합합니다.
loadStrings__description__4 = [1번째 예제] <a href="#/p5/preload">preload()</a> 함수 안에 loadStrings() 함수를 호출하여, 모든 불러오기 작업이 <a href="#/p5/setup">setup()</a>과 <a href="#/p5/draw">draw()</a> 함수가 호출되기에 앞서 완료되도록 처리합니다.
loadStrings__description__5 = [2번째 예제] <a href="#/p5/preload">preload()</a> 함수 밖의 영역에서 콜백 함수를 2번째 예제와 같이 작성하여 객체를 처리할 수 있습니다.
loadStrings__returns = 문자열 배열[]: 문자열들의 배열
loadStrings__params__filename = 문자열: 불러올 파일명 또는 URL
loadStrings__params__callback = 함수: (선택 사항) loadStrings()이 완료된 이후 실행될 함수, 배열을 1번째 인수로 전달
loadStrings__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수, 반응(response)이 1번째 인수로 전달
loadTable__description__0 = 파일 또는 URL의 내용을 읽어와 그 값으로 p5.Table 객체를 만듭니다. 특정 파일을 지정하려면, 해당 파일이 'data' 폴더 안에 있어야 합니다. 매개변수 filename는 온라인 파일 URL로도 지정 가능합니다. 기본값으로, 파일 내용이 쉼표 단위로 구분된 것(CSV 형식)으로 간주합니다. 'header' 옵션이 포함된 경우, 헤더 행만 찾습니다.
loadTable__description__1 = 가능한 옵션은 다음과 같습니다:<ul><li>csv - 테이블을 쉼표로 구분된 값으로서 구문 분석</li><li>tsv - 테이블을 탭으로 구분된 값으로서 구문 분석</li><li>header - 테이블에 헤더 행이 있음을 표기</li></ul>
loadTable__description__2 = 여러 옵션을 사용할 경우, 매개변수들을 쉼표로 구분하여 전달할 수 있습니다. 예를 들면 다음과 같습니다：
loadTable__description__3 = <code>loadTable('my_csv_file.csv', 'csv', 'header'); </code>
loadTable__description__4 = 불러오기 및 저장된 모든 파일은 UTF-8 인코딩을 사용합니다.
loadTable__description__5 = 이는 비동기적 메소드로, 스케치상의 다음 코드 줄이 실행되기 전에 함수 실행이 완료되지 않을 수 있습니다. 그 경우, <a href="#/p5/preload">preload()</a> 함수 안에 <a href="#/p5/loadTable">loadTable()</a> 함수를 호출하여, 모든 불러오기 작업이 <a href="#/p5/setup">setup()</a>과 <a href="#/p5/draw">draw()</a> 함수가 호출되기에 앞서 완료되도록 처리합니다.
loadTable__description__6 = <a href="#/p5/preload">preload()</a> 함수 밖의 영역에서 콜백 함수를  작성하여 객체를 처리할 수 있습니다.
loadTable__description__7 = 이 방법은 최대 64MB 크기의 파일을 불러오는 데에 적합합니다.
loadTable__description__8 = 
loadTable__description__9 = 
loadTable__returns = 객체: 데이터를 포함한 <a href="#/p5.Table">Table</a> 객체
loadTable__params__filename = 문자열: 불러올 파일명 또는 URL
loadTable__params__extension = 문자열: (선택 사항) 테이블을 쉼표로 나눌 경우 "csv", 세미콜론으로 나눌 경우 "ssv", 또는 탭으로 나눌 경우 "tsv"
loadTable__params__header = 문자열: (선택 사항) "header"로 테이블이 헤더가 있음을 표시
loadTable__params__callback = 함수: (선택 사항) <a href="#/p5/loadTable">loadTable()</a>이 완료된 이후 실행될 함수, 성공시 Table 객체를 1번째 인수로 전달
loadTable__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수, 반응(response)이 1번째 인수로 전달
loadXML__description__0 = 파일의 내용을 읽어와 그 값으로 XML 객체를 생성합니다. 위의 예제처럼 파일명(filename)을 매개변수로 사용할 경우, 해당 파일이 스케치 디렉토리/폴더(directory/folder) 안에 있어야 합니다.
loadXML__description__1 = 절대 경로(Unix 및 Linux의 경우 with/on 으로, 윈도우의 경우 드라이브 문자로 시작)로도 로컬 컴퓨터로부터 파일을 불러올 수 있습니다. 또는, 매개변수 filename을 URL 또는 네트워크상의 파일로 지정할 수 있습니다. 
loadXML__description__2 = 이는 비동기적 메소드로, 스케치상의 다음 코드 줄이 실행되기 전에 함수 실행이 완료되지 않을 수 있습니다. 그 경우, <a href="#/p5/preload">preload()</a> 함수 안에 <a href="#/p5/loadXML">loadXML()</a> 함수를 호출하여, 모든 불러오기 작업이 <a href="#/p5/setup">setup()</a>과 <a href="#/p5/draw">draw()</a> 함수가 호출되기에 앞서 완료되도록 처리합니다.
loadXML__description__3 = <a href="#/p5/preload">preload()</a> 함수 밖의 영역에서 콜백 함수를  작성하여 객체를 처리할 수 있습니다.
loadXML__description__4 = 이 방법은 최대 64MB 크기의 파일을 불러오는 데에 적합합니다.
loadXML__description__5 = 
loadXML__description__6 = 
loadXML__description__7 = 
loadXML__description__8 = 
loadXML__returns = 객체: 데이터를 포함한 XML 객체
loadXML__params__filename = 문자열: 불러올 파일명 또는 URL
loadXML__params__callback = 함수: (선택 사항) <a href="#/p5/loadXML">loadXML()</a>이 완료된 이후 실행될 함수, XML 객체를 1번째 인수로 전달
loadXML__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수, 반응(response)이 1번째 인수로 전달
loadBytes__description__0 = 이 방법은 최대 64MB 크기의 파일을 불러오는 데에 적합합니다.
loadBytes__returns = 객체: 'bytes' 속성을 로드 완료된 버퍼로서 갖는 객체
loadBytes__params__file = 문자열: 불러올 파일명 또는 URL
loadBytes__params__callback = 함수: (선택 사항) <a href="#/p5/loadBytes">loadBytes()</a> 가 완료된 이후 실행될 함수
loadBytes__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수
httpGet__description__0 = HTTP GET 요청을 실행하는 메소드입니다. 별도의 데이터 유형(datatype)을 지정하지 않을 경우, p5는 URL을 기본값 텍스트로서 가정합니다. 이는 <code>httpDo(path, 'GET')</code>을 호출하는 것과 동일한 효과를 갖습니다. ‘binary’ 데이터 형식은 Blob 객체를, ‘arrayBuffer’ 데이터 형식은 지정된 형식의 배열(예: Uint8Array)을 초기화할 ArrayBuffer를 반환합니다.
httpGet__returns = 약속: 작업 성공시 데이터로 해결되는 약속, 또는 오류 발생시 거부.
httpGet__params__path = 문자열: 불러올 파일명 또는 URL
httpGet__params__datatype = 문자열: "json","jsonp","binary","arrayBuffer","xml" 또는 "text"
httpGet__params__data = 객체|불리언: 요청과 함께 전달되는 매개변수 데이터
httpGet__params__callback = 함수: httpGet()이 완료된 이후 실행될 함수, 데이터를 1번째 인수로 전달
httpGet__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수, 반응(response)이 1번째 인수로 전달
httpPost__description__0 = HTTP POST 요청을 실행하는 메소드입니다. 별도의 데이터 유형(datatype)을 지정하지 않을 경우, p5는 URL을 기본값 텍스트로서 가정합니다. 이는 httpDo(path, 'POST')를 호출하는 것과 동일한 효과를 갖습니다.
httpPost__returns = 약속: 작업 성공시 데이터로 해결되는 약속, 또는 오류 발생시 거부
httpPost__params__path = 문자열: 불러올 파일명 또는 URL
httpPost__params__datatype = 문자열: "json","jsonp","binary","arrayBuffer","xml" 또는 "text". 생략할 경우, httpPost()가 임의로 가정합니다.
httpPost__params__data = 객체|불리언: (선택 사항) 요청과 함께 전달되는 매개변수 데이터
httpPost__params__callback = 함수: (선택 사항) httpPost()가 완료된 이후 실행될 함수, 데이터를 1번째 인수로 전달
httpPost__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수, 반응(response)이 1번째 인수로 전달
httpDo__description__0 = HTTP 요청을 실행하는 메소드입니다. 별도의 데이터 유형(datatype)을 지정하지 않을 경우, p5는 URL을 기본값 텍스트로서 가정합니다.
httpDo__description__1 = 고급 응용 단계에서는 경로를 1번째 인수로, 객체를 2번째 인수로 전달할 수 있습니다. 서명은 Fetch API 사양을 따릅니다. 이 방법은 최대 64MB 크기의 파일을 불러오는 데에 적합합니다.
httpDo__returns = 약속: 작업 성공시 데이터로 해결되는 약속, 또는 오류 발생시 거부
httpDo__params__path = 문자열: 불러올 파일명 또는 URL
httpDo__params__method = 문자열: "GET", "POST", "PUT" 중 하나, 기본값은 "GET"
httpDo__params__datatype = 문자열: (선택 사항) "json", "jsonp", "xml" 또는 "text"
httpDo__params__data = 객체: (선택 사항) 요청과 함께 전달되는 매개변수 데이터
httpDo__params__callback = 함수: (선택 사항) httpDo()가 완료된 이후 실행될 함수, 데이터를 1번째 인수로 전달
httpDo__params__errorCallback = 함수: (선택 사항) 에러 발생시 실행될 함수, 반응(response)이 1번째 인수로 전달
httpDo__params__options = 객체: <a href='https://developer.mozilla.org/ko/docs/Web/API/Fetch_API'>Fetch API 레퍼런스</a>에 따른 요청(request) 객체 옵션
createWriter__returns = p5.PrintWriter 객체
createWriter__params__name = 문자열: 생성될 파일의 이름
createWriter__params__extension = 문자열:
save__description__0 = 이미지, 텍스트, json, csv, wav, 또는 html을 저장합니다. 클라이언트 컴퓨터에 다운로드 대화 상자가 뜹니다. <b>save() 함수는 매 프레임마다 새로운 저장 대화 상자를 엽니다. 따라서, 반복 실행되는 함수인 <a href="#/p5/draw">draw()</a> 안에서 save()를 호출하지 않는 것을 권장합니다.</b>
save__description__1 = 첫 번째 매개변수는 캔버스 p5.Element애 대한 포인터, JSON 배열, JSON 객체, p5.Table, p5.Image, p5.SoundFile(p5.sound 필요)로 지정할 수 있습니다. 두 번째 매개변수로 파일명(확장자 포함)을 지정합니다. 세 번째 매개변수는 객체 유형에 따른 옵션을 설정합니다. 이 메소드는 사용자가 지정한 매개변수에 따라 파일을 저장합니다.
save__params__objectOrFilename = 객체|문자열: (선택 사항) 지정된 파일명에 따라 캔버스를 png 또는 jpg 확장자 이미지로 저장합니다. 객체 지정시, 객체와 파일명에 따라 저장합니다. (위의 예제 참고)
save__params__filename = 문자열: (선택 사항) 객체를 1번째 매개변수로 지정할 경우, 2번째 매개변수는 파일명을 지시하게 되며, 이 경우 적절한 파일 확장자를 포함해야 합니다. (위의 예제 참고)
save__params__options = 불리언|문자열: (선택 사항) 파일 유형에 따른 추가 옵션. 예를 들어 JSON을 저장할 경우, 참(true)은 결과물의 가독성이 아닌, 결과물 파일 크기의 최적화를 뜻합니다.
saveJSON__description__0 = 배열 또는 JSON 객체의 내용을 .json 파일에 작성합니다. 파일 저장 처리 방식 및 저장 파일 위치는 웹 브라우저마다 다릅니다.
saveJSON__params__json = 배열|객체:
saveJSON__params__filename = 문자열
saveJSON__params__optimize = 불리언: (선택 사항) 참(true)일 경우, 출력 파일상 줄바꿈과 공백을 제거하여 파일 크기를 최적화합니다. (가독성은 최적화 제외)
saveStrings__description__0 = 문자열 배열을 문자열당 1줄 단위로 텍스트 파일에 작성합니다. 파일 저장 처리 방식 및 저장 파일 위치는 웹 브라우저마다 다릅니다.
saveStrings__params__list = 문자열 배열[]: 작성할 문자열 배열
saveStrings__params__filename = 문자열: 결과값을 위한 파일명
saveStrings__params__extension = 문자열: (선택 사항) filename의 확장자
saveStrings__params__isCRLF = 불리언: (선택 사항) 참(true)일 경우, 줄바꿈을 CRLF로 변환
saveTable__description__0 = 테이블(<a href="#/p5.Table">Table</a>) 객체의 내용을 파일에 작성합니다. 쉼표 단위로 값을 구분하는 텍스트 파일('csv')이 기본값으로 설정되지만, 탭 구분('tsv') 또는 HTML 테이블('html')도 생성가능합니다. 파일 저장 처리 방식 및 저장 파일 위치는 웹 브라우저마다 다릅니다.
saveTable__params__Table = p5.Table: 파일에 저장할 <a href="#/p5.Table">Table</a> 객체
saveTable__params__filename = 문자열: Table을 저장할 파일명
saveTable__params__options = 문자열: (선택 사항) "tsv", "csv", "html" 중 하나
abs__description__0 = 숫자의 절대값(크기)을 계산합니다. Math.abs()에 매핑합니다. 숫자의 절대값은 항상 양수입니다.
abs__returns = 숫자: 지정된 숫자의 절대값
abs__params__n = 숫자: 계산할 숫자
ceil__description__0 = 매개변수의 값보다 크거나 같은 수들 중, 가장 가까운 정수(int)값을 계산합니다. 예를 들어, Math.ceil()에 매핑합니다. 예를 들어, ceil(9.03)은 값 10을 반환합니다.
ceil__returns = 정수: 반올림된 숫자
ceil__params__n = 숫자: 반올림할 숫자
constrain__description__0 = 값을 최소값과 최대값 사이에 제한합니다.
constrain__returns = 숫자: 제한된 숫자
constrain__params__n = 수자: 제한할 숫자
constrain__params__low = 숫자: 최소 한계
constrain__params__high = 숫자: 최대 한계
dist__description__0 = 2차원 또는 3차원 상 두 점 사이의 거리를 계산합니다.
dist__returns = 숫자: 두 점 사이의 거리
dist__params__x1 = 숫자: 1번째 점의 x좌표값
dist__params__y1 = 숫자: 1번째 점의 y좌표값
dist__params__x2 = 숫자: 2번째 점의 y좌표값
dist__params__y2 = 숫자: 1번째 점의 z좌표값
dist__params__z1 = 숫자: 2번째 점의 x좌표값
dist__params__z2 = 숫자: 2번째 점의 z좌표값
exp__description__0 = 매개변수 n을 지수로 삼는 거듭 제곱 형식으로 오일러(Euler)의 수 e(2.71828...)를 반환합니다. Math.exp()에 매핑합니다.
exp__returns = 숫자: e^n
exp__params__n = 숫자: 거듭 제곱의 지수
floor__description__0 = 매개변수의 값보다 작거나 같은 수들 중, 가장 가까운 정수(int)값을 계산합니다. Math.floor()에 매핑합니다.
floor__returns = 정수: 반내림된 숫자
floor__params__n = 숫자: 반내림할 숫자
lerp__description__0 = 지정된 증분(increment)을 통해 두 숫자 사이의 특정 숫자를 계산합니다. 여기서 매개변수 amt는 두 개의 값 사이를 선형적으로 보간합니다. 예를 들어, 0.0은 첫 번째 값과 동일한 색상값을, 0.1은 첫 번째 값에 매우 가까운 색상값을, 0.5는 두 값 사이의 중간 색상값을 나타내는 식입니다. 이 때, 0 미만의 값과 1이상의 값은 지정된 2개의 숫자의 비율에 따라 자동 처리됩니다. lerp() 함수는 직선 경로를 따라 모션을 생성하고 점선을 그리는 데에 사용됩니다.
lerp__returns = 숫자: 선형보간된 값
lerp__params__start = 숫자: 1번째 값
lerp__params__stop = 숫자: 2번째 값
lerp__params__amt = 숫자: 숫자
log__description__0 = 숫자의 자연 로그(밑이 e인 로그)를 계산합니다. 함수는 매개변수 n을 0.0보다 큰 값으로 예측합니다. Math.log()에 매핑합니다
log__returns = 숫자: n의 자연 로그
log__params__n = 숫자: 0보다 큰 숫자
mag__description__0 = 벡터의 크기(또는 길이)를 계산합니다. 벡터는 컴퓨터 그래픽과 선형 대수에서 일반적으로 사용되며, 공간 속 방향을 뜻합니다. 벡터에는 시작점 개념이 없으므로, 그 크기는 좌표 0,0에서 x,y값까지의 거리에 비유할 수 있습니다. 이 점에서 mag()는 dist(0, 0, x, y)와 동일한 효과를 갖고 보다 간단하게 표현한 셈입니다.
mag__returns = 숫자: (0,0)에서 (a,b)까지의 벡터 크기
mag__params__a = 숫자: 1번째 값
mag__params__b = 숫자: 2번째 값
map__description__0 = 숫자의 범위를 다른 범위로 다시 매핑합니다.
map__description__1 = 첫 번째 예제의 숫자 25는 화면상 좌측 상단 모퉁이(0)부터 우측 변(너비)에 이르는 범위에 해당하는데, 이는 0부터 100 사이에 해당하는 본래 범위에서 변환된 것입니다.
map__returns = 숫자: 다시 매핑된 숫자
map__params__value = 숫자: 변환할 값
map__params__start1 = 숫자: 값의 현재 범위의 하한
map__params__stop1 = 숫자: 값의 현재 범위의 상한
map__params__start2 = 숫자: 값의 대상 범위의 하한
map__params__stop2 = 숫자: 값의 대상 범위의 상한
map__params__withinBounds = 불리언: (선택 사항) 값을 새로 매핑된 범위에 제한
max__description__0 = 일련의 숫자들 중, 가장 큰 값을 확인하고 이를 반환합니다. max() 함수는 매개변수 Number로 지정된 모든 숫자 또는 모든 길의의 배열을 허용합니다.
max__returns = 숫자: 최대 숫자
max__params__n0 = 숫자: 비교할 숫자
max__params__n1 = 숫자: 비교할 숫자
max__params__nums = 숫자 배열[]: 비교할 숫자
min__description__0 = 일련의 숫자들 중, 가장 작은 값을 확인하고 이를 반환합니다. min() 함수는 매개변수 Number로 지정된 모든 숫자 또는 모든 길의의 배열을 허용합니다.
min__returns = 숫자: 최소 숫자
min__params__n0 = 숫자: 비교할 숫자
min__params__n1 = 숫자: 비교할 숫자
min__params__nums = 숫자 배열[]: 비교할 숫자
norm__description__0 = 특정 범위 내의 숫자를 0과 1 범위의 값으로 정규화합니다. 이는 map(value, low, high, 0, 1)과도 동일한 효과를 갖습니다. 숫자가 0과 1 범위를 벗어나더라도, 사용자의 의도와 활용 가능성을 감안하여 0과 1 사이의 값으로 재고정하지 않습니다. (위의 예제에 표시되어 있습니다.)
norm__returns = 숫자: 정규화된 숫자
norm__params__value = 숫자: 정규화될 값
norm__params__start = 숫자: 값의 현재 범위 하한
norm__params__stop = 숫자: 값의 현재 범위 상한
pow__description__0 = pow() 함수는 지수 식을 효율적으로 사용하는 한 방법으로, 특정 숫자(또는 그 역수)를 반복하여 곱할 수 있습니다. 예를 들어, pow(3,5)는 3 x 3 x 3 x 3 x 3과 같고, pow(3,-5)는 1 / 3 x 3 x 3 x 3 x 3과 같습니다. Math.pow()에 매핑합니다.
pow__returns = 숫자：n^e
pow__params__n = 숫자: 지수 식의 밑
pow__params__e = 숫자: 거듭 제곱의 지수
round__description__0 = 매개변수 n에 가장 가까운 정수를 계산합니다. 예를 들어, round(133.8)은 값 134를 반환합니다. Math.round()에 매핑합니다.
round__returns = 정수: 반올림된 숫자
round__params__n = 숫자: 반올림할 숫자
round__params__decimals = 숫자: (선택 사항) 반올림할 소수점 자릿수, 기본값은 0
sq__description__0 = 숫자를 제곱합니다. 음수를 제곱하면 그 결과는 항상 양수로 나옵니다. (예: -1 * -1 = 1)
sq__returns = 숫자: 제곱된 숫자
sq__params__n = 숫자: 제곱할 숫자
sqrt__description__0 = 숫자의 제곱근을 계산합니다. 유효한 음의 근이 있더라도 제곱근은 항상 양수가 됩니다. 숫자 a의 제곱근은 s * s = a와 같습니다. 제곱의 반대입니다. Math.sqrt()에 매핑됩니다.
sqrt__returns = 숫자: 숫자의 제곱근
sqrt__params__n = 숫자: 음수가 아닌 제곱근
fract__description__0 = 숫자의 분수값을 계산합니다. 즉, 소숫자리를 계산합니다. 예를 들어, fract(3.146)은 0.146을 반환합니다.
fract__returns = 숫자: 숫자 x의 분수값, i.e, {"{"}x{"}"}
fract__params__num = 숫자: 분수값 찾을 숫자
createVector__description__0 = 새로운 <a href="#/p5.Vector">p5.Vector</a>를 생성합니다. 이 <a href="#/p5.Vector">p5.Vector</a>는 벡터를 저장하는 데이터형식입니다. 2차원 및 3차원 벡터, 특히 유클리드 (기하학) 벡터를 갖고 있입니다. 벡터는 크기와 방향을 모두 지닌 개체입니다.
createVector__returns = p5.Vector:
createVector__params__x = 숫자: (선택 사항) 벡터의 x성분
createVector__params__y = 숫자: (선택 사항) 벡터의 y성분
createVector__params__z = 숫자: (선택 사항) 벡터의 z성분
noise__description__0 = 지정된 좌표에서의 펄린 노이즈(Perlin noise)값을 반환합니다. 일반 random() 함수에 비해, 펄린 노이즈는 고조파 연속 숫자를 보다 자연스러운 시퀀스로 생성합니다. 켄 펄린(Ken Perlin)이 1980년대에 발명하였으며, 그래픽 응용 프로그램상 절차적 텍스처, 자연스러운 모션, 형상, 지형 등을 생성하는 데에 사용됩니다.
noise__description__1 = <b>random()</b> 함수와의 주요 차이점은, 펄린 노이즈가 반-무작위 값을 갖는 고정 좌표쌍을 n차원의 무한 공간에서 정의한다는 점에 있습니다. (이는 프로그램의 수명 동안에만 고정되며, 관련해서는 noiseSeed()함수를 참고할 수 있습니다.) p5.js는 사용자가 지정한 좌표 개수에 따라 1D, 2D, 3D 노이즈를 계산할 수 있습니다. 결과값은 항상 0.0과 1.0 사이입니다. 위의 예제처럼, 노이즈값은 공간 이동을 통해 애니메이션화 될 수 있습니다. 2차원 및 3차원 역시 시간으로 해석될 수 있습니다.
noise__description__2 = 노이즈 함수의 주파수 사용은 실제 오디오 신호와 유사하게 구성됩니다. 물리학에서의 고조파 개념과 마찬가지로, 펄린 노이즈는 여러 옥타브에 걸쳐 계산되며, 최종 결과 생성을 위해 모든 옥타브를 합칩니다. 
noise__description__3 = 입력 좌표값의 크기를 통해서도 결과 시퀀스의 문자를 조정할 수 있습니다. 함수는 무한 공간 속에서 작동하기 때문에 좌표값이 크게 중요하지 않지만, 연속된 좌표들 사이의 거리만큼은 중요합니다 (예: 반복문 내에서 noise()를 실행하는 경우). 일반적으로, 좌표들 간의 거리차가 적을수록 노이즈 시퀀스가 더 매끄러워집니다. 0.0005부터 0.03 사이의 단계가 대부분의 응용 프로그램에서 사용하기에 가장 적합하나, 사용에 따라 달라질 수 있습니다.
noise__returns = 숫자: 지정된 좌표에서의 펄린 노이즈 값 (0과 1 사이)
noise__params__x = 숫자: 노이즈 공간 속 x좌표값
noise__params__y = 숫자: (선택 사항) 노이즈 공간 속 y좌표값
noise__params__z = 숫자: (선택 사항) 노이즈 공간 속 z좌표값
noiseDetail__description__0 = 펄린 노이즈 함수로 생성되는 문자와 세부 레벨을 조정합니다. 물리학의 고조파처럼, 노이즈 역시 여러 옥타브에 걸쳐 계산됩니다. 낮은 옥타브는 출력 신호에 더 많이 기여함으로써 노이즈의 전체 강도를 정의하는 반면, 높은 옥타브는 노이즈 시퀀스에서 세밀한 디테일을 만듭니다.
noiseDetail__description__1 = 기본값으로, 노이즈는 4 옥타브 이상으로 계산되고 각 옥타브는 이전 옥타브의 정확히 절반을 기여하도록 설정됩니다. 즉, 2번째 옥타브는 1번째 옥타브의 강도 50%에서 시작하는 식입니다. 이러한 감소량은 추가 매개변수를 통해 변경할 수 있습니다. 예: 감소 계수 0.75는 각 옥타브가 이전 하위 옥타브의 75%만큼 영향(25% 감소)을 받는다는 것을 뜻합니다. 0.0과 1.0 사이의 모든 값이 유효하나, 0.5보다 큰 값은 noise()에 의해 반환된 1.0보다 더 큰 결과값을 가질 수 있습니다.
noiseDetail__description__2 = 이처럼 매개변수를 변경하여, noise() 함수가 생성한 신호를 매우 구체적인 요구와 특성에 맞게 조정할 수 있습니다.
noiseDetail__params__lod = 숫자: 노이즈가 사용한 옥타브 개수
noiseDetail__params__falloff = 숫자: 각 옥타브에 대한 감소 계수
noiseSeed__description__0 = noise()의 시드(seed) 값을 설정합니다. 기본적으로, noise()는 소프트웨어 프로그램이 실행될 때마다 매번 다른 결과를 생성합니다. 매 실행마다 동일한 유사-난수(random)를 반환하려면 매개변수 value를 상수로 설정합니다.
noiseSeed__params__seed = 숫자: 시드값
randomSeed__description__0 = random() 함수의 시드(seed) 값을 설정합니다.
randomSeed__description__1 = 기본적으로, random()은 소프트웨어 프로그램이 실행될 때마다 매번 다른 결과를 생성합니다. 매 실행마다 동일한 유사-난수(random)를 반환하려면 매개변수 value를 상수로 설정해야 합니다.
randomSeed__params__seed = 숫자: 시드값
random__description__0 = 임의의 부동 소수점 숫자, 즉 실수(float)를 반환합니다.
random__description__1 = 0, 1, 또는 2개의 인수를 사용합니다.
random__description__2 = 별도의 인수를 지정하지 않을 경우, 0부터 1미만 사이의 난수(random)를 반환합니다.
random__description__3 = 1개의 인수를 숫자로 지정할 경우, 0부터 해당 숫자 미만 사이의 난수를 반환합니다.
random__description__4 = 1개의 인수를 배열로 지정할 경우, 해당 배열로부터 임의의 요소를 반환합니다.
random__description__5 = 2개의 인수를 지정할 경우, 1번째 인수에서 2번째 인수 미만 사이의 난수를 반환합니다.
random__returns = 숫자: 난수
random__params__min = 숫자: (선택 사항) 해당 숫자를 포함한 하한
random__params__max = 숫자: (선택 사항) 해당 숫자를 제외한 상한
random__params__choices = 배열: 요소를 골라올 배열
randomGaussian__description__0 = 가우스 및 정규 분포에 맞는 난수를 반환합니다. randomGaussian()이 반환할 수 있는 최소값이나 최대값 개념은 이론상 없습니다. 평균으로부터 멀리 떨어진 값이 반환될 확률은 매우 낮고, 평균 근처의 숫자가 반환될 확률이 높습니다. 
randomGaussian__description__1 = 0, 1, 또는 2개의 인수를 사용합니다.
randomGaussian__description__2 = 별도의 인수를 지정하지 않을 경우, 평균으로 0을, 표준 편차로 1을 반환합니다.
randomGaussian__description__3 = 1개의 인수를 지정할 경우, 해당 인수가 평균입니다. (표준 편차는 1)<br>2개의 인수를 지정할 경우, 1번째 인수는 평균, 2번째 인수는 표준 편차입니다.
randomGaussian__returns = 숫자: 난수
randomGaussian__params__mean = 숫자: 평균
randomGaussian__params__sd = 숫자: 표준 편차
acos__description__0 = <a href="#/p5/cos">cos()</a> 함수의 역으로, 값의 아크 코사인을 반환합니다. 이 함수는 -1부터 1까지 범위 내의 값을 예상하고, 0부터 PI(3.1415927)까지 범위 내의 값을 반환합니다.
acos__returns = 숫자: 지정된 값의 아크 코사인
acos__params__value = 숫자: 아크 코사인으로 반환될 값
asin__description__0 = <a href="#/p5/sin">sin()</a> 함수의 역으로, 값의 아크 사인을 반환합니다. 이 함수는 -1부터 1까지 범위 내의 값을 예상하고, -PI/2부터 PI/2까지 범위 내의 값을 반환합니다.
asin__returns = 숫자: 지정된 값의 아크 사인
asin__params__value = 숫자: 아크 사인으로 반환될 값
atan__description__0 = <a href="#/p5/tan">tan()</a> 함수의 역으로, 값의 아크 탄젠트를 반환합니다. 이 함수는 -무한부터 무한 미만까지 범위 내의 값을 예상하고, -PI/2부터 PI/2까지 범위 내의 값을 반환합니다.
atan__returns = 숫자: 지정된 값의 아크 탄젠트
atan__params__value = 숫자: 아크 탄젠트로 반환될 값
atan2__description__0 = 양의 x축상의 특정 좌표로부터 좌표 원점을 향한 각도(라디안, radian)를 계산합니다. 값은 PI부터 -PI까지 범위 내의 실수(float)로 반환됩니다. atan2() 함수는 도형을 커서 위치에 맞추는 데에 자주 사용됩니다.
atan2__description__1 = 참고: 접선 계산 방식에 따라 1번째 매개변수를 점의 y좌표로, 2번째 매개변수를 x좌표로 지정합니다.
atan2__returns = 숫자: 지정된 점의 아크 탄젠트
atan2__params__y = 숫자: 점의 y좌표값
atan2__params__x = 숫자: 점의 x좌표값
cos__description__0 = 각도의 코사인을 계산합니다. 이 함수는 현재 설정된 <a href="#/p5/angleMode">angleMode</a>를 반영합니다. 값은 -1부터 1까지의 범위 내에서 반환됩니다.
cos__returns = 숫자: 각도의 코사인
cos__params__angle = 숫자: 각도
sin__description__0 = 각도의 사인을 계산합니다. 이 함수는 현재 설정된 <a href="#/p5/angleMode">angleMode</a>를 반영합니다. 값은 -1부터 1까지의 범위 내에서 반환됩니다.
sin__returns = 숫자: 각도의 사인
sin__params__angle = 숫자: 각도
tan__description__0 = 각도의 탄젠트를 계산합니다. 이 함수는 현재 설정된 <a href="#/p5/angleMode">angleMode</a>를 반영합니다. 모든 실수 범위 내에서의 값을 반환됩니다.
tan__returns = 숫자: 각도의 탄젠트
tan__params__angle = 숫자: 각도
degrees__description__0 = 라디안(radian) 측정값을 도(degree) 단위에 해당하는 값으로 변환합니다. 라디안과 도는 같은 것을 측정하는 2개의 다른 단위입니다. 원은 360도이면서 동시에 2*PI 라디안이기도 합니다. 또, 90° = PI/2 = 1.5707964 가 성립합니다. 이 함수는 현재 설정된 <a href="#/p5/angleMode">angleMode</a>를 반영하지 않습니다.
degrees__returns = 숫자: 변환된 각도
degrees__params__radians = 숫자: 도 단위로 변환할 라디안값
radians__description__0 = 도(degree) 측정값을 라디안(radian) 단위에 해당하는 값으로 변환합니다. 라디안과 도는 같은 것을 측정하는 2개의 다른 단위입니다. 원은 360도이면서 동시에 2*PI 라디안이기도 합니다. 또, 90° = PI/2 = 1.5707964 가 성립합니다. 이 함수는 현재 설정된 <a href="#/p5/angleMode">angleMode</a>를 반영하지 않습니다
radians__returns = 숫자: 변환된 각도
radians__params__degrees = 숫자: 라디안 단위로 변환할 도 값
angleMode__description__0 = p5의 현재 모드를 설정합니다. 기본 모드는 RADIANS(라디안) 입니다.
angleMode__params__mode = 상수: RADIANS 또는 DEGREES 중 하나
textAlign__description__0 = 텍스트 그리기에 대한 현재 정렬을 설정합니다. horizAlign(LEFT, CENTER, 또는 RIGHT)와 vertAlign(TOP, BOTTOM, CENTER, 또는 BASELINE)이라는 2개의 인수를 받습니다.
textAlign__description__1 = 매개변수 horizAlign은 <a href="#/p5/text">text()</a> 함수의 x값을, 매개변수 vertAlign은 y값을 참조합니다.
textAlign__description__2 = 따라서, textAlign(LEFT)는 텍스트의 왼쪽 가장자리를 <a href="#/p5/text">text()</a>에서 지정된 x값에 정렬합니다. textAlign(RIGHT, TOP)은 텍스트의 오른쪽 가장자리를 x값에, 텍스트의 가장자리 위쪽을 y값에 정렬합니다.
textAlign__description__3 = 
textAlign__description__4 = 
textAlign__params__horizAlign = 상수: 가로 정렬, LEFT, CENTER, 또는 RIGHT 중 하나
textAlign__params__vertAlign = 상수: 세로 정렬, TOP, BOTTOM, CENTER, 또는 BASELINE 중 하나
textLeading__description__0 = 텍스트 줄 사이의 간격을 픽셀 단위로 받아오거나 설정(get/set)합니다. 이 설정은 <a href="#/p5/text">text()</a> 함수 이후에 호출되는 모든 함수들에 적용됩니다.
textLeading__params__leading = 숫자: 픽셀 단위의 행간 간격
textSize__description__0 = 현재 폰트 크기를 받아오거나 설정(get/set)합니다. 설정된 크기는 <a href="#/p5/text">text()</a> 함수 이후에 호출되는 모든 함수들에 적용됩니다. 폰트 크기는 픽셀 단위로 측정됩니다.
textSize__params__theSize = 숫자: 픽셀 단위의 폰트 크기
textStyle__description__0 = 시스템 글꼴의 텍스트 스타일을 NORMAL, ITALIC, BOLD, 또는 BOLD ITALIC으로 받아오거나 설정(get/set)합니다. 참고: 해당 설정은 CSS 스타일에 의해 재정의될 수 있습니다. 시스템 글꼴이 아닌 글꼴(개방형, 트루 타입 등)을 사용할 경우, 스타일이 지정된 글꼴을 대신 불러옵니다.
textStyle__params__theStyle = 상수: 글꼴 설정, NORMAL, ITALIC, 또는 BOLD 중 하나
textWidth__description__0 = 문자 또는 텍스트 문자열의 너비를 계산하고 반환합니다.
textWidth__returns = 숫자
textWidth__params__theText = 문자열: 측정할 문자열
textAscent__description__0 = 폰트의 현재 크기를 증가한 값을 반환합니다. 증가값은 기준선에서 가장 높이 뻗어있는 문자까지의 거리를 픽셀 단위로 나타냅니다.
textAscent__returns = 숫자:
textDescent__description__0 = 폰트의 현재 크기를 감소한 값을 반환합니다. 감소값은 기준선에서 가장 밑으로 뻗어있는 문자까지의 거리를 픽셀 단위로 나타냅니다.
textDescent__returns = 숫자:
textWrap__description__0 = 텍스트 상자에서 텍스트의 줄 바꿈 (wrap)을 설정합니다. 이것를 하기 위해서는 텍스트 너비의 최댓값을 지정해야하며, 이것은 <a href="#/p5/text">text()</a> 함수의 <code>x2</code> 매개변수로 설정됩니다.
textWrap__description__1 = WORD의 줄 바꿈 형식은 줄을 띄어쓰기 부분에서만 바꿉니다. 즉, 캔버스 또는 텍스트 상자의 너비를 초과하며 띄움이 없는 하나의 문자열의 경우에는 원하는 너비를 넘어 캔버스의 경계에서 벗어납니다. 이럴 때, 벗어난 문자열의 나머지는 보이지 않습니다.
textWrap__description__2 = CHAR의 줄 바꿈 형식은 텍스트 상자 안에 있기 위해 필요한 부분에서 자동적으로 띄움 또는 글자에 상관없이 줄을 바꿉니다.
textWrap__description__3 = WORD의 형식이 기본값이며, 두 형식은 모두 수동적 줄 바꿈 (<code>\n</code>)에서 줄을 바꿉니다. 텍스트 상자의 높이 최댓값은 (<code>y2</code>)이며, 이는 형식에 상관없이 유효합니다. 즉, 텍스트가 상자 안 높이보다 많을 경우 남는 글자는 스크린에 표시되지 않습니다.
textWrap__returns = 문자열: wrapStyle (줄 바꿈 형식)
textWrap__params__wrapStyle = Constant: 줄 바꿈 형식, WORD 또는 CHAR
loadFont__description__0 = 파일 또는 URL로부터 폰트 파일(.otf, .ttf)을 불러오고, PFont 객체를 반환합니다. 
loadFont__description__1 = 이는 비동기적 메소드로, 스케치상의 다음 코드 줄이 실행되기 전에 함수 실행이 완료되지 않을 수 있습니다.
loadFont__description__2 = 폰트의 경로는 스케치상 링크된 HTML 파일을 기준으로 합니다. 브라우저의 내장 보안으로 인해 URL 또는 다른 원격 경로에서 폰트를 불러오는 것이 차단될 수 있습니다.
loadFont__description__3 = [1번째 예제] <a href="#/p5/preload">preload()</a> 함수 안에 loadJSON() 함수를 호출하여, 모든 불러오기 작업이 <a href="#/p5/setup">setup()</a>과 <a href="#/p5/draw">draw()</a> 함수가 호출되기에 앞서 완료되도록 처리합니다.
loadFont__description__4 = [2번째 예제] <a href="#/p5/preload">preload()</a> 함수 밖의 영역에서 콜백 함수를 2번째 예제와 같이 작성하여 객체를 처리할 수 있습니다.
loadFont__description__5 = 
loadFont__returns = p5.Font: p5.Font 객체
loadFont__params__path = 문자열: 불러올 파일명 또는 URL
loadFont__params__callback = 함수: (선택 사항) <a href="#/p5/loadFont">loadFont()</a>가 완료된 이후 실행될 함수
loadFont__params__onError = 함수: 에러 발생시 실행될 함수
text__description__0 = 화면에 텍스트를 그립니다. 1번째 매개변수로 지정된 정보를 추가 매개변수로 지정한 화면 위치에 나타냅니다. textFont() 함수로 별도 폰트를 지정하지 않을 경우, 기본 폰트가 사용됩니다. textSize()로 별도의 글자 크기를 지정하지 않을 경우, 기본 글자 크기가 사용됩니다. fill() 함수로 텍스트의 색상을 변경할 수 있습니다. stroke() 및 strokeWeight() 함수로 텍스트의 윤곽선을 변경할 수 있습니다.
text__description__1 = 텍스트는 textAlign() 함수의 매개변수에 따라 좌표를 기준으로 왼쪽, 오른쪽, 그리고 중심에서 텍스트를 그릴 수 있습니다.
text__description__2 = 매개변수 x2와 y2는 화면에 나타날 텍스트 상자의 영역을 정의하며, 문자열 데이터에만 사용됩니다. 이 매개변수들은 현재 rectMode() 설정에 따라 해석됩니다. 사용자가 지정한 텍스트 상자 크기에 맞지 않는 텍스트는 그려지지 않습니다. 별도의 x2와 y2를 지정하지 않을 경우, 기준선 정렬이 기본값으로 제공됩니다. 즉, 텍스트가 x와 y로부터 위쪽으로 그려집니다.
text__description__3 = WebGL: 개방형(opentype)/트루 타입(truetype) 폰트만 지원됩니다. 반드시 <a href="#/p5/loadFont">loadFont()</a> 메소드를 사용하여 폰트를 불러와야 합니다 (위의 예제 참고). stroke()는 현재 WebGL 모드에서 아무런 효과를 갖지 않습니다.
text__params__str = 문자열|객체|배열|숫자|불리언: 표시할 영숫자 기호
text__params__x = 숫자: 텍스트의 x좌표값
text__params__y = 숫자: 텍스트의 y좌표값
text__params__x2 = 숫자: (선택 사항) 기본값은 텍스트 상자의 너비, 자세한 사항은 rectMode()에 있습니다.
text__params__y2 = 숫자: (선택 사항) 기본값은 텍스트 상자의 높이, 자세한 사항은 rectMode()에 있습니다.
textFont__description__0 = <a href="#/p5/text">text()</a> 함수로 그릴 현재 폰트를 설정합니다.
textFont__description__1 = WebGL: <a href="#/p5/loadFont">loadFont()</a>를 통해 불러온 폰트만 지원합니다.
textFont__description__2 = 
textFont__returns = 객체: 현재 폰트 또는 p5 객체
textFont__params__font = 객체|문자열: <a href="#/p5/loadFont">loadFont()</a>로 불러온 폰트 또는 <a href = 'https://developer.mozilla.org/ko/docs/Learn/CSS/Styling_text/Fundamentals#Web_safe_fonts'>웹 안전 폰트</a>(일반적으로 모든 시스템에서 사용가능한 폰트)를 나타내는 문자열
textFont__params__size = 숫자: (선택 사항) 사용할 폰트 크기
append__description__0 = 사용 불가: append()는 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. <a href='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/push'>array.push(value)</a>를 대신 사용할 수 있습니다.
append__description__1 = 배열의 끝에 값을 추가하여, 그 길이를 1씩 확장합니다. Array.push()에 매핑합니다.
append__returns = 배열: 추가된 배열
append__params__array = 배열: 추가할 배열
append__params__value = 전부: 배열에 추가될 모든 것
arrayCopy__description__0 = 사용 불가: copyArray()는 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. 배열(또는 그 일부)을 다른 배열에 복사합니다. src 배열이 dst 배열에 복사되며, srcPosition으로 지정된 위치에서 시작하여 dstPosition으로 지정된 위치를 향합니다. 복사할 요소의 개수는 배열의 길이로 결정됩니다. 값을 복사하면 대상 배열의 기존값을 덮어씁니다. 덮어쓰기없이 값을 추가하려면 <a href="#/p5/concat">concat()</a>을 사용합니다.
arrayCopy__description__1 =
arrayCopy__description__2 =
concat__description__0 = 사용 불가: concat()은 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. <a href='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/concat'>arr1.concat(arr2)</a>를 대신 사용할 수 있습니다.
concat__description__1 =
reverse__description__0 = 사용 불가: reverse()는 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다.<a href='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse'>array.reverse()</a>를 대신 사용할 수 있습니다.
shorten__description__0 = 사용 불가: shorten()은 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. <a href='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/pop'>array.pop()</a>를 대신 사용할 수 있습니다.
shorten__description__1 =
shuffle__description__0 = 사용 불가: shuffle()은 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. <a hreh='https://stackoverflow.com/questions/6274339/how-can-i-shuffle-an-array'>자바스크립트의 배열 섞기</a>를 대신 사용할 수 있습니다.
shuffle__description__1 = <a href = 'https://bost.ocks.org/mike/shuffle/'>피셔-예이츠(Fisher-Yates) 셔플 알고리즘</a>을 구현합니다.
sort__description__0 = 사용 불가: sort()는 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. <a href='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/sort'>array.sort()</a>를 대신 사용할 수 있습니다.
sort__description__1 =
splice__description__0 = 사용 불가: splice()는 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. <a href='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/splice'>array.splice()</a>를 대신 사용할 수 있습니다.
splice__description__1 =
subset__description__0 = 사용 불가：subset()은 더이상 사용 불가하며, p5의 추후 버전에서 제거됩니다. <a href='https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/slice'>array.slice()</a>를 대신 사용할 수 있습니다.
subset__description__1 =
float__description__0 = 문자열을 실수(float), 즉 부동 소수점 숫자형 표현으로 변환합니다. 이 때, 문자열의 구문은 숫자 형식과 유사해야 합니다. 그렇지 않으면 NaN(숫자 아님)이 반환됩니다. 예컨대, float ("1234.56")은 1234.56으로 연산되지만, float ("giraffe")는 NaN을 반환합니다.
float__description__1 = 전달된 배열과 길이가 동일한 실수 배열이 반환됩니다.
float__returns = 숫자: 문자열의 부동 소수점 숫자형 표현
float__params__str = 문자열: 구문 분석할 실수 문자열
int__description__0 = 불리언(boolean), 문자열(string), 부동소수점 숫자(float)를 정수(int)형 표현으로 변환합니다. 전달된 배열과 길이가 동일한 정수 배열이 반환됩니다.
int__returns = 숫자: 값의 정수형 표현
int__params__n = 문자열|불리언|숫자: 구문 분석할 값
int__params__radix = 정수: (선택 사항) 기수로 변환 (기본값: 10)
int__params__ns = 배열: 구문 분석할 값
str__description__0 = 불리언(boolean), 문자열(string), 또는 숫자를 문자열 표현으로 변환합니다. 전달된 배열과 길이가 동일한 문자열 배열이 반환됩니다.
str__returns = 숫자: 값의 문자열 표현
str__params__n = 문자열|불리언|숫자: 구문 분석할 값
byte__description__0 = 숫자, 숫자의 문자열 표현, 또는 불리언을 바이트 표현으로 변환합니다. 바이트는 -128과 127 사이의 정수이므로, 이 범위를 벗어난 값은 상응하는 바이트 표현에 래핑됩니다. 숫자, 문자열, 또는 불리언 값의 배열을 전달하면, 동일한 길이의 바이트 배열이 반환됩니다.
byte__returns = 값의 바이트형 표현
byte__params__n = 문자열|불리언|숫자: 구문 분석할 값
byte__params__ns = 배열: 구문 분석할 값
char__description__0 = 숫자나 문자열을 단일 문자형(character) 문자열 표현으로 변환합니다. 사용자가 별도 지정한 문자열 매개변수의 경우, 먼저 정수로서 구문 분석된 후 단일 문자형 문자열로 변환됩니다. 숫자 또는 문자열 값의 배열을 전달하면, 동일한 길이의 단일 문자형 문자열이 반환됩니다.
char__returns = 값의 문자열 표현
char__params__n = 문자열|숫자: 구문 분석할 값
char__params__ns = 배열: 구문 분석할 값
unchar__description__0 = 단일 문자형 문자열 표현을 정수로 변환합니다. 단일 문자열 문자열 값의 배열을 전달하면, 동일한 길이의 정수 배열이 반환됩니다.
unchar__returns = 값의 정수형 표현
unchar__params__n = 문자열: 구문 분석할 값
unchar__params__ns = 배열: 구문 분석할 값
hex__description__0 = 숫자를 16진수 문자열로 변환합니다. 전달된 2번째 매개변수는 16진수 표기법으로 생성할 문자 개수를 설정합니다. 배열이 전달되면, 동일한 길이를 갖는 16진수 문자열을 반환합니다.
hex__returns = 값의 16진수 문자열 표현
hex__params__n = 숫자: 구문 분석할 값
hex__params__digits = 숫자:
hex__params__ns = 숫자 배열[]: 구문 분석할 숫자 값들 배열
unhex__description__0 = 16진수 문자열 표현을 정수로 변환합니다. 16진수 문자열 값의 배열을 전달하면, 동일한 길이의 정수 배열이 반환됩니다.
unhex__returns = 16진수 값의 정수형 표현
unhex__params__n = 문자열: 구문 분석할 값
unhex__params__ns = 배열: 구문 분석할 값
join__description__0 = 문자열 배열을 결합하여 하나의 문자열을 만듭니다. 각 문자열은 사용자가 구분자 매개변수로 지정한 문자를 통해 구분됩니다. 정수(int) 또는 실수(float) 배열을 결합하려면, 먼저 nf() 또는 nfs()를 통해 문자열로 변환되어야 합니다.
join__returns = 문자열: 결합된 문자열
join__params__list = 배열: 결합할 문자열 배열
join__params__separator = 문자열: 각 항목 사이에 놓일 문자열
match__description__0 = 이 함수는 정규표현식을 텍스트로 적용하고, 매치하는 그룹(괄호 안 요소들) 리스트를 문자열 배열로 반환합니다. 매치하는 내용이 없는 경우, null을 반환합니다. 정규표현식에 그룹이 지정되지 않지만 시퀀스가 일치하는 경우, 길이가 1인 배열(일치하는 텍스트가 배열의 첫 번째 요소인 배열)을 반환합니다.
match__description__1 = match() 함수 사용시, 결과값이 null인지를 확인합니다. 결과가 null이면 시퀀스도 일치하지 않는다는 뜻입니다. 시퀀스가 일치하는 경우, 배열이 반환됩니다.
match__description__2 = 그룹(괄호들로 지정)이 정규식 표현인 경우, 각각의 내용들이 배열로 반환됩니다. 매치하는 정규식 표현의 요소[0]는 모든 매칭 문자열을 반환하는데, 이 경우 매칭 그룹은 요소[1](첫 번째 그룹은 [1], 두번째 그룹은 [2])에서 시작합니다.
match__description__3 = 
match__description__4 = 
match__returns = 검색된 문자열들의 배열
match__params__str = 문자열: 검색할 문자열
match__params__regexp = 문자열: 매칭에 사용될 정규식 표현
matchAll__description__0 = 이 함수는 정규표현식을 텍스트로 적용하고, 매치하는 그룹(괄호 안 요소들)의 리스트를 2차원 문자열 배열로 반환합니다. 매치하는 내용이 없는 경우, null을 반환합니다. 정규표현식에 그룹이 지정되지 않지만 시퀀스가 일치하는 경우, 2차원 배열이 반환되지만 2번째 차원의 길이는 1이 됩니다.
matchAll__description__1 = matchAll() 함수 사용시, 결과값이 null인지를 확인합니다. 결과가 null이면 시퀀스도 일치하지 않는다는 뜻입니다. 시퀀스가 일치하는 경우, 2D 배열이 반환됩니다.
matchAll__description__2 = 그룹(괄호들로 지정)이 정규식 표현인 경우, 각각의 내용들이 배열로 반환됩니다. 카운터 변수 i가 있는 반복문을 가정할 때, 매칭되는 정규식의 [i][0] 요소는 모든 매칭 문자열을 반환하고, 매칭 그룹은 [i][1](첫 번째 그룹은 [i][1], 두번째 그룹은 [i][2], ...)에서 시작합니다.
matchAll__description__3 = 
matchAll__description__4 = 
matchAll__returns = 검색된 문자열들의 2D 배열
matchAll__params__str = 문자열: 검색할 문자열
matchAll__params__regexp = 문자열: 매칭에 사용될 정규식 표현
nf__description__0 = 숫자를 문자열로 형식화하는 기능으로, 실수(float) 형식과 정수(int) 형식의 두 가지 버전이 있습니다. 매개변수로는 각각 자릿수(digit), 소수점 기준 왼쪽 자릿수(left), 소수점 기준 오른쪽 자릿수(right)를 지정할 수 있으며, 이 매개변수 값들은 항상 양의 정수여야 합니다. <br>참고: left와 right 매개변수 사용시, 그 값이 현재 숫자의 자릿수 길이보다 클 경우 자릿수를 맞추기 위해 매개변수에 0이 붙습니다. 예를 들어, 현재 숫자가 123.2이고 전달된 left 매개변수가 4인 경우, 그 길이가 num의 정수 부분인 123의 길이(즉, 3)보다 큽니다. 이 경우, 0123.2가 반환됩니다. right 매개변수의 경우에도 마찬가지로 값이 3인 정수 123.200이 반환됩니다.
nf__returns = 문자열: 형식화된 문자열
nf__params__num = 숫자|문자열: 형식화할 숫자
nf__params__left = 정수|문자열: (선택 사항) 소수점 기준 왼쪽의 자릿수
nf__params__right = 정수|문자열: (선택 사항) 소수점 기준 오른쪽의 자릿수
nf__params__nums = 배열: 형식화할 숫자들
nfc__description__0 = 숫자를 문자열로 형식화하고 1000을 단위로 표시하기 위해 쉼표를 배치하는 기능입니다. 크게 두 가지 버전이 제공되는데, 하나는 정수(int)를 형식화하는 것이고, 다른 하나는 정수 배열을 형식화합니다. 매개변수의 값들은 항상 양의 정수여야 합니다.
nfc__returns = 문자열: 형식화된 문자열
nfc__params__num = 숫자|문자열: 형식화할 숫자
nfc__params__right = 정수|문자열: (선택 사항) 소수점 기준 오른쪽의 자릿수
nfc__params__nums = 배열: 형식화할 숫자들
nfp__description__0 = 숫자를 문자열로 형식화하는 기능입니다. nf()와 유사하나, 양수 앞에 '+'를, 음수 앞에 '-' 기호를 추가합니다. 실수(float) 형식과 정수(int) 형식의 두 가지 버전이 있습니다. 매개변수 중, 소수점 기준 왼쪽 자릿수(left)와 소수점 기준 오른쪽 자릿수(right)의 값은 항상 양의 정수여야 합니다.
nfp__returns = 문자열: 형식화된 문자열
nfp__params__num = 숫자: 형식화할 숫자
nfp__params__left = 정수: (선택 사항) 소수점 기준 왼쪽의 자릿수
nfp__params__right = 정수: (선택 사항) 소수점 기준 오른쪽의 자릿수
nfp__params__nums = 숫자 배열[]: 형식화할 숫자들
nfs__description__0 = 숫자를 문자열로 형식화하는 기능입니다. <a href="#/p5/nf">nf()</a>와 유사하나, '-' 기호가 붙은 음수와 정렬할 경우를 위해 '_(공백)' 기호를 양수 앞에 추가합니다. nfs()는 주로 음수가 아닌 숫자의 자릿수에 음수를 맞출 때 사용됩니다. (명확한 이해를 위해 예제를 참고할 수 있습니다.) 실수(float) 형식과 정수(int) 형식의 두 가지 버전이 있습니다. 매개변수 중, 자릿수(digit), 소수점 기준 왼쪽 자릿수(left)와 소수점 기준 오른쪽 자릿수(right)의 값은 항상 양의 정수여야 합니다. <br>중요: 정렬 결과는 사용자의 타입페이스에 따라 달라집니다. <br>참고: left와 right 매개변수 사용시, 그 값이 현재 숫자의 자릿수 길이보다 클 경우 자릿수를 맞추기 위해 매개변수에 0이 붙습니다. 예를 들어, 현재 숫자가 123.2이고 전달된 left 매개변수가 4인 경우, 그 길이가 num의 정수 부분인 123의 길이(즉, 3)보다 큽니다. 이 경우, 0123.2가 반환됩니다. right 매개변수의 경우에도 마찬가지로 값이 3인 정수 123.200이 반환됩니다.
nfs__returns = 문자열: 형식화된 문자열
nfs__params__num = 숫자: 형식화할 숫자
nfs__params__left = 정수: (선택 사항) 소수점 기준 왼쪽의 자릿수
nfs__params__right = 정수: (선택 사항) 소수점 기준 오른쪽의 자릿수
nfs__params__nums = 배열: 형식화할 숫자들
split__description__0 = <a href="#/p5/split">split()</a> 함수는 String.split()에 매핑되며, 구분 기호를 사용하여 문자 또는 문자열을 분할합니다. 분리 문자(delim) 매개변수는 분할 경계를 나타낼 기호를 지정합니다. 각 조각들을 포함한 문자열 배열이 반환됩니다.
split__description__1 = <a href="#/p5/splitTokens">splitTokens()</a> 역시 비슷하게 작동하나, 특정 문자나 시퀀스 대신 여러 개의 분리 문자를 분할한다는 점에서 다릅니다.
split__returns = 문자열 배열[]： 문자열들의 배열
split__params__value = 문자열: 분할될 문자열
split__params__delim = 문자열: 데이터 분할에 쓰이는 문자열
splitTokens__description__0 = <a href="#/p5/splitTokens">splitTokens()</a> 함수는 일명 '토큰(token)'이라 불리는, 하나 이상의 분리 문자를 사용하여 문자열을 분할합니다. 
splitTokens__description__1 = 분리 문자(delim) 매개변수를 지정하지 않는 경우, 공백 문자를 사용하여 분할합니다. 공백 문자는 탭(\t), 줄바꾸기(\n), 캐리지 반환(CR: Carriage Return)(\r), 폼 피드(FF: Form Feed)(\f), 그리고 공백을 포함합니다.
splitTokens__returns = 문자열 배열[]：문자열들의 배열
splitTokens__params__value = 문자열: 분할될 문자열
splitTokens__params__delim = 문자열: 데이터 분할에 쓰이는 문자열
trim__description__0 = 문자열 앞뒤의 공백 문자를 제거합니다. 공백, 캐리지 반환(CR: Carriage Return), 탭과 같은 표준 공백 문자 외에, 유니코드 'nbsp' 문자도 제거합니다.
trim__returns = 문자열: 트리밍된 문자열
trim__params__str = 문자열: 트리밍될 문자열
trim__params__strs = 배열: 트리밍될 문자열 배열
day__description__0 = p5.js는 컴퓨터의 시계와도 통신합니다. <a href="#/p5/day">day()</a>  함수는 현재 날짜를 1부터 31에 해당하는 값으로 반환합니다.
day__returns = 정수: 현재 날짜
hour__description__0 = p5.js는 컴퓨터의 시계와도 통신합니다. <a href="#/p5/hour">hour()</a> 함수는 현재 시를 0부터 23에 해당하는 값으로 반환합니다.
hour__returns = 정수: 현재 시
minute__description__0 = p5.js는 컴퓨터의 시계와도 통신합니다. <a href="#/p5/minute">minute()</a> 함수는 현재 분을 0부터 59에 해당하는 값으로 반환합니다.
minute__returns = 정수: 현재 분
millis__description__0 = 스케치의 시작(즉, <a href="#/p5/setup">setup()</a> 함수 호출 시점)이후의 시간을 밀리 세컨드(1/1000초)로 반환합니다. 주로 타이밍 이벤트나 애니메이션 시퀀스에 사용됩니다.
millis__returns = 숫자: 스케치의 시작 이후의 밀리 세컨드 단위 시간
month__description__0 = p5.js는 컴퓨터의 시계와도 통신합니다. <a href="#/p5/month">month()</a> 함수는 현재 월을 1부터 12에 해당하는 값으로 반환합니다.
month__returns = 정수: 현재 월
second__description__0 = p5.js는 컴퓨터의 시계와도 통신합니다. <a href="#/p5/second">second()</a> 함수는 현재 초를 0부터 59에 해당하는 값으로 반환합니다.
second__returns = 정수: 현재 초
year__description__0 = p5.js는 컴퓨터의 시계와도 통신합니다. <a href="#/p5/year">year()</a> 함수는 현재 년도를 정수로 반환합니다. (2014, 2015, 2016, 등)
year__returns = 정수: 현재 년도
plane__description__0 = 사용자가 지정한 너비와 높이로 평면을 그립니다.
plane__params__width = 숫자: (선택 사항) 평면의 너비값
plane__params__height = 숫자: (선택 사항) 평면의 높이값
plane__params__detailX = 정수: (선택 사항) x-차원상의 삼각 세분면 개수
plane__params__detailY = 정수: (선택 사항) y-차원상의 삼각 세분면 개수
box__description__0 = 사용자가 지정한 너비, 높이, 깊이로 상자를 그립니다.
box__params__width = 숫자: (선택 사항) 상자의 너비값
box__params__Height = 숫자: (선택 사항) 상자의 높이값
box__params__depth = 숫자: (선택 사항) 상자의 깊이값
box__params__detailX = 정수: (선택 사항) x-차원상의 삼각 세분면 개수
box__params__detailY = 정수: (선택 사항) y-차원상의 삼각 세분면 개수
sphere__description__0 = 사용자가 지정한 반지름으로 구를 그립니다.
sphere__description__1 = detailX와 detailY는 각각 구에 대한 x-차원과 y-차원상의 삼각 세분면 개수를 정합니다. 세분면이 많아질수록 구가 매끄러워집니다. detailX와 detailY 모두 권장 최대값은 24입니다. 24보다 높은 값을 사용하면 경고창이 뜨거나 브라우저가 느려질 수 있습니다.
sphere__params__radius = 숫자: (선택 사항) 원의 반지름
sphere__params__detailX = 정수: (선택 사항) x-차원상의 삼각 세분면
sphere__params__detailY = 정수: (선택 사항) y-차원상의 삼각 세분면
cylinder__description__0 = 사용자가 지정한 반지름과 높이로 원기둥을 그립니다.
cylinder__description__1 = detailX와 detailY는 각각 원기둥에 대한 x-차원과 y-차원상의 세분면 개수를 정합니다. 세분면이 많아질수록 원기둥이 매끄러워집니다. detailX와 detailY 모두 권장 최대값은 24입니다. 24보다 높은 값을 사용하면 경고창이 뜨거나 브라우저가 느려질 수 있습니다.
cylinder__params__radius = 숫자: (선택 사항) 원기둥의 높이
cylinder__params__height = 정수: (선택 사항) x-차원상의 세분면 개수, 기본값은 24
cylinder__params__detailX = 정수: (선택 사항) y-차원상의 세분면 개수, 기본값은 1
cylinder__params__detailY = 불리언: (선택 사항) 원기둥의 밑바닥면을 그릴 지의 여부
cylinder__params__bottomCap = 불리언: (선택 사항) 원기둥의 밑면을 그릴 지의 여부
cylinder__params__topCap = 불리언: (선택 사항) 원기둥의 윗면을 그릴 지의 여부
cone__description__0 = 사용자가 지정한 반지름과 높이로 원뿔을 그립니다.
cone__description__1 = detailX와 detailY는 각각 원뿔에 대한 x-차원과 y-차원상의 세분면 개수를 정합니다. 세분면이 많아질수록 원뿔이 매끄러워집니다. detailX의 권장 최대값은 24입니다. 24보다 높은 값을 사용하면 경고창이 뜨거나 브라우저가 느려질 수 있습니다.
cone__params__radius = 숫자: (선택 사항) 밑표면의 반지름
cone__params__height = 숫자: (선택 사항) 원뿔의 높이
cone__params__detailX = 정수: (선택 사항) x-차원상의 세분면 개수, 기본값은 24
cone__params__detailY = 정수: (선택 사항) y-차원상의 세분면 개수, 기본값은 1
cone__params__cap = 불리언: (선택 사항) 원뿔의 밑바닥면을 그릴 지의 여부
ellipsoid__description__0 = 사용자가 지정한 반지름으로 타원면을 그립니다.
ellipsoid__description__1 = detailX와 detailY는 각각 x-차원과 y-차원상의 세분면 개수를 정합니다. 세분면이 많아질수록 타원면이 매끄러워집니다. 가급적 detailX와 detailY의 값이 150을 넘어가면 브라우저가 중단될 수 있습니다.
ellipsoid__params__radiusx = 숫자: (선택 사항) 타원면의 x-반지름값
ellipsoid__params__radiusy = 숫자: (선택 사항) 타원면의 y-반지름값
ellipsoid__params__radiusz = 숫자: (선택 사항) 타원면의 z-반지름값
ellipsoid__params__detailX = 정수: (선택 사항) 세분면의 개수, 기본값은 24
ellipsoid__params__detailY = 정수: (선택 사항) 분점의 개수. 타원이 분점이 많을수록 곡선이 더욱 부드러워집니다. 기본값은 16입니다. 150 이상의 정수는 브라우저를 멈출 우려가 있으니 피하는 것을 권장합니다.
torus__description__0 = 사용자가 지정한 반지름과 튜브 반지름으로 원환을 그립니다.
torus__description__1 = detailX와 detailY는 각각 원환에 대한 x-차원과 y-차원상의 세분면 개수를 정합니다. 세분면이 많아질수록 원환이 매끄러워집니다. detailX과 detailY의 권장 최대값은 각각 24와 16입니다. 4나 6처럼 조금 더 적은 값으로 설정하면, 원환이 아닌 새로운 모양을 만들 수 있습니다.
torus__params__radius = 숫자: (선택 사항) 전체 원환의 반지름
torus__params__tubeRadius = 숫자: (선택 사항) 튜브의 반지름
torus__params__detailX = 정수: (선택 사항) x-차원상의 세분면 개수, 기본값은 24
torus__params__detailY = 정수: (선택 사항) y-차원상의 세분면 개수, 기본값은 16
orbitControl__description__0 = 마우스 또는 트랙 패드로 3D 스케치 주위를 움직일 수 있습니다. 마우스 왼쪽 버튼을 클릭 후 드래그하면 스케치 중심을 기준으로 카메라 위치가 회전합니다. 마우스 오른쪽 버튼을 클릭 후 드래그하면 회전없이 카메라 위치가 이동합니다. 마우스 휠(스크롤)을 사용하면 카메라 위치가 스케치와 더 가까워지거나 멀어집니다. 함수 호출시, x축과 y축상의 마우스 이동에 대한 민감도를 매개변수를 사용할 수 있습니다. 별도로 지정한 매개변수없이 함수를 호출하면 orbitControl(1,1)과 동일한 효과를 갖습니다. 민감도 매개변수를 음수로 입력하면 각 축의 이동 방향을 지정할 수 있습니다.
orbitControl__params__sensitivityX = 숫자: (선택 사항) X축상의 마우스 이동에 대한 민감도
orbitControl__params__sensitivityY = 숫자: (선택 사항) Y축상의 마우스 이동에 대한 민감도
orbitControl__params__sensitivityZ = 숫자: (선택 사항) Z축상의 마우스 이동에 대한 민감도
debugMode__description__0 = debugMode()는 3D 스케치 상의 '지면'을 표현하는 그리드와 더불어, +X, +Y, +Z 방향을 나타내는 좌표축 아이콘을 추가 시각화합니다. 별도로 지정한 매개변수없이 함수를 호출하면, 기본 그리드와 좌표축 아이콘이 생성됩니다. 또는, 위의 예제처럼 별도의 매개변수를 지정하여 그리드/좌표축의 위치와 크기를 조정할 수 있습니다. 그리드는 가장 마지막으로 사용된 윤곽선(stroke)의 색과 두께로 그려집니다. 선에 대한 매개변수를 지정하려면, <a href="#/p5/draw">draw()</a> 반복문이 끝나기 직전에 stroke() 함수와 strokeWeight() 호출하면 됩니다.
debugMode__description__1 = 기본적으로, 그리드는 XZ 평면을 따라 스케치의 원점(0,0,0)을 통과하며, 좌표축 아이콘은 원점에서 상쇄(offset)됩니다. 그리드 및 좌표축 아이콘 모두 현재 캔버스 크기에 따라 그 크기가 조정됩니다. 그리드는 기본 카메라 뷰와 평행하게 실행됩니다. 따라서, 그리드를 전체적으로 조망하려면, debugMode와 orbitControl을 함께 사용하면 됩니다.
debugMode__description__2 = 
debugMode__params__mode = 상수: GRID 또는 AXES 중 하나
debugMode__params__gridSize = 숫자: (선택 사항) 그리드 한 변의 크기
debugMode__params__gridDivisions = 숫자: (선택 사항) 그리드 분할 개수
debugMode__params__xOff = 숫자: (선택 사항) 원점(0,0,0)으로부터의 X축 상쇄값
debugMode__params__yOff = 숫자: (선택 사항) 원점(0,0,0)으로부터의 Y축 상쇄값
debugMode__params__zOff = 숫자: (선택 사항) 원점(0,0,0)으로부터의 Z축 상쇄값
debugMode__params__axesSize = 숫자: (선택 사항) 좌표축 아이콘 크기
debugMode__params__gridXOff = 숫자: (선택 사항)
debugMode__params__gridYOff = 숫자: (선택 사항)
debugMode__params__gridZOff = 숫자: (선택 사항)
debugMode__params__axesXOff = 숫자: (선택 사항)
debugMode__params__axesYOff = 숫자: (선택 사항)
debugMode__params__axesZOff = 숫자: (선택 사항)
noDebugMode__description__0 = 3D 스케치의 debugMode() 실행을 종료합니다.
ambientLight__description__0 = 색상을 갖는 앰비언트 라이트를 생성합니다. 앰비언트 라이트는 별도의 광원없이 캔버스의 모든 영역에서 나오는 조명을 뜻합니다.
ambientLight__params__v1 = 숫자: 현재 색상 범위에 따른 빨강값 또는 색조값
ambientLight__params__v2 = 현재 색상 범위에 따른 초록값 또는 채도값
ambientLight__params__v3 = 현재 색상 범위에 따른 파랑값 또는 밝기값
ambientLight__params__alpha = 숫자: (선택 사항) 알파값
ambientLight__params__value = 문자열: 색상 문자열
ambientLight__params__gray = 숫자: 회색값
ambientLight__params__values = 숫자 배열[]: 색상의 R, G, B & 알파값 성분을 포함한 배열
ambientLight__params__color = p5.Color: 앰비언트 라이트 색상
specularColor__description__0 = 스페큘러 재질(material)과 조명에 쓰이는 스페큘러 하이라이트 색상을 설정합니다.
specularColor__description__1 = 이 메소드를 specularMaterial() 및 shininess() 함수에 결합하여 스페큘러 하이라이트를 설정할 수 있습니다. 기본값은 흰색, 즉 (255,25,255)이며, specularMaterial() 함수 이전에 메소드가 호출되지 않을 경우 사용됩니다.
specularColor__description__2 = 참고: specularColor는 프로세싱 함수 <a href='https://processing.org/reference/lightSpecular_.html'>lightSpecular</a>와 동읠한 효과를 갖습니다.
specularColor__params__v1 = 숫자: 현재 색상 범위에 따른 빨강값 또는 색조값
specularColor__params__v2 = 숫자: 현재 색상 범위에 따른 초록값 또는 채도값
specularColor__params__v3 = 숫자: 현재 색상 범위에 따른 파랑값 또는 밝기값
specularColor__params__value = 문자열: 색상 문자열
specularColor__params__gray = 숫자: 회색값
specularColor__params__values = 숫자 배열[]: 색상의 R, G, B & 알파값 성분을 포함한 배열
specularColor__params__color = p5.Color: 앰비언트 라이트 색상
directionalLight__description__0 = 색상과 방향을 갖는 디렉셔널 라이트를 생성합니다.
directionalLight__description__1 = 한 번에 최대 5개의 directionalLight를 활성화할 수 있습니다.
directionalLight__params__v1 = 숫자: (현재 색상 모드에 따른) 빨강값 또는 색조값
directionalLight__params__v2 = 숫자: 초록값 또는 채도값
directionalLight__params__v3 = 숫자: 파랑값 또는 밝기값
directionalLight__params__position = p5.Vector：조명의 방향
directionalLight__params__color = 숫자 배열[]|문자열|p5.Color: 색상 배열, CSS 색상 문자열, 또는 p5.Color 값
directionalLight__params__x = 숫자: x축 방향
directionalLight__params__y = 숫자: y축 방향
directionalLight__params__z = 숫자: z축 방향
pointLight__description__0 = 색상과 조명 위치를 갖는 포인트 라이트를 생성합니다.
pointLight__description__1 = 한 번에 최대 5개의 pointlLight를 활성화할 수 있습니다.
pointLight__params__v1 = 숫자: (현재 색상 모드에 따른) 빨강값 또는 색조값
pointLight__params__v2 = 숫자: 초록값 또는 채도값
pointLight__params__v3 = 숫자: 파랑값 또는 밝기값
pointLight__params__x = 숫자: x축 위치
pointLight__params__y = 숫자: y축 위치
pointLight__params__z = 숫자: z축 위치
pointLight__params__position = p5.Vector: 조명의 위치
pointLight__params__color = 숫자 배열[]|문자열|p5.Color: 색상 배열, CSS 색상 문자열, 또는 p5.Color 값
lights__description__0 = 기본 앰비언트 라이트와 디렉셔널 라이트를 설정합니다. 기본값은  ambientLight(128, 128, 128)과 directionalLight(128, 128, 128, 0, 0, -1)입니다. 반복 프로그램에서 조명의 지속성을 확보하려면 조명을 <a href="#/p5/draw">draw()</a> 안에 작성해야 합니다. 반복 프로그램의 <a href="#/p5/setup">setup()</a> 안에 작성할 경우, 반복문의 최초 실행시에만 조명 효과가 발생합니다.
lightFalloff__description__0 = 포인트 라이트의 감소율을 설정합니다. 코드 내에서 생성된 요소에만 영향을 줍니다. 기본값은 lightFalloff (1.0, 0.0, 0.0)이며, 사용자가 지정한 매개변수를 다음의 감소량 계산 방정식에서 사용할 수 있습니다:
lightFalloff__description__1 = d = 조명 위치에서 꼭짓점 위치까지의 거리
lightFalloff__description__2 = 감소량 = 1 / (CONSTANT + d * LINEAR + ( d * d ) * QUADRATIC)
lightFalloff__params__constant = 숫자: 감소량 결정을 위한 상수값
lightFalloff__params__linear = 선형 숫자: 감소량 결정을 위한 선형값
lightFalloff__params__quadratic = 2차 숫자: 감소량 결정을 위한 2차값
spotLight__description__0 = 사용자가 지정한 색상, 위치, 조명 방향, 각도, 농도로 스포트라이트를 생성합니다. 여기서의 '각도'는 스포트라이트 원뿔의 개구부에 대한 각도를 의미합니다. 농도는 빛을 중앙으로 집중시키는 값을 뜻합니다. 각도와 농도는 모두 선택 사항이나, 농도 지정을 위해 각도를 반드시 지정해야 합니다.
spotLight__description__1 = 한 번에 최대 5개의 spotLight를 활성화할 수 있습니다.
spotLight__params__v1 = 숫자: (현재 색상 모드에 따른) 빨강값 또는 색조값
spotLight__params__v2 = 숫자: 초록값 또는 채도값
spotLight__params__v3 = 숫자: 파랑값 또는 밝기값
spotLight__params__x = 숫자: x축 위치
spotLight__params__y = 숫자: y축 위치
spotLight__params__z = 숫자: z축 위치
spotLight__params__rx = 숫자: 조명의 x축 방향
spotLight__params__ry = 숫자: 조명의 y축 방향
spotLight__params__rz = 숫자: 조명의 z축 방향
spotLight__params__angle = 숫자: (선택 사항) 각도 매개변수. 기본값은 PI/3
spotLight__params__conc = 숫자: (선택 사항) 농도 매개변수. 기본값은 100
spotLight__params__color = 숫자 배열[]|문자열|p5.Color: 색상 배열, CSS 색상 문자열, 또는 p5.Color 값
spotLight__params__position = p5.Vector: 조명의 위치
spotLight__params__direction = p5.Vector: 조명의 방향
noLights__description__0 = noLights() 함수 호출 이후에 렌더링된 재질(material)들로부터 모든 조명을 제거합니다. 모든 후속 메소드에 영향을 줍니다. noLights() 이후에 작성된 조명 메소드를 호출할 경우, 스케치상 조명이 다시 활성화됩니다.
loadModel__description__0 = OBJ 또는 STL 파일로부터 3D 모델을 불러옵니다. 
loadModel__description__1 = loadModel() 함수는 반드시 <a href="#/p5/preload">preload()</a> 함수 안에 작성되어야 하며, 이로써 3D 모델을 코드 실행에 앞서 온전히 불러올 수 있습니다. 
loadModel__description__2 = OBJ와 STL 파일 형식의 한계 중 하나는 빌트인 스케일 기능이 제공되지 않는다는 것입니다. 즉, 파일을 불러오는 소프트웨어 프로그램에 따라 3D 모델의 크기가 상이해집니다. 3D 모델이 보이지 않는다면 loadModel() 함수에 표준화된 매개변수인 true를 입력할 수 있습니다. 또한 불러온 3D 모델의 크기는 scale() 함수로 변경할 수 있습니다.
loadModel__description__3 = 색상이 지정된 STL 파일은 현재 지원하지 않아, 색상 요소가 제거된 상태로 렌더링될 수 있습니다.
loadModel__returns = p5.Geometry: p5.Geometry 객체
loadModel__params__path = 문자열: 불러올 3D 모델의 파일 경로
loadModel__params__normalize = 불리언: 참(true)이면, 3D 모델을 표준화된 크기로 불러오기
loadModel__params__successCallback = 함수(p5.Geometry): (선택 사항) 3D 모델을 불러온 뒤 일회적으로 호출되는 함수로, 3D 모델 객체를 전달.
loadModel__params__failureCallback = 함수(Event): (선택 사항) 3D 모델 불러오기를 실패할 경우 이벤트 에러와 함께 호출
loadModel__params__fileType = 문자열: (선택 사항) 모텔의 파일형식 (<code>.stl</code>, <code>.obj</code>).
model__description__0 = 화면에 3D 모델을 렌더링합니다.
model__params__model = p5.Geometry: 렌더링할, 불러온 3D 모델
loadShader__description__0 = 버텍스 및 프래그먼트 셰이더 경로로부터 커스텀 셰이더를 불러옵니다. 셰이더 파일은 배경 화면과 비동기적으로 로드되므로, 이 메소드는 <a href="#/p5/preload">preload()</a>에서 사용해야 합니다.
loadShader__description__1 = 현재 3가지 유형의 셰이더를 지원합니다. p5는 셰이더상 정의된 매개변수 이름과 일치하는 버텍스, 법선(normal), 색상, 조명 속성을 자동으로 제공합니다.
loadShader__returns = p5.Shader: 지정된 버텍스 및 프래그먼트 셰이더 파일로부터 생성된 셰이더 객체
loadShader__params__vertFilename = 문자열: 버텍스 셰이더 소스 코드 파일의 경로
loadShader__params__fragFilename = 문자열: (선택 사항) 프래그먼트 셰이더의 소스 코드 파일 경로
loadShader__params__callback = 함수: loadShader()가 완료된 이후 실행될 함수. 성공시, 셰이더 객체를 1번재 인수로 전달
loadShader__params__errorCallback = 함수: (선택 사항) loadShader 내에서 에러 발생시 실행될 함수. 에러 발생시, 에러를 1번째 인수로 전달
createShader__returns = p5.Shader: 지정된 버텍스 및 프래그먼트 셰이더 파일로부터 생성된 셰이더 객체
createShader__params__vertSrc = 문자열: 버텍스 셰이더의 소스 코드
createShader__params__fragSrc = 문자열: 프래그먼트 셰이더의 소스 코드
shader__description__0 = <a href="#/p5/shader">shader()</a> 함수를 통해 WebGL 모드상의 도형을 커스텀 셰이더로 채울 수 있습니다. <a href="#/p5/loadShader">loadShader()</a>로 버텍스 및 프래그먼트 셰이더를 불러와 사용자 자체적으로 셰이더를 생성할 수 있습니다.
shader__params__s = p5.Shader: (선택 사항) 도형 렌더링에 사용하기 원하는 p5.Shader
resetShader__description__0 = 이 함수는 WebGL 모드 기본 셰이더를 복원합니다. resetShader() 이후에 실행되는 코드는 그 이전에 정의된 셰이더의 영향을 받지 않습니다. 반드시 <a href="#/p5/shader">shader()</a> 함수 이후에 실행되어야 합니다. 
normalMaterial__description__0 = 도형의 기본 재질(material)은 조명의 영향을 받지 않습니다. 반사성을 갖지 않으며, 종종 디버깅을 위한 자리표시자(placeholder)로 사용됩니다. X축을 향한 표면은 빨강, Y축을 향한 표면은 초록, Z축을 향한 표면은 파랑이 됩니다. 이 <a href='https://p5js.org/ko/examples/3d-materials.html'>예제</a>에서 사용가능한 모든 재질들을 확인할 수 있습니다.
texture__description__0 = 도형의 텍스처. 이 <a href='https://p5js.org/ko/examples/3d-materials.html'>예제</a>에서 사용가능한 모든 재질들을 확인할 수 있습니다.
texture__params__tex = p5.Image|p5.MediaElement|p5.Graphics: 텍스처로 렌더링할 2차원 그래픽
textureMode__description__0 = 텍스처 매핑을 위한 좌표 공간을 설정합니다. 기본 모드는 IMAGE로, 이미지의 실제 좌표를 나타냅니다. NORMAL은 0부터 1 사이의 정규화된 값의 공간을 나타냅니다. 이 함수는 WebGL 모드에서만 작동합니다.
textureMode__description__1 = 예를 들어, IMAGE 모드에서 100 x 200 픽셀 이미지를 사용할 경우, 이미지를 사각면(quad)의 전체 크기에 매핑하기 위해 점 (0,0) (100, 0) (100,200) (0,200)이 필요합니다. 동일한 매핑을 NORMAL 모드에서 할 경우 (0,0) (1,0) (1,1) (0,1)입니다.
textureMode__params__mode = 상수: IMAGE 또는 NORMAL 중 하나
textureWrap__description__0 = 전역 텍스처 래핑 모드를 설정합니다. UV가 0부터 1까지의 범위를 벗어날 때의 텍스처 동작을 제어합니다. CLAMP, REPEAT, MIRROR의 3가지 옵션이 있습니다.
textureWrap__description__1 = CLAMP는 텍스처의 가장자리 픽셀 경계를 확장합니다. REPEAT는 경계에 도달할 때까지 텍스처가 반복적으로 타일링되도록 합니다. MIRROR는 REPEAT와 유사하지만, 매 타일마다 텍스처를 뒤집는다는 점에서 다릅니다.
textureWrap__description__2 = REPEAT & MIRROR는 텍스처의 크기가 2의 배수 단위(128, 256, 512, 1024 등)인 경우에 한해서만 사용 가능합니다.
textureWrap__description__3 = 이 메소드는 그 이후에 작성된 textureWrap이 호출되기 전까지의 스케치 위 모든 텍스처에 영향을 줍니다.
textureWrap__description__4 = 1개의 인수만 지정할 경우, 해당 인수가 수직 및 수평축 모두에 적용됩니다.
textureWrap__params__wrapX = 상수: CLAMP, REPEAT, 또는 MIRROR 중 하나
textureWrap__params__wrapY = 상수: (선택 사항) CLAMP, REPEAT, 또는 MIRROR 중 하나
ambientMaterial__description__0 = 지정된 색상의 도형에 입힐 앰비언트 재질입니다. 앰비언트 재질은 앰비언트 라이트 아래에서 객체가 반사하는 색상을 정의합니다. 예를 들어, 객체의 앰비언트 재질이 순수 빨강이고 앰비언트 라이트가 순수 초록인 경우, 객체는 빛을 반사하지 않습니다. 이 <a href='https://p5js.org/ko/examples/3d-materials.html'>예제</a>에서 사용가능한 모든 재질들을 확인할 수 있습니다.
ambientMaterial__params__v1 = 숫자: 회색값, (현재 색상 모드에 따른) 빨강값 또는 색조값
ambientMaterial__params__v2 = 숫자: (선택 사항) 초록값 또는 채도값
ambientMaterial__params__v3 = 숫자: (선택 사항) 파랑값 또는 밝기값
ambientMaterial__params__color = 숫자 배열[]|문자열|p5.Color: 색상 배열, CSS 색상 문자열, 또는 p5.Color 값
emissiveMaterial__description__0 = 재질의 방사형 색상을 설정합니다. 여기서의 '방사형'은 사실상 잘못된 표현입니다. 주변 도형에도 영향을 미치는 조명을 직접 방사한다기 보다는, 마치 객체가 빛나는 것처럼 보이기 때문입니다. 방사형 재질은 별도의 조명이 없어도 화면상 최대 강도로 빛날 수 있습니다.
emissiveMaterial__params__v1 = 숫자: 회색값, (현재 색상 모드에 따른) 빨강값 또는 색조값
emissiveMaterial__params__v2 = 숫자: (선택 사항) 초록값 또는 채도값
emissiveMaterial__params__v3 = 숫자: (선택 사항) 파랑값 또는 밝기값
emissiveMaterial__params__a = 숫자 배열[]|문자열|p5.Color: 색상 배열, CSS 색상 문자열, 또는 p5.Color 값
emissiveMaterial__params__color = 숫자 배열[]|문자열|p5.Color: 색상, 색상 배열, CSS 색상 문자열
specularMaterial__description__0 = 지정된 색상의 도형에 입힐 스페큘러 재질입니다. 스페큘러 재질은 반짝이는 반사 재질입니다. 앰비언트 재질과 마찬가지로, 앰비언트 조명 아래에서 객체가 반사하는 색상을 정의합니다. 예를 들어, 객체의 스페큘러 재질이 순수 빨강이고 앰비언트 라이트가 순수 초록인 경우, 객체는 빛을 반사하지 않습니다. 스페큘러 재질은 포인트 라이트나 디렉셔널 라이트 등 모든 조명들의 광원 색상을 반영합니다. 이 <a href='https://p5js.org/ko/examples/3d-materials.html'>예제</a>에서 사용가능한 모든 재질들을 확인할 수 있습니다.
specularMaterial__params__gray = 숫자: 검정과 하양 값들 사이에 있는 숫자.
specularMaterial__params__alpha = 숫자: (선택 사항) 색상 범위(기본값: 0-255)에 대한 알파값
specularMaterial__params__v1 = 숫자: 회색값, (현재 색상 모드에 따른) 빨강값 또는 색조값
specularMaterial__params__v2 = 숫자: (선택 사항) 초록값 또는 채도값
specularMaterial__params__v3 = 숫자: (선택 사항) 파랑값 또는 밝기값
specularMaterial__params__color = 숫자 배열[]|문자열|p5.Color: 색상 배열, CSS 색상 문자열, 또는 p5.Color 값
shininess__description__0 = 셰이더 표면의 광택 양을 설정합니다. specularMaterial()과 함께 사용하여 도형의 재질 속성을 설정할 수 있습니다. 기본값이자 최소값은 1입니다.
shininess__params__shine = 숫자: 광택의 양. 기본값은 1.
camera__description__0 = 3D 스케치의 카메라 위치를 설정합니다. 이 함수의 매개변수들은 카메라의 위치, 스케치의 중심(카메라가 가리키는 위치), 그리고 위쪽 방향(카메라의 오리엔테이션)을 정의합니다. 
camera__description__1 = 이 함수는 카메라 이동을 시뮬레이션하여, 객체를 다양한 각도에서 볼 수 있도록 합니다. 객체 자체가 아닌 카메라를 움직이는 점에 유의해야 합니다. 예를 들어, centerX 값이 양수인 경우, 카메라는 스케치의 우측으로 회전하여 마치 객체가 왼쪽으로 움직이듯 보이게 합니다.
camera__description__2 = 이 <a href = 'https://www.openprocessing.org/sketch/740258'>예제</a>에서 카메라의 위치 이동 방식이 자세하게 설명되어 있습니다.
camera__description__3 = 별도의 인수를 지정하지 않는 경우, 함수는 camera (0, 0, (height / 2.0) / tan (PI * 30.0 / 180.0), 0, 0, 0, 0, 1, 0)에 해당하는 기본 카메라를 생성합니다.
camera__description__4 = 
camera__description__5 = 
camera__description__6 = 
camera__params__x = 숫자: (선택 사항) x축에서의 카메라 위치값
camera__params__y = 숫자: (선택 사항) y축에서의 카메라 위치값
camera__params__z = 숫자: (선택 사항) z축에서의 카메라 위치값
camera__params__centerX = 숫자: (선택 사항) 스케치 중심의 x좌표값
camera__params__centerY = 숫자: (선택 사항) 스케치 중심의 y좌표값
camera__params__centerZ = 숫자: (선택 사항) 스케치 중심의 z좌표값
camera__params__upX = 숫자: (선택 사항) 카메라로부터 위쪽 방향의 x성분
camera__params__upY = 숫자: (선택 사항) 카메라로부터 위쪽 방향의 y성분
camera__params__upZ = 숫자: (선택 사항) 카메라로부터 위쪽 방향의 z성분
perspective__description__0 = 3D 스케치의 카메라 투시 투영법을 설정합니다. 이 투영법은 거리 단축 착시효과를 통해 깊이감을 나타냅니다. 카메라로부터 가까운 객체는 실제 크기로 보이고, 멀리 떨어진 객체는 더 작아 보입니다. 이 함수의 매개변수는 수직 시야, 종횡비(일반적으로, 너비/높이), 그리고 근거리 및 원거리에서 잘리는 평면을 통해 보이는 (즉, 카메라가 보는), 절두체 구도(카메라가 객체를 보는, 잘린 피라미드형 구도)를 정의합니다.
perspective__description__1 = 별도의 인수를 지정하지 않는 경우, 기본값은 perspective(PI/3.0, width/height, eyeZ/10.0, eyeZ10.0)과도 동일한 효과를 가지며, 여기서 eyeZ는((height/2.0) / tan(PI60.0/360.0))과 같습니다.
perspective__description__2 = 
perspective__params__fovy = 숫자: (선택 사항) 하단에서 상단에 이르는 카메라의 절두체형 수직 시야각, angleMode 단위에 해당
perspective__params__aspect = 숫자: (선택 사항) 카메라의 절두체형 종횡비
perspective__params__near = 숫자: (선택 사항) 절두 근거리 길이
perspective__params__far = 숫자: (선택 사항) 절두 원거리 길이
ortho__description__0 = 3D 스케치의 카메라 직교 투영법을 설정하고, 객체에 대한 상자 모양의 절두체 구도를 정의합니다. 이 투영법은 동일한 차원상의 객체들을 카메라로부터 떨어져있는 거리와 상관없이 모두 동일한 크기로 나타냅니다. 이 함수의 매개변수는 좌우가 최소 및 최대 x값이고, 상하가 최소 및 최대 y값이며, 원근이 최소 및 최대 z값인 절두체 구도를 지정합니다. 별도의 인수를 지정하지 않을 경우, 기본값은 ortho(-width/2, width/2, -height/2, height/2)입니다.
ortho__params__left = 숫자: (선택 사항) 카메라 절두체의 왼쪽 평면
ortho__params__right = 숫자: (선택 사항) 카메라 절두체의 오른쪽 평면
ortho__params__bottom = 숫자: (선택 사항) 카메라 절두체의 아래쪽 평면
ortho__params__top = 숫자: (선택 사항) 카메라 절두체의 위쪽 평면
ortho__params__near = 숫자: (선택 사항) 카메라 절두체의 가까운 평면
ortho__params__far = 숫자: (선택 사항) 카메라 절두체의 먼 평면
frustum__description__0 = 주어진 인수로 퍼스펙티브 매트릭스 (perspective matrix)를 만듧니다.
frustum__description__1 = 절두체 (frustum)은 피라미드 모양의 상단을 바닥과 평행한 면에서 잘라낸 기하학적 모양입니다. 이 피라미드의 위에 보는 사람의 눈이 있다 가정하면서 여섯 면은 장면의 특정 부분만 렌더링하는데에 쓰이는 가상의 면인 경계면 (clipping plane)입니다. 3D로 렌더링 할 시, 이 여섯 면 안에 있는 물체는 보이며, 그 바깥에 있는 물체는 보이지 않습니다. 이 <https://docs.unity3d.com/kr/530/Manual/UnderstandingFrustum.html">링크</a>를 통해 더 자세히 알 수 있습니다.
frustum__description__2 = 절두체를 설정하면 렌더링되는 장면이 달라집니다. 이는 간단하게 <a href="https://p5js.org/reference/#/p5/perspective">perspective()</a> 함수를 통해 이룰 수도 있습니다.
frustum__params__left = 숫자: (선택 사항) 카메라 절두체의 왼쪽 면
frustum__params__right = 숫자: (선택 사항) 카메라 절두체의 오른쪽 면
frustum__params__bottom = 숫자: (선택 사항) 카메라 절두체의 밑 면
frustum__params__top = 숫자: (선택 사항) 카메라 절두체의 위 면
frustum__params__near = 숫자: (선택 사항) 카메라 절두체의 근거리 면
frustum__params__far = 숫자: (선택 사항) 카메라 절두체의 장거리 면
createCamera__description__0 = 새로운 p5.Camera 객체를 생성하고 렌더러에게 해당 카메라를 사용하도록 지시합니다. p5.Camera 객체를 반환합니다.
createCamera__description__1 = 새로운 카메라는 기본적 위치가 설정이 되며 (<a href="#/p5.Camera/camera">camera()</a> 참조), 기본적 관점도 설정됩니다 (<a href="#/p5.Camera/perspective">perspective()</a> 참조). 카메라 객체의 속성들은 <a href="#/p5.Camera">p5.Camera</a>의 메소드로 조정 가능합니다.
createCamera__description__2 = 모든 3D 스케치는 기본 카메라가 설정된 상태로 시작하는 점을 유의해야합니다. 이 카메라가 장면에 있는 유일한 케마라일 경우, 글로벌 메소드인 <a href="#/p5/camera">camera()</a>, <a href="#/p5/perspective">perspective()</a>, <a href="#/p5/ortho">ortho()</a>, 그리고 <a href="#/p5/frustum">frustum()</a>으로 조정 가능합니다.
createCamera__returns = p5.Camera: 새로 생성된 카메라 객체
setCamera__description__0 = rendererGL의 현재 카메라를 p5.Camera 객체로 설정합니다. 여러 카메라 간의 화면 전환이 가능합니다.
setCamera__params__cam = p5.Camera: p5.Camera 객체
setAttributes__description__0 = WebGL 그리기 컨텍스트 (Drawing Context)의 속성을 설정하여 WebGL 렌더러가 화면과 성능을 미세 조정할 수 있도록 합니다.
setAttributes__description__1 = WebGL 캔버스를 생성한 후에 이 함수를 호출하면 그리기 컨텍스트가 다시 초기화되는 점에 유의해야 합니다.
setAttributes__description__2 = 객체가 매개변수로 전달될 경우, 객체에 선언되지 않은 모든 속성은 기본값으로 처리됩니다.
setAttributes__description__3 = 사용한 가능한 속성은 다음과 같습니다: <br>alpha - 캔버스에 알파 버퍼가 있는지의 여부를 나타냅니다. 기본값은 참(true)입니다.
setAttributes__description__4 = depth - 그리기 버퍼 (drawing buffer)에 16비트 이상의 스텐실 버퍼가 있는지 여부를 나타냅니다.
setAttributes__description__5 = stencil - 그리기 버퍼에 8비트 이상의 스텐실 버퍼가 있는지 여부를 나타냅니다.
setAttributes__description__6 = antialias - 안티앨리어싱 기본값을 수행할지 여부를 나타냅니다. (Safari에서는 참)
setAttributes__description__7 = premultipliedAlpha - 그리기 버퍼에 포함된 색상이 미리 곱해진 알파 기본값을 포함하는 지의 여부에 대해, 페이지 컴포지터가 거짓 (false)으로 가정하고 있음을 나타냅니다.
setAttributes__description__8 = preserveDrawingBuffer - 참 (true)으로 설정될 경우, 그리기 버퍼들이 삭제되지 않고 작가의 의도적인 삭제나 편집이 없는 이상 값을 유지합니다. 기본값은 참입니다.
setAttributes__description__9 = perPixelLighting - 참으로 설정될 경우, 픽셀당 조명 (per-pixel lighting)이 조명 셰이더에 사용됩니다. 그렇지 않다면, 꼭짓점당 조명 (per-vertex lighting)이 사용됩니다. 기본값은 참입니다.
setAttributes__description__10 = 
setAttributes__description__11 = 
setAttributes__description__12 = 
setAttributes__params__key = 문자열: 속성명
setAttributes__params__value = 불리언: 명명된 속성의 새로운 값
setAttributes__params__obj = 객체: 주요값들의 쌍을 갖는 객체