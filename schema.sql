CREATE TABLE cars_details (
    car_id VARCHAR NOT NULL,
    name VARCHAR NOT NULL,
    year INT NOT NULL,
    selling_price INT NOT NULL,
    fuel VARCHAR NOT NULL,
    seller_type VARCHAR NOT NULL,
    seats INT,
    PRIMARY KEY (car_id)
	);
	
SELECT * from cars_details;
​
CREATE TABLE other_cars_details (
    car_id VARCHAR NOT NULL,
    name VARCHAR NOT NULL,
    km_driven INT NOT NULL,
    transmission VARCHAR NOT NULL,
    owner VARCHAR NOT NULL,	
    mileage VARCHAR,
    engine VARCHAR,
    max_power VARCHAR,
    torque VARCHAR,
    FOREIGN KEY (car_id) REFERENCES cars_details (car_id),
    PRIMARY KEY (car_id)
);
