import Text.Read (readMaybe)

opes = [("+",(+)), ("-",(-)), ("*",(*)), ("/",div)]

gen = ["*","+","5","6","+","2","3"]

calc :: [String] -> Maybe [Int]

calc [] = Just []

calc (s:ss) = case lookup s opes of
  Just ope -> case calc ss of
    Just (n:m:ns) -> Just (n `ope` m : ns)
    Nothing -> Nothing
  Nothing  -> case (readMaybe s :: Maybe Int) of
    Just n  -> fmap (n:) $ calc ss
    Nothing -> Nothing
