SynthDef("granular_sampling",
  {arg trigger = 0, graindur = 0.2, sndbuf, transp = 1,
    pos = 0, pan = 0, envbuf = 1, amp = 1, gate = 1;
    var env, snd;
    RecordBuf.ar([SoundIn.ar(0)], sndbuf, loop: 1);
    env = EnvGen.kr(Env.asr, gate, levelScale: amp, doneAction: 2);
    snd = GrainBuf.ar(
      numChannels: 1,
      trigger: Impulse.kr(trigger),
      dur: graindur,
      sndbuf: sndbuf,
      rate: transp,
      pos: pos,
      pan: pan,
      envbufnum: envbuf);
    // snd = snd!2 * 0.8; // many ways to add the src :)
    // Out.ar(0, snd * env ); // use the envelope, and out

    // this is a freak :) but get's env and stereo ; with out arts)
    Out.ar(16, (snd!2 * 0.9) * env );
    // Plain and mono out
    // Out.ar(0, (snd * env) + SoundIn.ar(0,1));
}).add;
