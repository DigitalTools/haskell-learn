data Person = Person { firstName :: String  
                     , lastName :: String  
                     , age :: Int  
                     } deriving (Eq)  

mikeD = Person {firstName = "Michael", lastName = "Diamond", age = 43}  
adRock = Person {firstName = "Adam", lastName = "Horovitz", age = 41}  
mca = Person {firstName = "Adam", lastName = "Yauch", age = 44}  
mac = mca == adRock  
-- false
mia = mikeD == adRock  
-- false
mimi = mikeD == mikeD  
-- true
minew = mikeD == Person {firstName = "Michael", lastName = "Diamond", age = 43}   
-- true

bboys = [mca, adRock, mikeD]

m_in_bboys = mikeD `elem` bboys

