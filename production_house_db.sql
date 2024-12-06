-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 10:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `production_house_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_table`
--

CREATE TABLE `city_table` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `nation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_table`
--

INSERT INTO `city_table` (`city_id`, `city_name`, `nation_id`) VALUES
(1, 'London', 1),
(2, 'Manchester', 1),
(3, 'Cardiff', 2),
(4, 'Swansea', 2),
(5, 'Edinburgh', 3),
(6, 'Glassgow', 3),
(7, 'Belfast', 4),
(8, 'Derry', 4);

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `contact_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`contact_id`, `employee_id`, `phone_number`) VALUES
(1, 1, '+33 987 654 322'),
(2, 1, '+33 987 654 301'),
(3, 2, '+44 123 456 780'),
(4, 3, '+44 123 456 780'),
(5, 3, '+44 123 456 765'),
(6, 4, '+44 123 456 519');

-- --------------------------------------------------------

--
-- Table structure for table `crew_member`
--

CREATE TABLE `crew_member` (
  `crew_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `crew_role` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `hourly_rate` double NOT NULL,
  `scene_bonus` double NOT NULL,
  `daily_bonus` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crew_member`
--

INSERT INTO `crew_member` (`crew_id`, `employee_id`, `movie_id`, `crew_role`, `description`, `hourly_rate`, `scene_bonus`, `daily_bonus`) VALUES
(1, 2, 2, 'actor', 'hero of the movie', 60, 100, 100),
(2, 1, 2, 'actress', 'working as a lead actress', 50, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `start_date` date NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `company_id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `start_date`, `employee_type`, `email_id`) VALUES
(1, 1, 'John', 'M', 'Doe', '1990-05-15', '2022-01-10', 'crew', 'johndoe15@gmail.com'),
(2, 2, 'Jane', 'A', 'Smith', '1988-11-12', '2022-03-12', 'crew', 'janesmith12@gmail.com'),
(3, 1, 'Michael', 'R', 'Johnson', '1985-11-10', '2022-02-01', 'staff', 'mochael01@gmail.com'),
(4, 1, 'Emily', 's', 'Brown', '1995-02-28', '2022-04-01', 'staff', 'emilybrown28@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `grant_application`
--

CREATE TABLE `grant_application` (
  `application_no` int(11) NOT NULL,
  `grant_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `application_date` date NOT NULL,
  `desired_amount` double NOT NULL,
  `outcome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grant_application`
--

INSERT INTO `grant_application` (`application_no`, `grant_id`, `company_id`, `application_date`, `desired_amount`, `outcome`) VALUES
(1, 1, 1, '2023-05-23', 80000, 'Successful'),
(2, 2, 1, '2023-05-15', 40000, 'Unsuccessful'),
(3, 3, 2, '2023-05-30', 200000, 'Successful');

-- --------------------------------------------------------

--
-- Table structure for table `grant_table`
--

CREATE TABLE `grant_table` (
  `grant_id` int(11) NOT NULL,
  `grant_title` varchar(100) NOT NULL,
  `funding_organization` varchar(100) NOT NULL,
  `max_monetory_value` double NOT NULL,
  `submission_deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grant_table`
--

INSERT INTO `grant_table` (`grant_id`, `grant_title`, `funding_organization`, `max_monetory_value`, `submission_deadline`) VALUES
(1, 'Innovation Grant', 'European Research Council', 100000, '2023-05-15'),
(2, 'Green Initiative Fund', 'Environmental Foundation', 50000, '2021-05-01'),
(3, 'Film Production Grant', 'European Film Fund', 200000, '2023-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `movie_table`
--

CREATE TABLE `movie_table` (
  `movie_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `movie_title` varchar(100) NOT NULL,
  `movie_year` int(11) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_table`
--

INSERT INTO `movie_table` (`movie_id`, `company_id`, `movie_title`, `movie_year`, `release_date`) VALUES
(1, 1, 'Mystic Echoes', 2023, '2023-01-15'),
(2, 1, 'Eternal Enigma', 2022, '2022-05-20'),
(3, 1, 'Rendezvous in Paris', 2023, '2023-03-10'),
(4, 2, 'Whispers of Venice', 2022, '2022-08-22'),
(5, 2, 'Midnight Serenade', 2023, '2023-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `nation_table`
--

CREATE TABLE `nation_table` (
  `nation_id` int(11) NOT NULL,
  `nation_name` varchar(50) NOT NULL,
  `region_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nation_table`
--

INSERT INTO `nation_table` (`nation_id`, `nation_name`, `region_name`) VALUES
(1, 'England', 'Europe'),
(2, 'Scottland', 'Europe'),
(3, 'Wales', 'Europe'),
(4, 'Northen Ireland', 'Europe'),
(5, 'Germany', 'Europe'),
(6, 'Italy', 'Europe');

-- --------------------------------------------------------

--
-- Table structure for table `production_company`
--

CREATE TABLE `production_company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `organization_type` varchar(50) NOT NULL,
  `no_of_employees` int(11) NOT NULL,
  `net_value` double NOT NULL,
  `registration_date` date NOT NULL,
  `registration_fees` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production_company`
--

INSERT INTO `production_company` (`company_id`, `company_name`, `address`, `city_id`, `zip_code`, `organization_type`, `no_of_employees`, `net_value`, `registration_date`, `registration_fees`) VALUES
(1, 'EuroCinema Productions', '123 Film Street', 1, '123456', 'Profit', 50, 200000, '1979-11-11', 12),
(2, 'European Screen Studios ', '456 Cinematic Avenue', 2, '456789', 'Non-Profit', 50, 100000, '1980-01-01', 12);

-- --------------------------------------------------------

--
-- Table structure for table `shareholder`
--

CREATE TABLE `shareholder` (
  `shareholder_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `place_of_birth` varchar(50) NOT NULL,
  `mother_maiden_name` varchar(50) NOT NULL,
  `father_first_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `nat_insurance_no` varchar(50) NOT NULL,
  `passport_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shareholder`
--

INSERT INTO `shareholder` (`shareholder_id`, `company_id`, `place_of_birth`, `mother_maiden_name`, `father_first_name`, `phone_number`, `nat_insurance_no`, `passport_no`) VALUES
(1, 1, 'London', 'Smith', 'John', '+44 123 456 789', 'UK123456', 'AB123456'),
(2, 1, 'Paris', 'Dupont', 'Pierre', '+33 987 654 321', 'FR567899', 'AB456789'),
(3, 2, 'Berlin', 'Schmidt', 'Klaus', '_49 321 654 987', 'DE2346788', 'SF761234'),
(4, 2, 'Rome', 'Rosi', 'Giuseppe', '+39 456 789 012', 'IT6789323', 'RF3423232');

-- --------------------------------------------------------

--
-- Table structure for table `staff_member`
--

CREATE TABLE `staff_member` (
  `staff_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `building` varchar(50) NOT NULL,
  `monthly_wage` double NOT NULL,
  `working_hour` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_member`
--

INSERT INTO `staff_member` (`staff_id`, `employee_id`, `department`, `building`, `monthly_wage`, `working_hour`) VALUES
(1, 3, 'Design', 'building-1', 1500, '9AM-5PM'),
(2, 4, 'Design', 'building-1', 1500, '9AM-5PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city_table`
--
ALTER TABLE `city_table`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `nation_id` (`nation_id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `crew_member`
--
ALTER TABLE `crew_member`
  ADD PRIMARY KEY (`crew_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `grant_application`
--
ALTER TABLE `grant_application`
  ADD PRIMARY KEY (`application_no`),
  ADD KEY `grant_id` (`grant_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `grant_table`
--
ALTER TABLE `grant_table`
  ADD PRIMARY KEY (`grant_id`);

--
-- Indexes for table `movie_table`
--
ALTER TABLE `movie_table`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `nation_table`
--
ALTER TABLE `nation_table`
  ADD PRIMARY KEY (`nation_id`);

--
-- Indexes for table `production_company`
--
ALTER TABLE `production_company`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `shareholder`
--
ALTER TABLE `shareholder`
  ADD PRIMARY KEY (`shareholder_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `staff_member`
--
ALTER TABLE `staff_member`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city_table`
--
ALTER TABLE `city_table`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `crew_member`
--
ALTER TABLE `crew_member`
  MODIFY `crew_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grant_application`
--
ALTER TABLE `grant_application`
  MODIFY `application_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grant_table`
--
ALTER TABLE `grant_table`
  MODIFY `grant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movie_table`
--
ALTER TABLE `movie_table`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nation_table`
--
ALTER TABLE `nation_table`
  MODIFY `nation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `production_company`
--
ALTER TABLE `production_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shareholder`
--
ALTER TABLE `shareholder`
  MODIFY `shareholder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_member`
--
ALTER TABLE `staff_member`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city_table`
--
ALTER TABLE `city_table`
  ADD CONSTRAINT `city_table_ibfk_1` FOREIGN KEY (`nation_id`) REFERENCES `nation_table` (`nation_id`);

--
-- Constraints for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD CONSTRAINT `contact_information_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `crew_member`
--
ALTER TABLE `crew_member`
  ADD CONSTRAINT `crew_member_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `crew_member_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie_table` (`movie_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `production_company` (`company_id`);

--
-- Constraints for table `grant_application`
--
ALTER TABLE `grant_application`
  ADD CONSTRAINT `grant_application_ibfk_1` FOREIGN KEY (`grant_id`) REFERENCES `grant_table` (`grant_id`),
  ADD CONSTRAINT `grant_application_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `production_company` (`company_id`);

--
-- Constraints for table `movie_table`
--
ALTER TABLE `movie_table`
  ADD CONSTRAINT `movie_table_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `production_company` (`company_id`);

--
-- Constraints for table `production_company`
--
ALTER TABLE `production_company`
  ADD CONSTRAINT `production_company_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city_table` (`city_id`);

--
-- Constraints for table `shareholder`
--
ALTER TABLE `shareholder`
  ADD CONSTRAINT `shareholder_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `production_company` (`company_id`);

--
-- Constraints for table `staff_member`
--
ALTER TABLE `staff_member`
  ADD CONSTRAINT `staff_member_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
