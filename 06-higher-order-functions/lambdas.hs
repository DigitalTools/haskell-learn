chain :: (Integral a) => a -> [a]  
chain 1 = [1]  
chain n  
    | even n =  n:chain (n `div` 2)  
    | odd n  =  n:chain (n*3 + 1) 

numLongChains :: Int  
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))

-- zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1] [1,2,3,4,5]  

-- map (\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]  

addThree :: (Num a) => a -> a -> a -> a  
addThree x y z = x + y + z  

flip' :: (a -> b -> c) -> b -> a -> c  
flip' f = \x y -> f y x  

