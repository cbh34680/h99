import Data.List
import Debug.Trace

-- last2 xs = splitAt (length xs - 2) xs

atoi :: String -> Maybe Int

atoi cs = if all (flip elem ['0'..'9']) cs then Just (read cs :: Int) else Nothing


calc :: [Int] -> [String] -> Maybe Int

calc oxs []
  | length oxs == 1 = Just (head oxs)
  | otherwise = Nothing

calc oxs (ix:ixs) = case atoi ix of
  Just val -> calc (val : oxs) ixs
  Nothing  -> case ix of
    "+" -> next (+)
    "-" -> next (-)
    "*" -> next (*)
    "/" -> next div
    _   -> Nothing
    where
      next f
        | length oxs >= 2 = calc ((let [b,a] = take 2 oxs in f a b) : (drop 2 oxs)) ixs
        | otherwise = Nothing


f = calc []
-- ["6", "3", "/"]

