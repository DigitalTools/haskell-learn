# Higher Order Functions

- can take functions as parameters
- can return functions as return values

- define what stuff is

## Curried

- Partially applied functions

## High order functions

## Maps and filters

## Folds

### foldl, foldr

- we usually use right folds when we're building up new lists from a list.
  - because ++ function is much more expensive than :

- right folds work on infinite lists, whereas left ones don't! 
- if you take an infinite list at some point and you fold it up from the right, you'll eventually reach the beginning of the list

### foldl1, foldr1

- If the function doesn't make sense when given an empty list

### scanl, scanr

- they report all the intermediate accumulator states 
- filter doesn't work on infinite lists

## Function application with $

- $ function has the lowest precedence
- function application with $ is right-associative.

## Function composition

- is right-associative
