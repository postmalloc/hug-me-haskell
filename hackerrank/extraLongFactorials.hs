fac n
    | n == 0 = 1
    | otherwise = n * fac (n - 1)

main = do interact $ show . fac . (read::String->Integer)
