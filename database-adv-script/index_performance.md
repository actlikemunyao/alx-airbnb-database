
> ✅ Make sure the file shows *actual* use of EXPLAIN, not just says "we used EXPLAIN".

---

## ✅ What To Do Now

1. **Create** `database_index.sql` with valid `CREATE INDEX` commands.
2. **Update** `index_performance.md` to include `EXPLAIN` SQL and comments about performance improvement.
3. **Stage, commit, and push** both files to GitHub.

```bash
git add database_index.sql index_performance.md
git commit -m "Add index creation and performance explanation"
git push
-- Create indexes on commonly used columns to improve performance

-- Index on user_id column in bookings table (frequently used in WHERE and JOIN)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id column in reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Index on property_id column in bookings table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on start_date column in bookings table (used for partitioning or filtering)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
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
SELECT * FROM bookings WHERE user_id = 10;## Performance Comparison Using EXPLAIN

### Before Index:
```sql
EXPLAIN SELECT * FROM bookings WHERE user_id = 5;

