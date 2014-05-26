import Data.List

-- ghci > :m + Data.List

numUniques :: (Eq a) => [a] -> Int 
numUniques = length . nub

-- selective import
-- import Data.List (nub, sort)
-- import Data List hiding (nub)

-- import qualified Data.Map
-- Data.Map.filter ...

-- import qualified Data.Map as M
-- M.filter ... 
