#get started

#empezar

Esta página te guía a través del proceso de configurar un projecto p5.js y hacer tu primer bosquejo. Si estás usando el editor de p5, puedes avanzar a la sección "Tu primer bosquejo". Los usuarios de Processing pueden revisar el tutorial de transición desde Processing.

#Descarga y configuración de archivos

La manera más fácil de empezar es usar el ejemplo en blanco contenido en la descarga de p5.js completo.

Si revisas el archivo index.html, te darás cuenta que tiene un enlace al archivo p5.js. Si quieres usar la versión liviana (comprimida para una carga más rápida de la página), cambia el enlace a p5.min.js.

Alternativamente, puedes enlazar a un archivo p5.js alojado en línea. Todas las versiones de p5.js están alojadas en CDN ("Red de Entrega de Contenidos", por sus siglas en inglés "Content Delivery Network"). Puedes ver un historial de estas versiones aquí: p5.js CDN. En este caso, cambia el enlace a:

#Ambiente

Puedes usar el editor de código que quieras. Las instrucciones para configurar Sublime Text 2 están incluidas más abajo, otras buenas opciones de editor son Brackets, Atom y Lime Text. (Un editor oficial de p5 está en desarrollo, puedes probar la versión beta aquí).

Abre Sublime. Abre el menú de Archivo (File) y selecciona Abrir... (Open...) y luego
selecciona el directorio donde tus archivos html y js están ubicados. En la barra lateral izquierda, ahora deberías ver el nombre del directorio en la parte superior, con una lista de todos los archivos ahí contenidos a continuación.

Haz click en tu archivo sketch.js y se abrirá a la derecha, donde puedes editarlo.

Abre el archivo index.html en tu navegador haciendo doble click en él en tu explorador de archivos o escribe file:////ubicacion//del//archivo//html en la barra de direcciones para ver tu bosquejo.

#Tu primer bosquejo

En tu editor, escribe lo siguiente:

Esta línea de código significa "dibuja una elipse, con su centro 50 pixeles a la izquierda del borde izquierdo y 50 pixeles abajo del borde superior, con un ancho y alto de 80 pixeles".

Graba tu bosquejo y refresca la página en tu navegador. Si has escrito todo correctamente, verás esto aparecer:

Si no lo escribiste correctamente, podría no aparecer nada. Si esto ocurre, asegúrate de haber copiado el código del ejemplo de manera exacta: los números deben estar contenidos entre paréntesis y tener comas entre cada uno de ellos, y la línea debe terminar con un punto y coma.

Una de las cosas más difíciles de empezar a programar es que tienes que ser muy específico con la sintaxis. El navegador no es siempre lo suficientemente inteligente como para saber lo que quieres decir, y puede ser muy exigente con la puntuación. Te acostumbrarás a esto con un poco de práctica. Dependiendo del navegador que utilices, puedes ver los errores al revisar la "consola" Javascript. En Chrome, por ejemplo, esto está bajo Ver>Desarrollador>Consola Javascript.

A continuación, haremos un bosquejo más interesante. Borra el texto del ejemplo anterior y prueba este:

Este programa crea una ventana con un ancho de 640 pixeles y una altura de 480 pixeles, y luego empieza a dibujar círculos blancos según la posición del ratón. Cuando presionas un botón del ratón, el color del círculo cambia a blanco. Explicaremos más adelante los detalles acerca de los elementos de este programa. Por ahora corre el código, mueve el ratón, y haz click para probarlo.

#Qué viene después?

Lee el tutorial de transición para aprender cómo convertir de Processing a p5.js y las mayores diferencias entre ellos.

Revisa la referencia para la documentación completa.

Revisa la página de tutoriales y la página de ejemplos para más información.
