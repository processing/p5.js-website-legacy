/*
 * @norender
 * @name Contenedor de instancia
 * @description Opcionalmente, puedes especificar un contenedor por defecto para el lienzo
 * y otros elementos que anexes con un segundo argumento. Puedes darle la ID
 * de un elemento en tu código html, o incluso un nodo html.
 *
 * Aquí hay tres opciones diferentes Para seleccionar un elemento contenedor de DOM.
 * Todos los elementos DOM (lienzos, botones, divisiones, etc) creados por p5
 * serán adjuntados al elemento DOM especificado como el segundo argumento de la llamada a la función p5().
 */
<!-- entrega la ID del elemento contenedor -->
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


<!-- pasa un puntero al elemento contenedor -->
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


<!-- crea un elemento, adjúntalo al cuerpo(body), y pasa un puntero -->
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


<!-- crea un elemento, pasa un puntero,
y adjúntalo al cuerpo (body) -->
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
