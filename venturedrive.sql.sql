-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 12, 2023 at 05:02 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

DROP TABLE IF EXISTS `tblbooking`;
CREATE TABLE IF NOT EXISTS `tblbooking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookingNumber` bigint DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(4, 412949305, 'aromal@gmail.com', 5, '2023-12-12', '2023-12-31', 'Going for a road trip.', 1, '2023-12-12 16:31:05', '2023-12-12 16:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

DROP TABLE IF EXISTS `tblbrands`;
CREATE TABLE IF NOT EXISTS `tblbrands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2023-10-18 16:24:34', '2023-10-19 06:42:23'),
(2, 'BMW', '2023-10-18 16:24:50', NULL),
(3, 'Audi', '2023-10-18 16:25:03', NULL),
(4, 'Nissan', '2023-10-18 16:25:13', NULL),
(5, 'Toyota', '2023-10-18 16:25:24', NULL),
(7, 'Volkswagon', '2023-10-19 06:22:13', '2023-11-07 14:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

DROP TABLE IF EXISTS `tblcontactusinfo`;
CREATE TABLE IF NOT EXISTS `tblcontactusinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Venture Drive Autos \r\nCentral Junction\r\nKottayam\r\nKerala', 'venturedriveautos@gmail.com', '8547040676');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

DROP TABLE IF EXISTS `tblcontactusquery`;
CREATE TABLE IF NOT EXISTS `tblcontactusquery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																														<p align=\"justify\"><span style=\"font-weight: bold;\"><span style=\"font-size: small;\">Terms and Conditions for&nbsp;</span><span style=\"color: initial; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">VentureDrive Autos</span></span></p><p align=\"justify\"><span style=\"color: initial; font-size: small;\">Welcome to&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; text-align: start;\">VentureDrive Autos</span><span style=\"color: initial; font-size: small;\">. Before using our services, please carefully read and understand the following terms and conditions. By accessing or using our platform, you agree to be bound by these terms. If you do not agree with any part of these terms, please do not use our services.</span></p><p align=\"justify\"><span style=\"color: initial; font-size: small; font-weight: 700;\">1. Eligibility:</span><br></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp; </span><span style=\"font-size: small;\">&nbsp;- You must be at least 21 years old to rent a vehicle from&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; text-align: start;\">VentureDrive Autos</span><span style=\"font-size: small;\">].</span></p><p align=\"justify\"><span style=\"color: initial; font-size: small;\">&nbsp; &nbsp;- A valid driver\'s license, credit card, and other documentation may be required.</span></p><p align=\"justify\"><span style=\"color: initial; font-size: small; font-weight: 700;\">2. Booking and Reservation:</span><br></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp; &nbsp;</span><span style=\"font-size: small;\">- All vehicle bookings are subject to availability.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Reservations can be made online or through our designated channels.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Changes to reservations are subject to availability and may incur additional charges.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">3. Rental Period:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp; </span><span style=\"font-size: small;\">&nbsp;- The rental period begins and ends as specified in your reservation.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Extensions must be requested in advance and are subject to availability.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">4. Rental Fees and Payment:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp;</span><span style=\"font-size: small;\"> &nbsp;- Rental fees are based on the type of vehicle, duration, and other applicable charges.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Payment is due at the time of reservation unless otherwise specified.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Additional charges may apply for mileage exceeding the specified limit, fuel, and other incidentals.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">5. Security Deposit:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp; &nbsp;</span><span style=\"font-size: small;\">- A security deposit is required at the start of the rental period.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- The deposit will be refunded upon the return of the vehicle in satisfactory condition.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">6. Cancellation and Refunds:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp;</span><span style=\"font-size: small;\"> &nbsp;- Cancellations made within a specified period may be eligible for a refund.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Refund policies may vary based on the type of reservation and timeframe.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">7. Vehicle Usage:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp;</span><span style=\"font-size: small;\"> &nbsp;- The vehicle must only be used for lawful purposes and in accordance with applicable laws and regulations.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Prohibited activities include but are not limited to illegal activities, off-road driving, and overloading.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">8. Vehicle Maintenance and Repairs:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp; &nbsp;</span><span style=\"font-size: small;\">- Customers are responsible for regular maintenance, including checking fluid levels and tire pressure.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Report any mechanical issues promptly to [Your Company Name].</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">9. Insurance:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp; </span><span style=\"font-size: small;\">&nbsp;- [Your Company Name] provides basic insurance coverage.</span></p><p align=\"justify\"><span style=\"font-size: small;\">&nbsp; &nbsp;- Additional insurance options may be available at an extra cost.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">10. Liability:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp;</span><span style=\"font-size: small;\"> &nbsp;- [Your Company Name] is not liable for any loss, damage, or injury arising from the use of our vehicles, except as required by law.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">11. Termination of Rental Agreement:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp;</span><span style=\"font-size: small;\"> &nbsp;-&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; text-align: start;\">VentureDrive Autos</span><span style=\"font-size: small;\">&nbsp;reserves the right to terminate the rental agreement if the terms and conditions are violated.</span></p><p align=\"justify\"><span style=\"color: initial; font-size: small; font-weight: 700;\">12. Changes to Terms and Conditions:</span><br></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">&nbsp;</span><span style=\"font-size: small;\"> &nbsp;-&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; text-align: start;\">VentureDrive Autos</span><span style=\"font-size: small;\">&nbsp;reserves the right to update or modify these terms and conditions at any time. Users will be notified of significant changes.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-weight: bold;\"><span style=\"font-size: small;\">By using our services, you acknowledge that you have read, understood, and agree to these terms and conditions. If you have any questions, please contact&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; text-align: start;\">VentureDrive Autos</span><span style=\"font-size: small;\">&nbsp;customer support.</span></span></p>\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '										<div style=\"text-align: justify;\"><span style=\"font-weight: bold; text-decoration-line: underline;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Privacy Policy for&nbsp;</span><span style=\"color: initial; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">VentureDrive Autos</span></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">This Privacy Policy outlines how [Your Company Name] collects, uses, maintains, and discloses information collected from users of our Vehicle Rental System. By using our services, you agree to the terms of this Privacy Policy.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">1. Information We Collect:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Personal Information: We may collect personal information such as your name, contact details, driver\'s license information, and payment details.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Vehicle Usage Data: We collect information about the usage of our vehicles, including location, mileage, and maintenance records.</span></div><div style=\"text-align: justify;\"><span style=\"color: initial; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\">- Communications: Correspondence between you and [Your Company Name] may be recorded for quality assurance and customer service purposes.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Device Information:We may collect information about the device you use to access our services, including IP address and browser information.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">2. How We Use Collected Information:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- To Provide Services: We use your information to process reservations, provide rental services, and manage customer accounts.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Communication: We may use your contact information to communicate with you regarding your reservation, updates, and promotional offers.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Improving Services: Information collected helps us analyze and improve our services, including the performance and usability of our platform.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">3. Data Security:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- We implement industry-standard security measures to protect your information from unauthorized access, disclosure, alteration, and destruction.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Access to personal information is restricted to employees and service providers who need the information to perform their duties.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">4. Sharing of Information:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- We do not sell, trade, or rent your personal information to third parties.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Information may be shared with our trusted partners and service providers for the sole purpose of providing and improving our services.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">5. Legal Compliance:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- We may disclose personal information in response to legal requirements, such as a court order or government request.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">6. Cookies and Tracking Technologies:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- Our website may use cookies and other tracking technologies to enhance user experience and gather information about usage patterns.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">7. Your Rights:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- You have the right to access, correct, or delete your personal information. Contact us at [your contact email] to exercise these rights.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">8. Changes to this Privacy Policy:</span></div><div style=\"text-align: justify;\"><span style=\"text-align: start; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">-&nbsp;</span><span style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px; text-align: start;\">VentureDrive Autos</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp;reserves the right to update this Privacy Policy at any time. Users will be notified of significant changes.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold;\">9. Consent:</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">- By using our services, you consent to the terms of this Privacy Policy.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">If you have any questions or concerns regarding this Privacy Policy, please contact us at venturedriveautos@gmail.com. Last updated on 01-11-2023.</span></div>\r\n										'),
(3, 'About Us ', 'aboutus', '										<div><span style=\"color: rgb(52, 52, 52); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\"><div style=\"\"><span style=\"font-weight: bold; text-decoration-line: underline;\">About Us - VentureDrive Autos</span></div><div style=\"\"><br></div><div style=\"\">Welcome to VentureDrive Autos, your trusted partner in convenient and reliable vehicle rentals. At VentureDrive Autos, we strive to provide an exceptional and seamless experience for all your transportation needs.</div><div style=\"\"><span style=\"font-weight: bold;\"><br></span></div><div style=\"\"><span style=\"font-weight: bold;\">Our Mission:</span></div><div style=\"\">At VentureDrive Autos, our mission is to offer high-quality vehicle rental services that are both accessible and customer-centric. We aim to simplify the process of renting a vehicle, making it a hassle-free and enjoyable experience for our customers.</div><div style=\"\"><br></div><div style=\"\"><span style=\"font-weight: bold;\">Our Commitment to Quality:</span></div><div style=\"\">We are committed to maintaining a fleet of well-maintained vehicles to ensure your safety and satisfaction. Our team works diligently to uphold the highest standards in customer service, cleanliness, and vehicle maintenance.</div><div style=\"\"><br></div><div style=\"\"><span style=\"font-weight: bold;\">Why Choose VentureDrive Autos?</span></div><div style=\"\"><ul><li><span style=\"color: initial;\">-Diverse Fleet: Choose from our wide range of vehicles, including compact cars, SUVs, and more, to suit your specific needs.</span></li><li>-User-Friendly Platform: Our online platform is designed for ease of use, allowing you to browse, reserve, and manage your vehicle rental with simplicity and efficiency.</li><li>-Transparent Pricing: We believe in transparency. Our pricing is clear and competitive, with no hidden fees or surprises.</li><li>-Customer Support: Our dedicated customer support team is ready to assist you with any inquiries or concerns, ensuring a smooth and enjoyable rental experience.</li></ul></div><div style=\"\"><br></div><div style=\"\"><span style=\"font-weight: bold;\">Our Values:</span></div><div style=\"\">- Integrity: We conduct our business with the utmost integrity, prioritizing honesty and transparency in all our interactions.</div><div style=\"\">- Customer Focus: Your satisfaction is our priority. We continuously strive to exceed your expectations by delivering top-notch services tailored to your needs.</div><div style=\"\">- Innovation: Embracing technology and innovation, we aim to stay ahead in the industry, providing you with the best and most convenient rental solutions.</div><div style=\"\"><br></div><div style=\"\"><span style=\"font-weight: bold;\">Contact Us:</span></div><div style=\"\">We value your feedback and are here to assist you. Feel free to reach out to our customer support team at [your contact email or phone number] for any inquiries or assistance.</div><div style=\"\"><br></div><div style=\"\">Thank you for choosing VentureDrive Autos. We look forward to serving you and being your preferred partner for reliable and affordable vehicle rentals.</div><div style=\"\"><br></div><div style=\"\">VentureDrive Autos<br></div><div style=\"\">Central Junction</div><div style=\"\">Kottayam</div><div style=\"\">Kerala</div><div style=\"\">venturedriveautos@gmail.com</div><div style=\"\">8547040676</div></span></div>\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

DROP TABLE IF EXISTS `tbltestimonial`;
CREATE TABLE IF NOT EXISTS `tbltestimonial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'aromal@gmail.com', 'I am completely satisfied with the provided services.', '2023-12-12 16:30:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(3, 'Aromal Ravi', 'aromal@gmail.com', '13d427ae158504e4ebc313a83c92afa6', '8330020688', '2003-04-08', 'Kudakasseril (H)\r\nKozha P.O\r\nKuravilangadu', 'Kuravilangad', 'India', '2023-12-12 16:28:39', '2023-12-12 16:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

DROP TABLE IF EXISTS `tblvehicles`;
CREATE TABLE IF NOT EXISTS `tblvehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int DEFAULT NULL,
  `SeatingCapacity` int DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int DEFAULT NULL,
  `PowerDoorLocks` int DEFAULT NULL,
  `AntiLockBrakingSystem` int DEFAULT NULL,
  `BrakeAssist` int DEFAULT NULL,
  `PowerSteering` int DEFAULT NULL,
  `DriverAirbag` int DEFAULT NULL,
  `PassengerAirbag` int DEFAULT NULL,
  `PowerWindows` int DEFAULT NULL,
  `CDPlayer` int DEFAULT NULL,
  `CentralLocking` int DEFAULT NULL,
  `CrashSensor` int DEFAULT NULL,
  `LeatherSeats` int DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 07:04:35', '2023-07-07 07:27:08'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Diesel', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-07 07:12:02', '2023-12-12 13:52:20'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 07:19:21', '2023-07-07 07:28:02'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2023-07-07 07:25:28', NULL),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 20000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 07:34:17', NULL),
(6, 'Nissan Sunny', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'Diesel', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-07-07 09:12:49', '2023-12-12 13:51:48'),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Diesel', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', 1, 1, 1, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, '2023-07-07 09:17:46', '2023-12-12 13:52:51'),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2023-07-07 09:23:11', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
