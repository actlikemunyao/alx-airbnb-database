-- Task 2: Aggregations and Window Functions

-- 1. Total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties based on total number of bookings using RANK()
SELECT property_id,
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;

-- Optional: Rank using ROW_NUMBER (alternative to RANK)
-- SELECT property_id,
--        COUNT(*) AS total_bookings,
--        ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_row
-- FROM bookings
-- GROUP BY property_id;
