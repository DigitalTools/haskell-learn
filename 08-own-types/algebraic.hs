import Shapes

-- surfaces

sc = surface $ Circle (Point 10 20) 10
sr = surface $ Rectangle (Point 0 0) (Point 100 100)

-- Circle 10 20 5  
-- Rectangle 50 230 60 90 

concentricCircles = map (Circle (Point 10 20)) [4,5,6,6]

-- nudge

mc = nudge (Circle (Point 34 34) 10) 5 10  

-- baseRect

nc = nudge (baseRect 40 100) 60 23  
