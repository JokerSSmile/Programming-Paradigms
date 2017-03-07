--3
sumLists [] [] = []
sumLists [] x = x
sumLists x [] = x
sumLists (x:xs) (y:ys) = (x + y) : sumLists xs ys

--4
position xs a
	| length list > 0 = head list
	| otherwise = -1
	where list = [i | (i, x) <- zip [0..] xs, x == a]

--5
f1 n = sum [0..n]

--6
f2 n = sum [n - x | x <- [1..n]]