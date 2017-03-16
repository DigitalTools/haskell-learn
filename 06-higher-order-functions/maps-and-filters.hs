map' :: (a -> b) -> [a] -> [b]  
-- takes a function that takes an a and returns a b
-- takes a list of a's
-- returns a list of b's
map' _ [] = []  
map' f (x:xs) = f x : map f xs  

-- map (map (^2)) [[1,2],[3,4,5,6],[7,8]] 
-- in list of lists

-- more readable than comprehensions and lots of brackets

-- predicate: function that tells whether something is true or not

filter' :: (a -> Bool) -> [a] -> [a]  
filter' _ [] = []  
filter' p (x:xs)   
    | p x       = x : filter' p xs  
    | otherwise = filter' p xs  

-- filter even [1,5,3,2,1,6,4,3,2,1]

notNull x = not (null x)

-- filter notNull [[1,2,3],[],[3,4,5],[2,2],[],[],[]]  

quicksort :: (Ord a) => [a] -> [a]    
quicksort [] = []    
quicksort (x:xs) =     
    let smallerSorted = quicksort (filter (<=x) xs)  
        biggerSorted = quicksort (filter (>x) xs)   
    in  smallerSorted ++ [x] ++ biggerSorted  

numbers = [1..100000]

divisableBy3829 x = x `mod` 3829 == 0

largestNumbers = [100000, 99999..]

-- head (filter divisableBy3829 largestNumbers)

-- sum of all odd squares that are smaller than 10,000

-- map (^2) [1..]
-- takeWhile (<10000) (filter odd (map (^2) [1..]))
-- sum ( takeWhile (<10000) (filter odd (map (^2) [1..])) )

-- sum (takeWhile (<10000) [n^2 | n <- [1..], odd (n^2)])  

-- Collatz sequences

chain :: (Integral a) => a -> [a]  
chain 1 = [1]  
chain n  
    | even n =  n:chain (n `div` 2)  
    | odd n  =  n:chain (n*3 + 1)  

numLongChains :: Int  
numLongChains = length (filter isLong (map chain [1..100]))  
    where isLong xs = length xs > 15 

isLong xs = length xs > 15

-- filter isLong (map chain [1..100])

listOfFuns = map (*) [0..] 
-- (listOfFuns !! 4) 5  

