const sc = require('supercolliderjs');

sc.server.boot().then((server) => {

  // Compile synthDef from a file
  let lDefs = server.loadSynthDef('l1', './l.scd');
  let inputDef = server.loadSynthDef('input', './input.scd');
  console.log(lDefs, inputDef);
});
