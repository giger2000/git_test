select * from Flights;
/*1*/
select count(*) from Flights;
/*2*/
select AVG(ArrDelay) as Retard_promig_arribades,AVG(DepDelay)as Retard_promig_sortides, origin from flights group by origin;
/*3*/
select   Origin as origen,colYear as Anyo, colMonth as Mes, AVG(ArrTime) as promig_arribades 
from flights 
group by origin, colYear,colMonth 
order by origin, colYear,colMonth;
/*4*/
select   a.City as origen,colYear as Anyo, colMonth as Mes, AVG(ArrTime) as promig_arribades 
from flights f
left join USAirports a
on f.Origin=a.IATA
group by origin, colYear,colMonth 
order by origin, colYear,colMonth;