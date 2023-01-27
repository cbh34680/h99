import Data.List (unfoldr)

data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show)

insert :: (Num a, Ord a) => a -> (Tree a) -> (Tree a)

insert x Empty = Node x Empty Empty
insert x (Node v l r)
  | x == v     = Node v l r
  | x < v      = Node v (insert x l) r
  | otherwise  = Node v l (insert x r)



