-- Task 4: Populate the database with realistic sample data

-- INSERT Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashed_pwd_1', '+1234567890', 'host'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pwd_2', '+1987654321', 'guest'),
  ('33333333-3333-3333-3333-333333333333', 'Carol', 'Davis', 'carol@example.com', 'hashed_pwd_3', NULL, 'guest');

-- INSERT Properties
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 'Cozy Cottage', 'A quaint cottage in the countryside.', 'Countryside, State', 120.00),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', '11111111-1111-1111-1111-111111111111', 'Downtown Apartment', 'Modern apartment in the city center.', 'City Center, Metropolis', 200.00);

-- INSERT Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('ddddddd4-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', '2025-06-01', '2025-06-05', 4 * 120.00, 'confirmed'),
  ('eeeeeee5-eeee-eeee-eeee-eeeeeeeeeeee', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', '33333333-3333-3333-3333-333333333333', '2025-07-10', '2025-07-12', 2 * 200.00, 'pending');

-- INSERT Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('ppppppp6-pppp-pppp-pppp-ppppppppppp6', 'ddddddd4-dddd-dddd-dddd-dddddddddddd', 4 * 120.00, 'credit_card'),
  ('qqqqqqq7-qqqq-qqqq-qqqq-qqqqqqqqqqq7', 'eeeeeee5-eeee-eeee-eeee-eeeeeeeeeeee', 2 * 200.00, 'paypal');

-- INSERT Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('rrrrrrr8-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 5, 'Absolutely loved the cottage! Very cozy and peaceful.'),
  ('sssssss9-ssss-ssss-ssss-ssssssssssss', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', '33333333-3333-3333-3333-333333333333', 4, 'Great location, but a bit noisy at night.');

-- INSERT Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('mmmmmmm0-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi! Is the cottage available next weekend?'),
  ('nnnnnnn1-nnnn-nnnn-nnnn-nnnnnnnnnnnn', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes! It is available. Let me know if you want to book.');
