-- sum (filter (> 10) (map (*2) [2..10]))

sum $ filter (> 10) $ map (*2) [2..10].
