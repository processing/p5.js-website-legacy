description__0 = Delay is an echo effect. It processes an existing sound source, and outputs a delayed version of that sound. The p5.Delay can produce different effects depending on the delayTime, feedback, filter, and type. In the example below, a feedback of 0.5 (the default value) will produce a looping delay that decreases in volume by 50% each repeat. A filter will cut out the high frequencies so that the delay does not sound as piercing as the original source.
description__1 = This class extends <a href = "/reference/#/p5.Effect">p5.Effect</a>. Methods <a href = "/reference/#/p5.Effect/amp">amp()</a>, <a href = "/reference/#/p5.Effect/chain">chain()</a>, <a href = "/reference/#/p5.Effect/drywet">drywet()</a>, <a href = "/reference/#/p5.Effect/connect">connect()</a>, and <a href = "/reference/#/p5.Effect/disconnect">disconnect()</a> are available.
leftDelay__description__0 = The p5.Delay is built with two <a href="http://www.w3.org/TR/webaudio/#DelayNode"> Web Audio Delay Nodes</a>, one for each stereo channel.
rightDelay__description__0 = The p5.Delay is built with two <a href="http://www.w3.org/TR/webaudio/#DelayNode"> Web Audio Delay Nodes</a>, one for each stereo channel.
process__description__0 = Add delay to an audio signal according to a set of delay parameters.
process__params__Signal = Object: An object that outputs audio
process__params__delayTime = Number: (Optional) Time (in seconds) of the delay/echo.  Some browsers limit delayTime to  1 second.
process__params__feedback = Number: (Optional) sends the delay back through itself  in a loop that decreases in volume  each time.
process__params__lowPass = Number: (Optional) Cutoff frequency. Only frequencies  below the lowPass will be part of the  delay.
delayTime__description__0 = Set the delay (echo) time, in seconds. Usually this value will be a floating point number between 0.0 and 1.0.
delayTime__params__delayTime = Number: Time (in seconds) of the delay
feedback__description__0 = Feedback occurs when Delay sends its signal back through its input in a loop. The feedback amount determines how much signal to send each time through the loop. A feedback greater than 1.0 is not desirable because it will increase the overall output each time through the loop, creating an infinite feedback loop. The default value is 0.5
feedback__returns = Number: Feedback value
feedback__params__feedback = Number|Object: 0.0 to 1.0, or an object such as an  Oscillator that can be used to  modulate this param
filter__description__0 = Set a lowpass filter frequency for the delay. A lowpass filter will cut off any frequencies higher than the filter frequency.
filter__params__cutoffFreq = Number|Object: A lowpass filter will cut off any  frequencies higher than the filter frequency.
filter__params__res = Number|Object: Resonance of the filter frequency  cutoff, or an object (i.e. a p5.Oscillator)  that can be used to modulate this parameter.  High numbers (i.e. 15) will produce a resonance,  low numbers (i.e. .2) will produce a slope.
setType__description__0 = Choose a preset type of delay. 'pingPong' bounces the signal from the left to the right channel to produce a stereo effect. Any other parameter will revert to the default delay setting.
setType__params__type = String|Number: 'pingPong' (1) or 'default' (0)
amp__description__0 = Set the output level of the delay effect.
amp__params__volume = Number: amplitude between 0 and 1.0
amp__params__rampTime = Number: (Optional) create a fade that lasts rampTime
amp__params__timeFromNow = Number: (Optional) schedule this event to happen  seconds from now
connect__description__0 = Send output to a p5.sound or web audio object
connect__params__unit = Object
disconnect__description__0 = Disconnect all output.
