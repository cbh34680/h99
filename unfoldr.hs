import Data.Bool (bool)
import Data.List (unfoldr)

f = unfoldr (\(n, i) ->
    let
      sum = n + i
      nxt = i + 1
    in
      bool Nothing (Just ((i, sum), (sum, nxt))) (i <= 10)
  ) (0, 1)
