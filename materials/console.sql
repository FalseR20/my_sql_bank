-- users and clients
SELECT id, username, password, is_superuser
FROM auth_user;

DELETE
FROM auth_user
WHERE is_superuser = false;

select *
from mainapp_clients;

-- default currencies
INSERT INTO mainapp_currencies(code)
values ('BYN'),
       ('USD');

select *
from mainapp_currencies;

-- default courses
insert into mainapp_courses(course_buy, course_sale, change_time, currency_id)
VALUES (1000000, 1000000, now(), 1),
       (2500000, 2500000, now(), 2);

select *
from mainapp_courses;

-- default account for user2
insert into mainapp_accounts (currency, balance)
values (1, 1000);

select *
from mainapp_accounts;

insert into mainapp_accounts_clients (id, accounts_id, clients_id)
values (1, 3, 1);

select *
from mainapp_accounts_clients;


-- default card for user2
select *
from mainapp_cards;

INSERT INTO mainapp_cards (number, cardholder_name, expiration_date, security_code, account_id, client_id)
values (0123456789101112, 'user1', now(), 123, 3, 1);

INSERT INTO mainapp_cards (number, cardholder_name, expiration_date, security_code, client_id)
values (0000000000000000, 'user1', now(), 123, 1);
