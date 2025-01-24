-- module Main where

-- main :: IO ()
-- main = putStrLn "Hello, Haskell!"

-- Enabling the use of text literals
{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import Data.Monoid() --(mconcat)

-- Main Entry Point
main :: IO()
-- Creating Scotty web server on port 3000

main = scotty 3000 $ do
    -- Define a route for HTTP GET requests to the root "/" URL
    get "/" $ do
        -- Return a simple text message
        text "Haskel says: Hello Earth!"

    get "/:word" $ do
        beam <- pathParam "word"
        html $ mconcat["<h1>Scotty, ", beam, " me up!</h1>"]
