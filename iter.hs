
myIterate :: (a -> a) -> a -> [a]

myIterate f x = x : myIterate f (f x)

--

nextn :: Int -> Int

nextn n
  | mod3 == 0 = div n 3
  | mod3 == 1 = n * 2 + 1
  | mod3 == 2 = n * 2 + 2
  where mod3 = mod n 3

nums :: Int -> [Int]

-- nums = iterate nextn

nums x = x : nums (nextn x)
