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

nudge :: Shape -> Float -> Float -> Shape  
nudge (Circle (Point x y) r) a b = Circle (Point (x+a) (y+b)) r  
nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point (x1+a) (y1+b)) (Point (x2+a) (y2+b))  

mc = nudge (Circle (Point 34 34) 10) 5 10  

baseCircle :: Float -> Shape  
baseCircle r = Circle (Point 0 0) r  
  
baseRect :: Float -> Float -> Shape  
baseRect width height = Rectangle (Point 0 0) (Point width height)  

nc = nudge (baseRect 40 100) 60 23  
