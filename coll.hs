
gen = [3,7,9,8,5,4,2]

takeTo :: (a -> Bool) -> [a] -> [a]

takeTo f xs = foldr (\x acc -> if f x then [x] else x:acc) [] xs

{-

takeTo even [3,7,9,8,5,4,2]

	1) x=2 acc=[]       --[even 2/T]--> ret=[2]
	2) x=4 acc=[2]      --[even 4/T]--> ret=[4]
	3) x=5 acc=[4]      --[even 5/F]--> ret=[5,4]
	4) x=8 acc=[5,4]    --[even 8/T]--> ret=[8]
	5) x=9 acc=[8]      --[even 9/F]--> ret=[9,8]
	6) x=7 acc=[9,8]    --[even 7/F]--> ret=[7,9,8]
	7) x=3 acc=[7,9,8]  --[even 3/F]--> ret=[3,7,9,8]

--> [3,7,9,8]

全ての値を走査するが、条件(even)に合致する値のときに
アキュムレータを初期化することで、それまでの蓄積を削除する

-}

takeTo' _ [] = []

takeTo' f (x:xs)
  | f x = [x]
  | otherwise = x : takeTo' f xs

{-

takeTo' even [3,7,9,8,5,4,2]

	1) 3 : takeTo f [7,9,8,5,4,2]
	2) 3 : 7: takeTo f [9,8,5,4,2]
	3) 3 : 7: 9 : takeTo f [8,5,4,2]
	4) 3 : 7: 9 : [8]

条件に合致する値が現れるまで蓄積する

-}
