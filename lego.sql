CREATE DATABASE IF NOT EXISTS lego;

USE lego;

DROP TABLE IF EXISTS Collectors;
DROP TABLE IF EXISTS LegoSets;
DROP TABLE IF EXISTS Queries;

CREATE TABLE Collectors (
    collector_id int AUTO_INCREMENT,
    lastName varchar(50) NOT NULL,
    firstName varchar(50) NOT NULL,
    phone varchar(15),
    email varchar(100) NOT NULL,
    addressLine1 varchar(50) NOT NULL,
    addressLine2 varchar(50) DEFAULT NULL,
    city varchar(50) NOT NULL,
    state varchar(50) DEFAULT NULL,
    postalCode varchar(15) DEFAULT NULL,
    country varchar(50) NOT NULL,
    user_name varchar(50) NOT NULL,
    password varchar(255) NOT NULL,
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (collector_id)
);

CREATE TABLE LegoSets (
    set_id int AUTO_INCREMENT,
    set_name varchar(100) NOT NULL,
    theme varchar(100),
    category varchar(100),
    piece int NOT NULL,
    imageUrl varchar(255),
    externalLink varchar(255),
    description varchar(5000),
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    collector_id int,
    PRIMARY KEY (set_id),
    FOREIGN KEY (collector_id) REFERENCES Collectors(collector_id) ON DELETE CASCADE
);

CREATE TABLE Queries (
    query_id int AUTO_INCREMENT,
    userName varchar(50),
    userEmail varchar(100),
    message text,
    set_id int,
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (query_id),
    FOREIGN KEY (set_id) REFERENCES LegoSets(set_id) ON DELETE CASCADE
);
