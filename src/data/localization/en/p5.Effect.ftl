description__0 = Effect is a base class for audio effects in p5. This module handles the nodes and methods that are common and useful for current and future effects.
description__1 = This class is extended by <a href="/reference/#/p5.Distortion">p5.Distortion</a>, <a href="/reference/#/p5.Compressor">p5.Compressor</a>, <a href="/reference/#/p5.Delay">p5.Delay</a>, <a href="/reference/#/p5.Filter">p5.Filter</a>, <a href="/reference/#/p5.Reverb">p5.Reverb</a>.
params__ac = Object: (Optional) Reference to the audio context of the p5 object
params__input = AudioNode: (Optional) Gain Node effect wrapper
params__output = AudioNode: (Optional) Gain Node effect wrapper
params___drywet = Object: (Optional) Tone.JS CrossFade node (defaults to value: 1)
params__wet = AudioNode: (Optional) Effects that extend this class should connect  to the wet signal to this gain node, so that dry and wet  signals are mixed properly.
amp__description__0 = Set the output volume of the filter.
amp__params__vol = Number: (Optional) amplitude between 0 and 1.0
amp__params__rampTime = Number: (Optional) create a fade that lasts until rampTime
amp__params__tFromNow = Number: (Optional) schedule this event to happen in tFromNow seconds
chain__description__0 = Link effects together in a chain Example usage: filter.chain(reverb, delay, panner); May be used with an open-ended number of arguments
chain__params__arguments = Object: (Optional) Chain together multiple sound objects
drywet__description__0 = Adjust the dry/wet value.
drywet__params__fade = Number: (Optional) The desired drywet value (0 - 1.0)
connect__description__0 = Send output to a p5.js-sound, Web Audio Node, or use signal to control an AudioParam
connect__params__unit = Object
disconnect__description__0 = Disconnect all output.
