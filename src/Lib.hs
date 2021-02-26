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

module Lib 
    (
        someFunc,
        triple,
        addMe,
        addMeInfix,
        divMeByTwo,
        divMeByTwoInfix,
        funcSecondAbove,
        funcFirstBelow,
        two
    )where

someFunc :: IO ()
someFunc = putStrLn "hello"


triple :: Int -> Int
triple x = x * 3

{-
    https://www.youtube.com/watch?v=eI0A0Avparw

    infix example:
        -- (+) :: [a] -> [a] -> [a]
        addMe a = (+) a 10

    infix info: 
    in repl:
        :i `div` 
    repl output: 
        ...
        div :: a -> a -> a
        ...
        infixl 7 `div` left associative number is precedence, like order of operations
-}
addMe :: Int -> Int
addMe a = a + 10

addMeInfix :: Int -> Int
addMeInfix a = (+) a 10

divMeByTwo :: Int -> Int
divMeByTwo a = div a 2

divMeByTwoInfix :: Int -> Int
divMeByTwoInfix a = a `div` 2


{-
    order does not matter when modules are loaded,
    but it does matter in the repl. Think of hoisting 
    in javascript. 
-}
funcSecondAbove :: Int
funcSecondAbove  = funcFirstBelow two

funcFirstBelow :: Int -> Int
funcFirstBelow a = a + 2

two :: Int
two = 2


-- >>> funcFirstBelow two
-- 4

{-
    let scope example below:
-}

-- NOTE:: let clauses will not allow type definitions
letFunc :: Int 
letFunc =
    let 
        letFuncOne :: Int -> Int
        letFuncOne a = a + 2

        letFuncTwo :: Int
        letFuncTwo = 12
    in
        letFuncOne letFuncTwo

-- >>> letFunc
-- 14

-- >>> letFuncTwo
-- Variable not in scope: letFuncTwo

-- where clauses

whereFunc :: Int
whereFunc = numOne + numTwo
    where
        numOne :: Int
        numOne = 1

        numTwo :: Int
        numTwo = 2

-- >>> whereFunc
-- 3

-- >>> :t whereFunc
-- whereFunc :: Int
