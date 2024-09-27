platform ""
    requires {} { main : _ }
    exposes []
    packages {}
    imports []
    provides [mainForHost]

SomeType : [Hello, World, Two]

mainForHost : SomeType
mainForHost = main
