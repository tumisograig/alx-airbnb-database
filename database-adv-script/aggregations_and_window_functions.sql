-- aggregations_and_window_functions.sql
-- Task 2: Aggregations and Window Functions

-- 1. Total bookings per user using COUNT & GROUP BY
SELECT
  u.user_id,
  u.first_name,
  COUNT(b.booking_id) AS total_bookings
FROM users u
LEFT JOIN bookings b
  ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name
ORDER BY total_bookings DESC;

-- 2. Rank properties by number of bookings using RANK() OVER
SELECT
  p.property_id,
  p.name,
  COUNT(b.booking_id) AS bookings_count,
  RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM properties p
LEFT JOIN bookings b
  ON p.property_id = b.property_id
GROUP BY p.property_id, p.name
ORDER BY booking_rank;

-- 3. Assign row numbers to latest bookings per user using ROW_NUMBER() OVER
SELECT
  booking_id,
  user_id,
  start_date,
  end_date,
  ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY start_date DESC) AS recent_booking_rank
FROM bookings;

