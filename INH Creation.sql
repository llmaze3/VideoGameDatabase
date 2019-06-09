Use group05_database;

Drop table if exists Equips;
Drop table if exists Equipment;
Drop table if exists Characters;
Drop table if exists wIDProfiles;
Drop table if exists Classes;
Drop table if exists Races;

create table wIDProfiles
(
wID varchar(32) PRIMARY KEY,
charaName varchar(32) NOT NULL,
e_mail varchar(32) NOT NULL,
passwords varchar(32) NOT NULL,
phone_num varchar(32),
ccn varchar(32) NOT NULL,
ccard_provider varchar(32) NOT NULL,
crc_num varchar(32) NOT NULL,
billing_address varchar(50) NOT NULL,
cc_exp varchar(32) NOT NULL
);

insert into widprofiles values ('W1','Cristobal Reyes','lucharan@hotmail.com','roarroar','','1111-1111-1111-1111', 'Visa', 'Debit',"100 Shirt St. San Francisco, CA 12345",'3/21');
insert into widprofiles value ('W2', 'Julia Chang', 'treehugger@gmail.com', 'sp1r1ts', '555-123-4567', '1111-1111-1111-1112', 'Visa', 'Debit', "100 Tie Dr. Los Angeles, CA 12345", '5/21');
insert into widprofiles value ('W3', 'Joshua McCloud', 'fitsits@gmail.com', 'M3rcenary' ,'', '1111-1111-1111-1113', 'Discover', 'Debit', "123 Spirit Ct. Kurain, CA 24680", '2/21');
insert into widprofiles value ('W4','Olivia Colomar','medianoche@aol.com','tac0s','','1111-1111-1111-1114', 'Master','Credit',"421 Key St. Burbank, CA 24689",'8/21');
insert into widprofiles value ('W5','Kelsy Thomas' , 'kelthom@icloud.com', 'PnkTail','','1111-1111-1111-1115', 'Visa', 'Credit', "3 Rosewood St. New Bern, NC 28560",'10/21');

create table Classes
(
class_id varchar(32) NOT NULL PRIMARY KEY,
class_name varchar(32) NOT NULL,
hp float NOT NULL,
mp float NOT NULL, 
phys_attack float NOT NULL,
phys_def float NOT NULL,
elem_atk float NOT NULL,
elem_def float NOT NULL,
accuracy float NOT NULL,
speed float NOT NULL,
luck float NOT NULL,
evasion float NOT NULL
);

insert into Classes values ('CL1', 'Healer',1,1.18,1,1,1.05,1.05,1,1,1,1);
insert into Classes values ('CL2', 'Mage' ,1,1.13,1,1,1.1,1.05,1,1,1,1);
insert into Classes values ('CL3', 'Merchant',1.08,1.08,1.03,1.03,1.03,1.03,1,1,1,1);
insert into Classes values ('CL4' , 'Warrior' ,1.18,1,1.05,1.05,1,1,1,1,1,1);
insert into Classes values ('CL5', 'Dancer' ,1,1,1,1,1.08,1,1,1.1,1,1.1);
insert into Classes values ('CL6', 'Alchemist',1.2,1,1.015,1.015,1.015,1,1,1,1.015,1);
insert into Classes values ('CL7', 'Thief',1,1,1.02,1,1,1,1.05,1.08,1.05,1.08);
insert into Classes values ('CL8' ,'Hunter',1,1,1.08,1,1,1,1.06,1.05,1.06,1.05);

create table Races
(
race_id varchar(32) NOT NULL PRIMARY KEY,
race_name varchar(32) NOT NULL,
hp float NOT NULL,
mp float NOT NULL,
phys_attack float NOT NULL,
phys_def float NOT NULL,
elem_atk float NOT NULL,
elem_def float NOT NULL,
accuracy float NOT NULL,
speed float NOT NULL,
luck float NOT NULL,
evasion float NOT NULL
);

insert into Races values('R1', 'Human',1,1,1,1,1,1,1,1,1,1);
insert into Races values ('R2', 'Elf',1,1.18,0.85,0.85,1.05,1.05,1,1,1,1);
insert into Races values('R3', 'Ogre',1.18,1,1.05,1.05,0.85,0.85,1,1,1,1);
insert into Races values ('R4', 'Mink',0.9,1.1,1.015,1,1,1,1,1.2,1,1.2);

create table Characters
(
chara_id varchar(32) PRIMARY KEY,
wID varchar(32) NOT NULL,
chara_name varchar(32) NOT NULL,
chara_level int NOT NULL,
exper int NOT NULL,
current_hp int NOT NULL,
max_hp int NOT NULL,
current_mp int NOT NULL,
max_mp int NOT NULL,
phys_attack int NOT NULL,
phys_def int NOT NULL,
elem_atk int NOT NULL,
elem_def int NOT NULL,
accuracy int,
speed int,
luck int,
evasion int,
class_id varchar(32),
race_id varchar(32),
FOREIGN KEY (class_id) REFERENCES Classes(class_id),
FOREIGN KEY (race_id) REFERENCES Races(race_id),
FOREIGN KEY (wID) REFERENCES wIDProfiles(wID) 
);

insert into Characters values ('C1','W3','Ophelia',82,82000,4865,7800,150,200,200,30,400,700,100,100,100,100,'CL1','R4');
insert into Characters values ('C2','W4','Cyrus',64,64000,1298,4000,200,250,150,100,600,400,200,200,200,200,'CL2','R1');
insert into Characters values ('C3','W1','Tressa',95,95000,6858,9000,134,175,500,600,300,300,200,300,300,200,'CL3','R2');
insert into Characters values ('C4','W3','Olberic',48,48000,6560,7000,87,100,138,700,180,150,300,300,300,300,'CL4','R3');
insert into Characters values ('C5','W2','Primrose',48,48000,4198,5000,93,175,168,150,300,350,300,300,300,300,'CL5','R1');
insert into Characters values ('C6','W1','Alfyn',98,98000,9998,9999,56,140,168,150,350,300,300,300,300,300,'CL6','R2');
insert into Characters values ('C7','W4','Therion',86,86000,7000,7200,88,150,234,80,250,250,300,300,300,300,'CL7','R3');
insert into Characters values ('C8','W2','Haanit',63,63000,5432,6100,105,120,846,118,200,200,300,300,300,300,'CL8','R3');
insert into Characters values ('C9' ,'W3','Xaiver' ,64,64000,7777,5101,55,145,356,45,180,150,200,100,200,200,'CL2','R1');
insert into Characters values ('C10' ,'W4','Theo',50,50000,2458,7834,112,210,911,125,251,330,300,300,100,100,'CL6','R4');
insert into Characters values ('C11','W1','Chief' ,42,42000,5015,4890,210,175,150,200,324,479,100,100,300,200,'CL1','R2');

create table Equipment
(
equipment_id varchar(32) PRIMARY KEY,
equip_name varchar(32),
equip_type varchar(32),
phys_atk_boost int,
phys_def_boost int,
elem_atk_boost int,
elem_def_boost int,
acc_boost int,
speed_boost int,
luck_boost int,
eva_boost int
);
insert into Equipment values('EQ5', 'Silver Sword','Sword',52,0,0,0,0,0,0,0);
insert into Equipment values('EQ19','Platinum Sword','Sword',166,0,0,0,0,0,0,0);
insert into Equipment values('EQ32','Harald Sword','Sword',380,0,120,0,0,0,0,0);
insert into Equipment values('EQ41','Sunlands Spear','Polearm',72,0,0,0,0,0,0,0);
insert into Equipment values('EQ44','Magus Glaive','Polearm',96,0,162,0,0,0,0,0);
insert into Equipment values('EQ61','Master Spear','Polearm',355,0,0,0,0,0,0,0);
insert into Equipment values('EQ65','Stinging Dagger','Dagger',26,0,0,0,0,0,0,0);
insert into Equipment values('EQ76','Soul Knife','Dagger',98,0,188,0,0,0,0,0);
insert into Equipment values('EQ90','Viper Dagger','Dagger',332,0,0,0,0,0,0,0);
insert into Equipment values('EQ101','Soul Hatchet','Axe',78,0,147,0,0,0,0,0);
insert into Equipment values('EQ109','Viking Axe','Axe',113,0,0,0,0,0,0,0);
insert into Equipment values('EQ124','Memorial Axe','Axe',400,0,0,0,0,0,0,0);
insert into Equipment values('EQ134','Tomahawk Bow','Bow',96,0,84,0,0,0,0,0);
insert into Equipment values('EQ147','Hyperion Bow','Bow',219,0,261,0,0,0,0,0);
insert into Equipment values ('EQ153','Transcendent Bow of Shadows','Bow',306,0,245,0,0,0,0,0);
insert into Equipment values('EQ162','Larurel Staff','Stave',24,0,52,0,0,0,0,0);
insert into Equipment values('EQ173','Sapphire Rod','Stave',82,0,158,0,0,0,0,0);
insert into Equipment values('EQ180','Yggdrasil Staff','Stave',121,0,289,0,0,0,0,0);
insert into Equipment values('EQ189','Elusive Shield','Shield',0,21,0,24,0,0,0,56);
insert into Equipment values('EQ198','Knight Shield','Shield',0,92,0,95,0,0,0,-95);
insert into Equipment values('EQ202','Gargantuan Shield','Shield',0,121,0,0,0,0,0,-101);
insert into Equipment values('EQ225','Starlight Hat','Headgear',0,61,0,79,0,0,0,0);
insert into Equipment values('EQ241','Imperial Helm','Headgear',0,123,0,0,0,0,0,0);
insert into Equipment values('EQ268','Silver Armor','Armor',0,86,0,0,0,0,0,0);
insert into Equipment values('EQ294','Dragonscale Armor','Armor',0,235,0,0,0,0,108,0);

create table Equips
(
equips_id varchar(32) PRIMARY KEY,
chara_id varchar(32),
equipment_id varchar(32),
FOREIGN KEY (chara_id) REFERENCES Characters (chara_id),
FOREIGN KEY (equipment_id) REFERENCES Equipment (equipment_id)
);

insert into Equips values('EQS1','C1','EQ32');
insert into Equips values('EQS2','C2','EQ173');
insert into Equips values('EQS3','C2','EQ225');
insert into Equips values('EQS4','C2','EQ268');
insert into Equips values('EQS5','C3','EQ90');
insert into Equips values('EQS6','C3','EQ225');
insert into Equips values('EQS7','C4','EQ44');
insert into Equips values('EQS8','C4','EQ241');
insert into Equips values('EQS9','C5','EQ41');
insert into Equips values('EQS10','C5','EQ268');
insert into Equips values('EQS11','C6','EQ65');
insert into Equips values('EQS12','C7','EQ90');
insert into Equips values('EQS13','C7','EQ225');
insert into Equips values('EQS14','C8','EQ147');
insert into Equips values('EQS15','C8','EQ241');
insert into Equips values('EQS16','C9','EQ173');
insert into Equips values('EQS17','C10','EQ101');
insert into Equips values('EQS18','C10','EQ268');
insert into Equips values('EQS19','C11','EQ162');
insert into Equips values('EQS20','C11','EQ32');
insert into Equips values('EQS21','C11','EQ241');
insert into Equips values('EQS22','C11','EQ44');

select * from widprofiles order by MONTH(cc_exp) DESC, YEAR(cc_exp) DESC;
select * 
from characters c, widprofiles w 
order by MONTH(cc_exp) DESC, YEAR(cc_exp) DESC;

