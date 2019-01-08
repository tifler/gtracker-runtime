CREATE TABLE User(
UID INT auto_increment PRIMARY KEY,
UserId NVARCHAR(50) unique NOT NULL,
Password NVARCHAR(50) NOT NULL,
Name NVARCHAR(50) NOT NULL,
Email NVARCHAR(50) unique NOT NULL,
FCMToken NVARCHAR(200) unique);

CREATE TABLE Device(
DID INT(11) auto_increment PRIMARY KEY,
SerialNo NVARCHAR(50) unique NOT NULL,
enableAlarmZone VARCHAR(2) NOT NULL,
alarmZones VARCHAR(1024));

CREATE TABLE Privileges(
  PID INT(11) auto_increment PRIMARY KEY,
  DID INT(11) NOT NULL,
  UID INT(11) NOT NULL,
  Privileges NVARCHAR(20));
