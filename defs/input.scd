SynthDef(\input, { arg level=0.95, hp=39.0, inChannel=0, pan=0;
  var src = SoundIn.ar(inChannel);
  Pan2.ar(Limiter.ar(HPF.ar(LeakDC.ar(src, coef: 0.995), freq: hp), level, 0.02), pan, level);
}).add;
