import Data.Tuple (swap)

input = ["--", ".-", "-.-.", "....", "..", "-.", ".-"]

get lst x = head [snd item | item <- lst, fst item == x]

toMorse = [ ('a', ".-")
          , ('b', "-...")
          , ('c', "-.-.")
          , ('d', "-..")
          , ('e', ".")
          , ('f', "..-.")
          , ('g', "--.")
          , ('h', "....")
          , ('i', "..")
          , ('j', ".---")
          , ('k', "-.-.")
          , ('l', ".-..")
          , ('m', "--")
          , ('n', "-.")
          , ('o', "---")
          , ('p', ".--.")
          , ('q', ".-.")
          , ('s', "...")
          , ('t', "-")
          , ('u', "..--")
          , ('v', "...-")
          , ('w', ".--")
          , ('x', "-..-")
          , ('y', "-.--")
          , ('z', "--..")]

toLetter = map swap toMorse
getLetters = map $ get toLetter

-- solution
ans = getLetters input

