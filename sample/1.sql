-- Exercise 1
-- Who had been to Endor in movie 3?

-- TA reference answer:
SELECT DISTINCT T.Character_Name FROM TimeTable T
    WHERE T.Planet_Name = "Endor" AND T.Movie = 3;