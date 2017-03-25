-- data List a = Empty | Cons { listHead :: a, listTail :: List a} deriving (Show, Read, Eq, Ord)  

-- 5 `Cons` Empty

-- 4 `Cons` (5 `Cons` Empty)

infixr 5 :-:  
data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)  

-- 3 :-: 4 :-: 5 :-: Empty
-- let a = 3 :-: 4 :-: 5 :-: Empty 
-- 100 :-: a

