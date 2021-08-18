description__0 = Reverb adds depth to a sound through a large number of decaying echoes. It creates the perception that sound is occurring in a physical space. The p5.Reverb has paramters for Time (how long does the reverb last) and decayRate (how much the sound decays with each echo) that can be set with the .set() or .process() methods. The p5.Convolver extends p5.Reverb allowing you to recreate the sound of actual physical spaces through convolution.
description__1 = This class extends <a href = "/reference/#/p5.Effect">p5.Effect</a>. Methods <a href = "/reference/#/p5.Effect/amp">amp()</a>, <a href = "/reference/#/p5.Effect/chain">chain()</a>, <a href = "/reference/#/p5.Effect/drywet">drywet()</a>, <a href = "/reference/#/p5.Effect/connect">connect()</a>, and <a href = "/reference/#/p5.Effect/disconnect">disconnect()</a> are available.
process__description__0 = Connect a source to the reverb, and assign reverb parameters.
process__params__src = Object: p5.sound / Web Audio object with a sound  output.
process__params__seconds = Number: (Optional) Duration of the reverb, in seconds.  Min: 0, Max: 10. Defaults to 3.
process__params__decayRate = Number: (Optional) Percentage of decay with each echo.  Min: 0, Max: 100. Defaults to 2.
process__params__reverse = Boolean: (Optional) Play the reverb backwards or forwards.
set__description__0 = Set the reverb settings. Similar to .process(), but without assigning a new input.
set__params__seconds = Number: (Optional) Duration of the reverb, in seconds.  Min: 0, Max: 10. Defaults to 3.
set__params__decayRate = Number: (Optional) Percentage of decay with each echo.  Min: 0, Max: 100. Defaults to 2.
set__params__reverse = Boolean: (Optional) Play the reverb backwards or forwards.
amp__description__0 = Set the output level of the reverb effect.
amp__params__volume = Number: amplitude between 0 and 1.0
amp__params__rampTime = Number: (Optional) create a fade that lasts rampTime
amp__params__timeFromNow = Number: (Optional) schedule this event to happen  seconds from now
connect__description__0 = Send output to a p5.sound or web audio object
connect__params__unit = Object
disconnect__description__0 = Disconnect all output.
