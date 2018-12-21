select * 
from Flights;
/*1*/
select count(*) 
from Flights;
/*2*/
select AVG(ArrDelay) as Retard_promig_arribades,AVG(DepDelay)as Retard_promig_sortides, origin 
from flights 
group by origin;
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
/*5*/
select  c.description as Companyia, count(*) as cancelacions
from flights f
left join Carriers c
on c.CarrierCode=f.UniqueCarrier
where f.cancelled=1
group by c.CarrierCode
order by cancelacions desc;

/*6*/
select FlightNum, sum(distance) as DistanciaTotal
from flights
group by FlightNum
order by DistanciaTotal desc
limit 10;

/*7*/
select UniqueCarrier, AVG(ArrDelay) AS retard 
from flights 
group by UniqueCarrier having retard>10;