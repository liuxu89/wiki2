using wiki2
using Documenter

DocMeta.setdocmeta!(wiki2, :DocTestSetup, :(using wiki2); recursive=true)

makedocs(;
    modules=[wiki2],
    authors="liuxu <liuxu89@mail.ustc.edu.cn> and contributors",
    repo="https://github.com/liuxu89/wiki2/blob/{commit}{path}#{line}",
    sitename="wiki2",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://liuxu89.github.io/wiki2",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/liuxu89/wiki2",
    devbranch="main",
)
