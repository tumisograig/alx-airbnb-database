-- perfomance.sql
-- Task 4: Optimize Complex Queries (filename matches requirement)

-- 1. Initial Query: Retrieve booking, user, property, and payment details
SELECT
  b.booking_id,
  b.start_date,
  b.end_date,
  u.user_id,
  u.first_name,
  p.property_id,
  p.name AS property_name,
  pm.payment_id,
  pm.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pm ON b.booking_id = pm.booking_id;

-- 2. Optimized Query: Use INNER JOIN when payments exist
SELECT
  b.booking_id,
  b.start_date,
  b.end_date,
  u.user_id,
  u.first_name,
  p.property_id,
  p.name AS property_name,
  pm.payment_id,
  pm.amount
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pm ON b.booking_id = pm.booking_id;
