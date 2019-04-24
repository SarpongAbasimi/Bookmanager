CREATE TABLE bookmarks(
   id SERIAL PRIMARY KEY,
   url VARCHAR(60)
);

INSERT INTO bookmarks (url)
VALUES ('www.google.com'),('www.youtube.com'),('www.instagram.com');

ALTER TABLE bookmarks
ADD company VARCHAR(30);

UPDATE bookmarks
SET company = 'facebook'
WHERE id = 3;

DELETE FROM bookmarks 
WHERE id = 3;