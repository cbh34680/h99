import Text.Read (readMaybe)

operators = [("+",(+)), ("-",(-)), ("*",(*)), ("/",div)]

gen = ["*", "+", "1", "5", "+", "2", "3"]

polish :: [String] -> Maybe [Integer]

polish [] = Just []

polish (s:ss) = case lookup s operators of
  Just o  -> case polish ss of
               Just (x:y:ns) -> Just (x `o` y : ns)
               _             -> Nothing
  Nothing -> case readMaybe s of
               Just n  -> fmap (n :) $ polish ss
               _       -> Nothing
