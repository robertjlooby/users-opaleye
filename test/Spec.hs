{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Users.TestSpec
import Web.Users.Opaleye ()

import Database.PostgreSQL.Simple
import Test.Hspec

main :: IO ()
main =
    do conn <- connectPostgreSQL "postgres://robertlooby@localhost:5432/users"
       hspec $ makeUsersSpec conn
