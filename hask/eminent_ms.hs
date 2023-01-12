caesar :: Int -> [(Char, Char)]
caesar n = do
    let alphabet = ['a'..'z']
    let shifted = drop n alphabet ++ take n alphabet
    -- specials map to themselves
    let specials = [',', ' ']
    -- return cypher as [(k, v)]
    zip shifted alphabet ++ zip specials specials

-- get :: [(a, b)] -> a -> b
get lst key = [snd item | item <- lst, fst item == key]

main = do
  let input = "vzzbegnyvgl"
  let ans = concatMap (get (caesar 13)) input
  putStrLn ans


