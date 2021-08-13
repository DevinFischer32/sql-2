-- Question 1 
--Find a count of how many tracks there are per genre. Display the genre name with the count.

SELECT COUNT(*), g.name --This line Selects all of track and genre name and counts
FROM track t       
JOIN genre g ON t.genre_id = g.genre_id  --This line joins two seperate tables using genre_id, which is located on both tables 
GROUP BY g.name  -- This line groups by genre name

-- Question 2 
--Find a count of how many tracks are the “Pop” genre and how many tracks are the “Rock” genre.

SELECT COUNT(*), g.name
From track t 
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock' -- Same as above but this filters the search
GROUP BY g.name

-- Question 3 
--Find a list of all artists and how many albums they have.

SELECT COUNT(*), a.name
FROM album al
JOIN artist a ON a.artist_id = al.artist_id
GROUP BY a.name