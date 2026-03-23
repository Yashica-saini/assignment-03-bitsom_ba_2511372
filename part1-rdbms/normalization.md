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

---


## Normalization Justification

Keeping all data in a single table may appear simpler initially, but it creates serious problems as the dataset grows. In the provided orders_flat.csv file, information about customers, products, and sales representatives is repeated across many rows. For example, if a customer places multiple orders, their name, email, and city are repeated in every row. This redundancy wastes storage and increases the chances of inconsistencies.

An example from the dataset is the sales representative information. The same sales_rep_id appears in multiple rows along with the same email and office address. If the email address changes, it must be updated in every row where that representative appears. Missing even one row would create inconsistent data, which is an example of an update anomaly.

Similarly, if the last order containing a particular product is deleted, the product information would disappear entirely from the dataset. This is a delete anomaly. Additionally, new products cannot be inserted into the system until an order exists, which is an insert anomaly.

By normalizing the database into separate tables such as customers, products, sales_reps, orders, and order_items, each entity is stored only once. Relationships are maintained using foreign keys. This design removes redundancy, prevents anomalies, and ensures data integrity while making queries more efficient and easier to maintain.
