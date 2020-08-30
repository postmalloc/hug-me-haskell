module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = case planet of
  Mercury -> (earthYears seconds) / 0.2408467 
  Venus -> (earthYears seconds) / 0.61519726 
  Earth -> (earthYears seconds) / 1.0 
  Mars -> (earthYears seconds) / 1.8808158 
  Jupiter -> (earthYears seconds) / 11.862615 
  Saturn -> (earthYears seconds) / 29.447498 
  Uranus -> (earthYears seconds) / 84.016846 
  Neptune -> (earthYears seconds) / 164.79132 
  where earthYears s = s / (365.25*24*60*60)
