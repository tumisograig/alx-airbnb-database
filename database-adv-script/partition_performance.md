# Task 5: Partitioning Performance Report

## Partitioning Strategy
We partitioned the `bookings` table by year based on the `start_date` column using `RANGE` partitioning.

## Purpose
The goal was to optimize queries that filter bookings by date range.

## Observations

- Before partitioning: Full table scan even for narrow date range filters.
- After partitioning: Query planner accessed only relevant partitions (e.g., 2022), reducing scan time.

## Result
Partitioning led to improved query performance when filtering by year-specific date ranges.

## Next Steps
- Further optimize by indexing within partitions.
- Expand to monthly partitioning for even more granularity if needed.
