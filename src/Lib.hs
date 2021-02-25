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
module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "hello"
