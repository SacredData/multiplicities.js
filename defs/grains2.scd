SynthDef("grain-asr", {arg buffer, rate = 1.0, startPos = 0, gate = 1, att = 0.01, rel = 1, amp = 1, pan = 0;
  var env, snd;
  env = Env.asr(att, amp, rel).kr(gate: gate, doneAction: 2); // doneAction:15 is interesting too
  snd = PlayBuf.ar(1, 0, rate: rate, startPos: startPos * BufSamples.kr(buffer));
  snd = snd * env;
  Out.ar(18, Pan2.ar(snd, pan));
}).add;
