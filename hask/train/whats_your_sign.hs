
signs = [ ("gemini", 3)
        , ("aries", 4)
        , ("aquarius", 1)
        , ("capricorn", length "capricorn")
        , ("sagittarius", 5)
        , ("taurus", 1)
        , ("leo", 3)
        , ("libra", 3)
        , ("pisces", 5)]

index0 :: [a] -> Int -> a
index0 lst a = lst !! (a - 1)

ans_train_04 = map (uncurry index0) signs






