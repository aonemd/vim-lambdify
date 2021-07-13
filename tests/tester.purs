module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List, List(..), (:))
import Data.Foldable

main :: Effect Unit
main = do
  log $ show $ length' (1 : 2 : 3 : 4 : Nil)

length' :: List Int -> Int
length' = foldr (\x -> (+) 1) 0
