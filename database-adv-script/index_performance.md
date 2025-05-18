-- database_index.sql
-- Task 3: Implement Indexes for Optimization

-- Create the following indexes to improve performance on high-usage columns:

-- 1. Index bookings for queries filtering by user_id and start_date
CREATE INDEX idx_bookings_user_date ON bookings(user_id, start_date);

-- 2. Index properties for queries filtering by location and sorting by price_per_night
CREATE INDEX idx_properties_location_price ON properties(location, price_per_night);

-- 3. Index reviews for efficient joins with properties
CREATE INDEX idx_reviews_property ON reviews(property_id);

-- Example EXPLAIN to measure performance before and after:
-- EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 'some-uuid' AND start_date >= '2025-01-01';
-- EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'City Center' ORDER BY price_per_night;
