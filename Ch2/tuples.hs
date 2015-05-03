-- Get all combinations on triangles
triangles = [(a, b, c) | a <- [1..100], b <- [1..100], c <- [1..100]]

trd (_, _, t) = t

-- Combinations of all right triangles
rightTriangles = [(a,b,c) | (a,b,c) <- triangles, a^2 + b^2 == c^2]
