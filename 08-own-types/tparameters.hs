data Car a b c = Car { company :: a  
                     , model :: b  
                     , year :: c   
                     } deriving (Show)  

tellCar :: (Show a) => Car String String a -> String  
tellCar (Car {company = c, model = m, year = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y  

yint = Car "Ford" "Mustang" 1967
ystr = Car "Ford" "Mustang" "nineteen sixty seven"

-- :t yint
-- :t ystr
