description__0 = Envelopes are pre-defined amplitude distribution over time. Typically, envelopes are used to control the output volume of an object, a series of fades referred to as Attack, Decay, Sustain and Release ( <a href="https://upload.wikimedia.org/wikipedia/commons/e/ea/ADSR_parameter.svg">ADSR</a> ). Envelopes can also control other Web Audio Parameters—for example, a p5.Envelope can control an Oscillator's frequency like this: <code>osc.freq(env)</code>.
description__1 = Use <code><a href="#/p5.Envelope/setRange">setRange</a></code> to change the attack/release level. Use <code><a href="#/p5.Envelope/setADSR">setADSR</a></code> to change attackTime, decayTime, sustainPercent and releaseTime.
description__2 = Use the <code><a href="#/p5.Envelope/play">play</a></code> method to play the entire envelope, the <code><a href="#/p5.Envelope/ramp">ramp</a></code> method for a pingable trigger, or <code><a href="#/p5.Envelope/triggerAttack">triggerAttack</a></code>/ <code><a href="#/p5.Envelope/triggerRelease">triggerRelease</a></code> to trigger noteOn/noteOff.
attackTime__description__0 = Time until envelope reaches attackLevel
attackLevel__description__0 = Level once attack is complete.
decayTime__description__0 = Time until envelope reaches decayLevel.
decayLevel__description__0 = Level after decay. The envelope will sustain here until it is released.
releaseTime__description__0 = Duration of the release portion of the envelope.
releaseLevel__description__0 = Level at the end of the release.
set__description__0 = Reset the envelope with a series of time/value pairs.
set__params__attackTime = Number: Time (in seconds) before level  reaches attackLevel
set__params__attackLevel = Number: Typically an amplitude between  0.0 and 1.0
set__params__decayTime = Number: Time
set__params__decayLevel = Number: Amplitude (In a standard ADSR envelope,  decayLevel = sustainLevel)
set__params__releaseTime = Number: Release Time (in seconds)
set__params__releaseLevel = Number: Amplitude
setADSR__description__0 = Set values like a traditional <a href="https://en.wikipedia.org/wiki/Synthesizer#/media/File:ADSR_parameter.svg"> ADSR envelope </a>.
setADSR__params__attackTime = Number: Time (in seconds before envelope  reaches Attack Level
setADSR__params__decayTime = Number: (Optional) Time (in seconds) before envelope  reaches Decay/Sustain Level
setADSR__params__susRatio = Number: (Optional) Ratio between attackLevel and releaseLevel, on a scale from 0 to 1,  where 1.0 = attackLevel, 0.0 = releaseLevel.  The susRatio determines the decayLevel and the level at which the  sustain portion of the envelope will sustain.  For example, if attackLevel is 0.4, releaseLevel is 0,  and susAmt is 0.5, the decayLevel would be 0.2. If attackLevel is  increased to 1.0 (using <code>setRange</code>),  then decayLevel would increase proportionally, to become 0.5.
setADSR__params__releaseTime = Number: (Optional) Time in seconds from now (defaults to 0)
setRange__description__0 = Set max (attackLevel) and min (releaseLevel) of envelope.
setRange__params__aLevel = Number: attack level (defaults to 1)
setRange__params__rLevel = Number: release level (defaults to 0)
setInput__description__0 = Assign a parameter to be controlled by this envelope. If a p5.Sound object is given, then the p5.Envelope will control its output gain. If multiple inputs are provided, the env will control all of them.
setInput__params__inputs = Object: (Optional) A p5.sound object or  Web Audio Param.
setExp__description__0 = Set whether the envelope ramp is linear (default) or exponential. Exponential ramps can be useful because we perceive amplitude and frequency logarithmically.
setExp__params__isExp = Boolean: true is exponential, false is linear
play__description__0 = Play tells the envelope to start acting on a given input. If the input is a p5.sound object (i.e. AudioIn, Oscillator, SoundFile), then Envelope will control its output volume. Envelopes can also be used to control any <a href=" http://docs.webplatform.org/wiki/apis/webaudio/AudioParam"> Web Audio Audio Param.</a>
play__params__unit = Object: A p5.sound object or  Web Audio Param.
play__params__startTime = Number: (Optional) time from now (in seconds) at which to play
play__params__sustainTime = Number: (Optional) time to sustain before releasing the envelope
triggerAttack__description__0 = Trigger the Attack, and Decay portion of the Envelope. Similar to holding down a key on a piano, but it will hold the sustain level until you let go. Input can be any p5.sound object, or a <a href=" http://docs.webplatform.org/wiki/apis/webaudio/AudioParam"> Web Audio Param</a>.
triggerAttack__params__unit = Object: p5.sound Object or Web Audio Param
triggerAttack__params__secondsFromNow = Number: time from now (in seconds)
triggerRelease__description__0 = Trigger the Release of the Envelope. This is similar to releasing the key on a piano and letting the sound fade according to the release level and release time.
triggerRelease__params__unit = Object: p5.sound Object or Web Audio Param
triggerRelease__params__secondsFromNow = Number: time to trigger the release
ramp__description__0 = Exponentially ramp to a value using the first two values from <code><a href="#/p5.Envelope/setADSR">setADSR(attackTime, decayTime)</a></code> as <a href="https://en.wikipedia.org/wiki/RC_time_constant"> time constants</a> for simple exponential ramps. If the value is higher than current value, it uses attackTime, while a decrease uses decayTime.
ramp__params__unit = Object: p5.sound Object or Web Audio Param
ramp__params__secondsFromNow = Number: When to trigger the ramp
ramp__params__v = Number: Target value
ramp__params__v2 = Number: (Optional) Second target value
add__description__0 = Add a value to the p5.Oscillator's output amplitude, and return the oscillator. Calling this method again will override the initial add() with new values.
add__returns = p5.Envelope: Envelope Returns this envelope  with scaled output
add__params__number = Number: Constant number to add
mult__description__0 = Multiply the p5.Envelope's output amplitude by a fixed value. Calling this method again will override the initial mult() with new values.
mult__returns = p5.Envelope: Envelope Returns this envelope  with scaled output
mult__params__number = Number: Constant number to multiply
scale__description__0 = Scale this envelope's amplitude values to a given range, and return the envelope. Calling this method again will override the initial scale() with new values.
scale__returns = p5.Envelope: Envelope Returns this envelope  with scaled output
scale__params__inMin = Number: input range minumum
scale__params__inMax = Number: input range maximum
scale__params__outMin = Number: input range minumum
scale__params__outMax = Number: input range maximum
