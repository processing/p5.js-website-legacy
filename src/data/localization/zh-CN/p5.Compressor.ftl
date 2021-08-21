process__params__threshold = Number: (Optional) The decibel value above which the compression will start taking effect  default = -24, range -100 - 0
process__params__release = Number: (Optional) The amount of time (in seconds) to increase the gain by 10dB  default = .25, range 0 - 1
set__description__0 = Set the parameters of a compressor.
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
