import qualified Data.Map as Map

type PhoneNumber = String  
type Name = String  
type PhoneBook = [(Name,PhoneNumber)]  

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool  
inPhoneBook name pnumber pbook = (name,pnumber) `elem` pbook  

type AssocList k v = [(k,v)]  

type IntMap v = Map.Map Int v  

-- same
-- partially applied
type IntMap2 = Map.Map Int  

-- All it means is that we can refer to its type by using different names
-- error AssocList [(1,2),(4,5),(7,9)]
al = [(1,2),(3,5),(8,9)] :: AssocList Int Int
