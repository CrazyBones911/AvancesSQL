CREATE TABLE type_vehicles (
    id_type_vehicle INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    type_vehicle VARCHAR(20)
);

CREATE TABLE colors (
    id_color INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    name_color VARCHAR(15)
);

CREATE TABLE brands (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    brand VARCHAR(20)
);

CREATE TABLE vehicles (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    model VARCHAR(15), 
    plate VARCHAR(10) UNIQUE, 
    id_type_vehicle INT, 
    id_color INT, 
    id_brands INT, 
    id_type_document INT,
    id_user INT
);


CREATE TABLE users (
    id_user INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    name VARCHAR(20), 
    last_name VARCHAR(20), 
    email VARCHAR(20) UNIQUE, 
    gender VARCHAR(10), 
    document VARCHAR(15)
);

CREATE TABLE type_document (
    id_type_document INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    type_document VARCHAR(20)
);


INSERT INTO type_vehicles (type_vehicle) VALUES ("carro")

INSERT INTO type_vehicles (type_vehicle) VALUES ("moto")

INSERT INTO colors (name_color) VALUES ("red")

INSERT INTO colors (name_color) VALUES ("white")

INSERT INTO brands (brand) VALUES ("toyota")

INSERT INTO brands (brand) VALUES ("ford")

INSERT INTO vehicles (model, plate,id_type_vehicle,id_color,id_brands,id_type_document,id_user) VALUES ("2020", "JSS545
",1,1,1,1,1)

INSERT INTO vehicles (model, plate,id_type_vehicle,id_color,id_brands,id_type_document,id_user) VALUES ("2024", "JFG545
",2,2,2,2,2)

INSERT INTO
    users (
        name, last_name, email, gender, document
    )
VALUES (
        "Dina", "Martinez", "dina@gmail.com", "Femenino", "104052120"
    )

INSERT INTO
    users (
        name, last_name, email, gender, document
    )
VALUES (
        "Juan", "Gutierrez", "juan@gmail.com", "Masculino", "104004622"
    )

INSERT INTO type_document (type_document) VALUES ("cedula")

INSERT INTO type_document (type_document) VALUES ("pasaporte")

SELECT vehicles.plate, brands.brand,type_vehicles.type_vehicle, colors.name_color, users.name
FROM vehicles 
INNER JOIN brands INNER JOIN type_vehicles INNER JOIN colors INNER JOIN users
WHERE vehicles.id_brands = brands.id 
AND vehicles.id_type_vehicle = type_vehicles.id_type_vehicle
AND vehicles.id_color = colors.id_color
AND vehicles.id_user = users.id_user;



SELECT * FROM vehicles


ALTER TABLE vehicles
ADD FOREIGN KEY (id_color) REFERENCES colors (id_color)

ALTER TABLE vehicles
ADD FOREIGN KEY (id_type_vehicle) REFERENCES type_vehicles (id_type_vehicle)

ALTER TABLE vehicles
ADD FOREIGN KEY (id_brands) REFERENCES brands (id_brands)

ALTER TABLE vehicles
ADD FOREIGN KEY (id_type_document) REFERENCES type_document (id_type_document)