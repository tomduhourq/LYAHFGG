-- :l name to load script
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- The 'else' part is mandatory in Haskell. since every expression MUST retunr something
doubleSmallNumber x = if x > 100 
					  then x 
					  else 
					  	doubleMe x

-- Lists are constructed with head:tail operator. Strings are lists.
-- To get an element out of a list, do list !! num, num starts by 0.
