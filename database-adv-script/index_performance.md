EXPLAIN ANALYZE SELECT * 
FROM bookings 
WHERE user_id = '11111111-1111-1111-1111-111111111111' 
  AND start_date >= '2025-01-01';

EXPLAIN ANALYZE SELECT * 
FROM properties 
WHERE location = 'City Center' 
ORDER BY price_per_night;
