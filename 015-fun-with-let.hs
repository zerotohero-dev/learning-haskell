meaningOfLife = 4 * (let a = 9 in a + 1) + 2

localScopeTest = [let square x = x * x in (square 5, square 3, square 2)]

moreLet = (let a = 100; b = 200; c = 300 in a * b * c, let foo = " Hey "; bar = "there!" in foo ++ bar)
