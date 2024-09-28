app [main] { pf: platform "../platform/main.roc" }

import pf.Stdout

main : Task {} [Exit I32 Str]_
main =
    doTasks |> Task.mapErr (\_ -> Exit 1 "Failed")

doTasks =
    Stdout.line! "Hello"
    Stdout.put! "X"
