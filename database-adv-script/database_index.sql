-- Create indexes on commonly used columns to improve performance

-- Index on user_id column in bookings table (frequently used in WHERE and JOIN)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id column in reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Index on property_id column in bookings table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on start_date column in bookings table (used for partitioning or filtering)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
