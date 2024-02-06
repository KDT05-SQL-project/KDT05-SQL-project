create database population;

use population;

select * from new;
desc new;

alter table new 
CHANGE COLUMN 지역 locality_id char(20);

alter table new 
CHANGE COLUMN 년도 year int;

alter table new 
CHANGE COLUMN 신규분양수 new_housing int;

select * from makehounse; 

desc makehounse;

alter table makehounse 
CHANGE COLUMN 지역 locality_id char(20);

alter table makehounse 
CHANGE COLUMN 년도 year int;

alter table makehounse  
CHANGE COLUMN 준공수 make_housing int;

select * from unparcell;

desc unparcell ;

alter table unparcell 
CHANGE COLUMN 년도 year int;

alter table unparcell 
CHANGE COLUMN 지역 locality_id char(20);

alter table unparcell 
CHANGE COLUMN 미분양수 unsold int;


ALTER TABLE makehounse
RENAME TO makehouse;


ALTER TABLE new_housing
RENAME TO in_housing;

alter table new
CHANGE COLUMN new_housing in_housing int;

alter table unparcell 
add PRIMARY KEY unsold;


CREATE TABLE unsold_house AS
select u.year,u.locality_id,u.unsold ,n.in_housing, m.make_housing  
from unparcell u inner join new n 
on u.locality_id  = n.locality_id and u.year = n.year
inner join makehouse m 
on m.locality_id = n.locality_id and m.year = n.year;

select * from unsold_house;
select * from main;
alter table main 
change column 년도 year int;

alter table main 
change column 지역 local char(4);

alter table main
change column 인구 population_num int;

alter table main
change column 인구밀도 population_density int;

create table year2013
select * from unparcell u 
where year = 2013
order by unsold desc;

create table year2016
select * from unparcell u 
where year = 2016
order by unsold desc;

create table year2019
select * from unparcell u 
where year = 2019
order by unsold desc;

create table year2022
select * from unparcell u 
where year = 2022
order by unsold desc;

select * from year2013
where locality_id in ('서울','경기','대구');
select * from year2016
where locality_id in ('서울','경기','대구');
select * from year2019
where locality_id in ('서울','경기','대구');
select * from year2022
where locality_id in ('서울','경기','대구');

create table years as
SELECT
  year,
  SUM(population_num) AS population_num_ALL,
  SUM(population_density) AS population_density_ALL
FROM main
GROUP BY year;

select * from years;
ALTER TABLE years 
ADD PRIMARY KEY (year);

ALTER TABLE unsold_house 
ADD FOREIGN KEY (year)
REFERENCES years(year);

## unsold는 null값이 있어서 기본값 지정 못함
ALTER TABLE unsold_house 
ADD PRIMARY KEY (make_housing);

select * from unsold_house;

ALTER TABLE makehouse 
ADD FOREIGN KEY (make_housing)
REFERENCES unsold_house();


select * from makehouse m ;


create table year2013m
select * from makehouse m 
where year = 2013
order by make_housing desc;

create table year2016m
select * from makehouse m 
where year = 2016
order by make_housing desc;

create table year2019m
select * from makehouse m 
where year = 2019
order by make_housing desc;

create table year2021m
select * from makehouse m 
where year = 2021
order by make_housing desc;

select * from year2013m
where locality_id in ('서울','경기','대구');
select * from year2016m
where locality_id in ('서울','경기','대구');
select * from year2019m
where locality_id in ('서울','경기','대구');
select * from year2021m
where locality_id in ('서울','경기','대구');