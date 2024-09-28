app [main] { pf: platform "../platform/main.roc" }

import pf.Stdout
import pf.Terminal

main : Task {} [Exit I32 Str]_
main =
    doTasks |> Task.mapErr (\_ -> Exit 1 "Failed")

doTasks =
    Stdout.line! "Hello"
    Terminal.setForecolor! 255 0 0
    Stdout.put! "X"
    Terminal.resetForecolor! {}
    Stdout.put! "Y"
