
#create table
CREATE TABLE product (
  id bigint NOT NULL AUTO_INCREMENT,
  created_date datetime(6) DEFAULT NULL,
  update_date datetime(6) DEFAULT NULL,
  name varchar(255) NOT NULL,
  price int NOT NULL,
  status varchar(15) NOT NULL,
  PRIMARY KEY (id)
)

#INSERT INTO
insert into product (name, price, status) values ('kacang tanah', 10000, 'publish');

insert into product values (2,'2022-11-02 00:00:00','2022-11-02 00:00:00', 'kacang panjanng', 10000, 'publish')

insert into product (name, price, status) values 
	('kacang ruji', 500, 'publish'),
	('kacang polong', 1500, 'publish'),
	('kacang merah', 500, 'publish')
	

#DELETE DATA
delete from product where id=5

#UPDATE DATA
update product set price=15000 where id=3


#SELECT DATA
SELECT * FROM product;

SELECT name, price, status from product p 

SELECT DISTINCT name FROM product p

select COUNT(DISTINCT name) from product p2  

SELECT COUNT(*) AS DistinctName FROM (SELECT DISTINCT name FROM product p2) as t

SELECT COUNT(*) as t 
FROM (SELECT DISTINCT name FROM product p2) as t