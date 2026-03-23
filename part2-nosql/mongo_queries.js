// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
  {
    product_id: "E101",
    name: "Samsung 55 Inch Smart TV",
    category: "Electronics",
    price: 52000,
    brand: "Samsung",
    warranty_years: 2
  },
  {
    product_id: "C201",
    name: "Men's Cotton T-Shirt",
    category: "Clothing",
    price: 799,
    brand: "Levis"
  },
  {
    product_id: "G301",
    name: "Organic Almonds",
    category: "Groceries",
    price: 850,
    expiry_date: new Date("2024-12-15")
  }
]);



// OP2: find Electronics products with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});



// OP3: find Groceries expiring before 2025-01-01

db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});



// OP4: updateOne — add discount_percent field

db.products.updateOne(
  { product_id: "E101" },
  { $set: { discount_percent: 10 } }
);



// OP5: create index on category field

db.products.createIndex({ category: 1 });
