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

data Vector a = Vector a a a deriving (Show)  
  
vplus :: (Num t) => Vector t -> Vector t -> Vector t  
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)  
  
vectMult :: (Num t) => Vector t -> t -> Vector t  
(Vector i j k) `vectMult` m = Vector (i*m) (j*m) (k*m)  
  
scalarMult :: (Num t) => Vector t -> Vector t -> t  
(Vector i j k) `scalarMult` (Vector l m n) = i*l + j*m + k*n  

plus1 = Vector 3 5 8 `vplus` Vector 9 2 8  
plus2 = Vector 1 1 1 `vplus` Vector 2 2 2 `vplus` Vector 1.1 2.1 3.1
-- 4.1 5.1 6.1
mult1 = Vector 3 9 7 `vectMult` 10  
-- 30 90 70
mult2 = Vector 2 2 2 `scalarMult` Vector 4.0 3.0 2.0
-- 18.0
pm = Vector 2 9 3 `vectMult` (Vector 4 9 5 `scalarMult` Vector 9 2 4)  
-- 36 + 18 + 20 = 74
-- 148 666 222
