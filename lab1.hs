-- 1
cort1 = ((1, 'a'), ("abc"))
getChar = snd (fst cort1)

-- 2
b1 = head (tail ['a', 'b', 'c'])
b2 = tail (head [['a', 'b'], ['c', 'd']])
b3 = tail (head (tail [['a', 'c', 'd'], ['a', 'b']]))
b4 = head (head (tail [['a', 'd'], ['b', 'c']]))

-- 3
calcOdd1 = [1, 3..20]
calcOdd2 = [x | x <- [1..20], odd  x]
calcOdd3 = filter odd [1..20]

-- 4
calcFermT n = n * (n + 1) / 2
fermListT n = map calcFermT [1..n]

-- 5
calcFermP n = (2 * n^3 + 3 * n^2 + n) / 6
fermListP n = map calcFermP [1..n]