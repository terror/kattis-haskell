f :: [Integer] -> Char -> Integer
f xs c
  | c == 'A' = minimum xs
  | c == 'C' = maximum xs
  | otherwise = sum xs - (maximum xs + minimum xs)

main = do
  input <- getContents
  let numbers = map read (words (head (lines input))) :: [Integer]
  (putStrLn . unwords) (map (show . f numbers) (head (tail (lines input))))
