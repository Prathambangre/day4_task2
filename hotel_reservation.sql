CREATE TABLE guests (
    guest_id SERIAL PRIMARY KEY,  
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,  
    guest_id INT,
    reservation_date DATE,
    check_in_date DATE,
    check_out_date DATE,
    
    FOREIGN KEY (guest_id) REFERENCES guests(guest_id)
);

INSERT INTO guests (name, email, phone)
VALUES 
('Pratham Bangre', 'prathambangre8@gmail.com', '9156953439'),
('Jayant Bajirao', 'jayantbajirao8@gmail.com', '7558745168');

INSERT INTO reservations (guest_id, reservation_date, check_in_date, check_out_date)
VALUES 
(1, '2025-03-15', '2025-03-20', '2025-03-25'),
(1, '2025-03-18', '2025-03-28', '2025-03-30'),
(2, '2025-03-20', '2025-03-22', '2025-03-24');

SELECT r.reservation_id, r.reservation_date, r.check_in_date, r.check_out_date, g.name 
FROM reservations r
JOIN guests g ON r.guest_id = g.guest_id;

