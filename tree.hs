import Data.List (unfoldr, nub)

data Tree a = E | Node a (Tree a) (Tree a) deriving (Show)

insert :: (Num a, Ord a) => a -> (Tree a) -> (Tree a)

insert x E = Node x E E
insert x (Node v l r)
  | x == v     = Node v l r
  | x < v      = Node v (insert x l) r
  | otherwise  = Node v l (insert x r)

gen n = map (+ n) $ nub . concat . zipWith (\x y -> [x,y]) [0,10..] $ [0,-10..]

dat100 = reverse $ take 10 $ gen 100
dat105 = reverse $ take 10 $ gen 105

tree100 = foldr insert E dat100
tree105 = foldr insert tree100 dat105

treeSum :: (Num a) => Tree a -> a

treeSum E = 0
treeSum (Node x l r) = x + (treeSum l) + (treeSum r)

treeList E = []
treeList (Node x l r) = [x] ++ (treeList l) ++ (treeList r)
