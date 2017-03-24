type PhoneNumber = String  
type Name = String  
type PhoneBook = [(Name,PhoneNumber)]  

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool  
inPhoneBook name pnumber pbook = (name,pnumber) `elem` pbook  

type AssocList k v = [(k,v)]  

type IntMap v = Map Int v  

-- same
-- partially applied
type IntMap2 = Map Int  
