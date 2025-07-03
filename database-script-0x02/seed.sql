-- Insert Users
INSERT INTO User (name, email, password) VALUES
('Alice Johnson', 'alice@example.com', 'alicepass'),
('Bob Smith', 'bob@example.com', 'bobpass'),
('Carol Lee', 'carol@example.com', 'carolpass');

-- Insert Properties
INSERT INTO Property (owner_id, title, description, location, price_per_night) VALUES
(1, 'Cozy Cottage', 'A small, cozy cottage near the lake.', 'Lakeview', 75.00),
(2, 'Urban Apartment', 'Modern apartment in city center.', 'Downtown', 120.00),
(3, 'Mountain Cabin', 'Rustic cabin with mountain views.', 'Highlands', 90.00);

-- Insert Bookings
INSERT INTO Booking (user_id, property_id, start_date, end_date, total_price, status) VALUES
(2, 1, '2025-07-01', '2025-07-07', 525.00, 'confirmed'),
(3, 2, '2025-08-15', '2025-08-20', 600.00, 'pending'),
(1, 3, '2025-09-10', '2025-09-12', 180.00, 'cancelled');

-- Insert Payments
INSERT INTO Payment (booking_id, amount, payment_method, payment_date, status) VALUES
(1, 525.00, 'Credit Card', '2025-06-20', 'completed'),
(2, 600.00, 'PayPal', '2025-08-10', 'pending'),
(3, 0.00, 'N/A', NULL, 'cancelled');
