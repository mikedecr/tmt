box::use(./lib/string[str.index, str.concat])

# the ordering of this is column-major for some reason...
words = list(
    list('gemini', 3),
    list('aries', 4),
    list('aquarius', 1),
    list('capricorn', nchar('capricorn')),
    list('sagittarius', 5),
    list('taurus', 1),
    list('leo', 3),
    list('libra', 3),
    list('pisces', 5)
)

ans_train_04 = words |>
    lapply(function(x) do.call(str.index, x)) |>
    str.concat() |>
    print()

