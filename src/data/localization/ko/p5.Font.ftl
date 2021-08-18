description__0 = 폰트 조정을 위한 기본 클래스
params__pInst = P5: p5 인스턴스 포인터 (선택 사항)
font__description__0 = 기본 개방형 글꼴 구현
textBounds__description__0 = 이 폰트로 지정된 텍스트 문자열에 대한 바운딩 박스를 반환합니다. (현재 텍스트 한 줄씩만 지원합니다.)
textBounds__returns = Object: a rectangle object with properties: x, y, w, h
textBounds__params__line = String: a line of text
textBounds__params__x = Number: x-position
textBounds__params__y = Number: y-position
textBounds__params__fontSize = Number: (Optional) font size to use (optional) Default is 12.
textBounds__params__options = Object: (Optional) opentype options (optional)  opentype fonts contains alignment and baseline options.  Default is 'LEFT' and 'alphabetic'
textToPoints__description__0 = 지정된 텍스트 경로를 따르는 점들의 배열을 계산합니다.
textToPoints__returns = Array: an array of points, each with x, y, alpha (the path angle)
textToPoints__params__txt = String: a line of text
textToPoints__params__x = Number: x-position
textToPoints__params__y = Number: y-position
textToPoints__params__fontSize = Number: font size to use (optional)
textToPoints__params__options = Object: (Optional) an (optional) object that can contain: sampleFactor - the ratio of path-length to number of samples (default=.1); higher values yield more points and are therefore more precise simplifyThreshold - if set to a non-zero value, collinear points will be be removed from the polygon; the value represents the threshold angle to use when determining whether two edges are collinear
