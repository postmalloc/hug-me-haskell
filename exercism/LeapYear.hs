module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year = if 0 == mod year 4
                    then if 0 == mod year 100
                      then if 0 == mod year 400
                        then True
                        else False
                      else True
                    else False
