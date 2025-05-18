- subqueries.sql
-- Task 1: Practice Subqueries

-- 1. Non-Correlated Subquery: Properties with average rating > 4.0
SELECT
  p.property_id,
  p.name,
  (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.property_id
  ) AS avg_rating
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.property_id
) > 4.0
ORDER BY avg_rating DESC;

-- 2. Correlated Subquery: Users with more than 3 bookings
SELECT
  u.user_id,
  u.first_name,
  u.last_name,
  (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
  ) AS booking_count
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3
ORDER BY booking_count DESC;
