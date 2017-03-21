sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs  

binary function

a starting value (I like to call it the accumulator)

a list to fold up

sum'' :: (Num a) => [a] -> a  
sum'' = foldl (+) 0  

elem' :: (Eq a) => a -> [a] -> Bool  
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys  

map' :: (a -> b) -> [a] -> [b]  
map' f xs = foldr (\x acc -> f x : acc) [] xs  
-- map' f xs = foldl (\acc x -> acc ++ [f x]) [] x
-- map' (+3) [1,2,3]

-- we usually use right folds when we're building up new lists from a list.
-- because ++ function is much more expensive than :

-- right folds work on infinite lists, whereas left ones don't! 
-- if you take an infinite list at some point and you fold it up from the right, you'll eventually reach the beginning of the list

-- If the function doesn't make sense when given an empty list

filter' :: (a -> Bool) -> [a] -> [a]  
filter' p = foldr (\x acc -> if p x then x : acc else acc) []  
  
head' :: [a] -> a  
head' = foldr1 (\x _ -> x)  
  
last' :: [a] -> a  
last' = foldl1 (\_ x -> x)  

-- how many elements does it take for the sum of the roots of all natural numbers to exceed 1000?

sqrtSums :: Int  
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1  
