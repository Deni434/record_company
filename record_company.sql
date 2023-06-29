create database record_company;
use record_company;
create table bands(
	id int not null auto_increment,
    name varchar(255) not null,
    primary key (id)
    );

create table albums(
	id INT not null auto_increment,
    name varchar (255) not null,
    release_year int,
    band_id int not null,
    primary key(id),
    foreign key(band_id) references bands(id)
);




insert into bands (name)
values('Iron Maiden');

insert into bands (name)
values('Deuce'), ('Avenged Sevenfold'), ('Ankor');

Select * from bands;

Select * from bands limit 2;
Select name from bands;
select id as 'ID' , name as 'Band Name'
from bands;

select * from bands order by name asc;
insert into albums(name, release_year, band_id)
values ('The number of the Beasts', 1985, 1),
	   ('Power Slave', 1984, 1),
       ('Nightmare', 2018, 2),
       ('Nightmare', 2010, 3),
       ('Test Album', null, 3);

Select * from albums;

select  distinct name from albums;
update albums
set release_year = 1982
where id = 1;

Select * from albums 
where release_year < 2000;

Select * from albums
where name Like '%er%' or band_id = 2;

Select * from albums 
where release_year = 1984 and band_id = 1;

Select * from albums 
where release_year between 2000 and 2018;

Select * from albums
where release_year is null;

Delete from albums
where id = 5;

select * from albums;

Select * from albums
left join bands on bands.id = albums.band_id;
