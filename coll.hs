
gen = [3,7,9,8,5,4,2]

takeTo :: (a -> Bool) -> [a] -> [a]

takeTo f xs = foldr (\x acc -> if f x then [x] else x:acc) [] xs

{-

takeTo even [3,7,9,8,5,4,2]

	1. x=2 acc=[]       --[even 2/T]--> ret=[2]
	2. x=4 acc=[2]      --[even 4/T]--> ret=[4]
	3. x=5 acc=[4]      --[even 5/F]--> ret=[5,4]
	3. x=8 acc=[5,4]    --[even 8/T]--> ret=[8]
	3. x=9 acc=[8]      --[even 9/F]--> ret=[9,8]
	3. x=7 acc=[9,8]    --[even 7/F]--> ret=[7,9,8]
	3. x=3 acc=[7,9,8]  --[even 3/F]--> ret=[3,7,9,8]

--> [3,7,9,8]

-}
