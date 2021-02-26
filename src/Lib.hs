-- https://www.youtube.com/watch?v=1UyQ0fn6ke4&t=924s
-- single line comment
{-
    multi-line coment 
-}
{-
    holes:
        funcName _ then save
        compiler will give you hint
        on what type the function takes

    stack repl : to get interactive haskell console
        :q quit the console
        :h help

    ghcid : command to get compiler to wacth file for errors
-}

module Lib where

someFunc :: IO ()
someFunc = putStrLn "hello"

--evaluating function output 

-- >>> triple 4
-- 12
triple :: Int -> Int
triple x = x * 3

--evaluating type info of expression

-- >>> :t triple
-- triple :: Int -> Int

numberOne :: Int
numberOne = 1 

-- >>> numberOne