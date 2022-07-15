import Data.List
compac [] = []
compac xs = map (\x -> if length x > 1 then [head x, length x ] else x) $ group xs 

main = do
    print $ compac [] -- == []
    print $ compac [1,1,1] -- == [[1,3]]
    print $ compac [1,2,3] -- == [[1],[2],[3]]
    print $ compac [2,2,2,3,4,4,2,9,5,2,4,5,5,5] -- == [[2,3],[3],[4,2],[2],[9],[5],[2],[4],[5,3]]