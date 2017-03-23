import qualified Data.Set as Set  

text1 = "I just had an anime dream. Anime... Reality... Are they so different?"
text2 = "The old man left his garbage can out and now his trash is all over my lawn!"
set1 = Set.fromList text1
set2 = Set.fromList text2

-- set1
-- set2

intersection = Set.intersection set1 set2  

difference12 = Set.difference set1 set2  
difference21 = Set.difference set2 set1 

union = Set.union set1 set2

setA = Set.fromList ["bici", "ajedrez", "narrativa"]
setB = Set.fromList ["ajedrez", "narrativa"]
setC = Set.fromList ["narrativa", "ajedrez"]

isSubset = setB `Set.isProperSubsetOf` setA

isSubset2 = setB `Set.isProperSubsetOf` setC