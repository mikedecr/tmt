box::use(./lib/string[...])
box::use(./lib/functional[...])

words = list(
    list('contemplate', 9),
    list('conducive', 4),
    list('entrenched', 1),
    list('scrupulous', 5),
    list('ubiquitous', 7)
)

# index a list of pair(word, index)
ans_train_02 = words |>
    lapply(function(x) do.call(str.index, x)) |>
    str.concat() |>
    print()

