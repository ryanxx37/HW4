USE lego;

INSERT INTO Collectors (lastName, firstName, phone, email, addressLine1, addressLine2, city, state, postalCode, country, user_name, password)
VALUES 
('Doe', 'John', '5551234567', 'john.doe@csc350.com', '123 Brick St', NULL, 'Bricksville', 'NY', '12345', 'USA', 'jdoe', 'password123'),
('Smith', 'Jane', '5559876543', 'jane.smith@csc350.com', '456 Block Ave', 'Apt 2', 'Bricktown', 'CA', '98765', 'USA', 'jsmith', 'password789');


INSERT INTO LegoSets (set_name, theme, category, piece, imageUrl, externalLink, description, collector_id)
VALUES 
('Imperial Star Destroyer™', 'Star Wars', 'Spaceships', 11, 'https://www.lego.com/cdn/cs/set/assets/bltb6f5dfaf01195072/75394_Prod.png', 'https://www.lego.com/en-us/product/imperial-star-destroyer-75394', 'Iconic starship from Star Wars universe.', 1),
('Hogwarts™ Castle and Grounds', 'Harry Potter', 'Castles', 5, 'https://www.lego.com/cdn/cs/set/assets/blte09f96efc93d5c1d/76419.png', 'https://www.lego.com/en-us/product/hogwarts-castle-and-grounds-76419', 'Detailed replica of Hogwarts Castle.', 2),
('McLaren P1™', 'Technic', 'Cars', 28, 'https://www.lego.com/cdn/cs/set/assets/blt519dac201a3dd4c1/42172.png', 'https://www.lego.com/en-us/product/mclaren-p1-42172', 'Advanced LEGO Technic model of the Bugatti Chiron.', 1),
("Olly and Paisley's Family Houses", 'Friends', 'Buildings', 17, 'https://www.lego.com/cdn/cs/set/assets/blt7a7c7638674d9354/42620_alt1.png', 'https://www.lego.com/en-us/product/olly-and-paisley-s-family-houses-42620', 'Heartlake City Resort with waterslides and more.', 2);


INSERT INTO Queries (userName, userEmail, message, set_id)
VALUES 
('Alice', 'alice@csc350.com', 'Is the Imperial Star Destroyer set available for purchase?', 1),
('Bob', 'bob@ecsc350.com', 'Can I visit the Hogwarts Castle display?', 2),
('Charlie', 'charlie@csc350.com', 'Is the McLaren set out of stock?', 3);
