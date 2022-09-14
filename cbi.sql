Create database cbi;
use cbi;

CREATE TABLE agents
   (	
    agent_code CHAR(6) NOT NULL PRIMARY KEY, 
	agent_name CHAR(40), 
	working_area CHAR(35), 
	phone_no CHAR(15), 
	country VARCHAR(25) 
	 );
     
INSERT INTO agents 
(agent_code,agent_name,working_area,phone_no,country)values
('A007', 'Ramasundar', 'Bangalore', '077-25814763', ''),
('A003', 'Alex ', 'London', '075-12458969', ''),
('A008', 'Alford', 'New York', '044-25874365', ''),
('A011', 'Ravi Kumar', 'Bangalore','077-45625874', ''),
('A010', 'Santakumar', 'Chennai', '007-22388644', ''),
('A012', 'Lucida', 'San Jose', '044-52981425', ''),
('A005', 'Anderson', 'Brisban', '045-21447739', ''),
('A001', 'Subbarao', 'Bangalore',  '077-12346674', ''),
('A002', 'Mukesh', 'Mumbai',  '029-12358964', ''),
('A006', 'McDen', 'London', '078-22255588', ''),
('A004', 'Ivan', 'Torento', '008-22544166', ''),
('A009', 'Benjamin', 'Hampshair','008-22536178', '');

show databases;


CREATE TABLE  targets 
   (target_code VARCHAR(6) NOT NULL PRIMARY KEY, 
	target_name VARCHAR(40) NOT NULL, 
	target_city CHAR(35), 
	working_area VARCHAR(35) NOT NULL, 
	target_country VARCHAR(20) NOT NULL,   
	phone_no VARCHAR(17) NOT NULL, 
	agent_code CHAR(6) NOT NULL,
    foreign key(agent_code)
    references agents(agent_code)
    on delete cascade
);   

drop table targets;#not to use
select * from targets;
INSERT INTO targets 
(target_code,target_name,target_city,working_area,target_country,phone_no,agent_code)values
('C00013', 'Holmes', 'London', 'London', 'UK', 'BBBBBBB', 'A003'),
 ('C00001', 'Micheal', 'New York', 'New York', 'USA', 'CCCCCCC', 'A008'),
 ('C00020', 'Albert', 'New York', 'New York', 'USA', 'BBBBSBB', 'A008'),
 ('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India','AVAVAVA', 'A011'),
 ('C00024', 'Cook', 'London', 'London', 'UK', 'FSDDSDF', 'A006'),
 ('C00015', 'Stuart', 'London', 'London', 'UK','GFSGERS', 'A003'),
 ('C00002', 'Bolt', 'New York', 'New York', 'USA',  'DDNRDRH', 'A008'),
('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia',  'NHBGVFC', 'A005'),
('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', 'WERTGDF', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', 'ZZZZBFV', 'A010'),
 ('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '147-25896312', 'A002'),
 ('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', 'GHRDWSD', 'A010'),
('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '113-12345678','A002'),
 ('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', 'AAAAAAA', 'A005'),
('C00023', 'Karl', 'London', 'London', 'UK','AAAABAA', 'A006'),
 ('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', 'DDDDDDD', 'A004'),
 ('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', 'MMMMMMM', 'A009'),
 ('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', 'AAAAAAB', 'A007'),
 ('C00012', 'Steven', 'San Jose', 'San Jose', 'USA',  'KRFYGJK', 'A012'),
 ('C00008', 'Karolina', 'Torento', 'Torento', 'Canada',  'HJKORED', 'A004'),
 ('C00003', 'Martin', 'Torento', 'Torento', 'Canada',  'MJYURFD', 'A004'),
 ('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India',  'Phone No', 'A002'),
 ('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India','AAAATGF', 'A001'),
 ('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India','JRTVFDD', 'A007'),
 ('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', 'PPHGRTS', 'A010');
 
 CREATE TABLE ORDERS 
   (
	ord_num int NOT NULL PRIMARY KEY, 
	ord_date DATE NOT NULL, 
	target_code VARCHAR(6) NOT NULL , 
	agent_code CHAR(6) NOT NULL, 
	ord_desc VARCHAR(60) NOT NULL,
    foreign key(agent_code)
    references agents(agent_code)
    on delete cascade,
    foreign key(target_code)
    references targets(target_code)
    on delete cascade
   );
DROP TABLE ORDERS;#not to use;

INSERT INTO ORDERS VALUES('200100',  '2008-11-11', 'C00013', 'A003', 'SOD');
INSERT INTO ORDERS VALUES('200110',  '2008-11-11', 'C00019', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200107',  '2008-11-11', 'C00007', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200112', '2008-11-11', 'C00016', 'A007', 'SOD'); 
INSERT INTO ORDERS VALUES('200113',  '2008-11-11', 'C00022', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200102',  '2008-11-11', 'C00012', 'A012', 'SOD');
INSERT INTO ORDERS VALUES('200114',  '2008-11-11', 'C00002', 'A008', 'SOD');
INSERT INTO ORDERS VALUES('200122',  '2008-11-11', 'C00003', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200118',  '2008-11-11', 'C00023', 'A006', 'SOD');
INSERT INTO ORDERS VALUES('200119',  '2008-11-11', 'C00007', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200121',  '2008-11-11', 'C00008', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200130',  '2008-11-11', 'C00025', 'A011', 'SOD');
INSERT INTO ORDERS VALUES('200134',  '2008-11-11', 'C00004', 'A005', 'SOD');
INSERT INTO ORDERS VALUES('200108',  '2008-11-11', 'C00008', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200103',  '2008-11-11', 'C00021', 'A005', 'SOD');
INSERT INTO ORDERS VALUES('200105',  '2008-11-11', 'C00025', 'A011', 'SOD');
INSERT INTO ORDERS VALUES('200109',  '2008-11-11', 'C00011', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200101',  '2008-11-11', 'C00001', 'A008', 'SOD');
INSERT INTO ORDERS VALUES('200111',  '2008-11-11', 'C00020', 'A008', 'SOD');
INSERT INTO ORDERS VALUES('200104',  '2008-11-11', 'C00006', 'A004', 'SOD');
INSERT INTO ORDERS VALUES('200106',  '2008-11-11', 'C00005', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200125', '2008-11-11', 'C00018', 'A005', 'SOD');
INSERT INTO ORDERS VALUES('200117',  '2008-11-11', 'C00014', 'A001', 'SOD');
INSERT INTO ORDERS VALUES('200123',  '2008-11-11', 'C00022', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200120', '2008-11-11', 'C00009', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200116',  '2008-11-11', 'C00010', 'A009', 'SOD');
INSERT INTO ORDERS VALUES('200124', '2008-11-11', 'C00017', 'A007', 'SOD'); 
INSERT INTO ORDERS VALUES('200126', '2008-11-11', 'C00022', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200129',  '2008-11-11', 'C00024', 'A006', 'SOD');
INSERT INTO ORDERS VALUES('200127',  '2008-11-11', 'C00015', 'A003', 'SOD');
INSERT INTO ORDERS VALUES('200128',  '2008-11-11', 'C00009', 'A002', 'SOD');
INSERT INTO ORDERS VALUES('200135',  '2008-11-11', 'C00007', 'A010', 'SOD');
INSERT INTO ORDERS VALUES('200131',  '2008-11-11', 'C00012', 'A012', 'SOD');
INSERT INTO ORDERS VALUES('200133', '2008-11-11', 'C00009', 'A002', 'SOD');


