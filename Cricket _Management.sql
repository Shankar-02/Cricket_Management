create database Cricket_Management
use Cricket_Management
CREATE TABLE player (
    player_id INT auto_increment primary key,
    player_name VARCHAR(255),
    age INT,
    contact_info BIGINT,
    address VARCHAR(255),
    date_of_joining DATE
);

-- Create Table: coach
CREATE TABLE coach (
    coach_id INT auto_increment PRIMARY KEY,
    name VARCHAR(255),
    experience INT,
    contact_info BIGINT,
    specialization VARCHAR(255)
);

-- Create Table: trainer_session
CREATE TABLE trainer_session (
    session_id INT auto_increment  PRIMARY KEY,
    date DATE,
    time TIME,
    duration VARCHAR(50),
    topic VARCHAR(255),
    coach_id INT,
    FOREIGN KEY (coach_id) REFERENCES coach(coach_id)
);

-- Create Table: equipment
CREATE TABLE equipment (
    equipment_id INT auto_increment PRIMARY KEY,
    name VARCHAR(255),
    quantity INT,
    Conditions VARCHAR(50)
);

-- Create Table: match
CREATE TABLE matches (
    match_id INT auto_increment PRIMARY KEY,
    date DATE,
    venue VARCHAR(255),
    team_A VARCHAR(255),
    team_B VARCHAR(255),
    result VARCHAR(50)
);

-- Create Table: player_training_session
CREATE TABLE player_training_session (
    record_id INT auto_increment PRIMARY KEY,
    player_id INT,
    session_id INT,
    FOREIGN KEY (player_id) REFERENCES player(player_id),
    FOREIGN KEY (session_id) REFERENCES trainer_session(session_id)
);

-- Create Table: player_match
CREATE TABLE player_match (
    player_match_id INT auto_increment PRIMARY KEY,
    player_id INT,
    match_id INT,
    role VARCHAR(255),
    FOREIGN KEY (player_id) REFERENCES player(player_id),
    FOREIGN KEY (match_id) REFERENCES matches(match_id)
    );
    
INSERT INTO player (player_name, age, contact_info, address, date_of_joining) VALUES
('David Warner', 32, 9876543210, 'Sydney, Australia', '2020-01-10'),
('Virat Kohli', 31, 9876543211, 'Delhi, India', '2019-03-15'),
('Rohit Sharma', 33, 9876543212, 'Mumbai, India', '2018-07-20'),
('Shikhar Dhawan', 34, 9876543213, 'Delhi, India', '2017-05-25'),
('KL Rahul', 28, 9876543214, 'Bangalore, India', '2021-02-05'),
('MS Dhoni', 43, 9876543215, 'Ranchi, India', '2007-12-14'),
('Kane Williamson', 34, 9876543216, 'Wellington, New Zealand', '2015-01-23'),
('Steve Smith', 35, 9876543217, 'Sydney, Australia', '2013-10-01'),
('Ben Stokes', 33, 9876543218, 'Manchester, England', '2018-03-15'),
('Jos Buttler', 33, 9876543219, 'Taunton, England', '2015-04-25'),
('David Miller', 35, 9876543220, 'Pietermaritzburg, South Africa', '2012-09-30'),
('Faf du Plessis', 40, 9876543221, 'Pretoria, South Africa', '2011-08-01'),
('Quinton de Kock', 31, 9876543222, 'Cape Town, South Africa', '2013-10-19'),
('Shreyas Iyer', 29, 9876543223, 'Mumbai, India', '2014-09-14'),
('Hardik Pandya', 30, 9876543224, 'Surat, India', '2016-07-01'),
('Jasprit Bumrah', 29, 9876543225, 'Ahemdabad, India', '2014-12-12'),
('Ravindra Jadeja', 35, 9876543226, 'Rajkot, India', '2008-02-05'),
('Shubman Gill', 24, 9876543227, 'Ferozepur, India', '2016-11-02'),
('Yuzvendra Chahal', 33, 9876543228, 'Jind, India', '2013-01-01'),
('Rishabh Pant', 26, 9876543229, 'Roorkee, India', '2016-10-03'),
('Dinesh Karthik', 38, 9876543230, 'Chennai, India', '2004-10-01'),
('Shannon Gabriel', 35, 9876543231, 'Trinidad, West Indies', '2014-02-20'),
('Kemar Roach', 34, 9876543232, 'Barbados, West Indies', '2007-01-09'),
('Chris Gayle', 45, 9876543233, 'Kingston, Jamaica', '1999-09-16'),
('Moeen Ali', 36, 9876543234, 'Birmingham, England', '2014-02-25'),
('Mark Wood', 34, 9876543235, 'Ashington, England', '2015-05-15');


INSERT INTO coach (name, experience, contact_info, specialization) VALUES
('John Doe', 10, 9876543201, 'Batting Coach'),
('Jane Smith', 8, 9876543202, 'Bowling Coach'),
('Robert Brown', 15, 9876543203, 'Fielding Coach'),
('Michael Johnson', 20, 9876543204, 'Fitness Trainer'),
('William Williams', 12, 9876543205, 'Spin Bowling Coach'),
('David Clark', 7, 9876543206, 'Wicketkeeping Coach'),
('Chris Lewis', 10, 9876543207, 'All-rounder Coach'),
('Andrew Taylor', 9, 9876543208, 'Batting Coach'),
('Jessica Harris', 11, 9876543209, 'Fast Bowling Coach'),
('Daniel Scott', 5, 9876543210, 'Fitness Trainer'),
('Emma Wright', 14, 9876543211, 'Bowling Coach'),
('Paul King', 18, 9876543212, 'Fielding Coach'),
('Sophia Young', 6, 9876543213, 'Batting Coach'),
('James Miller', 25, 9876543214, 'All-rounder Coach'),
('Sarah Anderson', 16, 9876543215, 'Spin Bowling Coach'),
('Henry Lee', 22, 9876543216, 'Wicketkeeping Coach'),
('Olivia Green', 13, 9876543217, 'Fast Bowling Coach'),
('Ethan Adams', 10, 9876543218, 'Bowling Coach'),
('Isabella Robinson', 7, 9876543219, 'Batting Coach'),
('Lucas Nelson', 9, 9876543220, 'Fielding Coach'),
('Mia Carter', 14, 9876543221, 'Fitness Trainer'),
('Benjamin Wright', 17, 9876543222, 'Fast Bowling Coach'),
('Charlotte Evans', 12, 9876543223, 'All-rounder Coach'),
('James Moore', 19, 9876543224, 'Spin Bowling Coach'),
('Amelia Davis', 8, 9876543225, 'Wicketkeeping Coach');

INSERT INTO trainer_session (date, time, duration, topic, coach_id) VALUES
('2025-01-10', '09:00:00', '2 hours', 'Batting Techniques', 1),
('2025-01-10', '11:00:00', '1.5 hours', 'Fast Bowling', 2),
('2025-01-11', '10:00:00', '1 hour', 'Fielding Drills', 3),
('2025-01-11', '12:00:00', '2 hours', 'Fitness and Conditioning', 4),
('2025-01-12', '09:30:00', '1.5 hours', 'Spin Bowling', 5),
('2025-01-12', '11:30:00', '1 hour', 'Wicketkeeping Skills', 6),
('2025-01-13', '10:00:00', '2 hours', 'Batting Power Hitting', 7),
('2025-01-13', '13:00:00', '1 hour', 'All-rounder Skills', 8),
('2025-01-14', '09:00:00', '90 minutes', 'Batting Practice', 9),
('2025-01-14', '11:00:00', '1 hour', 'Bowling Accuracy', 10),
('2025-01-15', '10:00:00', '1.5 hours', 'Fielding Drills', 11),
('2025-01-15', '12:00:00', '2 hours', 'Fitness and Conditioning', 12),
('2025-01-16', '09:30:00', '1 hour', 'Spin Bowling', 13),
('2025-01-16', '11:30:00', '1.5 hours', 'Wicketkeeping Techniques', 14),
('2025-01-17', '10:00:00', '2 hours', 'Batting Basics', 15),
('2025-01-17', '12:00:00', '1 hour', 'Bowling Technique', 16),
('2025-01-18', '09:00:00', '90 minutes', 'All-rounder Skills', 17),
('2025-01-18', '10:30:00', '1 hour', 'Fielding Drills', 18),
('2025-01-19', '09:00:00', '1.5 hours', 'Bowling Speed', 19),
('2025-01-19', '11:00:00', '1 hour', 'Fitness Session', 20),
('2025-01-20', '10:00:00', '2 hours', 'Batting Techniques', 21),
('2025-01-20', '12:00:00', '1 hour', 'Bowling Accuracy', 22),
('2025-01-21', '09:00:00', '1 hour', 'Wicketkeeping Skills', 23),
('2025-01-21', '11:00:00', '2 hours', 'Spin Bowling', 24),
('2025-01-22', '10:00:00', '90 minutes', 'Batting Practice', 25);


INSERT INTO equipment (name, quantity, conditions) VALUES
('Bat', 10, 'New'),
('Ball', 15, 'Used'),
('Gloves', 20, 'New'),
('Pads', 25, 'New'),
('Helmet', 12, 'Used'),
('Wicketkeeping Gloves', 10, 'New'),
('Wickets', 10, 'New'),
('Knee Guards', 20, 'Used'),
('Thigh Pads', 18, 'New'),
('Elbow Guards', 15, 'Used'),
('Training Cone', 30, 'New'),
('Batting Practice Net', 5, 'Used'),
('Bowling Machine', 3, 'New'),
('Stumps', 10, 'Used'),
('Ball Protector', 15, 'New'),
('Catching Mitts', 25, 'Used'),
('Practice Bails', 10, 'New'),
('Fielding Gloves', 12, 'New'),
('Bowling Shoes', 8, 'Used'),
('Running Shoes', 20, 'New'),
('Water Bottles', 50, 'New'),
('Tennis Balls', 30, 'Used'),
('Training Mats', 5, 'New'),
('Shin Guards', 20, 'Used'),
('Batting Belts', 15, 'New');

    INSERT INTO matches (date, venue, team_A, team_B, result) VALUES
('2025-01-01', 'Eden Gardens', 'India', 'Australia', 'India won'),
('2025-01-02', 'MCG', 'Australia', 'South Africa', 'Australia won'),
('2025-01-03', 'Old Trafford', 'England', 'New Zealand', 'England won'),
('2025-01-04', 'Wankhede Stadium', 'India', 'West Indies', 'India won'),
('2025-01-05', 'Lord\'s Cricket Ground', 'England', 'Sri Lanka', 'Sri Lanka won'),
('2025-01-06', 'Gabba', 'Australia', 'Pakistan', 'Pakistan won'),
('2025-01-07', 'Chinnaswamy Stadium', 'India', 'South Africa', 'South Africa won'),
('2025-01-08', 'The Oval', 'England', 'Australia', 'Draw'),
('2025-01-09', 'Eden Gardens', 'India', 'New Zealand', 'India won'),
('2025-01-10', 'MCG', 'Australia', 'West Indies', 'Australia won'),
('2025-01-11', 'Wankhede Stadium', 'India', 'Sri Lanka', 'India won'),
('2025-01-12', 'Old Trafford', 'England', 'South Africa', 'South Africa won'),
('2025-01-13', 'The Oval', 'England', 'Pakistan', 'Draw'),
('2025-01-14', 'Gabba', 'Australia', 'New Zealand', 'New Zealand won'),
('2025-01-15', 'Lord\'s Cricket Ground', 'England', 'India', 'India won'),
('2025-01-16', 'Chinnaswamy Stadium', 'Sri Lanka', 'Pakistan', 'Pakistan won'),
('2025-01-17', 'Eden Gardens', 'India', 'Australia', 'India won'),
('2025-01-18', 'MCG', 'Australia', 'South Africa', 'South Africa won'),
('2025-01-19', 'Wankhede Stadium', 'India', 'New Zealand', 'New Zealand won'),
('2025-01-20', 'Old Trafford', 'Pakistan', 'Sri Lanka', 'Pakistan won'),
('2025-01-21', 'The Oval', 'England', 'West Indies', 'West Indies won'),
('2025-01-22', 'Gabba', 'Australia', 'South Africa', 'Australia won'),
('2025-01-23', 'Lord\'s Cricket Ground', 'Sri Lanka', 'New Zealand', 'New Zealand won'),
('2025-01-24', 'Chinnaswamy Stadium', 'India', 'West Indies', 'India won'),
('2025-01-25', 'Eden Gardens', 'South Africa', 'England', 'South Africa won');


INSERT INTO player_training_session (player_id, session_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25);

INSERT INTO player_match (player_id, match_id, role) VALUES
(1, 1, 'Batsman'),
(2, 2, 'Bowler'),
(3, 3, 'All-rounder'),
(4, 4, 'Batsman'),
(5, 5, 'Bowler'),
(6, 6, 'All-rounder'),
(7, 7, 'Batsman'),
(8, 8, 'Bowler'),
(9, 9, 'All-rounder'),
(10, 10, 'Batsman'),
(11, 11, 'Bowler'),
(12, 12, 'All-rounder'),
(13, 13, 'Batsman'),
(14, 14, 'Bowler'),
(15, 15, 'All-rounder'),
(16, 16, 'Batsman'),
(17, 17, 'Bowler'),
(18, 18, 'All-rounder'),
(19, 19, 'Batsman'),
(20, 20, 'Bowler'),
(21, 21, 'All-rounder'),
(22, 22, 'Batsman'),
(23, 23, 'Bowler'),
(24, 24, 'All-rounder'),
(25, 25, 'Batsman');


-- 1. Players Who Attended Specific Training Sessions
SELECT p.player_name, ts.date, ts.time
FROM player_training_session pts
JOIN player p ON pts.player_id = p.player_id
JOIN trainer_session ts ON pts.session_id = ts.session_id
WHERE ts.session_id = 1;


SELECT team_A AS team, COUNT(*) AS total_matches
FROM matches
GROUP BY team_A
UNION
SELECT team_B AS team, COUNT(*) AS total_matches
FROM matches
GROUP BY team_B;

SELECT m.match_id, m.team_A, m.team_B, COUNT(pm.player_id) AS total_players
FROM matches m
JOIN player_match pm ON m.match_id = pm.match_id
GROUP BY m.match_id;

SELECT * 
FROM coach
WHERE experience = (SELECT MAX(experience) FROM coach);

DELIMITER $$

CREATE PROCEDURE GetAllCoaches()
BEGIN
    SELECT * FROM coach;
END $$

DELIMITER ;

call GetAllCoaches;


CREATE VIEW player_training_sessions AS
SELECT p.player_name, ts.date, ts.topic
FROM player_training_session pts
JOIN player p ON pts.player_id = p.player_id
JOIN trainer_session ts ON pts.session_id = ts.session_id;

select * from player_training_sessions;

