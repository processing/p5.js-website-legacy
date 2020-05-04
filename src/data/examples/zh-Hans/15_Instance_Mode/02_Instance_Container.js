/*
 * @norender
 * @name 实例容器
 * @description 第二个参数可以是你指定作为画布的默认容器，也可以是任何
 你想要添加此 p5 实例容器至的元素。可以是带 ID 的 html 元素， 也可以是 html 节点本身。
 *
 * 以下列举了三种选择 DOM 元素作为容器的方法。 
 * 所有由 p5 创建的 DOM 元素（画布，按钮，div 等）都会被添加到指定的 DOM 元素上，
 * 这个指定元素就是调用 p5() 时传递的第二个参数。
 */
<!-- 传递容器元素的 ID -->
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


<!-- 传递指向容器元素的指标 -->
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


<!-- 创建一个元素，添加至 body 并传递指标 -->
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


<!-- 创建一个元素，传递指针并添加到 body -->
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