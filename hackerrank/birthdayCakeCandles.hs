import Data.List

main = do 
    interact $ (\x -> show $ length $ findIndices (== (maximum $ arr x)) $ arr x)
    where arr = map (read::String->Integer) . tail . words
