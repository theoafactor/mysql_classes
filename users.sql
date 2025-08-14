CREATE TABLE IF NOT EXISTS `students` (
    `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    `fname` VARCHAR(100) NOT NULL,
    `lname` VARCHAR(100) NOT NULL, 
    `email` VARCHAR(100) UNIQUE NOT NULL,
    `is_account_verified` BOOLEAN DEFAULT FALSE,
    `date_registered` TIMESTAMP DEFAULT NULL
);


/**
Create data that can be inserted into the students table
**/
INSERT INTO `students` (`fname`, `lname`, `email`, `date_registered`) 
VALUES("James", "John", "james@email.com", NOW());


INSERT INTO `students` (`fname`, `lname`, `email`, `date_registered`) 
VALUES("Mary", "Joseph", "mary@email.com", NOW());

INSERT INTO `students` (`fname`, `lname`, `email`, `date_registered`) 
VALUES("Ann", "Mike", "ann@email.com", NOW());



CREATE TABLE IF NOT EXISTS `results` (
    `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `score` DECIMAL(2) DEFAULT 0.00, 
    `student_id` INT NOT NULL,
    `date_created` TIMESTAMP DEFAULT NULL
);


/**
Enter records 
**/
INSERT INTO `results` (`score`, `student_id`,`date_created`) 
VALUES("50", 3, NOW());

INSERT INTO `results` (`score`, `student_id`,`date_created`) 
VALUES("60", 2, NOW());

INSERT INTO `results` (`score`, `student_id`,`date_created`) 
VALUES("40", 1, NOW());