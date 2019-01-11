CREATE TABLE Passcode(
    PSID INT(11) auto_increment PRIMARY KEY,
    SerialNo VARCHAR(32) UNIQUE NOT NULL,
    Passcode VARCHAR(32) NOT NULL
);
