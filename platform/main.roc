platform "host"
    requires {} { main : U32 -> Task {} {} }
    exposes [
    ]
    packages {}
    imports []
    provides [mainForHost]

mainForHost : U32 -> Task {} {}
mainForHost = main
