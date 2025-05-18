-- Create indexes on high-usage columns
CREATE INDEX idx_bookings_user_date ON bookings(user_id, start_date);
CREATE INDEX idx_properties_location_price ON properties(location, price_per_night);
CREATE INDEX idx_reviews_property ON reviews(property_id);

-- Example performance checks:
-- EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = '<uuid>' AND start_date >= '2025-01-01';
-- EXPLAIN ANALYZE SELECT * FROM properties WHERE location = 'City Center' ORDER BY price_per_night;
