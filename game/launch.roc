app [main] { pf: platform "../platform/main.roc" }

import pf.SomeEffect

main : Task {} [Exit I32 Str]_
main =

    SomeEffect.someEffect Hello |> Task.mapErr! \_ -> Exit 1 "Error"

    Task.ok {}
