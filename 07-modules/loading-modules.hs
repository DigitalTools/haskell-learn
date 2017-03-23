-- import <module-name>

-- import Data.List  
import Data.List (nub, sort, group)  

-- except
-- import Data.List hiding (nub) 

-- import qualified Data.Map

-- simplification with alias
-- import qualified Data.Map as M  

-- ghci > :m + Data.List

numUniques :: (Eq a) => [a] -> Int  
numUniques = length . nub 



produceCounters = (\l@(x:xs) -> (x,length l))
-- l as (x:xs)
my_list = [1,1,1,1,2,2,2,2,3,3,2,2,2,5,6,7]
stats = map produceCounters . group . sort $ my_list

-- :t partition
-- partition :: (a -> Bool) -> [a] -> ([a], [a])

-- find (\(val,y,m,d) -> val > 1000) stock
