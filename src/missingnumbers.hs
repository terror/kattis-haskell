import Data.List

main = do
  input <- getContents
  let numbers = tail (map read (lines input) :: [Int])
  case [1 .. maximum numbers - 1] \\ numbers of
    [] -> putStrLn "good job"
    xs -> mapM_ print xs
