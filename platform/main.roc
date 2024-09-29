platform "host"
    requires {} { main : Task {} {} }
    exposes [
        SomeEffect,
    ]
    packages {}
    imports []
    provides [mainForHost]

mainForHost : Task {} {}
mainForHost = main
