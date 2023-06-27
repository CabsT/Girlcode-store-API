-- Create Categories Table
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    cat_name TEXT NOT NULL UNIQUE,
    slug TEXT NOT NULL UNIQUE,
    cat_desc TEXT
);

-- Insert Initial Categories
INSERT INTO categories (cat_name, slug)
VALUES ('Furniture', 'furniture'),
	('Handbags', 'handbags'),
	('Books', 'books'),
	('Tech', 'tech'),
	('Sneakers', 'sneakers'),
	('Travel', 'travel');
	
-- Add cat_img column on categories
ALTER TABLE categories
ADD cat_img TEXT;

-- Updated cat_img column for all rows
UPDATE categories
SET cat_img='furniture.jpg';

UPDATE categories
SET cat_img ='handbags.jpeg' WHERE id = 2;

UPDATE categories
SET cat_img ='books.jpg' WHERE id = 3;

UPDATE categories
SET cat_img ='Tech.jpg'WHERE id = 4;

UPDATE categories
SET cat_img ='sneakers.jpg' WHERE id = 5;

UPDATE categories
SET cat_img ='travel.jpg' WHERE id =6;


