# Task 0: Define Entities and Relationships – ER Diagram

## 📌 Objective
Design an Entity-Relationship Diagram (ERD) for an Airbnb-like application that clearly outlines the core entities, their attributes, and the relationships between them.

## 🧱 Entities & Attributes

### 1. **User**
- id (PK)
- name
- email
- password
- created_at

### 2. **Property**
- id (PK)
- owner_id (FK → User)
- title
- description
- location
- price_per_night
- created_at

### 3. **Booking**
- id (PK)
- user_id (FK → User)
- property_id (FK → Property)
- start_date
- end_date
- total_price
- status
- created_at

### 4. **Payment**
- id (PK)
- booking_id (FK → Booking)
- amount
- payment_method
- payment_date
- status

## 🔗 Relationships
- A **User** can own **many Properties**
- A **User** can make **many Bookings**
- A **Property** can have **many Bookings**
- A **Booking** has **one Payment**
- A **Payment** is made for **one Booking**

## 🖼 ER Diagram
The ER Diagram was created using [Draw.io](https://draw.io) and saved as both PNG and editable XML format. It includes:
- All core entities
- Primary and foreign keys
- Clear relationship lines (1:1, 1:N, N:M where applicable)

👉 ERD Image: [Link or embed your diagram if possible]

---

## ✅ Notes
- All relationships were carefully defined using cardinality (1:1, 1:N).
- Foreign keys were identified to enforce referential integrity.
- The model is designed to scale and reflect realistic Airbnb-like interactions.

