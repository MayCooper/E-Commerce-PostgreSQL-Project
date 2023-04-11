-- Scaling Apps in SQL
-- Partitioning is a technique used in relational databases to improve application performance 
-- by managing the growth of data. There are two types of partitioning: horizontal and vertical.

-- In short:
-- Horizontal partitioning involves breaking large tables into smaller partitions, each containing a subset of rows.
-- Benefits of horizontal partitioning include more efficient querying, indexing at the partition level, and usage in data warehouses for time-oriented data or natural grouping based on subject area.
-- Vertical partitioning involves separating groups of columns into multiple tables.
-- Benefits of vertical partitioning include improved data retrieval performance, increased rows stored in a single data block, and reduced I/O operations.
-- Global indexes are used in vertical partitioning, reducing the amount of I/O operations required.
-- Vertical partitioning is used in data warehouses and can be based on similarly used attributes.
-- Horizontal and vertical partitioning are techniques used in relational databases to manage large amounts of data efficiently, which can have an impact on the performance and scalability of applications that use these databases.

-- Creating a Range-Partitioned Table
CREATE TABLE sales_history(
    product_id INT NOT NULL,
	product_name CHARACTER VARYING(50) NOT NULL,
	product_type CHARACTER VARYING(50) NOT NULL,
	total_units_sold INT NOT NULL,
	month_of_sale INT NOT NULL,
	PRIMARY KEY(month_of_sale, product_id)
) PARTITION BY RANGE(month_of_sale);


-- Create partitioned tables for nodes in the database management system

CREATE TABLE sales_history_month_1 PARTITION OF sales_history
FOR VALUES FROM (1) TO (2);

CREATE TABLE sales_history_month_2 PARTITION OF sales_history
FOR VALUES FROM (2) TO (3);

CREATE TABLE sales_history_month_3 PARTITION OF sales_history
FOR VALUES FROM (3) TO (4);

CREATE TABLE sales_history_month_4 PARTITION OF sales_history
FOR VALUES FROM (4) TO (5);

CREATE TABLE sales_history_month_5 PARTITION OF sales_history
FOR VALUES FROM (5) TO (6);

CREATE TABLE sales_history_month_6 PARTITION OF sales_history
FOR VALUES FROM (6) TO (7);

CREATE TABLE sales_history_month_7 PARTITION OF sales_history
FOR VALUES FROM (7) TO (8);

CREATE TABLE sales_history_month_8 PARTITION OF sales_history
FOR VALUES FROM (8) TO (9);

CREATE TABLE sales_history_month_9 PARTITION OF sales_history
FOR VALUES FROM (9) TO (10);

CREATE TABLE sales_history_month_10 PARTITION OF sales_history
FOR VALUES FROM (10) TO (11);

CREATE TABLE sales_history_month_11 PARTITION OF sales_history
FOR VALUES FROM (11) TO (12);

CREATE TABLE sales_history_month_12 PARTITION OF sales_history
FOR VALUES FROM (12) TO (13);