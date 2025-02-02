CREATE DATABASE AVIACO;

USE AVIACO
GO

CREATE TABLE [dbo].[AIRCRAFT](
	[AC_NUMBER] [nvarchar](5) NOT NULL,
	[MOD_CODE] [nvarchar](10) NOT NULL,
	[AC_TTAF] [float] NULL,
	[AC_TTEL] [float] NULL,
	[AC_TTER] [float] NULL,
 CONSTRAINT [PK_AIRCRAFT] PRIMARY KEY CLUSTERED 
(
	[AC_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[CHARTER](
	[CHAR_TRIP] [int] NOT NULL,
	[CHAR_DATE] [datetime] NULL,
	[AC_NUMBER] [nvarchar](5) NOT NULL,
	[CHAR_DESTINATION] [nvarchar](3) NULL,
	[CHAR_DISTANCE] [real] NULL,
	[CHAR_HOURS_FLOWN] [float] NULL,
	[CHAR_HOURS_WAIT] [float] NULL,
	[CHAR_FUEL_GALLONS] [float] NULL,
	[CHAR_OIL_QTS] [smallint] NULL,
	[CUS_CODE] [int] NOT NULL,
 CONSTRAINT [PK_CHARTER] PRIMARY KEY CLUSTERED 
(
	[CHAR_TRIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CREW](
	[CHAR_TRIP] [int] NOT NULL,
	[EMP_NUM] [int] NOT NULL,
	[CREW_JOB] [nvarchar](20) NULL,
 CONSTRAINT [PK_CREW] PRIMARY KEY CLUSTERED 
(
	[CHAR_TRIP] ASC,
	[EMP_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[CUSTOMER](
	[CUS_CODE] [int] NOT NULL,
	[CUS_LNAME] [nvarchar](15) NULL,
	[CUS_FNAME] [nvarchar](15) NULL,
	[CUS_INITIAL] [nvarchar](1) NULL,
	[CUS_AREACODE] [nvarchar](5) NULL,
	[CUS_PHONE] [nvarchar](12) NULL,
	[CUS_BALANCE] [real] NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[CUS_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EARNEDRATING](
	[EMP_NUM] [int] NOT NULL,
	[RTG_CODE] [nvarchar](5) NOT NULL,
	[EARNRTG_DATE] [datetime] NULL,
 CONSTRAINT [PK_EARNEDRATING] PRIMARY KEY CLUSTERED 
(
	[EMP_NUM] ASC,
	[RTG_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[EMPLOYEE](
	[EMP_NUM] [int] NOT NULL,
	[EMP_TITLE] [nvarchar](4) NOT NULL,
	[EMP_LNAME] [nvarchar](15) NULL,
	[EMP_FNAME] [nvarchar](15) NULL,
	[EMP_INITIAL] [nvarchar](1) NULL,
	[EMP_DOB] [datetime] NULL,
	[EMP_HIRE_DATE] [datetime] NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EMP_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MODEL](
	[MOD_CODE] [nvarchar](10) NOT NULL,
	[MOD_MANUFACTURER] [nvarchar](15) NULL,
	[MOD_NAME] [nvarchar](20) NULL,
	[MOD_SEATS] [float] NULL,
	[MOD_CHG_MILE] [real] NULL,
 CONSTRAINT [PK_MODEL] PRIMARY KEY CLUSTERED 
(
	[MOD_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PILOT](
	[EMP_NUM] [int] NOT NULL,
	[PIL_LICENSE] [nvarchar](25) NULL,
	[PIL_RATINGS] [nvarchar](25) NULL,
	[PIL_MED_TYPE] [nvarchar](1) NULL,
	[PIL_MED_DATE] [datetime] NULL,
	[PIL_PT135_DATE] [datetime] NULL,
 CONSTRAINT [PK_PILOT] PRIMARY KEY CLUSTERED 
(
	[EMP_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[RATING](
	[RTG_CODE] [nvarchar](5) NOT NULL,
	[RTG_NAME] [nvarchar](50) NULL,
 CONSTRAINT [PK_RATING] PRIMARY KEY CLUSTERED 
(
	[RTG_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO





INSERT INTO MODEL VALUES ('C-90A','Beechcraft','KingAir',8,2.670000076)
INSERT INTO MODEL VALUES ('PA23-250','Piper','Aztec',6,1.929999948)
INSERT INTO MODEL VALUES ('PA31-350','Piper','Navajo Chieftain',10,2.349999905)

INSERT INTO AIRCRAFT VALUES ('1484P','PA23-250',1833.1,1833.1,101.8)
INSERT INTO AIRCRAFT VALUES ('2289L','C-90A',4243.8,768.9,1123.4)
INSERT INTO AIRCRAFT VALUES ('2778V','PA31-350',7992.9,1513.1,789.5)
INSERT INTO AIRCRAFT VALUES ('4278Y','PA31-350',2147.3,622.1,243.2)

INSERT INTO CHARTER VALUES (10001,'2019-02-05','2289L','ATL',936,5.1,2.2,354.1,1,10011)
INSERT INTO CHARTER VALUES (10002,'2019-02-05','2778V','BNA',320,1.6,0,72.6,0,10016)
INSERT INTO CHARTER VALUES (10003,'2019-02-05','4278Y','GNV',1574,7.8,0,339.8,2,10014)
INSERT INTO CHARTER VALUES (10004,'2019-02-06','1484P','STL',472,2.9,4.9,97.2,1,10019)
INSERT INTO CHARTER VALUES (10005,'2019-02-06','2289L','ATL',1023,5.7,3.5,397.7,2,10011)
INSERT INTO CHARTER VALUES (10006,'2019-02-06','4278Y','STL',472,2.6,5.2,117.1,0,10017)
INSERT INTO CHARTER VALUES (10007,'2019-02-06','2778V','GNV',1574,7.9,0,348.4,2,10012)
INSERT INTO CHARTER VALUES (10008,'2019-02-07','1484P','TYS',644,4.1,0,140.6,1,10014)
INSERT INTO CHARTER VALUES (10009,'2019-02-07','2289L','GNV',1574,6.6,23.4,459.9,0,10017)
INSERT INTO CHARTER VALUES (10010,'2019-02-07','4278Y','ATL',998,6.2,3.2,279.7,0,10016)
INSERT INTO CHARTER VALUES (10011,'2019-02-07','1484P','BNA',352,1.9,5.3,66.4,1,10012)
INSERT INTO CHARTER VALUES (10012,'2019-02-08','2778V','MOB',884,4.8,4.2,215.1,0,10010)
INSERT INTO CHARTER VALUES (10013,'2019-02-08','4278Y','TYS',644,3.9,4.5,174.3,1,10011)
INSERT INTO CHARTER VALUES (10014,'2019-02-09','4278Y','ATL',936,6.1,2.1,302.6,0,10017)
INSERT INTO CHARTER VALUES (10015,'2019-02-09','2289L','GNV',1645,6.7,0,459.5,2,10016)
INSERT INTO CHARTER VALUES (10016,'2019-02-09','2778V','MQY',312,1.5,0,67.2,0,10011)
INSERT INTO CHARTER VALUES (10017,'2019-02-10','1484P','STL',508,3.1,0,105.5,0,10014)
INSERT INTO CHARTER VALUES (10018,'2019-02-10','4278Y','TYS',644,3.8,4.5,167.4,0,10017)

INSERT INTO CREW VALUES (10001,104,'Pilot')
INSERT INTO CREW VALUES (10002,101,'Pilot')
INSERT INTO CREW VALUES (10003,105,'Pilot')
INSERT INTO CREW VALUES (10003,109,'Copilot')
INSERT INTO CREW VALUES (10004,106,'Pilot')
INSERT INTO CREW VALUES (10005,101,'Pilot')
INSERT INTO CREW VALUES (10006,109,'Pilot')
INSERT INTO CREW VALUES (10007,104,'Pilot')
INSERT INTO CREW VALUES (10007,105,'Copilot')
INSERT INTO CREW VALUES (10008,106,'Pilot')
INSERT INTO CREW VALUES (10009,105,'Pilot')
INSERT INTO CREW VALUES (10010,108,'Pilot')
INSERT INTO CREW VALUES (10011,101,'Pilot')
INSERT INTO CREW VALUES (10011,104,'Copilot')
INSERT INTO CREW VALUES (10012,101,'Pilot')
INSERT INTO CREW VALUES (10013,105,'Pilot')
INSERT INTO CREW VALUES (10014,106,'Pilot')
INSERT INTO CREW VALUES (10015,101,'Copilot')
INSERT INTO CREW VALUES (10015,104,'Pilot')
INSERT INTO CREW VALUES (10016,105,'Copilot')
INSERT INTO CREW VALUES (10016,109,'Pilot')
INSERT INTO CREW VALUES (10017,101,'Pilot')
INSERT INTO CREW VALUES (10018,104,'Copilot')
INSERT INTO CREW VALUES (10018,105,'Pilot')

INSERT INTO CUSTOMER VALUES (10010,'Ramas','Alfred','A','0181','844-2573',0)
INSERT INTO CUSTOMER VALUES (10011,'Dunne','Leona','K','0161','894-1238',0)
INSERT INTO CUSTOMER VALUES (10012,'Smith','Kathy','W','0181','894-2285',896.539978)
INSERT INTO CUSTOMER VALUES (10013,'Pieterse','Jaco','F','0181','894-2180',1285.189941)
INSERT INTO CUSTOMER VALUES (10014,'Orlando','Myron','','0181','222-1672',673.210022)
INSERT INTO CUSTOMER VALUES (10015,'O''Brian','Amy','B','0161','442-3381',1014.559998)
INSERT INTO CUSTOMER VALUES (10016,'Brown','James','G','0181','297-1228',0)
INSERT INTO CUSTOMER VALUES (10017,'Williams','George','','0181','290-2556',0)
INSERT INTO CUSTOMER VALUES (10018,'Farriss','Anne','G','0161','382-7185',0)
INSERT INTO CUSTOMER VALUES (10019,'Smith','Olette','K','0181','297-3809',453.980011)

INSERT INTO EARNEDRATING VALUES (101,'CFI','2008-02-18')
INSERT INTO EARNEDRATING VALUES (101,'CFII','2015-12-15')
INSERT INTO EARNEDRATING VALUES (101,'INSTR','2003-11-08')
INSERT INTO EARNEDRATING VALUES (101,'MEL','2004-06-23')
INSERT INTO EARNEDRATING VALUES (101,'SEL','2003-04-21')
INSERT INTO EARNEDRATING VALUES (104,'INSTR','2006-07-15')
INSERT INTO EARNEDRATING VALUES (104,'MEL','2007-01-29')
INSERT INTO EARNEDRATING VALUES (104,'SEL','2005-03-12')
INSERT INTO EARNEDRATING VALUES (105,'CFI','2007-11-18')
INSERT INTO EARNEDRATING VALUES (105,'INSTR','2005-04-17')
INSERT INTO EARNEDRATING VALUES (105,'MEL','2005-08-12')
INSERT INTO EARNEDRATING VALUES (105,'SEL','2004-09-23')
INSERT INTO EARNEDRATING VALUES (106,'INSTR','2005-12-20')
INSERT INTO EARNEDRATING VALUES (106,'MEL','2006-04-02')
INSERT INTO EARNEDRATING VALUES (106,'SEL','2004-03-10')
INSERT INTO EARNEDRATING VALUES (109,'CFI','2008-11-05')
INSERT INTO EARNEDRATING VALUES (109,'CFII','2013-06-21')
INSERT INTO EARNEDRATING VALUES (109,'INSTR','2006-07-23')
INSERT INTO EARNEDRATING VALUES (109,'MEL','2007-03-15')
INSERT INTO EARNEDRATING VALUES (109,'SEL','2006-02-05')
INSERT INTO EARNEDRATING VALUES (109,'SES','2006-05-12')

INSERT INTO EMPLOYEE VALUES (100,'Mr.','Nkosl','Cela','D','1952-06-15','1998-03-15')
INSERT INTO EMPLOYEE VALUES (101,'Ms.','Lewis','Rhonda','G','1975-03-19','1996-04-25')
INSERT INTO EMPLOYEE VALUES (102,'Mr.','VanDam','Rhett','','1968-11-14','2003-05-18')
INSERT INTO EMPLOYEE VALUES (103,'Ms.','Jones','Anne','M','1984-10-16','2009-07-26')
INSERT INTO EMPLOYEE VALUES (104,'Mr.','Lange','John','P','1981-11-08','2000-08-20')
INSERT INTO EMPLOYEE VALUES (105,'Mr.','Williams','Robert','D','1985-03-14','2013-06-19')
INSERT INTO EMPLOYEE VALUES (106,'Mrs.','Duzak','Jeanine','K','1978-02-12','1999-03-13')
INSERT INTO EMPLOYEE VALUES (107,'Mr.','Diante','Jorge','D','1984-08-21','2007-07-02')
INSERT INTO EMPLOYEE VALUES (108,'Mr.','Wiesenbach','Paul','R','1976-02-14','2003-06-03')
INSERT INTO EMPLOYEE VALUES (109,'Ms.','Travis','Elizabeth','K','1971-06-18','2016-02-14')
INSERT INTO EMPLOYEE VALUES (110,'Mrs.','Genkazi','Leighla','W','1980-05-19','2000-06-29')



INSERT INTO PILOT VALUES (101,'ATP','SEL/MEL/Instr/CFII',1,'2012-04-12','2018-06-15')
INSERT INTO PILOT VALUES (104,'ATP','SEL/MEL/Instr',1,'2012-06-10','2019-03-23')
INSERT INTO PILOT VALUES (105,'COM','SEL/MEL/Instr/CFI',2,'2013-02-25','2019-02-12')
INSERT INTO PILOT VALUES (106,'COM','SEL/MEL/Instr',2,'2013-04-02','2019-12-24')
INSERT INTO PILOT VALUES (109,'COM','SEL/MEL/SES/Instr/CFII',1,'2013-04-14','2019-04-21')

INSERT INTO RATING VALUES ('CFI','Certified Flight Instructor')
INSERT INTO RATING VALUES ('CFII','Certified Flight Instructor, Instrument')
INSERT INTO RATING VALUES ('INSTR','Instrument')
INSERT INTO RATING VALUES ('MEL','Multiengine Land')
INSERT INTO RATING VALUES ('SEL','Single Engine, Land')
INSERT INTO RATING VALUES ('SES','Single Engine, Sea')




ALTER TABLE [dbo].[AIRCRAFT]  WITH CHECK ADD  CONSTRAINT [FK_AIRCRAFT_MODEL] FOREIGN KEY([MOD_CODE])
REFERENCES [dbo].[MODEL] ([MOD_CODE])
GO

ALTER TABLE [dbo].[AIRCRAFT] CHECK CONSTRAINT [FK_AIRCRAFT_MODEL]
GO

ALTER TABLE [dbo].[CHARTER]  WITH CHECK ADD  CONSTRAINT [FK_CHARTER_AIRCRAFT] FOREIGN KEY([AC_NUMBER])
REFERENCES [dbo].[AIRCRAFT] ([AC_NUMBER])
GO

ALTER TABLE [dbo].[CHARTER] CHECK CONSTRAINT [FK_CHARTER_AIRCRAFT]
GO

ALTER TABLE [dbo].[CHARTER]  WITH CHECK ADD  CONSTRAINT [FK_CHARTER_CUSTOMER] FOREIGN KEY([CUS_CODE])
REFERENCES [dbo].[CUSTOMER] ([CUS_CODE])
GO

ALTER TABLE [dbo].[CHARTER] CHECK CONSTRAINT [FK_CHARTER_CUSTOMER]
GO

ALTER TABLE [dbo].[CREW]  WITH CHECK ADD  CONSTRAINT [FK_CREW_CHARTER] FOREIGN KEY([CHAR_TRIP])
REFERENCES [dbo].[CHARTER] ([CHAR_TRIP])
GO

ALTER TABLE [dbo].[CREW] CHECK CONSTRAINT [FK_CREW_CHARTER]
GO

ALTER TABLE [dbo].[CREW]  WITH CHECK ADD  CONSTRAINT [FK_CREW_EMPLOYEE] FOREIGN KEY([EMP_NUM])
REFERENCES [dbo].[EMPLOYEE] ([EMP_NUM])
GO

ALTER TABLE [dbo].[CREW] CHECK CONSTRAINT [FK_CREW_EMPLOYEE]
GO

ALTER TABLE [dbo].[EARNEDRATING]  WITH CHECK ADD  CONSTRAINT [FK_EARNEDRATING_PILOT] FOREIGN KEY([EMP_NUM])
REFERENCES [dbo].[PILOT] ([EMP_NUM])
GO

ALTER TABLE [dbo].[EARNEDRATING] CHECK CONSTRAINT [FK_EARNEDRATING_PILOT]
GO

ALTER TABLE [dbo].[EARNEDRATING]  WITH CHECK ADD  CONSTRAINT [FK_EARNEDRATING_RATING] FOREIGN KEY([RTG_CODE])
REFERENCES [dbo].[RATING] ([RTG_CODE])
GO

ALTER TABLE [dbo].[EARNEDRATING] CHECK CONSTRAINT [FK_EARNEDRATING_RATING]
GO

ALTER TABLE [dbo].[PILOT]  WITH CHECK ADD  CONSTRAINT [FK_PILOT_EMPLOYEE] FOREIGN KEY([EMP_NUM])
REFERENCES [dbo].[EMPLOYEE] ([EMP_NUM])
GO

ALTER TABLE [dbo].[PILOT] CHECK CONSTRAINT [FK_PILOT_EMPLOYEE]
GO

-------------------------------------------------------------------Q5.1------------------------------------------------------------------------
----------------------------Write the SQL code that will list the values for the first four attributes in the CHARTER table.----------------------
SELECT CHAR_TRIP, CHAR_DATE, AC_NUMBER, CHAR_DESTINATION
FROM CHARTER;

-------------------------------------------------------------------Q5.2---------------------------------------------------------------------------
----------Using the contents of the CHARTER table, write the SQL query that will produce theoutput shown in Table 1. Note that the output is limited to selected attributes for aircraft number (AC_NUMBER) 2778V.-----

SELECT CHAR_DATE, AC_NUMBER, CHAR_DESTINATION, CHAR_DISTANCE, CHAR_HOURS_FLOWN
FROM CHARTER
WHERE AC_NUMBER = '2778V';

-------------------------------------------------------------------Q5.3---------------------------------------------------------------------------
--Write the SQL query that will produce the output shown in Table 2 for aircraft 2778V.Note that this output includes data from the CHARTER and CUSTOMER tables.--

SELECT 
    c.CHAR_DATE, 
    c.AC_NUMBER, 
    c.CHAR_DESTINATION, 
    cu.CUS_LNAME, 
    cu.CUS_AREACODE, 
    cu.CUS_PHONE
FROM 
    CHARTER c
JOIN 
    CUSTOMER cu ON c.CUS_CODE = cu.CUS_CODE
WHERE 
    c.AC_NUMBER = '2778V';


	------------------------------------------------------------------Q5.4------------------------------------------------------------
	--Write the SQL query that will produce the output shown in Table 3. The output, derived from the CHARTER and MODEL tables, is limited to February 6, 2019.--

	SELECT 
    c.CHAR_DATE, 
    c.CHAR_DESTINATION, 
    c.AC_NUMBER, 
    m.MOD_NAME, 
    m.MOD_CHG_MILE
FROM 
    CHARTER c
JOIN 
    AIRCRAFT a ON c.AC_NUMBER = a.AC_NUMBER
JOIN 
    MODEL m ON a.MOD_CODE = m.MOD_CODE
WHERE 
    c.CHAR_DATE = '2019-02-06';

------------------------------------------------------------------------Q5.5------------------------------------------------------------
----Write the SQL query that will produce the output shown in Table 4, and which includes data from the CUSTOMER table. The output must be limited to charter records generated since February 9, 2019.------
SELECT 
    c.CHAR_DATE, 
    c.CHAR_DESTINATION, 
    c.AC_NUMBER, 
    m.MOD_NAME, 
    m.MOD_CHG_MILE, 
    cus.CUS_LNAME
FROM 
    CHARTER c
JOIN 
    AIRCRAFT a ON c.AC_NUMBER = a.AC_NUMBER
JOIN 
    MODEL m ON a.MOD_CODE = m.MOD_CODE
JOIN 
    CUSTOMER cus ON c.CUS_CODE = cus.CUS_CODE
WHERE 
    c.CHAR_DATE >= '2019-02-09'
ORDER BY 
    c.CHAR_DATE;



------------------------------------------------------------------Q5.6---------------------------------------------------------------
/*Write the SQL query that will produce the output shown in Table 5. The date limitation
from the above query applies to this problem, too. Note that this query includes data
from the CREW and EMPLOYEE tables. Limit the output to display only the Pilot crew.
List the records in date order from the earliest to the latest and then by aircraft number.*/

SELECT 
    c.CHAR_DATE,
    c.CHAR_DESTINATION,
    c.AC_NUMBER,
    m.MOD_CHG_MILE,
    c.CHAR_DISTANCE,
    cr.EMP_NUM,
    cr.CREW_JOB,
    e.EMP_LNAME
FROM 
    CHARTER c
JOIN 
    AIRCRAFT a ON c.AC_NUMBER = a.AC_NUMBER
JOIN 
    MODEL m ON a.MOD_CODE = m.MOD_CODE
JOIN 
    CREW cr ON c.CHAR_TRIP = cr.CHAR_TRIP
JOIN 
    EMPLOYEE e ON cr.EMP_NUM = e.EMP_NUM
WHERE 
    c.CHAR_DATE >= '2019-02-09' AND
    cr.CREW_JOB = 'Pilot'
ORDER BY 
    c.CHAR_DATE, c.AC_NUMBER;



----------------------------------------------------------------Q5.7----------------------------------------------------------------------------

/*Write the SQL query that will produce the output shown in Table 5. The date limitation
from the above query applies to this problem, too. Note that this query includes data
from the CREW and EMPLOYEE tables. Limit the output to display only the Pilot crew.
List the records in date order from the earliest to the latest and then by aircraft number.*/

SELECT 
    c.CHAR_DATE,
    c.CHAR_DESTINATION,
    c.AC_NUMBER,
    m.MOD_NAME,
    c.CHAR_HOURS_FLOWN,
    c.CHAR_FUEL_GALLONS,
    ROUND(c.CHAR_FUEL_GALLONS / NULLIF(c.CHAR_HOURS_FLOWN, 0), 2) AS FUEL_PER_HOUR
FROM 
    CHARTER c
JOIN 
    AIRCRAFT a ON c.AC_NUMBER = a.AC_NUMBER
JOIN 
    MODEL m ON a.MOD_CODE = m.MOD_CODE
ORDER BY 
    c.CHAR_DATE, m.MOD_NAME;


------------------------------------------------------------------Q5.8----------------------------------------------------------------
/*Write the SQL query that will produce a list of customers who have an unpaid balance.
The required output is shown in Table 7. Note that the balances are listed in descending
order.*/

SELECT 
    CUS_LNAME, 
    CUS_FNAME, 
    CUS_INITIAL, 
    CUS_BALANCE
FROM 
    CUSTOMER
WHERE 
    CUS_BALANCE > 0
ORDER BY 
    CUS_BALANCE DESC;

-------------------------------------------------------------------------Q5.9-------------------------------------------------------
/*Find the average unpaid customer balance, the minimum balance, the maximum
balance, and the total of the unpaid balances. */

SELECT 
    AVG(CUS_BALANCE) AS AvgOfCUS_BALANCE,
    MIN(CUS_BALANCE) AS MinOfCUS_BALANCE,
    MAX(CUS_BALANCE) AS MaxOfCUS_BALANCE,
    SUM(CUS_BALANCE) AS SumOfCUS_BALANCE
FROM 
    CUSTOMER
WHERE 
    CUS_BALANCE > 0;



---------------------------------------------------------------------------Q5.10------------------------------------------------------------------
/*Write the SQL code to generate the output shown in Table 9. Note that the listing
includes all CHARTER flights that did not include a copilot crew assignment. Note that
the pilot�s last name requires access to the EMPLOYEE table, while the MOD_NAME
requires access to the MODEL table*/


SELECT 
    CHARTER.CHAR_DATE AS "CHAR_DATE",
    CHARTER.AC_NUMBER AS "AC_NUMBER",
    MODEL.MOD_NAME AS "MOD_NAME",
    CHARTER.CHAR_HOURS_FLOWN AS "CHAR_HOURS_FLOWN",
    EMPLOYEE.EMP_LNAME AS "EMP_LNAME",
    CREW.CREW_JOB AS "CREW_JOB",
    CHARTER.CHAR_DESTINATION AS "CHAR_DESTINATION"
FROM 
    CHARTER
JOIN 
    AIRCRAFT ON CHARTER.AC_NUMBER = AIRCRAFT.AC_NUMBER
JOIN 
    MODEL ON AIRCRAFT.MOD_CODE = MODEL.MOD_CODE
JOIN 
    CREW ON CHARTER.CHAR_TRIP = CREW.CHAR_TRIP
JOIN 
    EMPLOYEE ON CREW.EMP_NUM = EMPLOYEE.EMP_NUM
WHERE 
    CREW.CREW_JOB = 'Pilot'
    AND CHARTER.CHAR_TRIP NOT IN (SELECT CHAR_TRIP FROM CREW WHERE CREW_JOB = 'Copilot');

