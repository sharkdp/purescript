module Main where

data Person = Person String Boolean

getName :: Person -> String
getName p = case p of
              Person name true -> name
              _ -> "Unknown"

name :: String
name = getName (Person "John Smith" true)

main = Control.Monad.Eff.Console.log "Done"
