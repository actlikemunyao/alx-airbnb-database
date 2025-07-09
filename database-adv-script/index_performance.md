# Index Performance Report

## Objective
To improve query performance by creating indexes on high-usage columns in the `users`, `bookings`, and `properties` tables.

---

## Indexes Created

| Table      | Column        | Index Name              |
|------------|---------------|--------------------------|
| bookings   | user_id       | idx_bookings_user_id     |
| reviews    | property_id   | idx_reviews_property_id  |
| bookings   | property_id   | idx_bookings_property_id |
| bookings   | start_date    | idx_bookings_start_date  |

---

## Performance Analysis

### Query Tested (Before Indexing)
```sql
SELECT * FROM bookings WHERE user_id = 10;
