import qualified Data.Map as Map  
import Data.Char (isUpper)

inserted = Map.insert 4 777 . Map.insert 5 600 . Map.insert 4 200 . Map.insert 3 100 $ Map.empty

-- fromList' :: (Ord k) => [(k,v)] -> Map.Map k v  
-- fromList' = foldr (\(k,v) acc -> Map.insert k v acc) Map.empty  

vecinos = Map.fromList [ ("v1", "canta"), ("v2", "bebe") ]
vecino2 = Map.lookup "v2" vecinos

by100 = Map.map (*100) $ Map.fromList [(1,1),(2,4),(3,9)]  
uppers = Map.filter isUpper $ Map.fromList [(1,'a'),(2,'A'),(3,'b'),(4,'B')]  

myList = Map.toList . Map.insert 9 2 $ Map.singleton 4 3  

phoneBook =   
    [("betty","555-2938")  
    ,("betty","342-2492")  
    ,("bonnie","452-2928")  
    ,("patsy","493-2928")  
    ,("patsy","943-2929")  
    ,("patsy","827-9162")  
    ,("lucille","205-2928")  
    ,("wendy","939-8282")  
    ,("penny","853-2492")  
    ,("penny","555-2111")  
    ]

phoneBookToMap :: (Ord k) => [(k, String)] -> Map.Map k String  
phoneBookToMap xs = Map.fromListWith (\number1 number2 -> number1 ++ ", " ++ number2) xs  

phoneBookToMap' :: (Ord k) => [(k, a)] -> Map.Map k [a]  
phoneBookToMap' xs = Map.fromListWith (++) $ map (\(k,v) -> (k,[v])) xs  

phoneMap = phoneBookToMap phoneBook

-- Data.Map.lookup "betty" phoneMap

phoneMap2 = phoneBookToMap' phoneBook

-- Data.Map.lookup "patsy" phoneMap2