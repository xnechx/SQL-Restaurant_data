create table menu(
    menu_id int primary key,
    menu_name text,
    menu_type text,
    price real
);

insert into menu values
    (1, 'pizza', 'food', 400),
    (2, 'spaghetti', 'food', 120),
    (3, 'buffalo wing', 'food', 100),
    (4, 'seafood salad', 'food', 140),
    (5, 'panna cotta', 'dessert', 60),
    (6, 'bingsu', 'dessert', 80),
    (7, 'waffle', 'dessert', 40),
    (8, 'drinking water', 'beverage', 30),
    (9, 'smoothie', 'beverage', 70),
    (10, 'soft drink', 'beverage', 40);


create table customers(
    customer_id int primary key,
    name text,
    age int,
    email text
);

insert into customers values
    (1, 'Bob', 30, 'boba@gmail.com'),
    (2, 'Nut', 18, 'nutza@gmail.com'),
    (3, 'Luffy', 20, 'nika@gmail.com'),
    (4, 'Loso', 42, 'seksan@gmail.com'),
    (5, 'Anya', 15, 'an001@gmail.com'),
    (6, 'Mix', 24, 'milkx@gmail.com'),
    (7, 'Dub', 22, 'dubu@gmail.com'),
    (8, 'Yuna', 43, 'yona@gmail.com'),
    (9, 'Ken', 27, 'kenmu@gmail.com'),
    (10, 'Tim', 33, 'timy@gmail.com');


create table cashier(
    cashier_id int primary key,
    cashier_name text,
    cashier_age int
);

insert into cashier values
    (1, 'Sam', 19),
    (2, 'Anna', 24),
    (3, 'V', 22),
    (4, 'Kim', 30),
    (5, 'Tom', 20);


create table orders(
    order_id int,
    menu_id int,
    amount int,
    foreign key (order_id) references invoices(invoice_id),
    foreign key (menu_id) references menu(menu_id)
);

insert into orders values
    (1, 1, 1),
    (1, 3, 1),
    (1, 10, 2),
    (2, 1, 1),
    (2, 9, 1),
    (3, 2, 2),
    (3, 8, 1),
    (3, 10, 1),
    (4, 3, 1),
    (4, 4, 1),
    (4, 6, 2),
    (5, 1, 1),
    (5, 9, 1),
    (6, 2, 1),
    (6, 4, 1),
    (6, 8, 1),
    (7, 2, 2),
    (7, 3, 1),
    (7, 4, 2),
    (7, 8, 2);


create table invoices(
    invoice_id int primary key,
    invoice_date text,
    customer_id int,
    cashier_id int,
    total real,
    foreign key (customer_id) references customers(customer_id),
    foreign key (cashier_id) references cashier(cashier_id)
);

insert into invoices values
    (1, '2022-04-10 11:30:12', 9, 2, 580),
    (2, '2022-04-10 11:35:32', 5, 2, 490),
    (3, '2022-04-10 12:00:18', 2, 5, 310),
    (4, '2022-04-11 11:05:04', 6, 1, 400),
    (5, '2022-04-11 11:40:52', 1, 1, 470),
    (6, '2022-04-11 11:59:40', 7, 1, 290),
    (7, '2022-04-11 12:16:15', 10, 3, 680);
