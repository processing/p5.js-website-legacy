description__0 = Cada color almacena el modo de color y los niveles máximos que se aplicaron en el momento de su construcción. Estos se utilizan para interpretar los argumentos de entrada (en la construcción y más tarde para esa instancia de color) y para formatear el output, p. ej. cuando se solicita la <a href="#/p5/saturation">saturation()</a>.
description__1 = Internamente almacenamos una matriz que representa los valores ideales de RGBA en forma de coma flotante, normalizada de 0 a 1. A partir de esto, calculamos el color de pantalla más cercano (niveles de RGBA de 0 a 255) y lo exponemos al renderizador.
description__2 = También almacenamos en caché normalizado, componentes de coma flotante de color flotante del color en varias representaciones a medida que se calculan. Esto se hace para evitar repetir una conversión que ya se ha realizado.
setRed__description__0 = La función setRed establece el componente rojo de un color. El rango depende de su modo de color, en el modo RGB predeterminado está entre 0 y 255.
setRed__params__red = Number: the new red value
setGreen__description__0 = La función setGreen establece el componente verde de un color. El rango depende de su modo de color, en el modo RGB predeterminado está entre 0 y 255.
setGreen__params__green = Number: the new green value
setBlue__description__0 = La función setBlue establece el componente azul de un color. El rango depende de su modo de color, en el modo RGB predeterminado está entre 0 y 255.
setBlue__params__blue = Number: the new blue value
setAlpha__description__0 = La función setAlpha establece el valor de transparencia (alfa) de un color. El rango depende de su modo de color, en el modo RGB predeterminado está entre 0 y 255.
setAlpha__params__alpha = Number: the new alpha value
