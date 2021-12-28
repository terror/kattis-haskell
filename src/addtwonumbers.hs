main = do
  line <- getLine
  print (sum (map read (words line) :: [Int]))
