const sc = require('supercolliderjs');

sc.server.boot().then((server) => {

  // Compile synthDef from a file
  let lDefs = server.loadSynthDef('l1', './defs/l.scd');
  let inputDef = server.loadSynthDef('input', './defs/input.scd');
  console.log(lDefs, inputDef);
});
