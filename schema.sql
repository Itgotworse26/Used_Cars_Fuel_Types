CREATE TABLE Cars_Details (	
     car_id VARCHAR(10) NOT NULL,
     name VARCHAR NOT NULL,
	 year int NOT NULL,
	 selling_price int NOT NULL,
	 fuel VARCHAR NOT NULL,
	 seller_type VARCHAR NOT NULL,
	 seats int NOT NULL,
     PRIMARY KEY (car_id)
);

CREATE TABLE Other_Cars_Details (
     car_id VARCHAR(10) NOT NULL,
     name VARCHAR NOT NULL,
	 km_driven int NOT NULL,
	 transmission VARCHAR NOT NULL,
	 owner VARCHAR NOT NULL,
	 mileage VARCHAR NOT NULL,
	 ngine VARCHAR NOT NULL,
	 max_power VARCHAR NOT NULL,	
	 torque VARCHAR NOT NULL,
     PRIMARY KEY(car_id)
);
select * from Cars_Details;
drop table Cars_Details;
select * from Other_Cars_Details;