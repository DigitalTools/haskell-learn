data Shape = Circle Float Float Float | Rectangle Float Float Float Float 

surface :: Shape -> Float
surface (Circle _ _ radius) = pi * radius^2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

sc = surface $ Circle 10 20 10
sr = surface $ Rectangle 0 0 100 100
