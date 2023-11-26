-- Exercise 3
-- Show the characters names and the total time they spent in each planet among the movies.

-- TA reference answer:
SELECT T.Character_Name, SUM(T.Time_of_Departure - T.Time_of_Arrival) FROM TimeTable T
    GROUP BY T.Character_Name;