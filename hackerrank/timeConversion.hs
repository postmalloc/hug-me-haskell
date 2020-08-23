import Text.Printf
convert t = do
    let h = read $ take 2 t :: Integer
    let ampm = drop 8 t
    let hms = take 8 t
    if ampm == "PM" && h /= 12 
        then printf "%02d" (h + 12) ++ drop 2 hms
    else if ampm == "AM" && h == 12
        then "00" ++ drop 2 hms 
    else hms

main = interact convert
