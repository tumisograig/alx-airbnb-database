# Task 6: Monitoring and Refining Database Performance

## Queries Analyzed

```sql
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    b.start_date,
    b.end_date
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE
    b.start_date >= '2023-01-01'
    AND b.end_date <= '2023-12-31';
