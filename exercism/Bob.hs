module Bob (responseFor) where
import Data.Char
import Data.List

responseFor :: String -> String
responseFor xs  
  | sil xs = "Fine. Be that way!"
  | q xs = "Sure."
  | y xs = "Whoa, chill out!"
  | qy xs = "Calm down, I know what I'm doing!"
  | xs == "Bob" = "Fine. Be that way!"
  | otherwise = "Whatever."
  where
    sil s = ((length $ nub $ filter (==' ') s) > 0  ) || (s == "")
    q' s = (=='?') $ last s
    y' s = (all isUpper fil) && (length fil > 0) where fil = filter isLetter $ tail $ reverse s
    q s = (q' s) && (not (y' s))
    y s = (not (q' s)) && (y' s)
    qy s = (q' s) && (y' s)

