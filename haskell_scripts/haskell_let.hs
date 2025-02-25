-- describeNumber :: Int -> String
-- describeNumber n
--   | n > 0     = "Positive number, next: " ++ show next
--   | n == 0    = "Zero"
--   | otherwise = "Negative number"
--   where
--     next = n + 1

describeNumber :: Int -> String
describeNumber n =
  let next = n + 1
  in if n > 0 then "Positive number, next: " ++ show next
              else if n == 0 then "Zero"
              else "Negative number"