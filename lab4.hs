module Lab4 where

-- Input: intersperse 0 [1,2,3,4]
-- Output: [1,0,2,0,3,0,4]
-- Input: intersperse '-' "Hello"
-- Output: "H-e-l-l-o"
-- x -> [] -> []
intersperse' x (y:ys) = y:concat[[x,z] | z <- ys]

-- splitAt' 0 xs = ([], xs)
-- splitAt' _ [] = ([], [])
-- splitAt' n (x:xs) = splitAt' ( n - 1 ) xs	
-- [] -> ([], [])
splitAt' 0 xs     = ([], xs)
splitAt' n []     = ([], [])
splitAt' n (x:xs) =  (x:ys, zs)
	where (ys, zs) = splitAt' (n - 1) xs

-- "hey" `isPrefixOf` "hey there!"  
-- True  
-- "hey" `isPrefixOf` "oh hey there!"  
-- False  
isPrefixOf' _ [] = False
isPrefixOf' [] _ = True
isPrefixOf' (x:xs) (y:ys) = x == y && isPrefixOf' xs ys

-- Input: foldr (+) 5 [1,2,3,4]
-- Output: 15
-- Input: foldr (/) 2 [8,12,24,4]
-- Output: 8.0
foldr' f z []     = z 
foldr' f z (x:xs) = f x (foldr' f z xs) 

-- Input: concat [[1,2,3], [1,2,3]]
-- Output: [1,2,3,1,2,3]
concat' xs = foldr' (++) [] xs