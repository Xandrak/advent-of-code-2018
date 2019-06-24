--stack --resolver lts-13.20 script

main = do
  strs <- getContents
  let listStrs = lines strs
      twoOccs = length . filter (== 2) $ fmap fooTwo listStrs
    -- threeOcc = fooThree listStrs
    -- checksum = twoOcc (*) threeOcc
  print twoOccs

fooTwo :: [Char] -> Int
fooTwo str =
  case str of
    h : t -> scanl countOccs h t
    [] -> 0

countOccs :: Char -> [Char] -> Int
countOccs c str =
  length $ filter (== c) str
