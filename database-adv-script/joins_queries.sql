-- Task 0: Complex Queries with Joins

-- 1. INNER JOIN: Retrieve all bookings with user details
SELECT
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Retrieve all properties with their reviews (if any)
SELECT
  p.property_id,
  p.name,
  r.review_id,
  r.rating,
  r.comment
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings
-- PostgreSQL version
SELECT
  u.user_id,
  u.first_name,
  b.booking_id,
  b.start_date,
  b.end_date
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id;

-- MySQL workaround using UNION
-- SELECT u.user_id, u.first_name, b.booking_id, b.start_date, b.end_date
-- FROM users u LEFT JOIN bookings b ON u.user_id = b.user_id
-- UNION
-- SELECT u.user_id, u.first_name, b.booking_id, b.start_date, b.end_date
-- FROM bookings b LEFT JOIN users u ON b.user_id = u.user_id;
