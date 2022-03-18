SELECT c.car_id,
	c.name,
	c.year,
	c.selling_price,
	c.fuel,
	c.seller_type,
	o.km_driven,
	o.owner,
	o.mileage
INTO cars_summary
FROM cars_details as c
INNER JOIN other_cars_details as o
ON c.car_id = o.car_id