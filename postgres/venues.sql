create table venues (
venue_id serial primary key,
name varchar(255),
street_address text,
type char(7) check (type in ('public','private')) default 'public',
postal_code char(9),
country_code char(2),
foreign key (country_code, postal_code) references cities (country_code, postal_code) match full
);

insert into venues (name, postal_code, country_code)
values ('Crystal Ballroom', '97205', 'US');
