# 2023_IntroCom_HW8
SQL Assignment for Introduction to Computer (計算機概論), Fall 2023

## Introduction
MySQL is a relational database management system that is based on structured query language (SQL). MySQL has following advantages
- widely compatible
- databases are relational
- open source 
- easy to use

## Environment Setup

### MySQL 8.0

See https://dev.mysql.com/doc/mysql-installation-excerpt/8.0/en/

If you are using Linux, the following commands might work:
```
sudo apt-get update
sudo apt-get install mysql-server
# Check if mysql is up
sudo service mysql status
# See https://tableplus.io/blog/2018/10/how-to-start-stop-restart-mysql-server.html to start the MySQL server if the server is not started
```

You may need to [create an account](https://dev.mysql.com/doc/refman/8.0/en/create-user.html) or use root for MySQL (`sudo mysql`).
After installation, you should be able to load the database from `create_starwar.sql` and `load_starwar.sql` in this repository:

In the terminal
```
git clone https://github.com/gino79445/2023_IntroCom_HW8.git 
cd 2023_IntroCom_HW8
mysql -u username -p < data/create_starwar.sql
mysql --local-infile=1 -u username -p starwar < data/load_starwar.sql
```

### Playaround
After instruction above, you should now run up and enter MySQL. Then you could play with the SQL commands with MySQL like
```
mysql> show tables;
+-------------------+
| Tables_in_starwar |
+-------------------+
| characters        |
| planets           |
| time_table        |
+-------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM characters;
+------------------+---------+-----------+-------------+
| name             | race    | homeworld | affiliation |
+------------------+---------+-----------+-------------+
| Han Solo         | Human   | Corellia  | rebels      |
| Princess Leia    | Human   | Alderaan  | rebels      |
| Luke Skywalker   | Human   | Tatooine  | rebels      |
| Darth Vader      | Human   | Unknown   | empire      |
| Chewbacca        | Wookie  | Kashyyyk  | rebels      |
| C-3 PO           | Droid   | Unknown   | rebels      |
| R2-D2            | Droid   | Unknown   | rebels      |
| Obi-Wan Kanobi   | Human   | Tatooine  | rebels      |
| Lando Calrissian | Human   | Unknown   | rebels      |
| Yoda             | Unknown | Unknown   | neutral     |
| Jabba the Hutt   | Hutt    | Unknown   | neutral     |
| Owen Lars        | Human   | Tatooine  | neutral     |
| Rancor           | Rancor  | Unknown   | neutral     |
| PA Chen          | Human   | Unknown   | rebels      |
+------------------+---------+-----------+-------------+
13 rows in set (0.00 sec)

mysql> source sample/1.sql
+------------------+
| Character_Name   |
+------------------+
| Han Solo         |
| Lando Calrissian |
| Princess Leia    |
| Luke Skywalker   |
| R2-D2            |
+------------------+
5 rows in set (0.00 sec)
```
you can also check more sample queries in [sample/](sample/)(it's helpful). For more detailed query command, here's [some useful SQL tutorial](https://www.w3schools.com/sql/).

## Database
We use the [star war](https://www.starwars.com/databank) database containing three files: ``TimeTable.csv``, ``Characters.csv`` and ``Planets.csv``
- ``TimeTable.csv`` records for each character and movie, what planet and when did the character go to.
- ``Characters.csv`` contains for each character, what is his/her homeworld and affiliation.
- ``Planets.csv`` records the information about each planet.

## Requirement
In this assignment you are ask to write SQL queries that answer question below (one query per question) and run them with MySQL. The names of columns are shown in the parentheses ()
1. Find the names of characters affiliated with the rebels who have visited Tatooine. (Name) 
2. List the planets visited by Darth Vader in chronological order based on the time of arrival. (Planet_Name)
3. Retrieve the names of characters who have visited more than one planet. (Character_Name)
4. List the planets visited by Han Solo in Movie 1 and Movie 3.(Planet_Name)
5. For Luke Skywalker, for each movie that Luke appears in, what is the planet that has the different affiliation with him and that he travels to for the longest length of time? (Movie, Planet_Name)
6. How many times for each character to visit his/her homeworld? show character names and times appeared in TimeTable. (Name, Times)
7. List the names of characters who haven't made an appearance in any movie. (Name)
8. Which planet(s) have not been visited by any characters in all movies? (Name)
9. Find all characters that never visited any empire planets. (Name)
10. For each movie, which character(s) visited the highest number of planets? (Movie, Character_Name)

## Submission
You have to hand in your .zip file on ***NTU cool*** before **12/11 12:00 p.m.** with required format **(student ID in lowercase)**:
```
└── <your_student_ID>.zip
    └── <your_student_ID>/
        ├── 1.sql           -> SQL statement for problem 1
        ├── 2.sql           -> SQL statement for problem 1
        ├── ..
        └── 10.sql          -> SQL statement for problem 10
```
**any invalid format of submission would result in 0 points (e.g. .rar/.7z, ID with uppercase)**

## Grading 
* 10 points for each query 

## Note

- **The query answers must not contain duplicates**
- For this assignment, **creation of temporary tables is not allowed**, i.e., for each question, you have to write exactly one SQL statement
- **Any invalid format (e.g., .rar/.7z ..., missing report, missing screenshots) of the submission will result in 0 points.**

## Disclaimer
The database and questions are based on the previous TA's work.


