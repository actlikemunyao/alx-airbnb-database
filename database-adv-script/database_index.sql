-- Create indexes on commonly used columns to improve performance

-- Index on user_id column in bookings table (frequently used in WHERE and JOIN)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id column in reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Index on property_id column in bookings table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on start_date column in bookings table (used for partitioning or filtering)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
-- Create indexes to improve performance
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Analyze query performance before and after using EXPLAIN ANALYZE

-- Before adding indexes
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;

-- After adding indexes
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;

-- Before index on reviews
EXPLAIN ANALYZE SELECT * FROM reviews WHERE property_id = 5;

-- After index on reviews
EXPLAIN ANALYZE SELECT * FROM reviews WHERE property_id = 5;
