import System.Random

rnd_permu :: [a] -> IO [a]

rotate xs n = take (length xs) . drop n $ cycle xs

rnd_permu [] = return []

{-
rnd_permu xs =
  do
    n <- randomRIO (0, length xs - 1)
    let (y:ys) = rotate xs n
    zs <- rnd_permu ys
    return (y:zs)
-}

rnd_permu xs =
  do
    (y:ys) <- randomRIO (0, length xs - 1) >>= return . rotate xs
    zs <- rnd_permu ys
    return (y:zs)
