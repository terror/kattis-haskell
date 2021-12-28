f :: Integer -> Integer -> Integer -> String
f n x y
  | n `mod` x == 0 && n `mod` y == 0 = "FizzBuzz"
  | n `mod` x == 0 = "Fizz"
  | n `mod` y == 0 = "Buzz"
  | otherwise = show n

t :: [a] -> (a, a, a)
t [x, y, z] = (x, y, z)

main = do
  input <- getLine
  let (x, y, n) = t (map read (words input) :: [Integer])
  mapM_ (putStrLn . (\n -> f n x y)) [1 .. n]
