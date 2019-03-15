CREATE TABLE APIKey (
    id INT(11) auto_increment PRIMARY KEY,
    uuid CHAR(36) UNIQUE NOT NULL,
    name NVARCHAR(64) NOT NULL,
    email NVARCHAR(64) NOT NULL,
    opt NVARCHAR(128),
    token NVARCHAR(512) NOT NULL,
    disabled BOOLEAN DEFAULT FALSE,
    /* if uid>=0, don't use name and email fields */
    uid INT(11) NOT NULL
);

CREATE TABLE APIUser (
    id INT(11) auto_increment PRIMARY KEY,
    email NVARCHAR(64) UNIQUE NOT NULL,
    password NVARCHAR(64) NOT NULL,
    name NVARCHAR(64) NOT NULL,
    opt NVARCHAR(128)
);
