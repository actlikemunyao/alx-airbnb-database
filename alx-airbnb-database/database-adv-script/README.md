# Task 1: Practice Subqueries

## Objective

This task focuses on practicing both **non-correlated** and **correlated** subqueries in SQL to retrieve data based on nested conditions.

---

## Files

- `subqueries.sql`: Contains all subquery SQL statements for this task.

---

## Queries

### 1. Properties with an Average Rating Greater Than 4.0

**Description**:  
This query finds all properties whose average rating (from the `reviews` table) is greater than 4.0.

**Query**:
```sql
SELECT *
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);
