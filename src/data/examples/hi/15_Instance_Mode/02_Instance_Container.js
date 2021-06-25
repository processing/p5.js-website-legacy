/*
  * @norender
  * @name इंस्टेंस कंटेनर
  * @description वैकल्पिक रूप से, आप कैनवास के लिए एक डिफ़ॉल्ट कंटेनर निर्दिष्ट कर सकते हैं
  * और किसी अन्य तत्व को दूसरे तर्क के साथ जोड़ने के लिए। आप दे सकते हैं
  * आपके html में किसी तत्व की आईडी, या स्वयं एक html नोड।
  *
  * कंटेनर चुनने के लिए यहां तीन अलग-अलग विकल्प दिए गए हैं
  * डोम तत्व। p5 द्वारा बनाए गए सभी DOM तत्व (कैनवास, बटन, डिव, आदि)
  * को दूसरे तर्क के रूप में निर्दिष्ट DOM तत्व से जोड़ा जाएगा
  * p5 () कॉल।
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