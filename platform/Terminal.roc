module [
    setRawMode,
    clear,
    setCursorVisible,
    goto,
    getNextKey,
    setForecolor,
    resetForecolor,
    setBackcolor,
    resetBackcolor,
]

import PlatformTasks

setRawMode = PlatformTasks.terminalSetRawMode
clear = PlatformTasks.terminalClear
setCursorVisible = PlatformTasks.terminalSetCursorVisible
goto = PlatformTasks.terminalGoto
getNextKey = PlatformTasks.terminalGetNextKey
setForecolor = PlatformTasks.terminalSetForecolor
resetForecolor = PlatformTasks.terminalResetForecolor
setBackcolor = PlatformTasks.terminalSetBackcolor
resetBackcolor = PlatformTasks.terminalResetBackcolor
