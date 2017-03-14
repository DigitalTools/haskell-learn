-- :t head
-- type variables head :: [a] -> a 

-- :t fst
-- fst :: (a, b) -> a 

-- infix (prefix and suffix parentheses) function
-- :t (==)

-- (==) :: (Eq a) => a -> a -> Bool
-- class constraint (Eq a)

-- (Eq a) => a -> [a] -> Bool
-- uses ==

--  :t (>)
-- (>) :: (Ord a) => a -> a -> Bool

-- :t (compare)
-- (compare) :: Ord a => a -> a -> Ordering

-- Enum
-- succ pred

-- Bounded
-- tuples if components are also Bounded
-- maxBound :: (Bool, Int, Char)  
-- (True,2147483647,'\1114111')

-- polymorphic constants
-- 20 :: Double
-- 20.0

-- :t (*)
-- (*) :: (Num a) => a -> a -> a

-- Integrals to play nice with floats/doubles
-- fromIntegral (length [1,2,3,4]) + 3.2