
words = [ ("contemplate", 9),
          ("conducive", 4),
          ("entrenched", 1),
          ("scrupulous", 5),
          ("ubiquitous", 7) ]

index :: [a] -> Int -> a
index list i = list !! i

ans_train_02 = [index (fst x) (snd x - 1) | x <- words]

