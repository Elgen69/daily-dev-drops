-- monad_parser.hs -
module Main where

import Control.Applicative
import Data.Char

newtype Parser a = Parser { run :: String -> [(a, String)] }

instance Functor Parser where
    fmap f p = Parser $ \s -> [(f a, r) | (a, r) <- run p s]

instance Applicative Parser where
    pure x = Parser $ \s -> [(x, s)]
    pf <*> pa = Parser $ \s -> [(f a, s'') | (f, s') <- run pf s, (a, s'') <- run pa s']

instance Monad Parser where
    p >>= f = Parser $ \s -> concat [run (f a) s' | (a, s') <- run p s]

instance Alternative Parser where
    empty = Parser $ const []
    p <|> q = Parser $ \s -> run p s ++ run q s

char :: Char -> Parser Char
char c = Parser $ \s -> case s of
    (x:xs) | x == c -> [(x, xs)]
    _ -> []

digit :: Parser Int
digit = Parser $ \s -> case s of
    (x:xs) | isDigit x -> [(digitToInt x, xs)]
    _ -> []

token :: Parser a -> Parser a
token p = p <* many (char ' ')

symbol :: Char -> Parser Char
symbol = token . char

parens :: Parser Int -> Parser Int
parens p = symbol '(' *> p <* symbol ')'

expr :: Parser Int
expr = term >>= rest
  where
    rest acc = (do
        symbol '+'
        t <- term
        rest (acc + t)) <|> pure acc

term :: Parser Int
term = parens expr <|> token digit

parseExpr :: String -> Maybe Int
parseExpr s = case run expr s of
    [(res, "")] -> Just res
    _ -> Nothing

main :: IO ()
main = do
    let test = "(1+(2+(3+4)))"
    putStrLn $ "Parsing: " ++ test
    case parseExpr test of
        Just n  -> putStrLn $ "Result: " ++ show n
        Nothing -> putStrLn "Parse error"
