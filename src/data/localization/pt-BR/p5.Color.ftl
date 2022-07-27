description__0 = Cada cor armazena o modo de cor e os máximos de nível que foram aplicados no momento de sua construção. Eles são usados para interpretar os argumentos de entrada (na construção e posteriormente para essa instância de cor) e para formatar a saída, por exemplo, quando <a href="#/p5/saturation">saturação()</a> é requerida. 
description__1 = Internamente, armazenamos um array representando os valores RGBA ideais na forma de ponto flutuante, normalizado de 0 a 1. A partir disso, calculamos a cor de tela mais próxima (níveis RGBA de 0 a 255) e a expomos ao renderizador. 
description__2 = Também colocamos em cache normalizado, os componentes de ponto flutuante da cor em várias representações como eles são calculados. Isso é feito para evitar a repetição de uma conversão que já foi realizada.
toString__description__0 = Esta função retorna a cor formatada como string. Isso pode ser útil para depurar (debug) ou para usar p5.js com outras bibliotecas. 
toString__returns = String: a cor formatada como string
toString__params__format = String (opcional): Como a sequência de cores será formatada. Deixar este parâmetro vazio formata a string como rgba (r, g, b, a). '#rgb' '#rgba' '#rrggbb' e '#rrggbbaa' formata como códigos de cores hexadecimais. 'rgb' 'hsb' e 'hsl' retornam a cor formatada no modo de cor especificado. 'rgba' 'hsba' e 'hsla' são iguais aos anteriores, mas com canais alfa. 'rgb%' 'hsb%' 'hsl%' 'rgba%' 'hsba%' e 'hsla%' formata como porcentagens. 
setRed__description__0 = A função setRed define o componente vermelho de uma cor. O intervalo depende do seu modo de cor, no modo RGB padrão é entre 0 e 255.
setRed__params__red = Número: o novo valor de vermelho
setGreen__description__0 = A função setGreen define o componente verde de uma cor. O intervalo depende do seu modo de cor, no modo RGB padrão é entre 0 e 255. 
setGreen__params__green = Número: o novo valor de verde
setBlue__description__0 = A função setBlue define o componente azul de uma cor. O intervalo depende do seu modo de cor, no modo RGB padrão é entre 0 e 255.
setBlue__params__blue = Número: o novo valor de azul
setAlpha__description__0 = A função setAlpha define o valor de transparência (alfa) de uma cor. O intervalo depende do seu modo de cor, no modo RGB padrão é entre 0 e 255. 
setAlpha__params__alpha = Número: o novo valor de alpha
