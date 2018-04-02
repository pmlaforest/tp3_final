
DROP DATABASE IF EXISTS userdemo;

CREATE DATABASE userdemo;
USE userdemo;

GRANT ALL PRIVILEGES ON userdemo.* TO user@localhost IDENTIFIED BY '123';

/*
CREATE TABLE user (     
   id int PRIMARY KEY AUTO_INCREMENT,
  firstname varchar(255) NOT NULL,    
  lastname varchar(255) NOT NULL,           
  address varchar(255) NOT NULL, 
  zipcode varchar(255) NOT NULL,
  town varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  salt int NOT NULL,
  password varchar(255) NOT NULL,
  privilege int NOT NULL
);
*/

CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  email varchar(128) NOT NULL,
  full_name varchar(512) NOT NULL,
  password varchar(256) NOT NULL,
  status int(11) NOT NULL,
  date_created datetime NOT NULL,
  pwd_reset_token varchar(32) DEFAULT NULL,
  pwd_reset_token_creation_date datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx` (`email`)
);

CREATE TABLE product (
   id int PRIMARY KEY AUTO_INCREMENT,
  name varchar(255) NOT NULL,    
  price float NOT NULL,
  description MEDIUMTEXT NOT NULL,
  detailled_desc LONGTEXT NOT NULL
);