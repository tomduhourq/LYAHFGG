import Test.QuickCheck

-- 1) Find the last element of a List
myLast :: [a] -> a
myLast [ ] = error "You passed an empty list."
myLast [x] = x
myLast (_ : xs) = myLast xs

prop_headRev xs = xs == [] || head (reverse xs) == myLast xs
prop_uniqueElem x = myLast (x : []) == x
	where types = x :: Int