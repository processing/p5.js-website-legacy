description__0 = Compressor is an audio effect class that performs dynamics compression on an audio input source. This is a very commonly used technique in music and sound production. Compression creates an overall louder, richer, and fuller sound by lowering the volume of louds and raising that of softs. Compression can be used to avoid clipping (sound distortion due to peaks in volume) and is especially useful when many sounds are played at once. Compression can be used on indivudal sound sources in addition to the main output.
description__1 = This class extends <a href = "/reference/#/p5.Effect">p5.Effect</a>. Methods <a href = "/reference/#/p5.Effect/amp">amp()</a>, <a href = "/reference/#/p5.Effect/chain">chain()</a>, <a href = "/reference/#/p5.Effect/drywet">drywet()</a>, <a href = "/reference/#/p5.Effect/connect">connect()</a>, and <a href = "/reference/#/p5.Effect/disconnect">disconnect()</a> are available.
compressor__description__0 = The p5.Compressor is built with a <a href="https://www.w3.org/TR/webaudio/#the-dynamicscompressornode-interface"  target="_blank" title="W3 spec for Dynamics Compressor Node">Web Audio Dynamics Compressor Node  </a>
process__description__0 = Performs the same function as .connect, but also accepts optional parameters to set compressor's audioParams
process__params__src = Object: Sound source to be connected
process__params__attack = Number: (Optional) The amount of time (in seconds) to reduce the gain by 10dB,  default = .003, range 0 - 1
process__params__knee = Number: (Optional) A decibel value representing the range above the  threshold where the curve smoothly transitions to the "ratio" portion.  default = 30, range 0 - 40
process__params__ratio = Number: (Optional) The amount of dB change in input for a 1 dB change in output  default = 12, range 1 - 20
process__params__threshold = Number: (Optional) The decibel value above which the compression will start taking effect  default = -24, range -100 - 0
process__params__release = Number: (Optional) The amount of time (in seconds) to increase the gain by 10dB  default = .25, range 0 - 1
set__description__0 = Set the paramters of a compressor.
set__params__attack = Number: The amount of time (in seconds) to reduce the gain by 10dB,  default = .003, range 0 - 1
set__params__knee = Number: A decibel value representing the range above the  threshold where the curve smoothly transitions to the "ratio" portion.  default = 30, range 0 - 40
set__params__ratio = Number: The amount of dB change in input for a 1 dB change in output  default = 12, range 1 - 20
set__params__threshold = Number: The decibel value above which the compression will start taking effect  default = -24, range -100 - 0
set__params__release = Number: The amount of time (in seconds) to increase the gain by 10dB  default = .25, range 0 - 1
attack__description__0 = Get current attack or set value w/ time ramp
attack__params__attack = Number: (Optional) Attack is the amount of time (in seconds) to reduce the gain by 10dB,  default = .003, range 0 - 1
attack__params__time = Number: (Optional) Assign time value to schedule the change in value
knee__description__0 = Get current knee or set value w/ time ramp
knee__params__knee = Number: (Optional) A decibel value representing the range above the  threshold where the curve smoothly transitions to the "ratio" portion.  default = 30, range 0 - 40
knee__params__time = Number: (Optional) Assign time value to schedule the change in value
ratio__description__0 = Get current ratio or set value w/ time ramp
ratio__params__ratio = Number: (Optional) The amount of dB change in input for a 1 dB change in output  default = 12, range 1 - 20
ratio__params__time = Number: (Optional) Assign time value to schedule the change in value
threshold__description__0 = Get current threshold or set value w/ time ramp
threshold__params__threshold = Number: The decibel value above which the compression will start taking effect  default = -24, range -100 - 0
threshold__params__time = Number: (Optional) Assign time value to schedule the change in value
release__description__0 = Get current release or set value w/ time ramp
release__params__release = Number: The amount of time (in seconds) to increase the gain by 10dB  default = .25, range 0 - 1
release__params__time = Number: (Optional) Assign time value to schedule the change in value
reduction__description__0 = Return the current reduction value
reduction__returns = Number: Value of the amount of gain reduction that is applied to the signal
