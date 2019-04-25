CREATE TABLE bookmarks(
   id SERIAL PRIMARY KEY,
   url VARCHAR(60)
);

INSERT INTO bookmarks (url)
VALUES ('www.google.com'),('www.youtube.com');