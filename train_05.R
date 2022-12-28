# Training 5:
# Caesar cypher for some n-shift

box::use(./lib/map[...])
box::use(./lib/list[...])
box::use(./lib/string[...])

caesar_cypher = function(n) {
    frameshifted = c(tail(letters, -n), head(letters, n))
    map.define(frameshifted, letters)
}

# full cypher must also handle spaces and other chars
special_chars = c(' ' = ' ', ',' = ',')
cypher = c(caesar_cypher(4), special_chars)

ans_train_05 = cypher |>
    index(str.chars(input)) |>
    str.concat() |>
    print()

