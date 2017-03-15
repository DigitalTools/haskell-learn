multThree :: (Num a) => a -> a -> a -> a  
multThree x y z = x * y * z  

-- multThree :: (Num a) => a -> (a -> (a -> a))

-- (Num a) => a -> (a -> a)

-- let multTwoWithNine = multThree 9

-- let multWithEighteen = multTwoWithNine 2 

vol :: (Num a) => a -> a -> a -> a
vol a b c = a * b * c

volD4 = vol 4

compareWithHundred :: (Num a, Ord a) => a -> Ordering  
compareWithHundred x = compare x 100

revcompare x y = compare y x

compareWithHundred' :: (Num a, Ord a) => a -> Ordering  
compareWithHundred' = revcompare 100 

divideByTen :: (Floating a) => a -> a  
divideByTen = (/10)

divideTenBy :: (Floating a) => a -> a  
divideTenBy = (10/)

isUpperAlphanum :: Char -> Bool  
isUpperAlphanum = (`elem` ['A'..'Z']) 

