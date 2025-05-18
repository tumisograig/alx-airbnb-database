# Task 0: Complex Queries with Joins

## Objective

Master SQL joins by writing queries that combine data from multiple tables in the Airbnb Clone database.

## Queries

1. **INNER JOIN**: Retrieve all bookings along with the user details who made those bookings.
2. **LEFT JOIN**: Retrieve all properties and their reviews, including properties without any reviews.
3. **FULL OUTER JOIN**: Retrieve all users and all bookings, ensuring inclusion of users without bookings and bookings without a user link.

## Files

* `joins_queries.sql`: Contains the SQL scripts for the above joins.

## How to Run

1. Connect to your Airbnb Clone database in your SQL client.
2. Execute `joins_queries.sql`.
3. Verify the results for correctness and completeness.

# Task 1: Practice Subqueries

## Objective
Write and execute both non-correlated and correlated subqueries on the Airbnb Clone database to analyze property ratings and user booking activity.

## Queries
1. **Non-Correlated Subquery:** Find all properties where the average rating is greater than 4.0.
2. **Correlated Subquery:** Find users who have made more than 3 bookings.

## Files
- `subqueries.sql`: Contains the SQL scripts for the required subqueries.

## How to Run
1. Connect to your Airbnb Clone database in your SQL client.
2. Execute `subqueries.sql`.
3. Verify the output shows properties with avg rating > 4 and users with > 3 bookings.
