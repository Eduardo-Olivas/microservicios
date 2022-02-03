DROP TABLE IF EXISTS tbl_categories;

CREATE TABLE tbl_categories (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL
);


DROP TABLE IF EXISTS tbl_products;

CREATE TABLE tbl_products (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL,
  stock DOUBLE,
  price DOUBLE,
  status VARCHAR(250) NOT NULL,
  create_at TIMESTAMP,
  category_id BIGINT
);

DROP TABLE IF EXISTS tbl_regions;

CREATE TABLE tbl_regions (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL
);


DROP TABLE IF EXISTS tbl_customers;

CREATE TABLE tbl_customers (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY,
  number_id VARCHAR(250) NOT NULL,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  email VARCHAR(250) NOT NULL,
  photo_url VARCHAR(250) NOT NULL,
  region_id DOUBLE,
  state VARCHAR(250) NOT NULL
);

DROP TABLE IF EXISTS tlb_invoices;

CREATE TABLE tlb_invoices (
  id BIGINT AUTO_INCREMENT  PRIMARY KEY,
  number_invoice VARCHAR(250) NOT NULL,
  description VARCHAR(250) NOT NULL,
  customer_id BIGINT,
  create_at TIMESTAMP,
  state VARCHAR(250) NOT NULL
);


DROP TABLE IF EXISTS tbl_invoce_items;

CREATE TABLE tbl_invoce_items (
 id BIGINT,
  invoice_id BIGINT,
  product_id BIGINT,
  quantity BIGINT,
  price DOUBLE
);
