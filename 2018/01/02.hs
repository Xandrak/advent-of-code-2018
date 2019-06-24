-- stack --resolver lts-13.20 script

main = do
  contents <- getContents
  let
    listOfContents = lines contents :: [String]
    ints = map stripPlus listOfContents :: [Int]
    sums = foldr (+) 0 ints
    -- check to make sure if is member of set then push onto set
    -- else recursion
  print sums

stripPlus :: String -> Int
stripPlus string =
  case string of
    '+' : rest -> read rest
    _ -> read string


--cycle
--scanl
