
safeTail xs
  | null xs = []
  | otherwise = tail xs

splitOn :: Char -> String -> [String]

splitOn _ [] = []
splitOn sep cs = (takeWhile (/= sep) cs) : (splitOn sep . safeTail . dropWhile (/= sep) $ cs)
