CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_number` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

CREATE TABLE `sales_order` (
  `order_id` varchar(5) NOT NULL,
  `partner_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_quantity` int NOT NULL,
  `total_selling_price` int NOT NULL,
  `sales_channel` varchar(3) NOT NULL,
  `order_date` varchar(9) NOT NULL,
  `customer_id` int NOT NULL
)

INSERT INTO tutorial.customers (customer_number,name,created_at,updated_at,deleted_at) VALUES
	 ('1001','Bob Martin','2021-06-18 14:45:44','2021-06-18 14:45:44',NULL),
	 ('1002','Linus Trovald','2021-06-18 14:45:44','2021-06-18 14:45:44',NULL);
	 
INSERT INTO tutorial.sales_order (order_id,partner_id,item_id,item_quantity,total_selling_price,sales_channel,order_date,customer_id) VALUES
	 ('A0001',1,1001,1,100,'AAA','1-Jan-17',1),
	 ('A0002',1,1005,2,20,'BBB','11-Jan-17',2),
	 ('A0002',1,1003,4,120,'BBB','11-Jan-17',3),
	 ('A0002',1,1001,2,200,'BBB','11-Jan-17',3),
	 ('A0003',2,1002,1,80,'AAA','3-Mar-17',2),
	 ('A0003',2,1008,6,75,'AAA','3-Mar-17',4),
	 ('A0005',1,1001,1,100,'AAA','15-Apr-17',4),
	 ('A0006',2,1003,5,150,'AAA','1-Jun-17',4),
	 ('A0007',3,1001,2,200,'BBB','21-Jun-17',2),
	 ('A0007',3,1005,1,10,'BBB','21-Jun-17',5);
INSERT INTO tutorial.sales_order (order_id,partner_id,item_id,item_quantity,total_selling_price,sales_channel,order_date,customer_id) VALUES
	 ('A0007',3,1004,9,60,'BBB','21-Jun-17',3);
	

#inner join
SELECT * from sales_order so 
inner join customers c on so.customer_id = c.id 
where so.total_selling_price = 80

	
SELECT c.name as custumer_name, so.order_id, so.total_selling_price  from sales_order so 
inner join customers c on so.customer_id = c.id 
	
#right join 
select * from customers  c 
right join sales_order so on so.customer_id = c.id 

#left join 
select * from sales_order so 
left join customers c on so.customer_id = c.id 

#cross join 
select * from customers c 
cross join sales_order so 
where so.customer_id = c.id 
	
	
	
