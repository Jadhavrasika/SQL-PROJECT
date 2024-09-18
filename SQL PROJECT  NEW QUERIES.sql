create database music_store;
use  music_store;

CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    email VARCHAR(30),
    phone VARCHAR(12),
    hire_date DATE,
    job_title varchar(30)
);

desc employee;
CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(20),
    phone VARCHAR(12),
    address VARCHAR(60),
    city VARCHAR(15),
    state VARCHAR(20),
    country VARCHAR(30),
    postal_code VARCHAR(30)
);

desc customer;


CREATE TABLE artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(30)
);

desc artist;
CREATE TABLE genre (
    genre_id INT PRIMARY KEY,
    name VARCHAR(60)
);
desc genre;
CREATE TABLE playlist (
    playlist_id INT PRIMARY KEY  AUTO_INCREMENT,
    name VARCHAR(30)
);

desc playlist;

CREATE TABLE album (
    album_id INT PRIMARY KEY,
    title VARCHAR(90),
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

desc album;
CREATE TABLE track (
    track_id INT PRIMARY KEY,
    name VARCHAR(90),
    album_id INT,
    media_type_id INT,
    genre_id INT,
    composer VARCHAR(90),
    milliseconds INT,
    bytes INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);
desc track;

CREATE TABLE playlist_track (
    playlist_id INT,
    track_id INT,
    PRIMARY KEY (playlist_id, track_id),
    FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);

desc playlist_track;

CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    invoice_date DATE,
    total DECIMAL(10, 2)
    );

desc invoice;

CREATE TABLE invoice_line (
    invoice_line_id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_id INT,
    track_id INT,
    unit_price DECIMAL(10, 2),
    quantity INT,
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
    FOREIGN KEY (track_id) REFERENCES track(track_id)
);

drop table invoice_line;
desc invoice_line;

INSERT INTO employee ( first_name, last_name, email, phone, hire_date, job_title) VALUES
('Arti', 'Sharma', 'arti.sharma@example.com', '9876543210', '2022-01-15', 'Manager'),
('Priya', 'Singh', 'priya.singh@example.com', '9876543211', '2021-02-20', 'Sales Associate'),
( 'Mehul', 'Verma', 'mehull.verma@example.com', '9876543212', '2020-03-25', 'Developer'),
('Sneha', 'Patel', 'sneha.patel@example.com', '9876543213', '2019-04-30', 'HR'),
( 'Vikram', 'Rao', 'vikram.rao@example.com', '9876543214', '2018-05-10', 'Accountant'),
( 'Anjali', 'Nair', 'anjali.nair@example.com', '9876543215', '2017-06-15', 'Marketing Manager'),
('Karan', 'Kumar', 'karan.kumar@example.com', '9876543216', '2016-07-20', 'Sales Manager'),
( 'Kavita', 'Joshi', 'kavita.joshi@example.com', '9876543217', '2015-08-25', 'Developer'),
('Suresh', 'Gupta', 'suresh.gupta@example.com', '9876543218', '2014-09-30', 'Support Engineer'),
( 'Meena', 'Desai', 'meena.desai@example.com', '9876543219', '2013-10-05', 'HR'),
('Yash', 'Mehta', 'yash.mehta@example.com', '9876543220', '2012-11-10', 'Manager'),
( 'Pooja', 'Reddy', 'pooja.reddy@example.com', '9876543221', '2011-12-15', 'Sales Associate'),
( 'Nikhil', 'Chopra', 'nikhil.chopra@example.com', '9876543222', '2010-01-20', 'Developer'),
( 'Monika', 'Shah', 'monika.shah@example.com', '9876543223', '2009-02-25', 'HR'),
( 'Manish', 'Bose', 'manish.bose@example.com', '9876543224', '2008-03-30', 'Accountant'),
( 'Rasika', 'Kapoor', 'rasika.kapoor@example.com', '9876543225', '2007-04-05', 'Marketing Manager'),
( 'Sanjay', 'Mishra', 'sanjay.mishra@example.com', '9876543226', '2006-05-10', 'Sales Manager'),
( 'Divya', 'Iyer', 'divya.iyer@example.com', '9876543227', '2005-06-15', 'Developer'),
( 'Rajesh', 'Agarwal', 'rajesh.agarwal@example.com', '9876543228', '2004-07-20', 'Support Engineer'),
( 'Swati', 'Bhatia', 'swati.bhatia@example.com', '9876543229', '2003-08-25', 'HR');

INSERT INTO customer (first_name, last_name, email, phone, address, city, state, country, postal_code) VALUES
('Aarav', 'Sharma', 'aarav.sharma@ex.com', '9876543310', '123 MG Road', 'Mumbai', 'Maharashtra', 'India', '400001'),
('Ananya', 'Verma', 'ananya.verma@ex.com', '9876543311', '456 Park Street', 'Delhi', 'Delhi', 'India', '110001'),
('Rohan', 'Patel', 'rohan.patel@ex.com', '9876543312', '789 Lake View', 'Bangalore', 'Karnataka', 'India', '560001'),
('Isha', 'Reddy', 'isha.reddy@ex.com', '9876543313', '101 Green Avenue', 'Hyderabad', 'Telangana', 'India', '500001'),
('Karan', 'Gupta', 'karan.gupta@ex.com', '9876543314', '202 Blue Street', 'Chennai', 'Tamil Nadu', 'India', '600001'),
('Sneha', 'Nair', 'sneha.nair@ex.com', '9876543315', '303 Red Road', 'Kochi', 'Kerala', 'India', '682001'),
('Vikram', 'Singh', 'vikram.singh@ex.com', '9876543316', '404 Yellow Lane', 'Jaipur', 'Rajasthan', 'India', '302001'),
('Pooja', 'Mehta', 'pooja.mehta@ex.com', '9876543317', '505 White Street', 'Ahmedabad', 'Gujarat', 'India', '380001'),
('Arjun', 'Bose', 'arjun.bose@ex.com', '9876543318', '606 Black Road', 'Kolkata', 'West Bengal', 'India', '700001'),
('Neha', 'Kapoor', 'neha.kapoor@ex.com', '9876543319', '707 Orange Avenue', 'Pune', 'Maharashtra', 'India', '411001'),
('Suresh', 'Chopra', 'suresh.chopra@ex.com', '9876543320', '808 Pink Street', 'Lucknow', 'Uttar Pradesh', 'India', '226001'),
('Divya', 'Agarwal', 'divya.agarwal@ex.com', '9876543321', '909 Purple Lane', 'Bhopal', 'Madhya Pradesh', 'India', '462001'),
('Rajesh', 'Joshi', 'rajesh.joshi@ex.com', '9876543322', '1010 Brown Road', 'Indore', 'Madhya Pradesh', 'India', '452001'),
('Meena', 'Desai', 'meena.desai@ex.com', '9876543323', '1111 Grey Avenue', 'Surat', 'Gujarat', 'India', '395001'),
('Amit', 'Kumar', 'amit.kumar@ex.com', '9876543324', '1212 Silver Street', 'Patna', 'Bihar', 'India', '800001'),
('Priya', 'Rao', 'priya.rao@ex.com', '9876543325', '1313 Gold Lane', 'Nagpur', 'Maharashtra', 'India', '440001'),
('Nikhil', 'Shah', 'nikhil.shah@ex.com', '9876543326', '1414 Bronze Road', 'Chandigarh', 'Chandigarh', 'India', '160001'),
('Ritu', 'Iyer', 'ritu.iyer@ex.com', '9876543327', '1515 Copper Avenue', 'Thirupuram', 'Kerala', 'India', '695001'),
('Manish', 'Bhatia', 'manish.bhatia@ex.com', '9876543328', '1616 Platinum Street', 'Vadodara', 'Gujarat', 'India', '390001'),
('Swati', 'Mishra', 'swati.mishra@ex.com', '9876543329', '1717 Diamond Lane', 'Kanpur', 'Uttar Pradesh', 'India','208001');

INSERT INTO artist (artist_id, name) VALUES
(1, 'Arijit Singh'),
(2, 'Shreya Ghoshal'),
(3, 'Sonu Nigam'),
(4, 'Lata Mangeshkar'),
(5, 'Kishore Kumar'),
(6, 'Asha Bhosle'),
(7, 'Mohammed Rafi'),
(8, 'Udit Narayan'),
(9, 'Alka Yagnik'),
(10, 'Kumar Sanu'),
(11, 'Sunidhi Chauhan'),
(12, 'Neha Kakkar'),
(13, 'Armaan Malik'),
(14, 'Badshah'),
(15, 'Guru Randhawa'),
(16, 'Mika Singh'),
(17, 'Shankar Mahadevan'),
(18, 'Shaan'),
(19, 'Ankit Tiwari'),
(20, 'Jubin Nautiyal');

INSERT INTO genre (genre_id, name) VALUES
(1, 'Romantic'),
(2, 'Action'),
(3, 'Drama'),
(4, 'Comedy'),
(5, 'Thriller'),
(6, 'Horror'),
(7, 'Musical'),
(8, 'Adventure'),
(9, 'Fantasy'),
(10, 'Mystery'),
(11, 'Sci-Fi'),
(12, 'Family'),
(13, 'Biography'),
(14, 'Historical'),
(15, 'Crime'),
(16, 'War'),
(17, 'Sports'),
(18, 'Animation'),
(19, 'Documentary'),
(20,  'Western');

INSERT INTO playlist (playlist_id, name) VALUES
(1, 'Romantic Hits'),
(2, 'Party Anthems'),
(3, 'Golden Era Classics'),
(4, 'Soulful Sufi Songs'),
(5, 'Dance Floor Grooves'),
(6, 'Love Ballads'),
(7, 'Retro Rewind'),
(8, 'Blockbuster Soundtracks'),
(9, 'Heartbreak Hits'),
(10, 'Rainy Day Melodies'),
(11, 'Item Song Extravaganza'),
(12, 'Wedding Playlist'),
(13, 'Road Trip Beats'),
(14, 'Feel-Good Bollywood'),
(15, 'Unplugged Gems'),
(16, 'Foot-Tapping Numbers'),
(17, 'Evergreen Duets'),
(18, 'Sentimental Favorites'),
(19, 'Celebratory Songs'),
(20,  'Bolywood Remixes');

INSERT INTO album (album_id, title, artist_id) VALUES
(1, 'Aashiqui 2', 1),
(2, 'Dil Se', 2),
(3, 'Kal Ho Naa Ho', 3),
(4, 'Rab Ne Bana Di Jodi', 4),
(5, 'Slumdog Millionaire', 5),
(6, 'Once Upon a Time in Mumbaai', 6),
(7, 'Kabhi Khushi Kabhie Gham', 7),
(8, 'Dilwale Dulhania Le Jayenge', 8),
(9, 'Kuch Kuch Hota Hai', 9),
(10, 'Hum Aapke Hain Koun', 10),
(11, 'Dhoom 2', 11),
(12, 'Bajrangi Bhaijaan', 12),
(13, 'Ae Dil Hai Mushkil', 13),
(14, 'Badshah', 14),
(15, 'High Rated Gabru', 15),
(16, 'Mika Singh Hits', 16),
(17, 'Rock On!!', 17),
(18, 'Tanha Dil', 18),
(19, 'Aashiqui 2', 19),
(20,  'Kabir Singh', 20);

INSERT INTO track (track_id, name, album_id, media_type_id, genre_id, composer, milliseconds, bytes, unit_price) VALUES
(1, 'Tum Hi Ho', 1, 1, 1, 'Mithoon', 250000, 5000000, 15.00),
(2, 'Chaiyya Chaiyya', 2, 1, 2, 'A.R. Rahman', 300000, 6000000, 20.00),
(3, 'Kal Ho Naa Ho', 3, 1, 1, 'Shankar-Ehsaan-Loy', 280000, 5500000, 18.00),
(4, 'Tujh Mein Rab Dikhta Hai', 4, 1, 3, 'Salim-Sulaiman', 270000, 5200000, 17.00),
(5, 'Jai Ho', 5, 1, 2, 'A.R. Rahman', 320000, 6500000, 22.00),
(6, 'Pee Loon', 6, 1, 1, 'Pritam', 260000, 5100000, 16.00),
(7, 'Kabira', 7, 1, 3, 'Pritam', 290000, 5700000, 19.00),
(8, 'Gallan Goodiyan', 8, 1, 2, 'Shankar-Ehsaan-Loy', 310000, 6300000, 21.00),
(9, 'Tum Mile', 9, 1, 1, 'Pritam', 275000, 5400000, 18.50),
(10, 'Badtameez Dil', 10, 1, 2, 'Pritam', 295000, 5800000, 19.50),
(11, 'Tera Ban Jaunga', 11, 1, 1, 'Akhil Sachdeva', 265000, 5150000, 16.50),
(12, 'Zaalima', 12, 1, 3, 'JAM8', 285000, 5550000, 18.50),
(13, 'Dil Dhadakne Do', 13, 1, 2, 'Shankar-Ehsaan-Loy', 305000, 6200000, 20.50),
(14, 'Raabta', 14, 1, 1, 'Pritam', 270000, 5250000, 17.50),
(15, 'Ae Dil Hai Mushkil', 15, 1, 3, 'Pritam', 300000, 6000000, 20.00),
(16, 'Ghungroo', 16, 1, 2, 'Vishal-Shekhar', 310000, 6300000, 21.00),
(17, 'Bekhayali', 17, 1, 1, 'Sachet-Parampara', 280000, 5600000, 18.00),
(18, 'Malang', 18, 1, 3, 'Ved Sharma', 290000, 5800000, 19.00),
(19, 'Tera Yaar Hoon Main', 19, 1, 1, 'Rochak Kohli', 275000, 5500000, 18.50),
(20, 'Nashe Se Chad GAyi',  20,1,2, 'Vishal Shekhar', 295000, 590000, 19.50);

INSERT INTO playlist_track (playlist_id, track_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 10),
(10, 20);

INSERT INTO invoice (customer_id,invoice_date, total) VALUES
(1,'2023-01-15', 1500.00),
(2,'2023-01-20', 2000.00),
(3,'2023-02-10', 2500.00),
(4,'2023-02-15', 3000.00),
(5,'2023-03-05', 3500.00),
(6,'2023-03-10', 4000.00),
(7,'2023-03-20', 4500.00),
(8,'2023-04-01', 5000.00),
(9,'2023-04-10', 5500.00),
(10,'2023-04-20', 6000.00),
(11,'2023-05-01', 6500.00),
(12,'2023-05-10', 7000.00),
(13,'2023-05-20', 7500.00),
(14,'2023-06-01', 8000.00),
(15,'2023-06-10', 8500.00),
(16,'2023-06-20', 9000.00),
(17,'2023-07-01', 9500.00),
(18,'2023-07-10', 10000.00),
(19,'2023-07-20', 10500.00),
(20,'2023-08-01', 11000.00);

INSERT INTO invoice_line ( invoice_id, track_id, unit_price, quantity) VALUES
( 1, 1, 15.00, 1),
(1, 2, 20.00, 2),
( 2, 3, 25.00, 1),
(2, 4, 30.00, 3),
(3, 5, 35.00, 2),
(3, 6, 40.00, 1),
(4, 7, 45.00, 3),
(4, 8, 50.00, 2),
(5, 9, 55.00, 1),
(5, 10, 60.00, 3),
(6, 11, 65.00, 2),
(6, 12, 70.00, 1),
(7, 13, 75.00, 3),
(7, 14, 80.00, 2),
(8, 15, 85.00, 1),
(8, 16, 90.00, 3),
(9, 17, 95.00, 2),
(9, 18, 100.00, 1),
(10, 19, 105.00, 3),
(10, 20, 110.00, 2);
use music_store;
-- normal Queris
 -- Find the Most Expensive Track
   SELECT name, unit_price FROM track ORDER BY unit_price DESC LIMIT 1;
   
   -- List All Employees Hired After a Specific Date
SELECT first_name, last_name, hire_date FROM employee WHERE hire_date > '2020-01-01';

-- Calculate the Average Total of All Invoices
  SELECT AVG(total) AS average_invoice_total FROM Invoice;
  
  -- Find Customers from a Specific City
    SELECT first_name, last_name, city, email FROM customer WHERE city = 'Mumbai';
    
    -- List all customers  
    select * FROM customer;
     
     -- subqueries
     -- Find Customers with Invoices Above Average Total+
      SELECT first_name, last_name FROM customer
      WHERE customer_id IN (SELECT customer_id FROM invoice 
      WHERE total > (SELECT AVG(total) FROM invoice));
 
 -- Find Employees Hired After a Specific Employee
 SELECT * from employee WHERE hire_date > (SELECT hire_date FROM employee WHERE employee_id=5);
 
 --  List Albums with Tracks Longer Than the Average Track Length
    SELECT title
    FROM album
    WHERE album_id IN (
       SELECT album_id
       FROM track
       WHERE milliseconds > (SELECT AVG(milliseconds) FROM track)
       );
 
 
 -- List Customers with No Invoices
  SELECT first_name, last_name FROM customer WHERE customer_id NOT IN (SELECT customer_id FROM invoice);
  
  --  Find Most Expensive Track in Each Genre
   SELECT name, genre_id, unit_price FROM track
WHERE unit_price = (SELECT MAX(unit_price) FROM track AS t
 WHERE t.genre_id = track.genre_id);
 
 -- -+joins
 -- List All Tracks and Their Playlists
    SELECT t.name AS track_name, p.name AS playlist_name
    FROM track t
    RIGHT JOIN playlist_track pt ON t.track_id = pt.track_id
    RIGHT JOIN playlist p ON pt.playlist_id = p.playlist_id;


-- List all tracks in the ‘Romantic’ genre
SELECT t.name FROM track t 
JOIN genre g ON t.genre_id = g.genre_id 
WHERE g.name ='Romantic';     

-- List all invoices with customer details
SELECT i.invoice_id, c.first_name, c.last_name, i.total
 FROM invoice i 
 JOIN customer c ON i.customer_id = c.customer_id;        
 
 --  List All Customers Who Live in the Same state
 SELECT c1.customer_id, c1.first_name, c1.last_name, c1.state
FROM customer c1
JOIN customer c2 ON c1.state = c2.state AND c1.customer_id <> c2.customer_id
ORDER BY c1.state, c1.customer_id;

-- List All Employees and Their Invoices (Including Employees with No Invoices and Invoices with No Employees)
SELECT e.first_name, e.last_name, i.invoice_id, i.total
FROM employee e
 join invoice i ON e.employee_id = i.customer_id;
