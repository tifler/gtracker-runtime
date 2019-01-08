CREATE TABLE Key (
    id INT(11) auto_increment PRIMARY KEY,
    code NVARCHAR(64) UNIQUE NOT NULL,
    opt NVARCHAR(64) NOT NULL,
    uid INT(11) UNIQUE NOT NULL,
);

CREATE TABLE User (
    id INT(11) auto_increment PRIMARY KEY,
    username NVARCHAR(64) UNIQUE NOT NULL,
    password NVARCHAR(64) NOT NULL,
    name NVARCHAR(64) NOT NULL,
    email NVARCHAR(64) UNIQUE NOT NULL,
    opt NVARCHAR(64) NOT NULL,
);
