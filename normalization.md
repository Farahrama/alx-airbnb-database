# Normalization Report – Airbnb Clone Database

## Objective:
To ensure the database schema follows the principles of normalization up to the **Third Normal Form (3NF)** in order to minimize redundancy and enhance data integrity.

---

## First Normal Form (1NF)

**Condition:**  
- Each column should contain atomic values (no lists or sets).
- Each table should have a primary key.

✅ All tables in the schema contain atomic values.  
✅ No repeating groups or multi-valued attributes exist.  
✅ Each table has a well-defined primary key.

**✅ Status:** Pass

---

## Second Normal Form (2NF)

**Condition:**  
- The database must be in 1NF.
- All non-key attributes must be fully functionally dependent on the **entire** primary key.

✅ All primary keys are single-column (not composite).  
✅ All non-key attributes are directly dependent on the primary key.

**✅ Status:** Pass

---

## Third Normal Form (3NF)

**Condition:**  
- The database must be in 2NF.
- All non-key attributes must be non-transitively dependent (i.e., they must depend **only** on the primary key, not on another non-key attribute).

✅ No transitive dependencies exist in any table.  
✅ All non-key columns depend directly on their table’s primary key.

**✅ Status:** Pass

---

## Final Conclusion:

✅ The database schema has been successfully normalized to the **Third Normal Form (3NF)**.  
✅ No adjustments were necessary during the normalization review.

This ensures optimal data integrity, minimal redundancy, and a well-structured relational design.

---