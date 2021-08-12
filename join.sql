-- Question 1
SELECT * 
FROM invoice i
JOIN invoice_line il
ON i.invoice_id = il.invoice_id
WHERE unit_price > 0.99;  

-- Question 2
SELECT i.invoice_date, c.first_name, c.last_name, i.total 
FROM invoice i
JOIN customer c
ON c.customer_id = i.customer_id  

-- Question 3/4
SELECT c.first_name "Customer First", c.last_name"Customer Last", e.first_name "Employee First", e.last_name "Employee Last"
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id

-- Question 5
SELECT a.title, art.name
FROM album a 
JOIN artist art
ON a.artist_id = art.artist_id

-- Question 6
SELECT track_id, name
FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE name = 'Music'

-- Question 7 
SELECT t.name
FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.playlist_id = 5;

-- Question 8 
SELECT t.name, p.name
FROM track t
JOIN playlist_track pid ON t.track_id = pid.track_id
JOIN playlist p ON pid.playlist_id = p.playlist_id

-- Question 9
SELECT t.name , a.title
FROM album a 
JOIN track t ON a.album_id = t.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name ='Alternative & Punk'