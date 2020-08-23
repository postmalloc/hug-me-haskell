numToWord n = do
    case n of
        1 -> "one"
        2 -> "two"
        3 -> "three"
        4 -> "four"
        5 -> "five"
        6 -> "six"
        7 -> "seven"
        8 -> "eight"
        9 -> "nine"
        10 -> "ten"
        11 -> "eleven"
        12 -> "twelve"
        13 -> "thirteen"
        14 -> "fourteen"
        15 -> "quarter"
        16 -> "sixteen"
        17 -> "seventeen"
        18 -> "eighteen"
        19 -> "nineteen"
        20 -> "twenty"
        30 -> "half"
        _ -> do let tens = 10 * (n `div` 10)
                    ones = n `mod` 10
                if tens >= 30 then numToWord (60 - n)
                else numToWord tens ++ " " ++  numToWord ones

addSfx n
    | n == 1    = " minute"
    | n == 59    = " minute"
    | n == 15   = ""
    | n == 30   = ""
    | n == 45   = ""
    | otherwise = " minutes"
    
timeInWords [h, 0] = numToWord h ++ " o' clock"
timeInWords [h, 30] = "half past " ++ numToWord h
timeInWords [h, m]
    | m <= 30 = numToWord m ++ addSfx m ++ " past " ++ numToWord h
    | m > 30 = numToWord m ++ addSfx m ++ " to " ++ numToWord (h + 1)

main = interact $ (timeInWords . map read . words)