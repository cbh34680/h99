
data BTree a = Empty | Node a (BTree a) (BTree a) deriving (Show, Read)

insert :: (Ord a) => a -> BTree a -> BTree a

insert x Empty = Node x Empty Empty

insert x org@(Node v l r)
  | x == v = org
  | x < v  = Node v (insert x l) r
  | otherwise = Node v l (insert x r)

construct :: (Ord a) => [a] -> BTree a

construct = foldl (\acc x -> insert x acc) Empty

