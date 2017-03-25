data List a = Empty | Cons { listHead :: a, listTail :: List a} deriving (Show, Read, Eq, Ord)  

-- 5 `Cons` Empty

-- 4 `Cons` (5 `Cons` Empty)

