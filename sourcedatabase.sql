--Create table Script for all the tables required
--**************************** START MASTER TABLE **********************************************************
--Religion Table
if exists (select 1 from sys.objects o where UPPER(o.name)='RELIGION' and o.type='U')
begin
	drop table RELIGION;
end

Create table Religion(ReligionID int not null,
                      ReligionName varchar(80));

ALTER TABLE Religion
ADD CONSTRAINT pk_Religion_ReligionID PRIMARY KEY(ReligionID)
GO

-- Insertion for Religion

insert into Religion values(1,'Hindu');
insert into Religion values(2,'Muslim');
insert into Religion values(3,'Christrian');
insert into Religion values(4,'Jain');
insert into Religion values(5,'Non-religious Belief');



--Caste Table
if exists (select 1 from sys.objects o where UPPER(o.name)='CASTE' and o.type='U')
begin 
	drop table Caste;
end

Create table Caste(CasteID int not null,
				   CasteName varchar(80),
				   ReligionID int);

ALTER TABLE Caste
ADD CONSTRAINT pk_Caste_CasteID PRIMARY KEY(CasteID)
GO
ALTER TABLE Caste
ADD CONSTRAINT fk_Caste_ReligionID FOREIGN KEY(ReligionID)REFERENCES Religion(ReligionID)
GO

--insertion fot Caste

insert into Caste values(1,'Brahmin',1);
insert into Caste values(2,'Gounder',1);
insert into Caste values(3,'Nadar',1);
insert into Caste values(4,'Naidu',1);
insert into Caste values(5,'Pandaram',1);
insert into Caste values(6,'Muslim-Ansari',2);
insert into Caste values(7,'Muslim-Bohra',2);  
insert into Caste values(8,'Muslim-Malik',2);
insert into Caste values(9,'Muslim-Memon',2);
insert into Caste values(10,'Muslim-Rajput',2);
insert into Caste values(11,'Dont Want To Specify',2);
insert into Caste values(12,'Christian-born Again',3);
insert into Caste values(13,'Christian-Kanaya',3);
insert into Caste values(14,'Christian-Others',3);
insert into Caste values(15,'Christian-Pentacost', 3);
insert into Caste values(16,'Dont Want To Specify',3);
insert into Caste values(17,'Jain-Agarval',4);
insert into Caste values(18,'Jain-Bania',4);
insert into Caste values(19,'Jain-Kvo', 4);
insert into Caste values(20,'Jain-other',4);
insert into Caste values(21,'Dont Wish To Specify', 4);  


--SubCaste Table
if exists (select 1 from sys.objects o where UPPER(o.name)='SUBCASTE' and o.type='U')
begin
	drop table SUBCASTE;
end

Create table SubCaste(SubCasteID int not null,
                      SubCasteName varchar(80),
                      CasteID int);
ALTER TABLE SubCaste
ADD CONSTRAINT pk_SubCaste_SubCasteID PRIMARY KEY(SubCasteID)
GO

ALTER TABLE SubCaste
ADD CONSTRAINT fk_SubCaste_CasteID FOREIGN KEY(CasteID)REFERENCES Caste(CasteID)
GO
--insertion for Subcaste
insert into SubCaste values(1,'Gavara',4);
insert into SubCaste values(2,'Raju',4);
insert into SubCaste values(3,'Vadugan',4);
insert into SubCaste values(4,'Yadava', 4);


--Gothra Table
if exists (select 1 from sys.objects o where UPPER(o.name)='GOTHRA' and o.type='U')
begin
	drop table GOTHRA;
end

Create table Gothra(GothraID int not null,
                      GothraName varchar(80),
                      SubCasteID int);
ALTER TABLE Gothra
ADD CONSTRAINT pk_Gothra_GothraID PRIMARY KEY(GothraID)
GO

ALTER TABLE Gothra
ADD CONSTRAINT fk_Gothra_GothraID FOREIGN KEY(SubCasteID)REFERENCES SubCaste(SubCasteID)
GO

-- Country 
if exists (select 1 from sys.objects o where UPPER(o.name)='COUNTRY' and o.type='U')
begin
	drop table COUNTRY;
end

Create table Country(CountryID int not null,
                     CountryName varchar(80),
                     CountryCode varchar(40));

ALTER TABLE Country
ADD CONSTRAINT pk_Country_CountryID PRIMARY KEY(CountryID)
GO 
--insertion for country

insert into Country values(1,'India','+91');
insert into Country values( 2,'Australiya','+61' );
insert into Country values(3,'Malaysia','+60' );
insert into Country values(4,'Germany','+49');
insert into Country values(5,'France','+33');

--StateDetails
if exists (select 1 from sys.objects o where UPPER(o.name)='STATEDETAILS' and o.type='U')
begin
	drop table STATEDETAILS;
end

Create table StateDetails(StateID int not null,
                   StateName varchar(80),
                   CountryID int);
                   
ALTER TABLE StateDetails
ADD CONSTRAINT pk_StateDetails_StateID PRIMARY KEY(StateID)
GO 

ALTER TABLE StateDetails
ADD CONSTRAINT fk_StateDetails_CountryID FOREIGN KEY(CountryID)REFERENCES Country(CountryID)
GO
-- insertion StateDetails

insert into StateDetails values(1,'Delhi',1);
insert into StateDetails values(2,'AndraPradesh',1);
insert into StateDetails values(3,'Karnataka',1);
insert into StateDetails values(4,'Kerala',1);
insert into StateDetails values(5,'Tamil Nadu',1);

--City
if exists (select 1 from sys.objects o where UPPER(o.name)='CITY' and o.type='U')
begin
	drop table City;
end

Create table City(CityID int not null,
                  CityName varchar(80),
                  StateID int);
                  
ALTER TABLE City
ADD CONSTRAINT pk_City_CityID PRIMARY KEY(CityID)
GO 

ALTER TABLE City
ADD CONSTRAINT fk_City_StateID FOREIGN KEY(StateID)REFERENCES StateDetails(StateID)
GO  

insert into City values(1,'Alipur',1);
insert into City values(2,'Bhaki',1);
insert into City values(3,'Kondi',1);
insert into City values(4,'Sulter Par',1);
insert into City values(5,'Chittor',2);
insert into City values(6,'Guntur',2);
insert into City values(7,'Hyderabed',2);
insert into City values(8,'Nellore',2);
insert into City values(9,'Bangalore',3);
insert into City values(10,'bijapur',3);
insert into City values(11,'Mangalore',3);
insert into City values(12,'Mysore',3);
insert into City values(13,'Adoor' ,4);
insert into City values(14,'Cholo(kannur)' ,4);
insert into City values(15,'Kadachina',4);
insert into City values(16,'Kochi',4);
insert into City values(17,'Chennai',5);
insert into City values(18,'Erode',5);
insert into City values(19,'Madurai',5);
insert into City values(20,'Salem',5);
insert into City values(21,'villupuram',5);

--StarDetails
if exists (select 1 from sys.objects o where UPPER(o.name)='STARDETAILS' and o.type='U')
begin
	drop table STARDETAILS;
end

Create table StarDetails(StarID int not null,
                         StarName varchar(80));

ALTER TABLE StarDetails
ADD CONSTRAINT pk_StarDetails_StarID PRIMARY KEY(StarID)
GO 
--insertion for star
insert into StarDetails values(1,'Ashwini');
insert into StarDetails values(2,'Rohini');
insert into StarDetails values(3,'Pooram');
insert into StarDetails values(4,'Visakam');
insert into StarDetails values(5,'Moolam');



--Raasi/Moon Sign
if exists (select 1 from sys.objects o where UPPER(o.name)='RAASI' and o.type='U')
begin
	drop table RAASI;
end

Create table Raasi(RaasiID int not null,
                   RaasiName varchar(80),
                   StarID int);

ALTER TABLE Raasi
ADD CONSTRAINT pk_Raasi_RaasiID PRIMARY KEY(RaasiID)
GO 

ALTER TABLE Raasi
ADD CONSTRAINT fk_Raasi_StarID FOREIGN KEY(StarID)REFERENCES StarDetails(StarID)
GO

--insertion for raasi

insert into Raasi values(1,'Mesham',1);
insert into Raasi values(2,'Rohini',2);
insert into Raasi values(3,'Simham',3);
insert into Raasi values(4,'Tula',4); 
insert into Raasi values(5,'Virchagam',4);
insert into Raasi values(6,'Dhanus',5);

-- Highest education
if exists (select 1 from sys.objects o where UPPER(o.name)='HIGHEDUCATION' and o.type='U')
begin
	drop table HIGHEDUCATION;
end

Create table HighEducation(EducationID int not null,
                           EducationName varchar(80));
                           
ALTER TABLE HighEducation
ADD CONSTRAINT pk_HighEducation_EduID PRIMARY KEY(EducationID)
GO 

--insertion for HighEducation

insert into HighEducation values(1,'Bachelar-Engineering/computer/Others');
insert into HighEducation values(2,'Master-Engineering/computer/Others');
insert into HighEducation values(3,'Bachalors-Arts/Science/Commerce/Others');
insert into HighEducation values(4,'Baachelors-Management/Others');
insert into HighEducation values(5,'Finance-ICWAI/CA/CS/CFA/Others');
insert into HighEducation values(6,'Service IAS/IPS/IRS/IES/IFS/OTHERS');
insert into HighEducation values(7,'Diploma/others');


-- Currency
if exists (select 1 from sys.objects o where UPPER(o.name)='CURRENCY' and o.type='U')
begin
	drop table CURRENCY;
end

Create table Currency(CurrID int not null,
                      CurrName varchar(80));    

ALTER TABLE Currency
ADD CONSTRAINT pk_Currency_CurrID PRIMARY KEY(CurrID)
GO

--insertion currency

insert into Currency values(1,'India-RS');
insert into Currency values(2,'united States Of America-VSD');
insert into Currency values(3,'Malaysiya-MYR');
insert into Currency values(4,'France-EUR');
insert into Currency values(5,'Sri-Lanka-LKR');


--Occupation
if exists (select 1 from sys.objects o where UPPER(o.name)='OCCUPATION' and o.type='U')
begin
	drop table OCCUPATION;
end

Create table Occupation(OccupID int not null,
                        OccupName varchar(80));

ALTER TABLE Occupation
ADD CONSTRAINT pk_Occupation_OccupID PRIMARY KEY(OccupID)
GO 

--insertion Occupation

insert into Occupation values(1,'Manager');
insert into Occupation values(2,'Agriculture & farming Professional');
insert into Occupation values(3,'Airline');
insert into Occupation values(4,'Banking & Finance');
insert into Occupation values(5,'Doctor');
insert into Occupation values(6,'Software-Developer');


--Mother Tongue
if exists (select 1 from sys.objects o where UPPER(o.name)='MOTHERTONGUE' and o.type='U')
begin
	drop table MOTHERTONGUE;
end

Create table MotherTongue(TongueID int not null,
                          TongueName varchar(80));
                          
ALTER TABLE MotherTongue
ADD CONSTRAINT pk_MotherTongue_TongueID PRIMARY KEY(TongueID)
GO

-- insertion of mother tongue

insert into MotherTongue values(1,'Arunadeli');
insert into MotherTongue values(2,'Hindi');
insert into MotherTongue values(3,'Tamil');
insert into MotherTongue values(4,'English');
insert into MotherTongue values(5,'French');
insert into MotherTongue values(6,'Telugu');
insert into MotherTongue values(7,'Sanskrit'); 
insert into MotherTongue values(8,'English');



-- *********************************** ENDS MASTER TABLE ************************************************************


--MatrimonyDetails Table
if exists (select 1 from sys.objects o where UPPER(o.name)='MATRIMONYDETAILS' and o.type='U')
begin
	drop table MATRIMONYDETAILS;
end









-- *********************************** ENDS MASTER TABLE ************************************************************


--MatrimonyDetails Table
if exists (select 1 from sys.objects o where UPPER(o.name)='MATRIMONYDETAILS' and o.type='U')
begin
	drop table MATRIMONYDETAILS;
end

Create table MatrimonyDetails(MatrimonyID int not null,
						 ProfileFor char(1),
                         Name varchar(80),
                         DOB date,
                         Gender char(1),
                         MobileNo varchar(15),
                         CountryID int,
                         StateID int,
                         CityID int,
                         ReligionID int,
                         CasteID int,
                         SubCasteID int,
                         SameCommunity char(1),
                         GothraID int,
                         Email varchar(256),
                         MaritalStatus char(1),
                         NoOfChild varchar(2),
                         LivingWith char(1),
                         LoginPwd varchar(25),
                         DescriptionInfo varchar(2000),
                         ActiveInd char(1),
                         CreatedDate date,
                         UpdatedDate date);

ALTER TABLE MatrimonyDetails
ADD CONSTRAINT pk_MatrimonyDetails_MatriID PRIMARY KEY(MatrimonyID)
GO
ALTER TABLE MatrimonyDetails
ADD CONSTRAINT fk_MatrimonyDetails_MatriID FOREIGN KEY(CountryID)REFERENCES Country(CountryID)
GO
ALTER TABLE MatrimonyDetails
ADD CONSTRAINT fk_MatrimonyDetails_StateID FOREIGN KEY(StateID)REFERENCES StateDetails(StateID)
GO
ALTER TABLE MatrimonyDetails
ADD CONSTRAINT fk_MatrimonyDetails_CityID FOREIGN KEY(CityID)REFERENCES City(CityID)
GO
ALTER TABLE MatrimonyDetails
ADD CONSTRAINT fk_MatrimonyDetails_ReligionID FOREIGN KEY(ReligionID)REFERENCES Religion(ReligionID)
GO
ALTER TABLE MatrimonyDetails
ADD CONSTRAINT fk_MatrimonyDetails_CasteID FOREIGN KEY(CasteID)REFERENCES Caste(CasteID)
GO
ALTER TABLE MatrimonyDetails
ADD CONSTRAINT fk_MatrimonyDetails_SubCasteID FOREIGN KEY(SubCasteID)REFERENCES SubCaste(SubCasteID)
GO
ALTER TABLE MatrimonyDetails
ADD CONSTRAINT fk_MatrimonyDetails_GothraID FOREIGN KEY(GothraID)REFERENCES Gothra(GothraID)
GO

IF EXISTS (SELECT name FROM sys.indexes
            WHERE name = N'IX_MatrimonyDetails_ActiveInd') 
    DROP INDEX IX_MatrimonyDetails_ActiveInd ON MatrimonyDetails; 
GO

CREATE NONCLUSTERED INDEX IX_MatrimonyDetails_ActiveInd 
    ON MatrimonyDetails(ActiveInd); 
GO



--AstrologicalInfo	
if exists (select 1 from sys.objects o where UPPER(o.name)='ASTROLOGICALINFO' and o.type='U')
begin
	drop table AstrologicalInfo;
end

Create table AstrologicalInfo(MatrimonyID int not null,
                              Dosham varchar(80),
                              StarID int,
                              RaasiID int);
                              
ALTER TABLE AstrologicalInfo
ADD CONSTRAINT pk_AstrologicalInfo_MatriID PRIMARY KEY(MatrimonyID)
GO
ALTER TABLE AstrologicalInfo
ADD CONSTRAINT fk_AstrologicalInfo_MatriID FOREIGN KEY(MatrimonyID)REFERENCES MatrimonyDetails(MatrimonyID)
GO
ALTER TABLE AstrologicalInfo
ADD CONSTRAINT fk_AstrologicalInfo_StarID FOREIGN KEY(StarID)REFERENCES StarDetails(StarID)
GO                              
ALTER TABLE AstrologicalInfo
ADD CONSTRAINT fk_AstrologicalInfo_RaasiID FOREIGN KEY(RaasiID)REFERENCES Raasi(RaasiID)
GO
                 
--Education Details
if exists (select 1 from sys.objects o where UPPER(o.name)='EDUDETAILS' and o.type='U')
begin
	drop table EDUDETAILS;
end

Create table EduDetails(MatrimonyID int not null,
                        EducationID int,
                        OccupID int,
                        EmployedIn varchar(80),
                        IncomeType varchar(80),
                        CurrID int,
                        Income int);

ALTER TABLE EduDetails
ADD CONSTRAINT pk_EduDetails_MatriID PRIMARY KEY(MatrimonyID)
GO
ALTER TABLE EduDetails
ADD CONSTRAINT fk_EduDetails_MatriID FOREIGN KEY(MatrimonyID)REFERENCES MatrimonyDetails(MatrimonyID)
GO
ALTER TABLE EduDetails
ADD CONSTRAINT fk_EduDetails_EduID FOREIGN KEY(EducationID)REFERENCES HighEducation(EducationID)
GO
ALTER TABLE EduDetails
ADD CONSTRAINT fk_EduDetails_CurrID FOREIGN KEY(CurrID)REFERENCES Currency(CurrID)
GO

--Family
if exists (select 1 from sys.objects o where UPPER(o.name)='FAMILY' and o.type='U')
begin
	drop table FAMILY;
end

Create table Family(MatrimonyID int not null,
                    FamilyStatus varchar(80),
                    FamilyType varchar(80),
                    FamilyValues varchar(80)); 
                    
ALTER TABLE Family
ADD CONSTRAINT pk_Family_MatriID PRIMARY KEY(MatrimonyID)
GO
ALTER TABLE Family
ADD CONSTRAINT fk_Family_MatriID FOREIGN KEY(MatrimonyID)REFERENCES MatrimonyDetails(MatrimonyID)
GO


--Habit 
if exists (select 1 from sys.objects o where UPPER(o.name)='HABIT' and o.type='U')
begin
	drop table HABIT;
end

Create table Habit(MatrimonyID int not null,
                   Food nvarchar(80),
                   Smoking nvarchar(80),
                   Drinking nvarchar(80));
                   
ALTER TABLE Habit
ADD CONSTRAINT pk_Habit_MatriID PRIMARY KEY(MatrimonyID)
GO
ALTER TABLE Habit
ADD CONSTRAINT fk_Habit_MatriID FOREIGN KEY(MatrimonyID)REFERENCES MatrimonyDetails(MatrimonyID)
GO
                         
--Physical Attribute
if exists (select 1 from sys.objects o where UPPER(o.name)='PHYSICALATTR' and o.type='U')
begin
	drop table PHYSICALATTR;
end
Create table PhysicalAttr(MatrimonyID int not null,
							HeightAttr int,
							WeightAttr int,
							BodyType varchar(80),
							Complexion varchar(80),
							PhysicalStatus varchar(80));
                      
ALTER TABLE PhysicalAttr
ADD CONSTRAINT pk_PhysicalAttr_MatriID PRIMARY KEY(MatrimonyID)
GO
ALTER TABLE PhysicalAttr
ADD CONSTRAINT fk_PhysicalAttr_MatriID FOREIGN KEY(MatrimonyID)REFERENCES MatrimonyDetails(MatrimonyID)
GO
                   

                   
                        
                      
                                                              
                       

                                                                                         
                       

                                                                                            
                                          