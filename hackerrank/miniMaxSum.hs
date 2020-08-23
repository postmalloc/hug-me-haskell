import Data.List

main = do 
    interact $ (\x -> intercalate " " [(show . sum . take 4 . arr) x, (show . sum . tail . arr) x])
    where arr = sort . map (read::String->Int) . words
