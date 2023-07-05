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

INSERT INTO products (prod_name,prod_img,prod_desc,prod_slug,prod_price)
VALUES ('HomePod Mini','homepodmini.jpg','Table with air purifier, stained veneer/black','homepod-mini','239.00');

INSERT INTO products (prod_name,prod_img,prod_desc,prod_slug,prod_price)
VALUES ('Instax Mini','Instax.jpg','Selfie mode and selfie mirror','instax-mini','99.99');

INSERT INTO products (prod_name,prod_img,prod_desc,prod_slug,prod_price)
VALUES ('Camping Duffelbag','Backpack.jpg','Camping Duffelbag','duffelbag','159.00');

CREATE TABLE categories_products (
 id SERIAL PRIMARY KEY,
 cat_id INT NOT NULL,
 prod_id INT NOT NULL,
 UNIQUE (cat_id,prod_id),
 FOREIGN KEY (cat_id)REFERENCES categories(id),
 FOREIGN KEY (prod_id)REFERENCES products(id)
);

INSERT INTO categories_products (cat_id, prod_id)
VALUES (4,1);
INSERT INTO categories_products (cat_id, prod_id)
VALUES (4,4);
INSERT INTO categories_products (cat_id, prod_id)
VALUES (6,5);

SELECT * FROM categories 
FULL OUTER JOIN categories_products ON categories_products.cat_id=categories.id
FULL OUTER JOIN products ON categories_products.prod_id=products.id
WHERE cat_slug = 'tech'
