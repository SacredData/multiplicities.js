SynthDef(\l1, { arg out=0, d1a=4, d1c=13, d2c=1, d2a=2, rlpf=4400, amp=1.25;
  var src = SoundIn.ar(0);
  Pan2.ar(RLPF.ar(DelayC.ar(src, 0, [Line.kr(d1a, d2c, 20), Line.kr(d2c, d2a, 2)]), rlpf, 0, amp));
}).add;
