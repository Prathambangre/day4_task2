CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,    
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    year_published INT
);

CREATE TABLE borrowers (
    borrower_id SERIAL PRIMARY KEY,    
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    book_id INT,
    borrow_date DATE,
    
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO books (title, author, genre, year_published)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925),
('1984', 'George Orwell', 'Dystopian', 1949);

INSERT INTO borrowers (first_name, last_name, email, book_id, borrow_date)
VALUES 
('Pratham', 'Bangre', 'prathambangre8@gmail.com', 1, '2025-03-15'),
('Gaurav', 'Shelure', 'gauravshelure7@gmail.com', 2, '2025-03-18');

SELECT b.borrower_id, b.first_name, b.last_name, b.email, bk.title
FROM borrowers b
JOIN books bk ON b.book_id = bk.book_id;
