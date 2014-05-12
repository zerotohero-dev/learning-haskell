head1 :: [a] -> a
head1 [] = error "Can't call head on an empty list, dummy!"
head1 (x:_) = x
