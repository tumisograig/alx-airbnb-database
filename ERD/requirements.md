# Task 0: Define Entities and Relationships in ER Diagram

## Objective
The goal of this task is to design an Entity-Relationship Diagram (ERD) to represent the database structure for an Airbnb-like application. This diagram visually captures all major entities, their attributes, and the relationships between them.

## Tools Used
- Draw.io (https://draw.io)
- PNG and .drawio formats provided in this directory

## Entities and Attributes

1. **User**
   - `user_id` (PK)
   - `first_name`
   - `last_name`
   - `email` (Unique)
   - `password_hash`
   - `phone_number`
   - `role` (ENUM: guest, host, admin)
   - `created_at`

2. **Property**
   - `property_id` (PK)
   - `host_id` (FK to User)
   - `name`
   - `description`
   - `location`
   - `pricepernight`
   - `created_at`
   - `updated_at`

3. **Booking**
   - `booking_id` (PK)
   - `property_id` (FK to Property)
   - `user_id` (FK to User)
   - `start_date`
   - `end_date`
   - `total_price`
   - `status` (ENUM: pending, confirmed, canceled)
   - `created_at`

4. **Payment**
   - `payment_id` (PK)
   - `booking_id` (FK to Booking)
   - `amount`
   - `payment_date`
   - `payment_method` (ENUM: credit_card, paypal, stripe)

5. **Review**
   - `review_id` (PK)
   - `property_id` (FK to Property)
   - `user_id` (FK to User)
   - `rating` (1–5, CHECK constraint)
   - `comment`
   - `created_at`

6. **Message**
   - `message_id` (PK)
   - `sender_id` (FK to User)
   - `recipient_id` (FK to User)
   - `message_body`
   - `sent_at`

## Relationships

- A **User** can be a **guest**, **host**, or **admin**.
- A **User** (guest) can make multiple **Bookings**.
- A **Host (User)** can own multiple **Properties**.
- A **Booking** is associated with one **User** and one **Property**.
- A **Payment** is linked to a **Booking**.
- A **Review** is written by a **User** about a **Property**.
- A **Message** is sent from one **User** to another.

## ER Diagram Files
- [`airbnb_er_diagram_redone.png`](./airbnb_er_diagram_redone.png): Visual image of the ERD
- [`airbnb_er_diagram_redone.drawio`](./airbnb_er_diagram_redone.drawio): Editable source file for Draw.io

