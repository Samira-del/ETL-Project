CREATE TABLE orders (
 id VARCHAR NOT NULL,
 marketplace VARCHAR,
 order_id VARCHAR NOT NULL,
 sku VARCHAR,
 title VARCHAR,
order_date DATE,
payment_type VARCHAR,
quantity INTEGER,
order_amount INTEGER,
item_cost INTEGER,
shipping_amount INTEGER,
shipping_tax INTEGER,
total_order_tax INTEGER,
order_tax INTEGER,
distributor_id VARCHAR,
dealer_id VARCHAR,
CONSTRAINT pk_orders PRIMARY KEY (
id
)
);
--drop table orders cascade
ALTER TABLE orders ADD CONSTRAINT fk_orders_sku FOREIGN KEY(sku)
REFERENCES products (sku);
-- ALTER TABLE distributor ADD CONSTRAINT fk_distributor_distributor_id FOREIGN KEY(distributor_id)
-- REFERENCES orders (distributor_id);
-- ALTER TABLE dealer ADD CONSTRAINT fk_dealer_dealer_id FOREIGN KEY(dealer_id)
-- REFERENCES orders (dealer_id);
--drop table products
CREATE TABLE products (
   sku VARCHAR  NOT NULL,
   name VARCHAR,
   selling_price INTEGER,
   item_cost INTEGER,
   brand VARCHAR,
   vendor_number VARCHAR,
   status VARCHAR,
   upc VARCHAR,
   product_name VARCHAR,
   product_description VARCHAR,
   product_features VARCHAR,
   primary_item_image VARCHAR,
   CONSTRAINT pk_products PRIMARY KEY (
       sku
    )
);
SELECT * FROM orders;
SELECT * FROM products;