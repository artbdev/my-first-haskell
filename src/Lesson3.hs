module Lesson3 where

-- https://www.youtube.com/watch?v=k9lgXBbP2oM

lesson3String :: String 
lesson3String = "lesson 3 string"

myGreeting :: String
myGreeting = "Hello" ++ " world!"

hello :: String
hello = "Hello"

spikeMe :: Int 
spikeMe = 3

world :: String
world = "world!"

myGFunc :: IO ()
myGFunc = 
    do
        putStrLn myGreeting
        putStrLn secondGreeting
    where
        secondGreeting = concat [hello, " ", world]

-- concat :: [[a]] -> [a] a list of char lists..[[a]] as input, out is a list of all chars [a]
-- concat cannot mix types

concatPractice :: [Char]
concatPractice = concat ["hello", "  ", "sir"]

headString :: Char 
headString  = head "head"

tailString :: [Char]
tailString = tail "head"

takeString :: [Char]
takeString = take 4 tailString

