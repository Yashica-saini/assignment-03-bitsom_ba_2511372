## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem: The raw dataset contained dates written in different formats such as DD/MM/YYYY and MM-DD-YYYY. This inconsistency makes querying and aggregation difficult in a data warehouse.

Resolution: All dates were converted to a standard ISO format (YYYY-MM-DD) before loading them into the dim_date table.

---

### Decision 2 — Handling NULL Values
Problem: Some records in the raw dataset had missing values for product category or store information.

Resolution: During the transformation step, missing values were either filled using reference data or excluded from the warehouse load to maintain data integrity.

---

### Decision 3 — Standardizing Category Names
Problem: Product categories appeared with inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".

Resolution: All category values were standardized to a consistent format with the first letter capitalized (e.g., Electronics, Clothing, Groceries) before inserting into the dim_product table.
