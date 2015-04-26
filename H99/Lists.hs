import Test.QuickCheck

-- 1) Find the last element of a List
myLast :: [a] -> a
myLast [ ] = error "You passed an empty list."
myLast [x] = x
myLast (_ : xs) = myLast xs

prop_headRev xs = xs == [] || head (reverse xs) == myLast xs
prop_uniqueElem x = myLast (x : []) == x
	where types = x :: Int

-- 2) Find the last but one element of a List
lastButOne :: [a] -> a
lastButOne [] = myLast []
lastButOne xs = reverse xs !! 1

prop_uniqueElems x y = lastButOne (x : y : []) == x
	where types = (x :: Int, y :: Int)
prop_mimic xs = xs == [] ||
			    length xs == 1 || 
			    reverse xs !! 1 == lastButOne xs