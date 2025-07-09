-- Task 4: Initial query to retrieve all bookings along with user, property, and payment details

-- Non-optimized query (before performance improvements)
SELECT b.*, u.*, p.*, pay.*
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;

-- Optimized version (after performance tuning)
-- Only selects necessary fields to reduce data load and uses indexed join columns
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.title AS property_title,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;

-- Optional: Performance analysis using EXPLAIN (for manual testing in DB)
-- EXPLAIN SELECT ...
