import Data.List (intercalate, concat)

caesar :: Int -> [(Char, Char)]
caesar n = do
    let alphabet = ['a'..'z']
    let shifted = drop n alphabet ++ take n alphabet
    let c = zip shifted alphabet
    let specials = [(',', ','), (' ', ' ')]
    c ++ specials 

input = "zirm, zmhm, zmgm"

-- this is hacky shit
-- could separate the abstract tuple lookup from the cypher
-- or just learn how haskell does hash maps
caesarGet :: Int -> Char -> Char
caesarGet n c = [snd x | x <- caesar n, fst x == c]

ansTrain05 = concatMap (caesarGet 4) input 


