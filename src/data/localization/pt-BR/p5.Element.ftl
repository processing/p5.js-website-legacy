description__0 = Classe base para todos os elementos adicionados a um sketch, incluindo o canvas, buffers gráficos e outros elementos HTML. Não é chamado diretamente, mas os objetos <a href="#/p5.Element">p5.Element</a> são criados ao chamar <a href="#/p5/createCanvas">createCanvas</a>, <a href="#/p5/createGraphics">createGraphics</a>, <a href="#/p5/createDiv">createDiv</a>, <a href="#/p5/createImg">createImg</a>, <a href="#/p5/createInput">createInput</a>, etc.
params__elt = String: nó DOM que está embrulhado
params__pInst = P5 (opcional): ponteiro para instância p5
elt__description__0 = Elemento HTML subjacente. Todos os métodos HTML normais podem ser chamados para isso.
parent__description__0 = Anexa o elemento ao pai especificado. Uma maneira de definir o contêiner para o elemento. Aceita tanto uma ID de string, nó DOM ou <a href="#/p5.Element"> p5.Element </a>. Se nenhum argumento for fornecido, o nó pai será retornado. Para obter mais maneiras de posicionar o canvas, consulte o <a href='https://github.com/processing/p5.js/wiki/Positioning-your-canvas'>  posicionando o canvas</a> wiki page.
parent__params__parent = String|p5.Element|Objeto: a ID, nó DOM, ou <a href="#/p5.Element">p5.Element</a> do elemento pai desejado
id__description__0 = Define o ID do elemento. Se nenhum argumento de ID for passado, ele retorna o ID atual do elemento. Observe que apenas um elemento pode ter um id particular em uma página. A função <a href="#/p5.Element/class"> .class () </a> pode ser usada para identificar vários elementos com o mesmo nome de classe.
id__params__id = String: ID do elemento
class__description__0 = Adiciona determinada classe ao elemento. Se nenhum argumento de classe for passado, ele retorna uma string contendo a(s) classe(s) atual(is) do elemento.
class__params__class = String: classe para adicionar
mousePressed__description__0 = A função <a href="#/p5.Element/mousePressed">mousePressed()</a> é chamada toda vez que um botão do mouse é pressionado sobre o elemento. Alguns navegadores em dispositivos móveis também podem acionar este evento em uma tela sensível ao toque, se o usuário executar um toque rápido. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento e ação.
mousePressed__params__fxn = Função|Booleano: função a ser disparada quando o mouse é pressionado sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais acionada.
doubleClicked__description__0 = A função <a href="#/p5.Element/doubleClicked">doubleClicked()</a> é chamada uma vez que um botão do mouse é pressionado duas vezes sobre o elemento. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento e ação.
doubleClicked__returns = p5.Element: 
doubleClicked__params__fxn = Função|Booleano: função a ser disparada quando o mouse é clicado duas vezes sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada.
mouseWheel__description__0 = A função <a href="#/p5.Element/mouseWheel">mouseWheel()</a> é chamada uma vez que a roda do mouse é rolada sobre o elemento. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
mouseWheel__description__1 =  A função aceita uma função de callback como argumento que será executada quando o evento <code>wheel</code> for acionado no elemento, a função de callback receberá um argumento <code>event</code>. A propriedade <code>event.deltaY</code> retorna valores negativos se a roda do mouse for girada para cima ou para longe do usuário e positiva na outra direção. A <code>event.deltaX</code> faz o mesmo que a <code>event.deltaY</code> exceto que lê a roda horizontal da roda do mouse. 
mouseWheel__description__2 = No OS X com rolagem "natural" habilitada, na <code>event.deltaY</code> os valores são invertidos.
mouseWheel__params__fxn = Função|Booleano: função a ser disparada quando o mouse é rolado sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada.
mouseReleased__description__0 = A função <a href="#/p5.Element/mouseReleased">mouseReleased()</a> é chamada uma vez que um botão do mouse é liberado sobre o elemento. Alguns navegadores em dispositivos móveis também podem acionar este evento em uma tela sensível ao toque, se o usuário executar um toque rápido. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
mouseReleased__params__fxn = Função|Booleano: função a ser disparada quando o mouse é liberado sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais acionada.
mouseClicked__description__0 = A função <a href="#/p5.Element/mouseClicked">mouseClicked()</a> é chamada uma vez que um botão do mouse é pressionado e liberado sobre o elemento. Alguns navegadores em dispositivos móveis também podem acionar este evento em uma tela sensível ao toque, se o usuário executar um toque rápido. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento
mouseClicked__params__fxn = Função|Booleano: função a ser disparada quando o mouse é clicado sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
mouseMoved__description__0 = A função <a href="#/p5.Element/mouseMoved">mouseMoved()</a> é chamada uma vez que o mouse se move sobre o elemento. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
mouseMoved__params__fxn = Função|Booleano: função a ser disparada quando o mouse mouse se move sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
mouseOver__description__0 = A função <a href="#/p5.Element/mouseOver">mouseOver()</a> é chamada uma vez que o mouse se move para o elemento. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
mouseOver__params__fxn = Função|Booleano: função a ser disparada quando o mouse se move para o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
mouseOut__description__0 = A função <a href="#/p5.Element/mouseOut">mouseOut()</a> é chamada uma vez que o mouse se move para fora do elemento. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
mouseOut__params__fxn = Função|Booleano: função a ser disparada quando o mouse se move para fora do elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
touchStarted__description__0 = A função <a href="#/p5.Element/touchStarted">touchStarted()</a> é chamada uma vez que um toque é registrado. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
touchStarted__params__fxn = Função|Booleano: função a ser disparada quando um toque é registrado. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
touchMoved__description__0 = A função <a href="#/p5.Element/touchMoved">touchMoved()</a> é chamada uma vez que um movimento de toque é registrado. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
touchMoved__params__fxn = Função|Booleano: função a ser disparada quando um toque se move sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
touchEnded__description__0 = A função <a href="#/p5.Element/touchEnded">touchEnded()</a> é chamada uma vez que um toque é registrado. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
touchEnded__params__fxn = Função|Booleano: função a ser disparada quando um toque termina sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
dragOver__description__0 = A função <a href="#/p5.Element/dragOver">dragOver()</a> é chamada uma vez que um arquivo é arrastado sobre o elemento. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
dragOver__params__fxn = Função|Booleano: função a ser disparada quando um arquivo é arrastado sobre o elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
dragLeave__description__0 = A função dragLeave() é chamada uma vez que um arquivo arrastado sai da área do elemento. Isso pode ser usado para anexar funções de escuta de eventos específicos de elemento.
dragLeave__params__fxn = Função|Booleano: função a ser disparada quando um arquivo é arrastado para fora do elemento. Se <code>false</code> for passado, a função de disparo anterior não será mais disparada. 
addClass__description__0 = Adiciona uma classe especificada ao elemento.
addClass__params__class = String: nome da classe a ser adicionada
removeClass__description__0 = Remove uma classe especificada do elemento.
removeClass__params__class = String: nome da classe a ser removida.
hasClass__description__0 = Verifica se a classe especificada já está definida para o elemento.
hasClass__returns = Booleano: um valor Booleano se o elemento possui a classe especificada.
hasClass__params__c = String: nome da classe para verificação
toggleClass__description__0 = Alterna classe de elemento.
toggleClass__params__c = String: nome da classe a ser alternada
child__description__0 = Anexa o elemento como filho do pai especificado. Aceita tanto um ID de string, um nó DOM, ou um <a href="#/p5.Element">p5.Element</a>. Se nenhum argumento for especificado, uma matriz de nós DOM filhos será retornada. 
child__returns = Node[]: um array de nós filhos
child__params__child = String|p5.Element (opcional): a ID, nó DOM, ou <a href="#/p5.Element">p5.Element</a>  para adicionar ao elemento atual.
center__description__0 = Centraliza um elemento p5 verticalmente, horizontalmente ou ambos, em relação ao seu pai ou de acordo com o body (corpo) se o elemento não tiver pai. Se nenhum argumento for passado, o elemento é alinhado tanto vertical quanto horizontalmente.
center__params__align = String (opcional): passar 'vertical', 'horizontal' alinha o elemento de acordo
html__description__0 = Se um argumento for fornecido, define o HTML interno do elemento, substituindo qualquer HTML existente. Se true (verdadeiro) for incluído como um segundo argumento, o HTML é anexado em vez de substituir o HTML existente. Se nenhum argumento for fornecido, retorna o HTML interno do elemento.
html__returns = String: o HTML interno do elemento
html__params__html = String (opcional): o HTML a ser colocado dentro do elemento
html__params__append = Booleano (opcional): se deve anexar o novo HTML ao existente