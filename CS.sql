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
                   

                   
                        
                      
                                                              
                       

                                                                                         
                       

                                                                                            
                                             