import Data.List (sortOn)

chars = ['i', 'l', 'n', 'l', 'a']
vals = [4, 2, 5, 3, 1]
mapper = zip vals chars

ans_train_03 = map snd (sortOn fst mapper)

