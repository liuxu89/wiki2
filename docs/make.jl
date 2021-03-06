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
        assets=String["src/custom.css",],
    ),
    pages=[
        "Home" => "index.md",
        "供应链金融" => Any[
            "gongjin/index.md",
            "gongjin/20200918-226.md",
        ],
    ],
)

deploydocs(;
    repo="github.com/liuxu89/wiki2",
    devbranch="main",
)
