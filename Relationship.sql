-- Store DB

create table customers (
cust_id serial primary key,
cust_name varchar(100) not null
);
drop table customers

create table orders (
order_id serial primary key,
order_date date not null,
price numeric not null,
cust_id integer not null,
foreign key (cust_id) references customers(cust_id)
);


insert into customers (cust_name)
values('Raju'),('Sham'),('Paul'),('Alex');

insert into orders (order_date,cust_id,price)
values('2024-01-01',1,250.00),
  ('2024-01-01', 1, 250.00),
  ('2024-01-02', 2, 150.00),
  ('2024-01-03', 3, 300.00),
  ('2024-01-04', 4, 200.00);

  select * from customers, orders


SELECT c.cust_id, c.cust_name, o.order_id, o.order_date, o.price
FROM customers c
JOIN orders o
  ON c.cust_id = o.cust_id;

  -- cross join 
  select * from customers cross join orders ;

-- inner join 
select * from customers c
inner join
orders o
on c.cust_id = o.cust_id;

select * from customers