-- Exercise 4
-- List the planets and movies Luke Skywalker has been to at the same time there is at least one human on the planet, too?

-- TA reference answer:
SELECT T_Luke.Planet_Name, T_Luke.Movie
FROM 
    TimeTable T_Luke
WHERE 
    T_Luke.Character_Name = 'Luke Skywalker' AND 
    EXISTS (
        SELECT * FROM TimeTable T
        WHERE
        T.Character_Name != 'Luke Skywalker' AND 
        T.Planet_Name = T_Luke.Planet_Name AND 
        T.Movie = T_Luke.Movie AND
        T.Time_of_Departure >= T_Luke.Time_of_Arrival AND 
        T.Time_of_Arrival <= T_Luke.Time_of_Departure AND
        T.Character_Name IN (SELECT C.Name FROM Characters C
                             WHERE C.Race = 'Human')
    )
;