use travelonthego;
-- Q 3
Select Gender, distance from passenger where distance <=600;
Select Gender, count(category), category from passenger where distance <=600 group by Gender;
-- Q 4
Select Min(price) from travelonthego.price where Bus_type = "Sleeper";
-- Q 5
Select Passenger_name, Gender from passenger where Passenger_name like "S%" order by Passenger_name;
-- Q 6
Select passenger.passenger_name, passenger.Boarding_City, 
passenger.Destination_City, passenger.Bus_Type, travelonthego.price.price
from passenger
inner join travelonthego.price on passenger.Distance = travelonthego.price.distance;
-- Q 7
Select p.passenger_name, pr.price, pr.bus_type from passenger as p, price as pr 
where p.distance = pr.distance and pr.distance = 1000 and pr.bus_type = "Sitting";
-- Q 8
Select p.passenger_name, pr.price, pr.bus_type from passenger as p, price as pr 
where p.distance = pr.distance and pr.distance = 600;
-- Q 9
Select distinct distance from passenger order by distance desc;
-- Q 10
select passenger_name, distance*100/ (select sum(distance) from passenger) as "distance travelled"
from passenger
group by passenger_name;
-- Q 11
call goup_price;