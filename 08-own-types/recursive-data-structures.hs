-- data List a = Empty | Cons { listHead :: a, listTail :: List a} deriving (Show, Read, Eq, Ord)  

-- 5 `Cons` Empty

-- 4 `Cons` (5 `Cons` Empty)

infixr 5 :-:  
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)  

-- 3 :-: 4 :-: 5 :-: Empty
-- let a = 3 :-: 4 :-: 5 :-: Empty 
-- 100 :-: a

{-
 -infixr 5  ++ 
 -(++) :: [a] -> [a] -> [a]  
 -[]     ++ ys = ys  
 -(x:xs) ++ ys = x : (xs ++ ys)  
 -}

infixr 5 .++  
(.++) :: List a -> List a -> List a   
Empty .++ ys = ys  
(x :-: xs) .++ ys = x :-: (xs .++ ys)  

-- a = 3 :-: 4 :-: 5 :-: Empty 
-- b = 6 :-: 7 :-: Empty  
-- a .++ b  

