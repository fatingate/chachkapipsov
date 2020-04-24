
CREATE TABLE Buying ( 
 BuyingID int NOT NULL,
 BuyingDate date ,
 Amount int,
 Shelf_life date,
 PharmacistID int
)
;

CREATE TABLE City ( 
 countryID int,
 cityID int NOT NULL,
 Quality_of_Pharmacy varchar(50),
 cityName varchar(50)
)
;

CREATE TABLE Country ( 
 countryName varchar(50),
 countryID int NOT NULL
)
;

CREATE TABLE Customer ( 
 CustomerID int NOT NULL,
 CustomerName varchar(50),
 CustomerRecipe varchar(50)
)
;

CREATE TABLE Medicine ( 
 MedicineID int NOT NULL,
 MedicineName varchar(50),
 AmountinPack int,
 Indication varchar(50),
 Contra_ind varchar(50),
 ProducerID int,
 PharmacyID int
)
;

CREATE TABLE Payment ( 
 PaymentID int NOT NULL,
 Cost int,
 CustomerID int,
 BuyingID int
)
;

CREATE TABLE Pharmacist ( 
 PharmacistID int NOT NULL,
 PharmacistName varchar(50),
 PharmacistContacts int,
 BuyingID int
)
;

CREATE TABLE Pharmacy ( 
 PharmacyID int NOT NULL,
 PharmacyName varchar(50),
 PharmacyAddress varchar(50),
 PharmacistID int,
 PharmacyPhone varchar(11),
 cityID int
)
;

CREATE TABLE Producer ( 
 ProducerID int NOT NULL,
 ProducerName varchar(50)
)
;

CREATE TABLE TypeE ( 
 TypeID int NOT NULL,
 TypeName varchar(50),
 MedicineID int
)
;


ALTER TABLE Buying ADD CONSTRAINT PK_Buying 
 PRIMARY KEY (BuyingID)
;

ALTER TABLE City ADD CONSTRAINT PK_City 
 PRIMARY KEY (cityID)
;

ALTER TABLE Country ADD CONSTRAINT PK_Country 
 PRIMARY KEY (countryID)
;

ALTER TABLE Customer ADD CONSTRAINT PK_Customer 
 PRIMARY KEY (CustomerID)
;

ALTER TABLE Medicine ADD CONSTRAINT PK_Medicine 
 PRIMARY KEY (MedicineID)
;

ALTER TABLE Pharmacist ADD CONSTRAINT PK_Pharmacist 
 PRIMARY KEY (PharmacistID)
;

ALTER TABLE Pharmacy ADD CONSTRAINT PK_Pharmacy 
 PRIMARY KEY (PharmacyID)
;

ALTER TABLE Producer ADD CONSTRAINT PK_Producer 
 PRIMARY KEY (ProducerID)
;
ALTER TABLE Payment ADD CONSTRAINT PK_Payment 
 PRIMARY KEY (PaymentID)
;
ALTER TABLE TypeE ADD CONSTRAINT PK_TypeE 
 PRIMARY KEY (TypeID)
;




ALTER TABLE Buying ADD CONSTRAINT FK_Buying_Pharmacist 
 FOREIGN KEY (PharmacistID) REFERENCES Pharmacist (PharmacistID)
;

ALTER TABLE City ADD CONSTRAINT FK_City_Country 
 FOREIGN KEY (countryID) REFERENCES Country (countryID)
;

ALTER TABLE Medicine ADD CONSTRAINT FK_Medicine_Pharmacy 
 FOREIGN KEY (PharmacyID) REFERENCES Pharmacy (PharmacyID)
;

ALTER TABLE Medicine ADD CONSTRAINT FK_Medicine_Producer 
 FOREIGN KEY (ProducerID) REFERENCES Producer (ProducerID)
;

ALTER TABLE Payment ADD CONSTRAINT FK_Payment_Buying 
 FOREIGN KEY (BuyingID) REFERENCES Buying (BuyingID)
;

ALTER TABLE Payment ADD CONSTRAINT FK_Payment_Customer 
 FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
;

ALTER TABLE Pharmacy ADD CONSTRAINT FK_Pharmacy_City 
 FOREIGN KEY (cityID) REFERENCES City (cityID)
;

ALTER TABLE Pharmacy ADD CONSTRAINT FK_Pharmacy_Pharmacist 
 FOREIGN KEY (PharmacistID) REFERENCES Pharmacist (PharmacistID)
;

ALTER TABLE TypeE ADD CONSTRAINT FK_Type_Medicine 
 FOREIGN KEY (MedicineID) REFERENCES Medicine (MedicineID)
;





INSERT INTO Country (countryID,countryName)
VALUES (1,'KAZAKHSTAN');
INSERT INTO Country (countryID,countryName)
VALUES (2,'RUSSIA');
INSERT INTO Country (countryID,countryName)
VALUES (3,'USA');


INSERT INTO City(cityID,cityName,countryID,Quality_of_Pharmacy)
values (4,'Astana',1,'qualitative');
INSERT INTO City(cityID,cityName,countryID,Quality_of_Pharmacy)
values (5,'Almaty',1,'standard');
INSERT INTO City(cityID,cityName,countryID,Quality_of_Pharmacy)
values (6,'Moscow',2,'qualitative');
INSERT INTO City(cityID,cityName,countryID,Quality_of_Pharmacy)
values (7,'Omsk',2,'standard');
INSERT INTO City(cityID,cityName,countryID,Quality_of_Pharmacy)
values (8,'Washington',3,'standard');
INSERT INTO City(cityID,cityName,countryID,Quality_of_Pharmacy)
values (9,'Los-Angelos',3,'qualitative');


insert into Pharmacy(PharmacyID,PharmacyName,PharmacyAddress,PharmacistID,PharmacyPhone,cityID)
values (11,'Aidana','Satbayeva 19',20,'87074525442',5);
insert into Pharmacy(PharmacyID,PharmacyName,PharmacyAddress,PharmacistID,PharmacyPhone,cityID)
values (12,'Aierke','Nazarbayeva 24',21,'87074525443',4);
insert into Pharmacy(PharmacyID,PharmacyName,PharmacyAddress,PharmacistID,PharmacyPhone,cityID)
values (13,'Shedevr','Pushkina 845',22,'87454525442',6);
insert into Pharmacy(PharmacyID,PharmacyName,PharmacyAddress,PharmacistID,PharmacyPhone,cityID)
values (14,'Narodnaya','Dostayevski 564',23,'87544525442',7);
insert into Pharmacy(PharmacyID,PharmacyName,PharmacyAddress,PharmacistID,PharmacyPhone,cityID)
values (15,'Welcome','Ray 9584',24,'81554852442',8);
insert into Pharmacy(PharmacyID,PharmacyName,PharmacyAddress,PharmacistID,PharmacyPhone,cityID)
values (16,'King','Krasa 4578',25,'87077586442',9);


insert into Pharmacist(PharmacistID,PharmacistName,PharmacistContacts,BuyingID)
values (20,'A.Konarova',4584785,30);
insert into Pharmacist(PharmacistID,PharmacistName,PharmacistContacts,BuyingID)
values (21,'D.Zhailaubayev',7884785,31);
insert into Pharmacist(PharmacistID,PharmacistName,PharmacistContacts,BuyingID)
values (22,'G.Aspandiyar',47844785,32);
insert into Pharmacist(PharmacistID,PharmacistName,PharmacistContacts,BuyingID)
values (23,'A.Krasovskii',48694785,33);
insert into Pharmacist(PharmacistID,PharmacistName,PharmacistContacts,BuyingID)
values (24,'A.John',4588985,34);
insert into Pharmacist(PharmacistID,PharmacistName,PharmacistContacts,BuyingID)
values (25,'A.Sam',45889585,35);




insert into Buying(BuyingID,Amount,Shelf_life,PharmacistID) values(30,5,to_date('2019-09-30','YYYY-MM-DD' ),20);
insert into Buying(BuyingID,Amount,Shelf_life,PharmacistID) values(31,24,to_date('2019-11-25','YYYY-MM-DD' ),21);
insert into Buying(BuyingID,Amount,Shelf_life,PharmacistID) values(32,32,to_date('2019-08-14','YYYY-MM-DD' ),22);
insert into Buying(BuyingID,Amount,Shelf_life,PharmacistID) values(33,56,to_date('2019-05-30','YYYY-MM-DD' ),23);
insert into Buying(BuyingID,Amount,Shelf_life,PharmacistID) values(34,4,to_date('2019-12-30','YYYY-MM-DD' ),24);
insert into Buying(BuyingID,Amount,Shelf_life,PharmacistID) values(35,1,to_date('2019-09-15','YYYY-MM-DD' ),25);


insert into Payment(PaymentID,Cost,CustomerID,BuyingID) values (40,4200,50,30);
insert into Payment(PaymentID,Cost,CustomerID,BuyingID) values (41,125000,51,31);
insert into Payment(PaymentID,Cost,CustomerID,BuyingID) values (42,45210,52,32);
insert into Payment(PaymentID,Cost,CustomerID,BuyingID) values (43,78500,53,33);
insert into Payment(PaymentID,Cost,CustomerID,BuyingID) values (44,17500,54,34);
insert into Payment(PaymentID,Cost,CustomerID,BuyingID) values (45,6900,55,35);


insert into Customer(CustomerID,CustomerName,CustomerRecipe) values(50,'D.Aldabergenova','Aspirin,Tempalgin');
insert into Customer(CustomerID,CustomerName,CustomerRecipe) values(51,'G.Bolatbek','Renni,Tempalgin');
insert into Customer(CustomerID,CustomerName,CustomerRecipe) values(52,'N.Kadylov','dopamine,oxytocine,vozopresine,adrenaline');
insert into Customer(CustomerID,CustomerName,CustomerRecipe) values(53,'A.Dzhaiskii','dfhjaghv,adcbhsayg,shdbvyv');
insert into Customer(CustomerID,CustomerName,CustomerRecipe) values(54,'A.Sample','Aspdfgdvn,Temdvfdgalgin');
insert into Customer(CustomerID,CustomerName,CustomerRecipe) values(55,'A.Adern','Adsvdsfuhn,fvbd,dvhsfgb,dcjbhfn');










errors:
1)insert into Pharmacy(PharmacyID,PharmacyName,PharmacyAddress,PharmacistID,PharmacyPhone,cityID)
values (11,'Aidana','Satbayeva 19',20,87074525442,5)
Error report -
ORA-02291: нарушено ограничение целостности (SYS.FK_PHARMACY_PHARMACIST) - исходный ключ не найден


2)UPDATE Buying SET BuyingDate = GETDATE() 
 WHERE BuyingDate IS NULL
Error at Command Line : 156 Column : 32
Error report -
SQL Error: ORA-00904: "GETDATE": недопустимый идентификатор
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

3)ALTER TABLE Buying ADD CONSTRAINT
    buying_date DEFAULT GETDATE() FOR BuyingDate
Error report -
ORA-00904: : недопустимый идентификатор
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

4)insert into Buying(BuyingID,Amount,Shelf_life,PharmacistID) values(30,5,to_date(2019-09-30,yyyy-mm-dd),20)
Error at Command Line : 163 Column : 80
Error report -
SQL Error: ORA-00932: несовместимые типы данных: ожидается DATE, получено NUMBER
00932. 00000 -  "inconsistent datatypes: expected %s got %s"
*Cause:    
*Action:
