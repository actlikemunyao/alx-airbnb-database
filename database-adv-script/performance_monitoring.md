# Performance Monitoring Report

## Objective

To monitor, analyze, and refine SQL query performance using tools like `EXPLAIN` or `EXPLAIN ANALYZE`, and implement changes to improve efficiency.

---

## Step 1: Identify Frequently Used Queries

Example: Query to retrieve bookings made by users in 2024 for properties in Nairobi.

```sql
SELECT b.id, b.start_date, b.end_date, u.name, p.title
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE b.start_date BETWEEN '2024-01-01' AND '2024-12-31'
  AND p.city = 'Nairobi';
