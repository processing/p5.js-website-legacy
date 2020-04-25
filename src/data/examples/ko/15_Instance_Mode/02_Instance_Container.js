/*
 * @norender
 * @name 인스턴스 컨테이너
 * @description 캔버스에 기본 컨테이너를 지정하거나,
 * 두번째 인수로 추가될 수 있는 모든 요소를 지정할 수 있습니다. 
 * HTML의 요소 id나 HTML 노드 그 자체도 지원됩니다.
 * 컨테이너 DOM 요소를 지정하는 세 가지 다른 방법이 있습니다.
 * p5로 만들어진 모든 DOM 요소(캔버스, 버튼, div 등)는
 * p5()함수 호출시 두 번째 인수로 지정된 DOM 요소에 담기게 됩니다.
 */
<!-- pass in the ID of the container element -->
<!DOCTYPE html>
<head>
  <script src='p5.js'></script>
</head>
<body>
  <div id='container'></div>
  <script>
  let sketch = function(p) {
    p.setup = function(){
      p.createCanvas(100, 100);
      p.background(0);
    }
  };
  new p5(sketch, 'container');
  </script>
</body>
</html>


<!-- pass in a pointer to the container element -->
<!DOCTYPE html>
<head>
  <script src='p5.js'></script>
</head>
<body>
  <div id='container'></div>
  <script>
  let sketch = function(p) {
    p.setup = function(){
      p.createCanvas(100, 100);
      p.background(0);
    }
  };
  new p5(sketch, window.document.getElementById('container'));
  </script>
</body>
</html>


<!-- create an element, attach it to the body,
and pass in a pointer -->
<!DOCTYPE html>
<head>
  <script src='p5.js'></script>
</head>
<body>
  <script>
  let sketch = function(p) {
    p.setup = function(){
      p.createCanvas(100, 100);
      p.background(0);
    }
  };
  let node = document.createElement('div');
  window.document.getElementsByTagName('body')[0].appendChild(node);
  new p5(sketch, node);
  </script>
</body>
</html>


<!-- create an element, pass in a pointer,
and attach it to the body -->
<!DOCTYPE html>
<head>
  <script src='p5.js'></script>
</head>
<body>
  <script>
  let sketch = function(p) {
    p.setup = function(){
      p.createCanvas(100, 100);
      p.background(0);
    }
  };
  let node = document.createElement('div');
  new p5(sketch, node);
  window.document.getElementsByTagName('body')[0].appendChild(node);
  </script>
</body>
</html>