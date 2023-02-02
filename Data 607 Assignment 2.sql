CREATE TABLE data607lab2.people (
PersonID int(45) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Name varchar(255),
email varchar(255) 
);
CREATE TABLE `data607lab2`.`ratings` (
  `id` INT NOT NULL,
  `moviename` VARCHAR(255) NULL,
  `rating` INT NULL,
  CONSTRAINT `id`
    FOREIGN KEY (`id`)
    REFERENCES `data607lab2`.`people` (`personid`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
    
INSERT INTO data607lab2.ratings (ID, Moviename, rating) 
values 
('1', 'You People', '4'),
('1', 'M3GAN', '4'),
('1', 'Infinity Pool', '1'),
('1', 'The Menu', '5'),
('1', 'Missing', '2'),
('1', 'Shotgun Wedding', '6'),
('2', 'You People', '2'),
('2', 'M3GAN', '3'),
('2', 'Infinity Pool', '3'),
('2', 'The Menu', '5'),
('2', 'Missing', '5'),
('2', 'Shotgun Wedding', '6'),
('3', 'You People', '6'),
('3', 'M3GAN', '5'),
('3', 'Infinity Pool', '5'),
('3', 'The Menu', '4'),
('3', 'Missing', '2'),
('3', 'Shotgun Wedding', '2'),
('4', 'You People', '5'),
('4', 'M3GAN', '2'),
('4', 'Infinity Pool', '2'),
('4', 'The Menu', '2'),
('4', 'Missing', '4'),
('4', 'Shotgun Wedding', '5'),
('5', 'You People', '5'),
('5', 'M3GAN', '4'),
('5', 'Infinity Pool', '4'),
('5', 'The Menu', '5'),
('5', 'Missing', '5'),
('5', 'Shotgun Wedding', '4')
;

SELECT people.personid, people.name, ratings.Moviename, ratings.rating
FROM ratings
INNER JOIN people ON people.personid=ratings.ID;