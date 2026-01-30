CREATE database SportClub;

-- Members Table
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    JoinDate DATE
);

-- Sports Table
CREATE TABLE Sports (
    SportID INT PRIMARY KEY,
    SportName VARCHAR(50)
);

-- Coaches Table
CREATE TABLE Coaches (
    CoachID INT PRIMARY KEY,
    Name VARCHAR(50),
    SportID INT,
    FOREIGN KEY (SportID) REFERENCES Sports(SportID)
);

-- Memberships Table
CREATE TABLE Memberships (
    MembershipID INT PRIMARY KEY,
    MemberID INT,
    SportID INT,
    CoachID INT,
    MembershipType VARCHAR(20),
    FeePaid DECIMAL(8,2),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (SportID) REFERENCES Sports(SportID),
    FOREIGN KEY (CoachID) REFERENCES Coaches(CoachID)
);

INSERT INTO Sports (SportID, SportName) VALUES
(1, 'Tennis'), (2, 'Football'), (3, 'Basketball'), (4, 'Swimming'),
(5, 'Badminton'), (6, 'Gymnastics'), (7, 'Cricket');

INSERT INTO Coaches (CoachID, Name, SportID) VALUES
(1,'John Smith',1),(2,'Emma Johnson',2),(3,'Michael Brown',3),(4,'Sophia Davis',4),
(5,'Daniel Wilson',5),(6,'Olivia Martinez',6),(7,'Liam Anderson',7),(8,'Rachel Taylor',1),
(9,'Steven Moore',2),(10,'Hannah Thomas',3),(11,'Kevin White',4),(12,'Laura King',5),
(13,'Charlie Green',6),(14,'Nina Brown',7),(15,'David Scott',1),(16,'Paula Adams',2),
(17,'Brian Hall',3),(18,'Monica Clark',4),(19,'George Lewis',5),(20,'Sophia Allen',6),
(21,'Jason Young',7),(22,'Alice Walker',1),(23,'Robert Harris',2),(24,'Fiona Carter',3),
(25,'Ethan Mitchell',4),(26,'Olivia Roberts',5),(27,'Kevin Evans',6),(28,'Rachel Collins',7),
(29,'Steven Stewart',1),(30,'Laura Sanchez',2),(31,'Charlie Bryant',3),(32,'Nina Foster',4),
(33,'David Hughes',5),(34,'Paula Diaz',6),(35,'Brian Gray',7),(36,'Sophia Ward',1),
(37,'Jason Brooks',2),(38,'Alice Simmons',3),(39,'Robert Price',4),(40,'Fiona Bennett',5),
(41,'Ethan Wood',6),(42,'Olivia Barnes',7),(43,'Kevin Ross',1),(44,'Rachel Henderson',2),
(45,'Steven Coleman',3),(46,'Laura Jenkins',4),(47,'Charlie Perry',5),(48,'Nina Powell',6),
(49,'David Long',7),(50,'Paula Patterson',1),(51,'Brian Hughes',2),(52,'Sophia Flores',3),
(53,'Jason Gray',4),(54,'Alice Bryant',5),(55,'Robert Reed',6),(56,'Fiona Bell',7),
(57,'Ethan Murphy',1),(58,'Olivia Bailey',2),(59,'Kevin Rivera',3),(60,'Rachel Cooper',4),
(61,'Steven Richardson',5),(62,'Laura Cox',6),(63,'Charlie Howard',7),(64,'Nina Ward',1),
(65,'David Torres',2),(66,'Paula Peterson',3),(67,'Brian Gray',4),(68,'Sophia Ramirez',5),
(69,'Jason James',6),(70,'Alice Watson',7),(71,'Robert Brooks',1),(72,'Fiona Kelly',2),
(73,'Ethan Sanders',3),(74,'Olivia Price',4),(75,'Kevin Bennett',5),(76,'Rachel Wood',6),
(77,'Steven Ross',7),(78,'Laura Henderson',1),(79,'Charlie Coleman',2),(80,'Nina Jenkins',3),
(81,'David Perry',4),(82,'Paula Powell',5),(83,'Brian Long',6),(84,'Sophia Patterson',7),
(85,'Jason Hughes',1),(86,'Alice Flores',2),(87,'Robert Gray',3),(88,'Fiona Gray',4),
(89,'Ethan Ramirez',5),(90,'Olivia James',6),(91,'Kevin Watson',7),(92,'Rachel Brooks',1),
(93,'Steven Kelly',2),(94,'Laura Sanders',3),(95,'Charlie Price',4),(96,'Nina Bennett',5),
(97,'David Wood',6),(98,'Paula Ross',7),(99,'Brian Henderson',1),(100,'Sophia Coleman',2);


INSERT INTO Members (MemberID, Name, Age, Gender, JoinDate) VALUES
(1,'Alice Green',23,'Female','2024-01-15'),(2,'Bob White',30,'Male','2023-12-10'),
(3,'Charlie Black',27,'Male','2024-02-20'),(4,'Diana Brown',22,'Female','2024-03-05'),
(5,'Ethan Gray',28,'Male','2024-01-25'),(6,'Fiona Lee',24,'Female','2023-11-30'),
(7,'George King',26,'Male','2024-02-12'),(8,'Hannah Scott',25,'Female','2024-03-18'),
(9,'Ian Adams',29,'Male','2023-12-22'),(10,'Julia Clark',21,'Female','2024-01-08'),
(11,'Kevin Baker',32,'Male','2024-02-14'),(12,'Laura Murphy',24,'Female','2024-03-02'),
(13,'Michael Lewis',28,'Male','2024-01-30'),(14,'Nina Adams',27,'Female','2024-02-18'),
(15,'Oliver Reed',26,'Male','2024-03-05'),(16,'Paula Diaz',30,'Female','2024-01-12'),
(17,'Quinn Taylor',22,'Male','2024-02-10'),(18,'Rachel Evans',25,'Female','2024-03-20'),
(19,'Steven Brooks',29,'Male','2024-01-25'),(20,'Tina Bell',23,'Female','2024-02-28'),
(21,'Uma Morgan',31,'Female','2024-03-05'),(22,'Victor Bailey',27,'Male','2024-01-15'),
(23,'Wendy Ross',24,'Female','2024-02-22'),(24,'Xander Gray',28,'Male','2024-03-01'),
(25,'Yara Price',25,'Female','2024-01-18'),(26,'Zachary Ward',29,'Male','2024-02-05'),
(27,'Aaron Powell',22,'Male','2024-03-10'),(28,'Bethany Cook',30,'Female','2024-01-20'),
(29,'Caleb Sanders',27,'Male','2024-02-14'),(30,'Danielle Reed',26,'Female','2024-03-15'),
(31,'Eli Murphy',28,'Male','2024-01-30'),(32,'Faith Stewart',25,'Female','2024-02-28'),
(33,'Gavin Torres',23,'Male','2024-03-02'),(34,'Hailey Perry',24,'Female','2024-01-12'),
(35,'Isaac Long',29,'Male','2024-02-18'),(36,'Jasmine Bennett',27,'Female','2024-03-05'),
(37,'Kyle Watson',31,'Male','2024-01-15'),(38,'Lily Brooks',22,'Female','2024-02-22'),
(39,'Mason Kelly',28,'Male','2024-03-10'),(40,'Natalie Sanders',26,'Female','2024-01-25'),
(41,'Owen Price',24,'Male','2024-02-28'),(42,'Paige Bennett',30,'Female','2024-03-12'),
(43,'Quentin Wood',27,'Male','2024-01-18'),(44,'Rebecca Ross',23,'Female','2024-02-05'),
(45,'Samuel Henderson',29,'Male','2024-03-20'),(46,'Taylor Coleman',25,'Female','2024-01-10'),
(47,'Ulysses Gray',28,'Male','2024-02-15'),(48,'Victoria Adams',24,'Female','2024-03-01'),
(49,'William Price',26,'Male','2024-01-22'),(50,'Ximena Ward',27,'Female','2024-02-10'),
(51,'Yosef Powell',31,'Male','2024-03-05'),(52,'Zoey Cook',22,'Female','2024-01-18'),
(53,'Adam Sanders',29,'Male','2024-02-28'),(54,'Bianca Reed',24,'Female','2024-03-15'),
(55,'Carter Murphy',28,'Male','2024-01-12'),(56,'Delilah Stewart',25,'Female','2024-02-22'),
(57,'Evan Torres',27,'Male','2024-03-05'),(58,'Faye Perry',23,'Female','2024-01-30'),
(59,'Grayson Long',26,'Male','2024-02-14'),(60,'Holly Bennett',28,'Female','2024-03-10'),
(61,'Ian Watson',24,'Male','2024-01-18'),(62,'Jade Brooks',25,'Female','2024-02-28'),
(63,'Kevin Kelly',29,'Male','2024-03-15'),(64,'Lara Sanders',26,'Female','2024-01-10'),
(65,'Miles Price',27,'Male','2024-02-22'),(66,'Nora Bennett',23,'Female','2024-03-05'),
(67,'Omar Wood',28,'Male','2024-01-15'),(68,'Paula Ross',24,'Female','2024-02-12'),
(69,'Quinn Henderson',30,'Male','2024-03-01'),(70,'Riley Coleman',22,'Female','2024-01-25'),
(71,'Sean Gray',26,'Male','2024-02-18'),(72,'Tara Adams',28,'Female','2024-03-10'),
(73,'Umar Price',27,'Male','2024-01-20'),(74,'Vera Ward',23,'Female','2024-02-05'),
(75,'Wesley Powell',29,'Male','2024-03-15'),(76,'Xena Cook',24,'Female','2024-01-12'),
(77,'Yanni Sanders',25,'Male','2024-02-22'),(78,'Zara Reed',26,'Female','2024-03-05'),
(79,'Alan Murphy',28,'Male','2024-01-18'),(80,'Brianna Stewart',27,'Female','2024-02-28'),
(81,'Calvin Torres',23,'Male','2024-03-12'),(82,'Daisy Perry',25,'Female','2024-01-10'),
(83,'Ethan Long',29,'Male','2024-02-14'),(84,'Faith Bennett',24,'Female','2024-03-20'),
(85,'Gideon Watson',28,'Male','2024-01-15'),(86,'Hannah Brooks',26,'Female','2024-02-05'),
(87,'Isaac Kelly',27,'Male','2024-03-01'),(88,'Julia Sanders',23,'Female','2024-01-22'),
(89,'Kyle Price',29,'Male','2024-02-10'),(90,'Laura Bennett',25,'Female','2024-03-05'),
(91,'Mason Wood',28,'Male','2024-01-18'),(92,'Nina Ross',27,'Female','2024-02-28'),
(93,'Owen Henderson',24,'Male','2024-03-10'),(94,'Paula Coleman',26,'Female','2024-01-12'),
(95,'Quentin Gray',28,'Male','2024-02-22'),(96,'Rachel Adams',23,'Female','2024-03-05'),
(97,'Steven Price',29,'Male','2024-01-30'),(98,'Tina Ward',25,'Female','2024-02-15'),
(99,'Umar Powell',27,'Male','2024-03-12'),(100,'Victoria Cook',28,'Female','2024-01-25');


INSERT INTO Memberships (MembershipID, MemberID, SportID, CoachID, MembershipType, FeePaid) VALUES
(1,1,1,1,'Premium',1500.00),(2,2,2,2,'Basic',1000.00),(3,3,3,3,'Standard',1200.00),
(4,4,4,4,'Premium',1500.00),(5,5,5,5,'Standard',1200.00),(6,6,6,6,'Basic',1000.00),
(7,7,7,7,'Premium',1500.00),(8,8,1,8,'Standard',1200.00),(9,9,2,9,'Basic',1000.00),
(10,10,3,10,'Premium',1500.00),(11,11,4,11,'Standard',1200.00),(12,12,5,12,'Basic',1000.00),
(13,13,6,13,'Premium',1500.00),(14,14,7,14,'Standard',1200.00),(15,15,1,15,'Basic',1000.00),
(16,16,2,16,'Premium',1500.00),(17,17,3,17,'Standard',1200.00),(18,18,4,18,'Basic',1000.00),
(19,19,5,19,'Premium',1500.00),(20,20,6,20,'Standard',1200.00),(21,21,7,21,'Basic',1000.00),
(22,22,1,22,'Premium',1500.00),(23,23,2,23,'Standard',1200.00),(24,24,3,24,'Basic',1000.00),
(25,25,4,25,'Premium',1500.00),(26,26,5,26,'Standard',1200.00),(27,27,6,27,'Basic',1000.00),
(28,28,7,28,'Premium',1500.00),(29,29,1,29,'Standard',1200.00),(30,30,2,30,'Basic',1000.00),
(31,31,3,31,'Premium',1500.00),(32,32,4,32,'Standard',1200.00),(33,33,5,33,'Basic',1000.00),
(34,34,6,34,'Premium',1500.00),(35,35,7,35,'Standard',1200.00),(36,36,1,36,'Basic',1000.00),
(37,37,2,37,'Premium',1500.00),(38,38,3,38,'Standard',1200.00),(39,39,4,39,'Basic',1000.00),
(40,40,5,40,'Premium',1500.00),(41,41,6,41,'Standard',1200.00),(42,42,7,42,'Basic',1000.00),
(43,43,1,43,'Premium',1500.00),(44,44,2,44,'Standard',1200.00),(45,45,3,45,'Basic',1000.00),
(46,46,4,46,'Premium',1500.00),(47,47,5,47,'Standard',1200.00),(48,48,6,48,'Basic',1000.00),
(49,49,7,49,'Premium',1500.00),(50,50,1,50,'Standard',1200.00),(51,51,2,51,'Basic',1000.00),
(52,52,3,52,'Premium',1500.00),(53,53,4,53,'Standard',1200.00),(54,54,5,54,'Basic',1000.00),
(55,55,6,55,'Premium',1500.00),(56,56,7,56,'Standard',1200.00),(57,57,1,57,'Basic',1000.00),
(58,58,2,58,'Premium',1500.00),(59,59,3,59,'Standard',1200.00),(60,60,4,60,'Basic',1000.00),
(61,61,5,61,'Premium',1500.00),(62,62,6,62,'Standard',1200.00),(63,63,7,63,'Basic',1000.00),
(64,64,1,64,'Premium',1500.00),(65,65,2,65,'Standard',1200.00),(66,66,3,66,'Basic',1000.00),
(67,67,4,67,'Premium',1500.00),(68,68,5,68,'Standard',1200.00),(69,69,6,69,'Basic',1000.00),
(70,70,7,70,'Premium',1500.00),(71,71,1,71,'Standard',1200.00),(72,72,2,72,'Basic',1000.00),
(73,73,3,73,'Premium',1500.00),(74,74,4,74,'Standard',1200.00),(75,75,5,75,'Basic',1000.00),
(76,76,6,76,'Premium',1500.00),(77,77,7,77,'Standard',1200.00),(78,78,1,78,'Basic',1000.00),
(79,79,2,79,'Premium',1500.00),(80,80,3,80,'Standard',1200.00),(81,81,4,81,'Basic',1000.00),
(82,82,5,82,'Premium',1500.00),(83,83,6,83,'Standard',1200.00),(84,84,7,84,'Basic',1000.00),
(85,85,1,85,'Premium',1500.00),(86,86,2,86,'Standard',1200.00),(87,87,3,87,'Basic',1000.00),
(88,88,4,88,'Premium',1500.00),(89,89,5,89,'Standard',1200.00),(90,90,6,90,'Basic',1000.00),
(91,91,7,91,'Premium',1500.00),(92,92,1,92,'Standard',1200.00),(93,93,2,93,'Basic',1000.00),
(94,94,3,94,'Premium',1500.00),(95,95,4,95,'Standard',1200.00),(96,96,5,96,'Basic',1000.00),
(97,97,6,97,'Premium',1500.00),(98,98,7,98,'Standard',1200.00),(99,99,1,99,'Basic',1000.00),
(100,100,2,100,'Premium',1500.00);

--- 1. Count number of members in each gender group.
SELECT Gender, COUNT(*) AS TotalMembers
FROM Members
GROUP BY Gender;

--- 2. Show sports that have more than 5 members enrolled.
SELECT s.SportName, COUNT(m.MemberID) AS TotalMembers
FROM Memberships m, Sports s
WHERE m.SportID = s.SportID
GROUP BY s.SportName
HAVING COUNT(m.MemberID) > 5;

--- 3.Show members who paid the highest fee.
SELECT Name 
FROM Members
WHERE MemberID IN (
  SELECT MemberID 
  FROM Memberships
  WHERE FeePaid = (SELECT MAX(FeePaid) FROM Memberships)
);

-- 4.List members who paid more than 1400 in fees.
SELECT m.MemberID, mem.Name, m.FeePaid
FROM Memberships m, Members mem
WHERE m.MemberID = mem.MemberID
  AND m.FeePaid > 1400;
  
  --- 5.Show all members who joined in 2024.
SELECT Name, JoinDate
FROM Members
WHERE YEAR(JoinDate) = 2024;

--- 6. Find members who have "Premium" membership.
SELECT mem.Name, m.MembershipType
FROM Memberships m, Members mem
WHERE m.MemberID = mem.MemberID
  AND m.MembershipType = 'Premium';

--- 7. Show coaches and the sport name they coach.
SELECT c.Name AS CoachName, s.SportName
FROM Coaches c, Sports s
WHERE c.SportID = s.SportID;

--- 8.Find Members who joined 'Cricket'.
SELECT mem.Name
FROM Members mem, Memberships m
WHERE mem.MemberID = m.MemberID
AND m.SportID = (
    SELECT SportID FROM Sports WHERE SportName = 'Cricket'
);

--- 9.Coaches with number of Members they handle.
SELECT c.Name AS CoachName, COUNT(m.MemberID) AS TotalMembers
FROM Coaches c, Memberships m
WHERE c.CoachID = m.CoachID
GROUP BY c.Name;

--- 10.Find the sport with maximum members.
SELECT s.SportName, COUNT(m.MemberID) AS TotalMembers
FROM Sports s, Memberships m
WHERE s.SportID = m.SportID
GROUP BY s.SportName
HAVING COUNT(m.MemberID) = (
    SELECT MAX(Cnt)
    FROM (
        SELECT COUNT(MemberID) AS Cnt
        FROM Memberships
        GROUP BY SportID
    ) AS Temp
);


