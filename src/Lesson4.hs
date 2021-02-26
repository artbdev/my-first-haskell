module Lesson4 where

-- Data types

-- function 

func :: Int -> Int
func a = a + 1

-- >>> :t func
-- func :: Int -> Int

-- >>> :t func 4
-- func 4 :: Int


-- Bool & Pattern Matching

-- :info data Bool = False | True

-- >>> not True
-- False

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

-- >>> changeMood Woot
-- Blah

-- >>> changeMood Blah
-- Woot

changeMoodPattern :: Int -> Mood -> Mood

changeMoodPattern 3 Blah = Blah
changeMoodPattern _ Blah = Woot
changeMoodPattern _ Woot = Blah

-- >>> changeMoodPattern 3 Blah
-- Blah

-- >>> changeMoodPattern 3 Blah
-- Blah

-- >>> changeMoodPattern 233 Woot
-- Blah

-- Fractional
-- (/) :: Fractional a => a -> a -> a

-- >>> :t 1 / 2
-- 1 / 2 :: forall a. Fractional a => a

one, two :: Float
one = 1
two = 2

-- >>> one / two
-- 0.5

three, four :: Double
three = 3
four = 4

-- >>> three / four
-- 0.75

five :: Float 
five = 5

six :: Double 
six = 6

-- >>> five / six
-- Couldn't match expected type ‘Float’ with actual type ‘Double’

-- >>> six / five
-- Couldn't match expected type ‘Double’ with actual type ‘Float’

--- Eq and Ord

-- >>> :t (==)
-- (==) :: forall a. Eq a => a -> a -> Bool

-- >>> :t (<)
-- (<) :: forall a. Ord a => a -> a -> Bool

-- >>> :t 3 == 4
-- 3 == 4 :: Bool
-- >>> 3 == 4
-- False

-- >>> :t 3 < 4
-- 3 < 4 :: Bool

-- >>> "jack" < "jill"
-- True

-- >>> [1,4] < [3,1]
-- True
