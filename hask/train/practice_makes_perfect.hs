-- training 01: map int -> char
--
alphabet = ['a'..'z']

input = [5, 24, 3, 5, 12, 12, 5, 14, 20] 
-- n.b. Haskell is 0 indexed so the "raw" input must be decremented

-- using a list comprehension
ans_train_01_lc = [alphabet !! (x + (-1)) | x <- input]

-- subtract as a function
ans_train_01_sub = [alphabet !! subtract 1 x | x <- input]

-- with map
ans_train_01_mapsub = [alphabet !! x | x <- map (subtract 1) input]

-- use a partial function
sub1 = subtract 1
ans_train_01_curry = [alphabet !! x | x <- map sub1 input]

-- writing an indexing funcion
index :: [a] -> Int -> a
index list x = list !! x

-- lol okay
ans_train_01_index = map (index alphabet) (map sub1 input)





