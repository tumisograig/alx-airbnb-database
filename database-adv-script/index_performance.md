-- database_index.sql
-- Task 3: Implement Indexes for Optimization

-- 1. Create index on bookings (user_id, start_date)
CREATE INDEX idx_bookings_user_date ON bookings(user_id, start_date);

-- 2. Create index on properties (location, price_per_night)
CREATE INDEX idx_properties_location_price ON properties(location, price_per_night);

-- 3. Create index on reviews (property_id)
CREATE INDEX idx_reviews_property ON reviews(property_id);
