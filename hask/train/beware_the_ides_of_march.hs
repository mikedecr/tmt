-- build a Caesar cypher for shift size n
caesar :: Int -> [(Char, Char)]
caesar n = do
    let alphabet = ['a'..'z']
    let shifted = drop n alphabet ++ take n alphabet
    -- specials map to themselves
    let specials = [',', ' ']
    -- return cypher as [(k, v)]
    zip shifted alphabet ++ zip specials specials

-- let's simplify and say a hashap is a list [(k, v), ...]
-- then get lst k = v
-- might want to constrain keys to be unique...
get :: [(a, a)] -> a -> a
get lst key = [snd item | item <- lst, fst item == key]

input = "zirm, zmhm, zmgm"
ansTrain05 = concatMap (get (caesar 4)) input

