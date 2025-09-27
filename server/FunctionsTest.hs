module FunctionsTest where

import Main (testWord, mark, removeOne)
import Test.HUnit

testCases :: Test
testCases =
  TestList
    [
        -- teste de algumas situações da função testWord, em que a primeira palavra é a palavra digitada pelo usuário e a segunda é a palavra correta
        TestCase $ assertEqual "Test 1 for testWord" [2,2,0,0,0,2] (testWord "banana" "baleia"),
        TestCase $ assertEqual "Test 2 for testWord" [2,2,2,2,2,2] (testWord "mogoso" "mogoso"),
        TestCase $ assertEqual "Test 3 for testWord" [1,0,0,0,0,1] (testWord "alheio" "portas"),
        TestCase $ assertEqual "removeOne: remove a" "lheio" (removeOne 'a' "alheio"),
        TestCase $ assertEqual "removeOne: remove b" "adica" (removeOne 'b' "abdica"),
        TestCase $ assertEqual "removeOne: remove x" "banana" (removeOne 'x' "banana"),
        TestCase $ assertEqual "removeOne: remove a, but more than one a" "bnana" (removeOne 'a' "banana")
    ]

main :: IO ()
main = do
  putStrLn "Running tests..."
  runTestTT testCases
  return ()
