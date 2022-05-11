CREATE TABLE club (
    CID varchar(3) PRIMARY KEY,
    CNAME varchar(255) not null,
    SUBJECT varchar(255) not null,
    BLDGNAME varchar(255) not null,
    BLDGNUMBER int not null
);
CREATE TABLE CLUBMEMBER(
    memberid varchar(3) PRIMARY KEY,
    LASTNAME varchar(255) not null,
    FIRSTNAME varchar(255) not null,
    age int not null,
    check(age > 0)
);  
CREATE TABLE membersOfClub (
    joinDate date not null,
    memID varchar(3),
    FOREIGN KEY (memID) REFERENCES clubmember(memberID),
    clubID varchar(3),
    FOREIGN KEY (clubID) REFERENCES club(CID)
);  
CREATE TABLE clubActivity (
    activityID varchar(3) PRIMARY KEY,
    activityLocation varchar(255) NOT NULL,
    activityName varchar(255) NOT NULL,
    hostedByCID varchar(3) not null,
    foreign key (hostedByCID) REFERENCES club(cid)
);
CREATE TABLE facultySupervisor(
    EmpID varchar(3) PRIMARY KEY,
    firstName varchar(255) not null,
    lastName varchar(255) not null,
    subject varchar(255) not null,
    clubSupervised varchar(3) not null,
    FOREIGN KEY (clubSupervised) REFERENCES club(CID)
);
CREATE TABLE attendedBy (
    memberjoined varchar(3),
    FOREIGN KEY (memberjoined) REFERENCES clubmember(memberID),
    currentactivity varchar(3),
    FOREIGN KEY (currentactivity) REFERENCES clubActivity(activityID),
    attendedDate date NOT NULL
);

INSERT ALL INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C01', 'Computer Club', 'Technology', 'Tech Bldg', 03)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C02', 'Database Club', 'Technology', 'Tech Bldg', 04)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C03', 'Anime Club', 'Art', 'Art Bldg', 93)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C04', 'Painting Club', 'Art', 'Art Bldg', 88)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C05', 'Pottery Club', 'Art', 'Art Bldg', 88)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C06', 'Gamer Club', 'Technology', 'Tech Bldg', 04)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C07', 'Shooting Club', 'Sports', 'Gym', 200)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C08', 'Basketball Club', 'Sports', 'Gym', 372)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C09', 'Tennis Club', 'Sports', 'Gym', 1204)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C10', 'Chess Club', 'Math', 'Math Bldg', 666)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C11', 'Debate Club', 'Politics', 'Language Arts Bldg', 55)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C12', 'Future Leaders of America', 'Politics', 'Basement', 03)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C13', 'Software Club', 'Technology', 'Tech Bldg', 23)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C14', 'Math Club', 'Math', 'Math Bldg', 678)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C15', 'Movie Club', 'Art', 'Math Bldg', 678)
INTO club (CID, cName, subject, bldgName, bldgNumber)
VALUES ('C16', 'Turtle Club', 'Animals', 'Zoology Bldg', 01)
SELECT 1 FROM DUAL;

INSERT ALL
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M01', 'Safdar', 'Ahsif', 29)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M02', 'Bell', 'Cole', 23)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M03', 'Kunenu', 'Leradee', 22)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M04', 'Bliss', 'Eris', 20)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M05', 'Lazarbeam', 'David', 24)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M06', 'Anthony', 'Cole', 21)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M07', 'Barnes', 'Harrison', 25)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M08', 'Holmes', 'Richard', 30)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M09', 'Shoe', 'Susan', 20)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M10', 'Lightyear', 'Buzz', 31)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M11', 'Tanuki', 'Sake', 28)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M12', 'Moore', 'DJ', 24)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M13', 'Anfernee', 'Simons', 22)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M14', 'Bradshaw', 'Moses', 40)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M15', 'Jimenez', 'Diana', 23)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M16', 'Haynes', 'Susana', 42)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M17', 'Wilkins', 'Noreen', 20)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M18', 'Wilkins', 'Jordan', 26)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M19', 'Mack', 'Marlon', 25)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M20', 'Hensley', 'Carson', 34)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M21', 'Tanner', 'Asa', 19)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M22', 'Raymond', 'Nellie', 27)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M23', 'Mohoney', 'Moses', 40)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M24', 'Jimenez', 'Bruce', 23)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M25', 'Haynes', 'Chris', 42)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M26', 'Wilkinson', 'Dom', 32)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M27', 'Taylor', 'Jon', 23)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M28', 'Wilson', 'Aja', 25)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M29', 'Griner', 'Brittney', 31)
INTO clubMember (memberID, lastname, firstname, age)
VALUES ('M30', 'Smith', 'Skylar', 26)
SELECT 1 FROM DUAL;

INSERT ALL
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-06-23', 'M01','C01')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-06-24', 'M01','C02')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-09-11', 'M01','C15')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-08-26', 'M02','C01')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-06-23', 'M02','C02')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-06-23', 'M02','C03')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-09-12', 'M02','C15')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M03','C01')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M03','C02')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M03','C07')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-03-12', 'M03','C14')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-09-11', 'M03','C15')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M04','C15')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M05','C04')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M05','C07')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M05','C09')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-11', 'M05', 'C15')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2018-05-01', 'M06','C10')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2017-01-18', 'M07','C09')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2018-09-12', 'M07','C12')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-08-30', 'M08','C16')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-04-02', 'M09','C04')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2017-09-26', 'M09','C14')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-10-05', 'M10','C12')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-11-12', 'M11','C09')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-02-01', 'M11','C10')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-01-20', 'M12','C11')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-02-28', 'M12','C13')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-03-16', 'M13','C13')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-03-20', 'M14','C14')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-11-01', 'M15','C02')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-11-08', 'M15','C04')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2018-05-11', 'M15','C06')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-01-02', 'M15','C08')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-10-11', 'M16','C09')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-10-11', 'M17','C10')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-03-19', 'M17','C15')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-08-26', 'M18','C01')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-08-29', 'M19','C14')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-10-31', 'M20','C13')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-11-02', 'M21','C13')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-11-30', 'M22','C01')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2018-04-04', 'M22','C02')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2018-04-20', 'M22','C03')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-01-01', 'M23','C04')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-12-17', 'M23','C05')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2017-05-29', 'M24','C07')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-09-11', 'M25','C16')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-02-15', 'M26','C03')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-04-13', 'M26','C05')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-10-01', 'M26','C07')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-10-06', 'M26','C09')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-10-10', 'M26','C11')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2015-12-11', 'M27','C13')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2016-12-04', 'M27','C14')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-01-31', 'M28','C04')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-02-20', 'M28','C06')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2019-07-27', 'M28','C09')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2020-09-09', 'M28','C12')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-09-04', 'M29','C14')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-09-05', 'M30','C08')
INTO membersOfClub (joinDate, memID, clubID)
VALUES (DATE '2021-09-11', 'M30','C15')
SELECT 1 FROM DUAL;

INSERT ALL 
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A01', 'Mountains', 'Chess tournament', 'C10')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A02', 'Computer Lab', 'Learn to Hack the Govt', 'C01')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A03', 'Cafeteria', 'Lunch with friends', 'C12')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A04', 'Biology Lab', 'Observer plants grow', 'C16')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A05', 'Classroom A15', 'Anime Watch-a-thon', 'C03')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A06', 'History classroom', 'Debate about politics', 'C11')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A07', 'Aquarium', 'Looking at turtles', 'C16')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A08', 'Computer Lab', 'Practice Aim for FPS Games', 'C06')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A09', 'Basketball court', 'Learning to shoot Hoops', 'C08')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A10', 'Movie Theaters', 'Watch Together : Topic Film', 'C15')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A11', 'Gun Range', 'Gun Safety Lesson', 'C07')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A12', 'Tech RM 04', 'Code and Coffee', 'C02')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A13', 'Library', 'Secure Software Design', 'C13')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A14', 'South Tennis Court', 'Mastering Your Serve', 'C09')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A15', 'Math Lecture Hall', 'Basic Cryptography', 'C14')
INTO clubActivity (activityId, activityLocation, activityName, hostedByCID)
VALUES ('A16', 'Pottery Room', 'Making Your Own Bowls', 'C05')
SELECT 1 FROM DUAL;

INSERT ALL
INTO facultySupervisor (empID, firstName, lastName, subject, clubSupervised)
VALUES ('E01', 'Yasin', 'Silva', 'Technology', 'C02')
INTO facultySupervisor (empID, firstName, lastName, subject, clubSupervised)
VALUES ('E02', 'Kuai', 'Xu', 'Technology', 'C01')
INTO facultySupervisor (empID, firstName, lastName, subject, clubSupervised)
VALUES ('E03', 'Jesse', 'Cassidy', 'Sports', 'C07')
INTO facultySupervisor (empID, firstName, lastName, subject, clubSupervised)
VALUES ('E04', 'Tyler', 'Blevins', 'Technology', 'C06')
INTO facultySupervisor (empID, firstName, lastName, subject, clubSupervised)
VALUES ('E05', 'Ian', 'Kochinski', 'Politics', 'C11')
INTO facultySupervisor (empID, firstName, lastName, subject, clubSupervised)
VALUES ('E06', 'Jason', 'Mamoa', 'Animals', 'C16')
SELECT 1 FROM DUAL;

INSERT ALL
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M01', 'A02', DATE '2020-07-01')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M02', 'A02', DATE '2021-09-13')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M02', 'A05', DATE '2021-07-23')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M02', 'A10', DATE '2021-06-09')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M03', 'A02', DATE '2021-09-13')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M03', 'A07', DATE '2019-04-13')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M05', 'A05', DATE '2018-09-13')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M05', 'A06', DATE '2021-09-07')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M05', 'A08', DATE '2021-09-13')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M07', 'A09', DATE '2021-09-13')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M07', 'A11', DATE '2016-10-25')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M07', 'A16', DATE '2021-11-27')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M08', 'A01', DATE '2016-02-14')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M08', 'A01', DATE '2017-02-14')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M08', 'A01', DATE '2018-12-25')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M08', 'A01', DATE '2019-12-23')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M08', 'A01', DATE '2020-02-14')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M08', 'A01', DATE '2020-12-25')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M08', 'A01', DATE '2021-02-14')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M09', 'A02', DATE '2021-02-25')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M09', 'A04', DATE '2021-05-29')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M09', 'A08', DATE '2021-06-01')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M09', 'A10', DATE '2021-06-07')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M09', 'A12', DATE '2021-06-08')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M09', 'A14', DATE '2021-06-20')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M12', 'A13', DATE '2018-08-08')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M13', 'A09', DATE '2017-11-01')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M13', 'A10', DATE '2019-01-20')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M16', 'A03', DATE '2015-09-29')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M16', 'A11', DATE '2017-05-30')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M16', 'A13', DATE '2019-08-10')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M16', 'A15', DATE '2021-03-30')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M17', 'A04', DATE '2021-05-29')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M20', 'A16', DATE '2018-10-30')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M21', 'A02', DATE '2016-04-29')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M21', 'A04', DATE '2016-07-11')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M21', 'A16', DATE '2018-12-18')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M26', 'A07', DATE '2015-01-29')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M26', 'A09', DATE '2017-09-17')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M27', 'A03', DATE '2020-04-20')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M28', 'A11', DATE '2021-07-29')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M29', 'A12', DATE '2021-9-26')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M30', 'A15', DATE '2019-10-25')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M30', 'A15', DATE '2019-07-28')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M30', 'A16', DATE '2021-09-25')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M01', 'A02', DATE '2021-9-26')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M30', 'A02', DATE '2019-10-25')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M30', 'A02', DATE '2019-07-28')
INTO attendedBy (memberJoined, currentActivity, attendedDate)
VALUES ('M30', 'A02', DATE '2021-09-25')
SELECT 1 FROM DUAL;

/* getMostActiveClubMembers */
SELECT CM.memberID, CM.firstname, CM.lastname, CM.age, count(*) as totalAttended
FROM clubMember CM, attendedBy AB, clubActivity CA
WHERE CM.memberID = AB.memberJoined AND CA.activityID = AB.currentActivity
GROUP BY CM.memberID, CM.firstname, CM.lastname, CM.age
ORDER BY count(*) desc;

/* getActivitesByMostAttended */
SELECT club.cname, clubActivity.activityName, count(*) as membersjoined
FROM club, clubActivity, attendedBy, clubMember
WHERE club.cid = clubActivity.hostedbycid and clubMember.memberID = attendedBy.memberjoined and clubActivity.activityId = attendedby.currentactivity
GROUP BY club.cname, clubActivity.activityName
ORDER BY membersJoined desc;

/* getYoungestAttendee */
WITH minAgePerAct(aID, age) AS (
SELECT att.currentActivity, MIN(mem.age)
FROM attendedBy att, clubMember mem
WHERE att.memberJoined = mem.memberID
GROUP BY att.currentActivity)
SELECT club.cID, club.cName, clubActivity.activityID, clubactivity.activityName, minAgePerAct.age AS youngestAge
FROM club, minAgePerAct, clubActivity
WHERE minAgePerAct.aID = clubActivity.activityID and clubActivity.hostedByCID = club.cID
ORDER BY club.cID, clubActivity.activityID;

/* countMembersByTimePeriod */
SELECT club.cid, club.cname, count(membersofclub.memid) as totalMembersAfterdate, avg(AGE)as averageage
FROM CLUB, MEMBERSOFCLUB, CLUBMEMBER
WHERE club.CID = membersofclub.clubid and clubmember.memberid = membersofclub.memid and
membersofclub.joindate >= DATE '2019-10-01'
GROUP BY club.cid, club.cname
ORDER BY totalMembersAfterdate DESC;

/* getMostActivities */
SELECT facultySupervisor.empID, lastName, firstName, COUNT(clubActivity.activityID)as numActivity
FROM facultySupervisor, club, clubActivity
WHERE facultySupervisor.clubSupervised = club.cID AND club.cID = clubActivity.hostedByCID
GROUP BY facultySupervisor.empID, lastName, firstName 
ORDER BY numActivity DESC;

/*Extra Credit*/
/*Select members who join activity 2, count the students who attent the most and sort desc order */
SELECT AB.memberJoined, count(AB.currentActivity) as memberAttended
FROM clubActivity CA
INNER JOIN attendedBy AB
ON CA.activityID = AB.currentActivity
GROUP BY AB.memberJoined
ORDER BY AB.memberJoined;
