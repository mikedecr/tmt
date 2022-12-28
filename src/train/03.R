box::use(./lib/map[...])
box::use(./lib/string[...])
box::use(./lib/list[...])

chars = c('i', 'l', 'n', 'l', 'a')
values = c(4, 2, 5, 3, 1)

mapper = map.define(values, chars)

ans_train_03 = mapper |>
    index(sort(names(mapper))) |>
    str.concat() |>
    print()

