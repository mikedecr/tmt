box::use(./R/lib/string[...])
box::use(./R/lib/map[...])


cypher = map.define(from = seq(1, length(letters)),
                    to = letters)

input = c(5, 24, 3, 5, 12, 12, 5, 14, 20)

(ans_train_01 = map.get(cypher, input) |> concat())

