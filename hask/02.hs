import Data.Tuple (swap)

makeCypher x = zip x [1..length x]

get lst key = head [snd item | item <- lst, fst item == key]

alphabet = ['a'..'z']
toNum = makeCypher alphabet
toChar = map swap toNum
norm vector = sqrt . fromIntegral $ sum [x*x | x <- vector]

-- this feels stupid
main = do
    let x1 = round $ norm $ map (get toNum) ['h', 'o']
    let x2 = round . (/2) $ norm $ map (get toNum) ['h', 'f']
    let x3 = round . sqrt . fromIntegral $ (x2^2 - (get toNum 'c')^2)

    putStrLn $ map (get toChar) [x1, x2, x3]
-- 'qed'

