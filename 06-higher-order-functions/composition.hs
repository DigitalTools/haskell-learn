-- map (negate . abs) [5,-3,-6,7,-3,2,-19,24]  
negated = map (negate . abs) [5,-3,-6,7,-3,2,-19,24]  

-- map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]  
other = map (negate . sum . tail) [[1..5],[3..6],[1..7]] 

-- sum (replicate 5 (max 6.7 8.9))
sumita = sum . replicate 5 . max 6.7 $ 8.9

-- fn x = ceiling (negate (tan (cos (max 50 x)))) 
fn = ceiling . negate . tan . cos . max 50  

oddSquareSum :: Integer  
-- oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]  
oddSquareSum =   
    let oddSquares = filter odd $ map (^2) [1..]  
        belowLimit = takeWhile (<10000) oddSquares  
    in  sum belowLimit  
