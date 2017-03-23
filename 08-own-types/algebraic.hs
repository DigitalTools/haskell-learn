data Point = Point Float Float deriving (Show)  
-- same "Point" name for data type and calue constructor, because there just one
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)  

surface :: Shape -> Float
surface ( Circle _ radius ) = pi * radius^2
surface ( Rectangle (Point x1 y1) (Point x2 y2) ) = (abs $ x2 - x1) * (abs $ y2 - y1)

sc = surface $ Circle (Point 10 20) 10
sr = surface $ Rectangle (Point 0 0) (Point 100 100)

-- Circle 10 20 5  
-- Rectangle 50 230 60 90 

concentricCircles = map (Circle (Point 10 20)) [4,5,6,6]
