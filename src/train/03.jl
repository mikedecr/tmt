using DataStructures

chars = ('i', 'l', 'n', 'l', 'a')
vals = (4, 2, 5, 3, 1)

ans_train_03 = SortedDict(vals .=> chars) |>
    values |>
    join

