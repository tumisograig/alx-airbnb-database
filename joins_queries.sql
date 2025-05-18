-- 1. INNER JOIN: Bookings with their users
SELECT
  b.booking_id,
  b.start_date,
  b.end_date,
  b.total_price,
  u.user_id,
  u.first_name,
  u.last_name,
  u.email
-- 2. LEFT JOIN: Retrieve all properties with their reviews (if any)
SELECT
  p.property_id,
  p.name,
  r.review_id,
  r.rating,
  r.comment
FROM properties p
LEFT JOIN reviews r
  ON p.property_id = r.property_id;
-- 3. FULL OUTER JOIN: Retrieve all users and all bookings
-- PostgreSQL version:
SELECT
  u.user_id,
  u.first_name,
  b.booking_id,
  b.start_date,
  b.end_date
FROM users u
FULL OUTER JOIN bookings b
  ON u.user_id = b.user_id;
