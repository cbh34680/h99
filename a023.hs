import System.Random

rnd_select :: String -> Int -> IO String

{-
rnd_select str num = f num
  where
    f n
      | n == 0    = return []
      | otherwise = do
                      g <- newStdGen
                      let (v, newG) = random g :: (Int, StdGen)
                      xs <- f (n - 1)
                      return ((head . show $ v): xs)

rnd_select str num = f num
  where
    f 0 = return []
    f n = do
            x <- randomRIO (0, length str - 1) >>= return . (!!) str
            xs <- f (n - 1)
            return (x: xs)

-}

rnd_select str 0 = return []
rnd_select str n =
  do
    x <- randomRIO (0, length str - 1) >>= return . (!!) str
    xs <- rnd_select str (n - 1)
    return (x: xs)
