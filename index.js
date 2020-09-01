const sc = require('supercolliderjs')

sc.server.boot().then(async server => {

  let { lDef, inDef, grainDef, clockDef, reverbDef } = await server.synthDefs({
    l1: {
      path: './defs/l.scd'
    },
    input: {
      path: './defs/input.scd'
    },
    granularSampling: {
      path: './defs/grains.scd'
    },
    grainAsr: {
      path: './defs/grains2.scd'
    },
    serverClock: {
      path: './defs/serverClock.scd'
    },
    reverb: {
      path: './defs/reverb.scd'
    }
  })
})

