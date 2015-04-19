-- :l name to load script
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- The 'else' part is mandatory in Haskell. since every expression MUST retunr something
doubleSmallNumber x = if x > 100 then x else doubleMe x

-- Lists are constructed with head:tail operator. Strings are lists.
-- To get an element out of a list, do list !! num, num starts by 0.

maximum :: Ord a => [a] -> a
minimum [1,23,124,124,12,41,2,-903]
maximum [123,12,31,23,12,12,512,365,1]

sum :: Num a => [a] -> a
sum [22,1,123.2]
product 22 : [12]

elem :: Eq a => a -> [a] -> Bool
elem 4 [123,1,1,1]

-- repeat x is the same as Scala's Stream.const
repeat "x"
-- copy n times x
replicate n x
-- produce an infinite list of x:xs
cycle x:xs 

-- Lists by comprehension: 
-- [result | unit <- collection/source, comma-separated condition/s ]

-- Cool version of length, _ just as Scala
length ’ xs = sum [1 | _ <- xs ]




