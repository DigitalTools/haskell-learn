doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

-- lists

lostNumbers = [4,8,15,16,23,42]

two = [1,2,3,4] ++ [9,10,11,12] 

hey = ['h','o'] ++ ['l','a'] 

miau = 'A':" SMALL CAT"

ros = 5:[1,2,3,4]

first_char = "Steve Buscemi" !! 0

second_number = [9.4,33.2,96.2,11.2,23.25] !! 1

-- lists are compared in lexicographical order
greater = [3,2,1] > [2,1,0]
more_elements = [3,4,2] > [3,4]

head_ = head [5,4,3,2,1]
tail_ = tail [5,4,3,2,1]
last_ = last [5,4,3,2,1]
init_ = init [5,4,3,2,1]

len = length [5,4,3,2,1]

is_null = null [1,2,3]

reverse_ = reverse [5,4,3,2,1]

take3 = take 3 [5,4,3,2,1]

drop3 = drop 3 [8,4,2,1,5,6]

-- minimum_
-- maximum_

is_there = 4 `elem` [3,4,5,6]


-- ranges

_1to20 = [1..20]

_KtoZ = ['K'..'Z']

_3by3 = [3,6..20]

-- it won't try to evaluate the infinite list immediately
take24 = take 24 [13,26..]

cycle_ = take 10 (cycle [1,2,3])


-- comprehension

function = [x*2 | x <- [1..10], x*2 >= 12]

from7 = [7..13]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- predicate | x <- xs, odd x
boomBangs_ = boomBangs from7

odds xs = [ x | x <- xs, odd x]
odds_ = odds from7

evens xs = [ x | x <- xs, even x]
evens_ = evens from7

not_gold xs = [ x | x <- xs, x /= 13, x /= 15 ]
to25 = [10..20]
not_gold_ = not_gold to25

-- [ x*y | x <- [2,5,10], y <- [8,10,11]] 

-- [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]  

nouns = ["cleta", "bici"]
adjectives = ["veloz", "audaz"]
tuplas = [noun ++ " " ++ adj | adj <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs]

len2 = length' "hola"


-- tuples (a,b,c)


-- list  [[1,2],[8,11,5],[4,5]]
-- tuple [[1,2],[8,11]  ,[4,5]]

-- zip ~ join in tuples

rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]  


