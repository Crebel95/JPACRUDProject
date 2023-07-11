-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema americansilvercoinsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `americansilvercoinsdb` ;

-- -----------------------------------------------------
-- Schema americansilvercoinsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `americansilvercoinsdb` DEFAULT CHARACTER SET utf8 ;
USE `americansilvercoinsdb` ;

-- -----------------------------------------------------
-- Table `silver_coin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `silver_coin` ;

CREATE TABLE IF NOT EXISTS `silver_coin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `mint` VARCHAR(45) NULL,
  `date` YEAR(4) NULL,
  `value` DOUBLE NULL,
  `silver_content_grams` DOUBLE NULL,
  `total_weight_grams` DOUBLE NULL,
  `picture_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS silver@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'silver'@'localhost' IDENTIFIED BY 'silver';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'silver'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `silver_coin`
-- -----------------------------------------------------
START TRANSACTION;
USE `americansilvercoinsdb`;
INSERT INTO `silver_coin` (`id`, `type`, `mint`, `date`, `value`, `silver_content_grams`, `total_weight_grams`, `picture_url`) VALUES (1, 'Kennedy Half Dollar', 'Philadelphia', 1964, 10.16, 11.25, 12.5, 'https://m.media-amazon.com/images/I/715aepMRYTL._SX466_.jpg');
INSERT INTO `silver_coin` (`id`, `type`, `mint`, `date`, `value`, `silver_content_grams`, `total_weight_grams`, `picture_url`) VALUES (2, 'Peace Dollar', 'Denver', 1921, 33.55, 24.10, 26.73, 'https://assets.goldeneaglecoin.com/resource/productimages/1921-$1Peace-obv.jpg');
INSERT INTO `silver_coin` (`id`, `type`, `mint`, `date`, `value`, `silver_content_grams`, `total_weight_grams`, `picture_url`) VALUES (3, 'Standing Liberty Quarter', 'West Point', 1928, 8.93, 5.62, 6.25, 'https://cointrackers.com/img/coins/1928-d-standing-liberty-quarter.png');
INSERT INTO `silver_coin` (`id`, `type`, `mint`, `date`, `value`, `silver_content_grams`, `total_weight_grams`, `picture_url`) VALUES (4, 'Mercury Dime', 'San Francisco', 1930, 2.71, 2.25, 2.5, 'https://i.ebayimg.com/images/g/fiUAAOSwoSRkJPKN/s-l1600.jpg');
INSERT INTO `silver_coin` (`id`, `type`, `mint`, `date`, `value`, `silver_content_grams`, `total_weight_grams`, `picture_url`) VALUES (5, 'Jefferson War Nickel', 'Philadelphia', 1942, 1.11, 1.75, 5.0, 'https://m.media-amazon.com/images/I/81+2QqAAZqL._SL1500_.jpg');

COMMIT;

