-- 1.
curry' :: ((a, b) -> c) -> (a -> b -> c)
curry' f = \x y -> f (x , y)
uncurry' :: (a -> b -> c) -> ((a, b) -> c)
uncurry' f = \(x , y) -> f x y

-- 2.
-- map f (filter p xs)

-- 3.
length' :: [b] -> Integer
length' = foldl (const . succ) 0

append' :: [a] -> [a] -> [a]
append' = flip (foldr (:))

flatten' :: [[a]] -> [a]
flatten' = foldr1 append'

flatmap' :: (a -> [b]) -> [a] -> [b]
flatmap' f = flatten' . map f

-- 4.
dec2nat :: [Integer] -> Integer
dec2nat = foldl (\x y -> 10 * x + y) 0

-- 5. 

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibs = scanl (+) 0 (1:fibs)
fibs' = 0 : scanl (+) 1 fibs

fib' n = fibs'!!n

-- 6. 
f = (5+) . (8/)

-- 7. 
fst' = uncurry const 
snd' = uncurry (flip const) 



