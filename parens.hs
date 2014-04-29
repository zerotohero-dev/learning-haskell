-- parenthesis are not for calling functions, they are just for
-- specifying precedence.

foo x = x + x

-- this is an error
-- functions have the highest precedence, so this will try to take
-- `foo` and `2` as and argument to `foo` whic is wrong.
-- operation1 = foo foo 2

-- this is equivalent to
-- `foo(foo(2))` in C
operation2 = foo (foo 2)