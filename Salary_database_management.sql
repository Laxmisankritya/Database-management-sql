
CREATE TABLE employee_d( 
Empid VARCHAR(10) not null, 
FirstName CHAR(10), 
LastName CHAR(10),
Email VARCHAR(25),
MobileNumber VARCHAR(10),
Gender CHAR(5),
Age INT,
Address VARCHAR(30));
Alter table employee_d
Add constraint PK_Empid PRIMARY KEY(Empid);



CREATE TABLE Deductions(
DedId VARCHAR(10),
FICA INT,
FedIncomeTax INT,
StateIncomeTax INT,
Medicare INT,
HealthcarePremium INT,
LongTermDisability INT);
Alter table Deductions
Add constraint PK_DedId PRIMARY KEY(DedId);


CREATE TABLE Job_Admin(
JobID VARCHAR(5) not null,
JobDep CHAR(20),
Description VARCHAR(10),
SalaryRange VARCHAR(20),
salaryid VARCHAR(10),
Amount INT,
Bonus INT,
Admin_ID VARCHAR(10),
Afirst_name CHAR(10),
Alast_name CHAR(10),
Aemail VARCHAR(25),
AMobileno VARCHAR(20),
Agender CHAR(5),
Age INT,
Address VARCHAR(25));
Alter table Job_Admin
Add constraint JobId PRIMARY KEY(JobId);


CREATE TABLE P_leave(
Payroll_type VARCHAR(15),
Status CHAR(10),
Reason VARCHAR(25),
LeaveID VARCHAR(10),
LDate DATE);
Alter table P_leave
Add constraint LeaveID PRIMARY KEY(LeaveID);



CREATE TABLE payroll_invest_details(
payrollid VARCHAR(5) not null,
DATE_D DATE,
Report VARCHAR(25),
InvestId CHAR(10),
FourZeroOneK INT,
RethIRA INT,
HAS INT,
Empid VARCHAR(10),
Dedid VARCHAR(10),
JobID VARCHAR(5),
LeaveID VARCHAR(5));
Alter table payroll_invest_details
Add constraint payrollid PRIMARY KEY(payrollid);


Alter table payroll_invest_details
Add Constraint FK_Empid foreign key(EmpID) references employee_d(EmpID);
Alter table payroll_invest_details
Add Constraint FK_DedID foreign key(DedId) references Deductions(DedId);
Alter table payroll_invest_details
Add Constraint FK_JobId foreign key(JobId) references Job_Admin(JobId);
Alter table payroll_invest_details
Add Constraint FK_LeaveID foreign key(LeaveID) references P_Leave(LeaveID);




Insert into Employee_d values('I356040','Vivek','Kumar','vivek.kumar@gmail.com','4753459279','M',20,'Coit Road
');
Insert into Employee_d values('I356043','David','Beckam','D.B@gmail.com','4753459282','M',23,'West Renner road
');
Insert into Employee_d values('I356044','Amy','Rome','A.R@gmail.com','4753459283','F',24,'Frisco');



Insert into Deductions values('HAGY010',147,250,661,750,654,121);
Insert into Deductions values('HAGY012',148,251,662,751,655,122);
Insert into Deductions values('HAGY013',149,252,660,752,656,123);
Insert into Deductions values('HAGY014',147,253,663,753,657,124);
Insert into Deductions values('HAGY015',147,254,664,754,658,125);
Insert into Deductions values('HAGY016',148,254,664,754,658,125);


Insert into Job_Admin values('J001','Finance','Job for FI','10000-90000','AFT7168',10000,1000,'AD01','Reese','Hamilton','r_hamilton@google.org','1-688-408-4845','M',27,'2 Florence Point
');

Insert into Job_Admin values('J002','HR','Job for HR','6000-500000','AFT7170',1200000,13000,'AD02','Oberoi','Ramesh','o.r@google.org','1-688-408-4846','F',28,'3 FPoint
');

Insert into Job_Admin values('J003','Controlling','Job for CO','7000-120000','AFT7171',1300000,14000,'AD03','Richardson','Paul','r.p@google.org','1-688-408-4847','M',29,'4 Flo Point
');

Insert into Job_Admin values('J004','cloud platform','Job for CP','2000-90000','AFT7172',1400000,15000,'AD04','Beckam','David','b.d@google.org','1-688-408-4848','F',30,'5 Flor Point
');

Insert into Job_Admin values('J005','Administrativ','Job for AD','1000-60000','AFT7173',1500000,16000,'AD05','Rome','Amy','r.a@google.org','1-688-408-4849','M',31,'6 Flore Point
');

Insert into Job_Admin values('J006','sales','Job for SD','1100-190000','AFT7174',1600000,17000,'AD06','Roy','Kate','r.k@google.org','1-688-408-4850','M',32,'7 Ace Point
');

Insert into Job_Admin values('J007','sales','Job for SD','1100-190001','AFT7175',1900000,11000,'AD07','Roys','Katei','ro.k@google.org','1-688-408-4851','M',33,'8 Ace Point');



Insert into P_leave values('Full time','Approved','personl reason','L001','18-MAY-20');
Insert into P_leave values('part time','rejected','Sick leave','L002','03-JUN-20');
Insert into P_leave values('intern','Approved','going home','L003','23-APR-20');
Insert into P_leave values('contract','Approved','Not in a mood','L004','18-MAY-20');
Insert into P_leave values('Null','Approved','personl reason','L005','15-JUL-20');
Insert into P_leave values('Contract','rejected','Sick leave','L006','06-MAR-20');
Insert into P_leave values('Full time','Approved','going home','L007','04-NOV-20');
Insert into P_leave values('Null','Approved','Not in a mood','L008','13-JAN-20');
Insert into P_leave values('intern','rejected','Not in a mood','L009','31-MAY-20');
Insert into P_leave values('intern','rejected','Not in a mood','L010','17-SEP-20');

Insert into payroll_invest_details values('P001','18-MAY-21','Level 1 employee','ADFHJU',176,344,245,'I356040','HAGY010','J001','L001');
Insert into payroll_invest_details values('P002','06-MAR-21','level 1.9 employee','AYTEGH',123,342,265,'I356040','HAGY010','J001','L002');
Insert into payroll_invest_details values('P003','23-APR-21','level 2.5 employee','ABJIST',156,398,234,'I356040','HAGY010','J001','L003');
Insert into payroll_invest_details values('P004','18-MAY-21','level 5 employee','ABHWTY',156,276,265,'I356040','HAGY010','J001','L004');
Insert into payroll_invest_details values('P005','18-DEC-21','level 2.5 employee','ABKSYH',178,345,276,'I356043','HAGY012','J002','L005');
Insert into payroll_invest_details values('P006','20-DEC-21','level 3 employee','AIYRVG',135,286,286,'I356043','HAGY013','J003','L006');
Insert into payroll_invest_details values('P007','20-JAN-21','level 1.9 employee','AIYRVR',136,235,254,'I356044','HAGY014','J004','L007');
Insert into payroll_invest_details values('P008','18-MAY-20','level 2 employee','AIYEDF',187,234,299,'I356044','HAGY015','J005','L008');
Insert into payroll_invest_details values('P009','17-JUL-20','level 4 employee','AIYHDS',145,355,211,'I356044','HAGY016','J006','L009');



select E.EmpId,E.FirstName,E.LastName,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Employee_d E INNER JOIN Payroll_invest_Details P on E.EmpId=P.EmpId;
select L.LeaveId,L.Status,L.Reason,L.Ldate,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from P_Leave L Full JOIN Payroll_invest_Details P on L.LeaveId=P.LeaveId;

select J.JobId,J.JobDep,J.Description,J.SalaryRange,J.Amount,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Job_Admin J LEFT OUTER JOIN Payroll_invest_Details P on J.JobId=P.JobId;

select D.DedId,D.FICA,D.FedIncomeTax,D.StateIncomeTax,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Payroll_invest_Details P RIGHT OUTER JOIN  Deductions D on P.DedId=D.DedId;

select J.JobId,J.JobDep,J.Description,J.SalaryRange,J.Amount,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Job_Admin J LEFT OUTER JOIN Payroll_invest_Details P on J.JobId=P.JobId
Intersect
select J.JobId,J.JobDep,J.Description,J.SalaryRange,J.Amount,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Job_Admin J RIGHT OUTER JOIN Payroll_invest_Details P on J.JobId=P.JobId
;

select J.JobId,J.JobDep,J.Description,J.SalaryRange,J.Amount,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Job_Admin J LEFT OUTER JOIN Payroll_invest_Details P on J.JobId=P.JobId
Union
select J.JobId,J.JobDep,J.Description,J.SalaryRange,J.Amount,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Job_Admin J RIGHT OUTER JOIN Payroll_invest_Details P on J.JobId=P.JobId
;

select J.JobId,J.JobDep,J.Description,J.SalaryRange,J.Amount,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Job_Admin J LEFT OUTER JOIN Payroll_invest_Details P on J.JobId=P.JobId
MINUS
select J.JobId,J.JobDep,J.Description,J.SalaryRange,J.Amount,P.PayrollId,P.FourZeroOneK,P.Date_d,P.Report from Job_Admin J RIGHT OUTER JOIN Payroll_invest_Details P on J.JobId=P.JobId
;
