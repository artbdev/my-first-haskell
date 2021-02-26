module Test where

-- >>> natSum 0
-- 0
natSum :: (Eq p, Num p) => p -> p
natSum 0 = 0
natSum n = n + natSum (n - 1)
