SynthDef(\help_ServerClock,{arg tempo=2.3, beepvol=0.0, trigID=100;
  var clocktick, beep;

  clocktick=Impulse.ar(tempo);

  beep= SinOsc.ar(440,0,0.1)*Decay.ar(clocktick,0.1);

  Out.ar(0,Pan2.ar(beepvol*beep,0.0));

  //trig from clock, trigID 100, always pass current tempo as parameter
  SendTrig.ar(clocktick,trigID,tempo);    //sends with ID of 100 matching what clock expects
}).add;
