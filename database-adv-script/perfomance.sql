-- Initial (Unoptimized) Query
SELECT
    bookings.id AS booking_id,
    users.name AS user_name,
    properties.title AS property_title,
    payments.amount AS payment_amount
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id;

-- Optimized Query with WHERE and AND clause to filter and allow indexing
SELECT
    bookings.id AS booking_id,
    users.name AS user_name,
    properties.title AS property_title,
    payments.amount AS payment_amount
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.payment_id = payments.id
WHERE bookings.start_date >= '2024-01-01'
  AND bookings.end_date <= '2024-12-31'
  AND payments.status = 'completed';
