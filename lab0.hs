generateList size = [1, 2..size]
getFirst15 lists = fst (splitAt 15 lists)

result = sum (getFirst15 (generateList 100))