use ims_project;

create table customers (
	customer_id int NOT NULL Auto_increment,
    customer_name varchar(50),
    PRIMARY KEY (customer_id)
    );
    
create table orders (
	order_id int NOT NULL AUTO_INCREMENT,
    customer_id int,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id),
    PRIMARY KEY (order_id)
	);
    
create table products (
	product_id int NOT NULL AUTO_INCREMENT,
    value int,
    PRIMARY KEY (product_id)
	);    
    
create table order_product (
	order_product_id int NOT NULL AUTO_INCREMENT,
    order_id int,
    product_id int,
    CONSTRAINT fk_order FOREIGN KEY (order_id)
    REFERENCES orders(order_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id)
    REFERENCES products(product_id),
    PRIMARY KEY (order_product_id)
	);
