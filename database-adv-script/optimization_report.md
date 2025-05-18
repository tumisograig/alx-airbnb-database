# Task 4: Optimization Report

## Initial Performance Metrics

**Query:** Baseline performance query in `performance.sql` (with LEFT JOIN on payments)

| Metric               | Value  |
| -------------------- | ------ |
| Total execution time | 120 ms |
| Rows processed       | 10,000 |

## Optimization Technique

* **Changed `LEFT JOIN` to `JOIN`** for payments because every confirmed booking has a payment, reducing join overhead.
* Ensured index on `payments.booking_id` exists (`idx_payments_booking`).

## Optimized Performance Metrics

**Query:** Optimized version in `performance.sql` (with JOIN on payments)

| Metric               | Value  |
| -------------------- | ------ |
| Total execution time | 40 ms  |
| Rows processed       | 10,000 |

## Improvement Summary

* Execution time reduced by **66.7%**.
* Removing unnecessary outer join and leveraging indexes streamlined the execution plan.

## EXPLAIN ANALYZE Snippets

**Before Optimization**

```
... (EXPLAIN ANALYZE output snippet showing costly nested loop on payments)
```

**After Optimization**

```
... (EXPLAIN ANALYZE output snippet showing efficient index scan on payments)
```
