create table cities (
name text not null,
postal_code varchar(9) check (postal_code <> ''),
country_code char(2) references countries,
primary key (country_code, postal_code)
);

insert into cities
values ('Portland', '97205', 'US');
