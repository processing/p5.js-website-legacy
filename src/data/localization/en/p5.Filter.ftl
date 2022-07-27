description__0 = A p5.Filter uses a Web Audio Biquad Filter to filter the frequency response of an input source. Subclasses include: <a href="/reference/#/p5.LowPass"><code>p5.LowPass</code></a>: Allows frequencies below the cutoff frequency to pass through, and attenuates frequencies above the cutoff.<br/> <a href="/reference/#/p5.HighPass"><code>p5.HighPass</code></a>: The opposite of a lowpass filter. <br/> <a href="/reference/#/p5.BandPass"><code>p5.BandPass</code></a>: Allows a range of frequencies to pass through and attenuates the frequencies below and above this frequency range.<br/>
description__1 = The <code>.res()</code> method controls either width of the bandpass, or resonance of the low/highpass cutoff frequency.
description__2 = This class extends <a href = "/reference/#/p5.Effect">p5.Effect</a>. Methods <a href = "/reference/#/p5.Effect/amp">amp()</a>, <a href = "/reference/#/p5.Effect/chain">chain()</a>, <a href = "/reference/#/p5.Effect/drywet">drywet()</a>, <a href = "/reference/#/p5.Effect/connect">connect()</a>, and <a href = "/reference/#/p5.Effect/disconnect">disconnect()</a> are available.
params__type = String: (Optional) 'lowpass' (default), 'highpass', 'bandpass'
biquadFilter__description__0 = The p5.Filter is built with a <a href="http://www.w3.org/TR/webaudio/#BiquadFilterNode"> Web Audio BiquadFilter Node</a>.
process__description__0 = Filter an audio signal according to a set of filter parameters.
process__params__Signal = Object: An object that outputs audio
process__params__freq = Number: (Optional) Frequency in Hz, from 10 to 22050
process__params__res = Number: (Optional) Resonance/Width of the filter frequency  from 0.001 to 1000
set__description__0 = Set the frequency and the resonance of the filter.
set__params__freq = Number: (Optional) Frequency in Hz, from 10 to 22050
set__params__res = Number: (Optional) Resonance (Q) from 0.001 to 1000
set__params__timeFromNow = Number: (Optional) schedule this event to happen  seconds from now
freq__description__0 = Set the filter frequency, in Hz, from 10 to 22050 (the range of human hearing, although in reality most people hear in a narrower range).
freq__returns = Number: value Returns the current frequency value
freq__params__freq = Number: Filter Frequency
freq__params__timeFromNow = Number: (Optional) schedule this event to happen  seconds from now
res__description__0 = Controls either width of a bandpass frequency, or the resonance of a low/highpass cutoff frequency.
res__returns = Number: value Returns the current res value
res__params__res = Number: Resonance/Width of filter freq  from 0.001 to 1000
res__params__timeFromNow = Number: (Optional) schedule this event to happen  seconds from now
gain__description__0 = Controls the gain attribute of a Biquad Filter. This is distinctly different from .amp() which is inherited from p5.Effect .amp() controls the volume via the output gain node p5.Filter.gain() controls the gain parameter of a Biquad Filter node.
gain__returns = Number: Returns the current or updated gain value
gain__params__gain = Number
toggle__description__0 = Toggle function. Switches between the specified type and allpass
toggle__returns = Boolean: [Toggle value]
setType__description__0 = Set the type of a p5.Filter. Possible types include: "lowpass" (default), "highpass", "bandpass", "lowshelf", "highshelf", "peaking", "notch", "allpass".
setType__params__t = String
