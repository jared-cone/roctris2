platform "host"
    requires {} { main : Task {} [Exit I32 Str]_ }
    exposes [
        SomeEffect
    ]
    packages {}
    imports []
    provides [mainForHost]

mainForHost : Task {} I32 as Fx
mainForHost =
    Task.attempt main \_ -> Task.err 1
