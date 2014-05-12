callmin = min 9 10
callmax = max 9 10

-- These two are equivalent.
evaluate1 = succ 9 + max 5 4 + 1
evaluate2 = (succ 9) + (max 5 4) + 1

-- infix notation
divide1 = div 92 10
divide2 = 92 `div` 10