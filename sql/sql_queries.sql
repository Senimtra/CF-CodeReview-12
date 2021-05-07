CREATE DATABASE `cr12_mounteverest_gregor`;

CREATE TABLE `cr12_mounteverest_gregor`.`locations` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `loc_name` VARCHAR(30) NOT NULL,
    `price` FLOAT NOT NULL,
    `descr_short` VARCHAR(100) NOT NULL,
    `descr_long` VARCHAR(255) NOT NULL,
    `longitude` VARCHAR(20) NOT NULL,
    `latitude` VARCHAR(20) NOT NULL,
    `picture` VARCHAR(255) NOT NULL
);
