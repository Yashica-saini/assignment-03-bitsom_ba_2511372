## Anomaly Analysis

### Insert Anomaly

If a new product needs to be added to the system but it has not yet been ordered, it cannot be inserted into the table because the table requires an order_id and customer information.

Example columns involved:
product_id, product_name, category

Since product data is stored together with order information, a product cannot exist independently.

---

### Update Anomaly

If the email address of a sales representative changes, it must be updated in every row where that sales_rep_id appears.

Example columns:
sales_rep_id, sales_rep_email

If one row is missed during update, inconsistent data will exist.

---

### Delete Anomaly

If the last order for a particular product is deleted, all information about that product will also be lost.

Example columns:
product_id, product_name, category

Deleting an order row removes product information that should ideally be stored separately.
