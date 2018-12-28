CREATE table User(
UID INT auto_increment PRIMARY KEY,
UserId NVARCHAR(50) unique NOT NULL,
Password NVARCHAR(50) NOT NULL,
Name NVARCHAR(50) NOT NULL,
Email NVARCHAR(50) unique NOT NULL,
FCMToken NVARCHAR(200) unique);

CREATE table Device(
DID INT(11) auto_increment PRIMARY KEY,
SerialNo NVARCHAR(50) unique NOT NULL,
Enable_gf VARCHAR(2) NOT NULL,
p1_point NVARCHAR(50),
p1_option NVARCHAR(20),
p1_radius INT(11),
p2_point NVARCHAR(50),
p2_option NVARCHAR(20),
p2_radius INT(11),
p3_point NVARCHAR(50),
p3_option NVARCHAR(20),
p3_radius INT(11),
p4_point NVARCHAR(50),
p4_option NVARCHAR(20),
p4_radius INT(11),
p5_point NVARCHAR(50),
p5_option NVARCHAR(20),
p5_radius INT(11),
p6_point NVARCHAR(50),
p6_option NVARCHAR(20),
p6_radius INT(11),
p7_point NVARCHAR(50),
p7_option NVARCHAR(20),
p7_radius INT(11),
p8_point NVARCHAR(50),
p8_option NVARCHAR(20),
p8_radius INT(11));

CREATE table Privileges(
  PID INT(11) auto_increment PRIMARY KEY,
  DID INT(11) NOT NULL,
  UID INT(11) NOT NULL,
  Privileges NVARCHAR(20));
