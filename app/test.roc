app [main] { pf: platform "../platform/main.roc" }

main : Task {} [Exit I32 Str]_
main = Task.ok {}
