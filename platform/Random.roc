module [randomU32, nextU32, rangeU32]

import PlatformTasks

randomU32 = PlatformTasks.randomU32

nextU32 : U32 -> U32
nextU32 = \seed ->
    # https://www.tjhsst.edu/~dhyatt/arch/random.html
    shift1 = Num.shiftRightBy 20 (Num.toU8 seed)
    xor1 = Num.bitwiseXor seed shift1
    shift2 = Num.shiftLeftBy 12 (Num.toU8 xor1)
    xor2 = Num.bitwiseXor seed shift2
    xor2

rangeU32 : U32, U32, U32 -> { randSeed : U32, randNum : U32 }
rangeU32 = \seed, incMin, incMax ->
    randSeed = nextU32 seed
    range = if incMax >= incMin then incMax - incMin + 1 else 0
    randNum = Num.rem randSeed range |> Num.add incMin
    { randSeed, randNum }
