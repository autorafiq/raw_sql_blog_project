

--AUTHORS TABLE CREATED
CREATE TABLE authors(
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
-- Categories Table created
CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
--Blogs Table created
CREATE TABLE blogs(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Foreign Key (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);
-- 1. How do you add a new author to the authors table?
INSERT INTO authors (author_name) VALUES("MOHAMMAD RAFIQUL");
-- 2. How do you retrieve all authors from the authors table? 
SELECT * FROM authors;
-- 3. How do you retrieve a specific author by their ID from the authors table? 
SELECT * FROM authors WHERE id = 11;
-- 4. How do you update an author’s name in the authors table? 
UPDATE authors SET author_name="RAFIQRONY" WHERE id = 11;
-- 5. How do you delete an author by their ID from the authors table? 
DELETE FROM authors WHERE id = 5;

-- 6. How do you add a new category to the categories table?
INSERT INTO categories(category_name) VALUES("News");
-- 7. How do you retrieve all categories from the categories table? 
SELECT * FROM categories;
-- 8. How do you retrieve a specific category by its ID from the categories table?
SELECT * FROM categories WHERE id = 7;
-- 9. How do you update a category’s name in the categories table?
UPDATE categories SET category_name = "IT" WHERE id = 11;
-- 10. How do you delete a category by its ID from the categories table? 
DELETE FROM categories WHERE id = 11;

-- 11. How do you add a new blog to the blogs table? 
INSERT INTO blogs (title, body, category_id, author_id)VALUES("Most Tested ", "Not good", 2,3);
-- 12. How do you retrieve all blogs from the blogs table? 
SELECT * FROM blogs;
-- 13. How do you retrieve a specific blog by its ID from the blogs table? 
SELECT * FROM blogs WHERE id = 16;
-- 14. How do you retrieve all blogs with their category and author information?
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name 
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;
-- 15. How do you update a blog’s title in the blogs table? 
UPDATE blogs SET title = "July August 3624" WHERE id = 16;

-- 16. How do you update a blog’s category or author in the blogs table? 
UPDATE blogs SET category_id = 4, author_id= 4 WHERE id = 16;

-- 17. How do you delete a blog by its ID from the blogs table? 
DELETE FROM blogs WHERE id = 16;

-- 18. How do you get all blogs written by a specific author? 
SELECT authors.author_name, blogs.title, blogs.body 
FROM  blogs JOIN authors ON blogs.author_id = authors.id
WHERE blogs.author_id = 2;

-- 19. How do you get all blogs under a specific category?
SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.category_name = "History";