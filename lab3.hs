module Lab3 where
--1
listnums n
	| n > 0 = n:(listnums (n-1))
	| otherwise = []
	
--2
secondlastlist [] = [] 
secondlastlist (x : xs)
	| null x = secondlastlist xs
	| otherwise = last x : secondlastlist xs

--3
myunion  [] ys = ys
myunion  (x:xs) ys
    | elem x ys = myunion xs ys
    | otherwise = x : (myunion xs ys)
	
--4
mysubst  [] ys = []
mysubst  (x:xs) ys
    | notElem x ys = x : (mysubst xs ys)
	| otherwise = mysubst xs ys
	
--5
--returns - 1 if no such elements
getNth n xs
	| n < (length xs) = xs !! n
	| otherwise = -1

f n xs = map (getNth n) xs