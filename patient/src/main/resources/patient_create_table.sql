-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema patient_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema patient_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `patient_db` DEFAULT CHARACTER SET greek ;
USE `patient_db` ;

-- -----------------------------------------------------
-- Table `patient_db`.`patient_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patient_db`.`patient_details` (
  `patient_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `dob` DATE NULL,
  `gender` VARCHAR(45) NULL,
  `phoneNo` VARCHAR(15) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`patient_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patient_db`.`patient_reports`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patient_db`.`patient_reports` (
  `report_id` INT NOT NULL AUTO_INCREMENT,
  `report_type` VARCHAR(45) NULL,
  `report` LONGBLOB NULL,
  `created_by` VARCHAR(45) NULL,
  `last_modified` DATETIME NULL,
  PRIMARY KEY (`report_id`),
  CONSTRAINT `patient_id`
    FOREIGN KEY ()
    REFERENCES `patient_db`.`patient_details` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patient_db`.`doctor_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patient_db`.`doctor_details` (
  `doctor_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `dob` DATE NULL,
  `gender` VARCHAR(10) NULL,
  `phoneNo` VARCHAR(10) NULL,
  `speciality_type` VARCHAR(45) NULL,
  `about_me` VARCHAR(100) NULL,
  `created_at` DATETIME NULL,
  `last_modified` DATETIME NULL,
  PRIMARY KEY (`doctor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patient_db`.`consultation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patient_db`.`consultation` (
  `consultation_id` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(45) NULL,
  `consultation_date` DATE NULL,
  `start_time` TIME NULL,
  `end_time` TIME NULL,
  `consultation_fee` DOUBLE NULL,
  PRIMARY KEY (`consultation_id`),
  CONSTRAINT `patient_id`
    FOREIGN KEY ()
    REFERENCES `patient_db`.`patient_details` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `doctor_id`
    FOREIGN KEY ()
    REFERENCES `patient_db`.`doctor_details` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patient_db`.`log_entry`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patient_db`.`log_entry` (
  `log_date` DATE NOT NULL,
  `category` VARCHAR(45) NULL,
  `glucose_level` INT NULL,
  `calorie_intake` INT NULL,
  `insulin_intake` INT NULL,
  PRIMARY KEY (`log_date`),
  CONSTRAINT `patient_id`
    FOREIGN KEY ()
    REFERENCES `patient_db`.`patient_details` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `patient_db`.`doctor_schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `patient_db`.`doctor_schedule` (
  `day_of_week` VARCHAR(15) NOT NULL,
  `start_time` TIME NULL,
  `break_start_time` TIME NULL,
  `end_time` TIME NULL,
  `break_end_time` TIME NULL,
  PRIMARY KEY (`day_of_week`),
  CONSTRAINT `doctor_id`
    FOREIGN KEY ()
    REFERENCES `patient_db`.`doctor_details` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
