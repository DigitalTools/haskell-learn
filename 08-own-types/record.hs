data Person = Person { firstName :: String  
                     , lastName :: String  
                     , age :: Int  
                     , height :: Float  
                     , phoneNumber :: String  
                     , flavor :: String  
                     } deriving (Show)   

guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"  

gfn = firstName guy
gh = height guy
gf = flavor guy

she = Person { firstName="Romi", height=1.67, flavor="fresa",
  lastName = "",
  age = -1,
  phoneNumber = ""
}

sh = height she
