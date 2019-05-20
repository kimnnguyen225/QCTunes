DROP DATABASE qctunes;
CREATE DATABASE qctunes;
USE qctunes;

CREATE TABLE IF NOT EXISTS user (
	username VARCHAR(255) NOT NULL,     
	password VARCHAR(8) NOT NULL,     
	firstName VARCHAR(255) NOT NULL,     
	lastName VARCHAR(255) NOT NULL,     
	address VARCHAR(255) NOT NULL,     
	subscription BOOLEAN NOT NULL,     
	phone VARCHAR(15) NOT NULL);

INSERT INTO user 
	(username, password, firstName, lastName, address, subscription, phone)
VALUES 
	('admin', 'admin', 'Kim', 'Nguyen', '100 Main St. Cincinnati, OH 45249', TRUE, '+1-513-111-3636'),
	('gsmith', 'secret', 'Grace', 'Smith', '100 Oak St. Hamilton, OH 45011', FALSE, '+1-513-222-5555'),
	('jharris', 'secret', 'Jonathan', 'Harrison', '8900 Second St. Mason, OH 45040', TRUE, '+1-513-333-7283'),
	('llerman', 'secret', 'Lisa', 'Lerman', '1800 Third St. BlueAsh, OH 45236', TRUE, '+1-513-141-9999'),
	('sjaykii', 'secret', 'Sophia', 'Jaykii', '2663 N. Fairmount St. West Chester, OH 45069', FALSE, '+1-513-321-9874');