-- Exercise 2
-- Who visited his/her homeworld in movie 3?

-- TA reference answer:
SELECT DISTINCT T.Character_Name FROM TimeTable T, Characters C
    WHERE C.Name = T.Character_Name 
        AND T.Planet_Name = C.Homeworld 
        AND T.Movie = 3;