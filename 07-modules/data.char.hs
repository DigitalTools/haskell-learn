import Data.Char

cats = map generalCategory " \t\nA9?|"  
-- [Space,Control,Control,UppercaseLetter,DecimalNumber,OtherPunctuation,MathSymbol]

-- findKey :: (Eq k) => k -> [(k,v)] -> v  
-- findKey key xs = snd . head . filter (\(k,v) -> key == k) $ xs  

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v  
findKey key [] = Nothing  
findKey key ((k,v):xs) = if key == k  
                            then Just v  
                            else findKey key xs  

--without recursion

findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v  
findKey' key = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing 

