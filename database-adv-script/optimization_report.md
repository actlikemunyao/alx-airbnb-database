# Optimization Report

## Objective

To retrieve all bookings along with user, property, and payment details, and then optimize the query to reduce execution time.

---

## 🔍 Initial Query (Before Optimization)

```sql
SELECT b.*, u.*, p.*, pay.*
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;
EXPLAIN SELECT b.*, u.*, p.*, pay.*
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;
EXPLAIN SELECT 
    b.id, b.start_date, b.end_date,
    u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id;
