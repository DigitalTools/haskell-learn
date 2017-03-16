double x = x * 2

applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x)  

-- if function receives 1 function that receives 1 parameter
-- then pass that function to the point it requires only 1 paramenter

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]  
zipWith' _ [] _ = []  
zipWith' _ _ [] = []  
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys  

flip' :: (a -> b -> c) -> (b -> a -> c)  
flip' f = g  
    where g x y = f y x 

div_inv = flip' (/)

flip2 :: (a -> b -> c) -> b -> a -> c  
flip2 f y x = f x y  
