# Task 1: Database Normalization

## 📌 Objective
To ensure the Airbnb database design is optimized by applying normalization rules up to the **Third Normal Form (3NF)**. This reduces redundancy and improves data integrity.

---

## 1. First Normal Form (1NF)

**Rule:**  
- Eliminate repeating groups or arrays.  
- Each column should contain atomic (indivisible) values.

**Application:**  
- All entities such as `User`, `Property`, `Booking`, and `Payment` have attributes that store atomic data only.  
- For example, the `User` entity stores a single email address per user (no multiple emails in one field).  
- No multi-valued fields exist.

---

## 2. Second Normal Form (2NF)

**Rule:**  
- Must be in 1NF.  
- Remove partial dependencies (no attribute depends on only part of a composite primary key).

**Application:**  
- Since all tables use single-column primary keys (like `user_id`, `property_id`), there are no partial dependencies.  
- Attributes fully depend on their entire primary key.

---

## 3. Third Normal Form (3NF)

**Rule:**  
- Must be in 2NF.  
- Remove transitive dependencies (non-key attributes should not depend on other non-key attributes).

**Application:**  
- Example:  
  - The `Booking` table does not store user information like `user_name` directly, only the `user_id` foreign key. User details remain in the `User` table.  
  - This avoids duplication of user data in multiple tables.  
- Similarly, `Payment` only stores payment-specific info and links to `Booking` by foreign key.

---

## Summary

| Table    | Normalization Status | Notes                                  |
|----------|----------------------|----------------------------------------|
| User     | 3NF                  | Atomic attributes, no redundant data  |
| Property | 3NF                  | Fully normalized with owner relationship |
| Booking  | 3NF                  | No partial or transitive dependencies  |
| Payment  | 3NF                  | Linked properly, no redundant columns |

The database design follows best practices for normalization, ensuring efficient storage and data integrity while reflecting real-world relationships.

---

## References

- Database Normalization, Wikipedia: https://en.wikipedia.org/wiki/Database_normalization  
- Fundamentals of Database Systems, Elmasri & Navathe

