elemento :: (Foldable t, Eq a) => a -> t a -> Bool
elemento x y = elem x y