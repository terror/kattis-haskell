t :: [a] -> (a, a)
t [x, y] = (x, y)

main = do
  line <- getLine
  let (a, b) = t (map read (words line) :: [Int])
  print (2 * b - a)
