initials :: String -> String -> String
initials firstName lastName = [f] ++ "." ++ [l] ++ "."
    where
        (f:_) = firstName
        (l:_) = lastName
