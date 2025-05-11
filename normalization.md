# Task 1: Normalize Your Database Design to 3NF

## Objective
Ensure the Airbnb Clone database schema is in Third Normal Form (3NF) by eliminating redundancy, enforcing data integrity, and ensuring every non-key attribute depends only on the primary key.

---

## 1. Functional Dependencies

1. **User**  
   - `user_id → first_name, last_name, email, password_hash, phone_number, role, created_at`

2. **Property**  
   - `property_id → host_id, name, description, location, price_per_night, created_at, updated_at`

3. **Booking**  
   - `booking_id → property_id, user_id, start_date, end_date, total_price, status, created_at`

4. **Payment**  
   - `payment_id → booking_id, amount, payment_date, payment_method`

5. **Review**  
   - `review_id → property_id, user_id, rating, comment, created_at`

6. **Message**  
   - `message_id → sender_id, recipient_id, message_body, sent_at`

---

## 2. First Normal Form (1NF)

- **Rule:** Each table cell holds atomic (indivisible) values; no repeating groups.
- **Verification:**
  - All attributes are single-valued (e.g., no array or comma-separated lists).
  - Every record has a unique primary key.

---

## 3. Second Normal Form (2NF)

- **Rule:** Be in 1NF, and every non-key attribute must depend on **the whole** primary key.
- **Analysis:**
  - All tables use a single-column primary key (e.g., `user_id`, `property_id`, etc.), so partial dependencies cannot exist.
- **Conclusion:** All non-key attributes depend on the entire primary key; therefore, each table is in 2NF.

---

## 4. Third Normal Form (3NF)

- **Rule:** Be in 2NF, and no transitive dependencies — non-key attributes cannot depend on other non-key attributes.
- **Analysis & Actions:**
  1. **User**  
     - No attributes depend on another non-key attribute. ✔️
  2. **Property**  
     - `host_id` is a foreign key, not derived from non-key attributes. ✔️
  3. **Booking**  
     - Attributes like `status` and `total_price` derive only from `booking_id`. ✔️
  4. **Payment**  
     - All attributes depend only on `payment_id`. ✔️
  5. **Review**  
     - All attributes depend only on `review_id`. ✔️
  6. **Message**  
     - All attributes depend only on `message_id`. ✔️

---

## 5. Summary of Normalization

- **1NF:** All tables have atomic columns and unique primary keys.
- **2NF:** No partial dependencies due to single-column PKs.
- **3NF:** No transitive dependencies; every non-key attribute depends solely on its table’s primary key.



