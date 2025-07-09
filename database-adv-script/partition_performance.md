# Partition Performance Report

## Objective
To improve query performance on a large `bookings` table by partitioning it based on the `start_date` column.

---

## Strategy

We implemented **RANGE partitioning** on the `bookings` table by year of `start_date`. This allows queries filtering by date ranges to scan only the relevant partition instead of the entire table.

---

## Example Partitioned Table

Created a partitioned table called `bookings_partitioned` with the following range partitions:

- `p2023`: bookings before 2024
- `p2024`: bookings in 2024
- `p2025`: bookings in 2025

---

## Performance Test

### Query Used:

```sql
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
