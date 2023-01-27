import Data.Maybe(isJust)

gen = [('a', ('b','c')), ('b', ('d','e')), ('e', ('f','g'))]

find t s e
  | s == e = True
  | otherwise = case lookup s t of
     Nothing    -> False
     Just (l,r) -> find t l e || find t r e

test1 = find gen 'a' 'f'
