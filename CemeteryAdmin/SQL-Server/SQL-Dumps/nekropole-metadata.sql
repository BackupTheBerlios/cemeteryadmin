-- EMS MS SQL Manager 1.2.5.1
-- ---------------------------------------
-- Host     : LAPTOP2
-- Database : nekropole


--
-- Definition for user t.sebesta : 
--

EXEC sp_revokedbaccess 't.sebesta'
GO

EXEC sp_grantdbaccess '', 't.sebesta'
GO

--
-- Structure for table tab_Adress : 
--

DROP TABLE [tab_Adress]
GO

CREATE TABLE [tab_Adress] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [nvaStreet] nvarchar(50) NOT NULL,
  [nvaTown] nvarchar(50) NOT NULL,
  [nvaRegion] nvarchar(50) NOT NULL,
  [nvaLandLevel] nvarchar(50) NOT NULL,
  [intAdressLevel] tinyint NOT NULL,
  [intTabelDestination] tinyint NOT NULL,
  [datActivatedBegin] datetime,
  [datActivatedEnd] datetime NOT NULL,
  CONSTRAINT [PK_tabAdressBasic] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [tabAdressBasic_Index_Land] ON [dbo].[tab_Adress]
  ([nvaLandLevel])
ON [PRIMARY]
GO

CREATE INDEX [tabAdressBasic_Index_Town] ON [dbo].[tab_Adress]
  ([nvaTown])
ON [PRIMARY]
GO

--
-- Structure for table tab_Connections : 
--

DROP TABLE [tab_Connections]
GO

CREATE TABLE [tab_Connections] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [nvaConectionState] nvarchar(4),
  [nvaConnectionPrefix] nvarchar(10),
  [nvaConnectionMain] nvarchar(100),
  [nvaConnectionLevel] nvarchar(50),
  [datActivatedBegin] datetime,
  [datActivatedEnd] datetime NOT NULL,
  CONSTRAINT [PK_tabTelConections] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [tabTelConection_Index_PrefixNumber] ON [dbo].[tab_Connections]
  ([nvaConnectionPrefix], [nvaConnectionMain])
ON [PRIMARY]
GO

--
-- Structure for table tab_Person : 
--

DROP TABLE [tab_Person]
GO

CREATE TABLE [tab_Person] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [navRecordActor] nvarchar(50) NOT NULL,
  [datRecordTime] datetime,
  [navRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [navNameTitleLevel] nvarchar(50),
  [navNameattributLevel] nvarchar(20),
  [nvaFirstName] nvarchar(50),
  [nvaLastName] nvarchar(50) NOT NULL,
  [nvaNamePostfixLevel] nvarchar(50),
  [datBirthdate] datetime,
  [datDeathdate] datetime,
  CONSTRAINT [PK_tabUserAttributes] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

CREATE INDEX [tabUserAttributes_Index_Lastname] ON [dbo].[tab_Person]
  ([nvaLastName])
ON [PRIMARY]
GO

--
-- Structure for table tab_Right : 
--

DROP TABLE [tab_Right]
GO

CREATE TABLE [tab_Right] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [nvaRigthName] nvarchar(50),
  [nvaRightDeskripion] nvarchar(255),
  [bitNoRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitReadPightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitNewRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitChangeRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitDeleteRightAktivated] bit DEFAULT ((-1)) NOT NULL
)
ON [PRIMARY]
GO

--
-- Structure for table tab_Roll : 
--

DROP TABLE [tab_Roll]
GO

CREATE TABLE [tab_Roll] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [navRollName] nvarchar(50) NOT NULL,
  CONSTRAINT [PK_tab_UserRolls] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

--
-- Structure for table tab_User : 
--

DROP TABLE [tab_User]
GO

CREATE TABLE [tab_User] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier,
  [nvaRecordActor] nvarchar(50) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [nvaShortName] nvarchar(50),
  [nvaPassword] nvarchar(50) NOT NULL,
  [bitActivated] bit DEFAULT ((-1)) NOT NULL,
  CONSTRAINT [PK_tabUserBasic] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [tabUserBasic_Index_Shortname] ON [dbo].[tab_User]
  ([nvaShortName])
ON [PRIMARY]
GO

--
-- Structure for table tablink_PersonAdress : 
--

DROP TABLE [tablink_PersonAdress]
GO

CREATE TABLE [tablink_PersonAdress] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [intPersonRecordLID] int NOT NULL,
  [intAdressRecordLID] int NOT NULL,
  [datActivatedBegin] datetime NOT NULL,
  [datAcitvatedEnd] datetime NOT NULL,
  CONSTRAINT [PK_tabUserAdressLinks] PRIMARY KEY ([intRecordLID]),
  CONSTRAINT [FK_tablink_PersonAdress_tabPerson] FOREIGN KEY ([intPersonRecordLID]) REFERENCES [dbo].[tab_Person] ([intRecordLID]),
  CONSTRAINT [FK_tabUserAdressLinks_tabAdressBasic] FOREIGN KEY ([intAdressRecordLID]) REFERENCES [dbo].[tab_Adress] ([intRecordLID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablink_RollRight : 
--

DROP TABLE [tablink_RollRight]
GO

CREATE TABLE [tablink_RollRight] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [intRightLID] int,
  [bitNoRightAktivated] bit NOT NULL,
  [bitReadRightAktivated] bit NOT NULL,
  [bitNewRightAktivated] bit NOT NULL,
  [bitChangeRightAktivated] bit NOT NULL,
  [bitDeleteRightAktivated] bit NOT NULL,
  [datAktivatedBegin] datetime NOT NULL,
  [datAktivatedEnd] datetime,
  CONSTRAINT [PK_tablink_RollRight] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablink_UserPerson : 
--

DROP TABLE [tablink_UserPerson]
GO

CREATE TABLE [tablink_UserPerson] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [intUserBasicRecordLID] int,
  [intPersonRecordLID] int,
  CONSTRAINT [PK_tabUserBasicAttributesLinks] PRIMARY KEY ([intRecordLID]),
  CONSTRAINT [FK_tabUserBasicAttributesLinks_tabUserAttributes] FOREIGN KEY ([intPersonRecordLID]) REFERENCES [dbo].[tab_Person] ([intRecordLID]),
  CONSTRAINT [FK_tabUserBasicAttributesLinks_tabUserBasic] FOREIGN KEY ([intUserBasicRecordLID]) REFERENCES [dbo].[tab_User] ([intRecordLID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablink_UserRight : 
--

DROP TABLE [tablink_UserRight]
GO

CREATE TABLE [tablink_UserRight] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [intRightLID] int,
  [bitNoRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitReadRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitNewRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitChangeRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [bitDeleteRightAktivated] bit DEFAULT ((-1)) NOT NULL,
  [datAktivatedBegin] datetime NOT NULL,
  [datAktivatedEnd] datetime,
  CONSTRAINT [PK_tablink_UserRight] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablink_UserRolls : 
--

DROP TABLE [tablink_UserRolls]
GO

CREATE TABLE [tablink_UserRolls] (
  [intRecordLID] int IDENTITY(1, 1) NOT NULL,
  [uniRecordGID] uniqueidentifier NOT NULL,
  [nvaRecordActor] nvarchar(100) NOT NULL,
  [datRecordTime] datetime,
  [nvaRecordChangeActor] nvarchar(50),
  [datRecordChangeTime] datetime,
  [intUserLID] int NOT NULL,
  [intRollLID] int NOT NULL,
  CONSTRAINT [PK_tablink_UserRolls] PRIMARY KEY ([intRecordLID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablup_AdressLevel : 
--

DROP TABLE [tablup_AdressLevel]
GO

CREATE TABLE [tablup_AdressLevel] (
  [LID] int IDENTITY(1, 1) NOT NULL,
  [AdressLevel] nvarchar(50),
  CONSTRAINT [PK_tablup_AdressLevel] PRIMARY KEY ([LID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablup_ConnectionLevel : 
--

DROP TABLE [tablup_ConnectionLevel]
GO

CREATE TABLE [tablup_ConnectionLevel] (
  [LID] int IDENTITY(1, 1) NOT NULL,
  [ConnectionLevel] nvarchar(50),
  CONSTRAINT [PK_tablup_ConnectionLevel] PRIMARY KEY ([LID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablup_LandLevel : 
--

DROP TABLE [tablup_LandLevel]
GO

CREATE TABLE [tablup_LandLevel] (
  [LID] int IDENTITY(1, 1) NOT NULL,
  [Landname] nvarchar(50) NOT NULL,
  [LandShortname] nvarchar(10),
  CONSTRAINT [PK_tablup_Land] PRIMARY KEY ([LID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablup_NameAttributLevel : 
--

DROP TABLE [tablup_NameAttributLevel]
GO

CREATE TABLE [tablup_NameAttributLevel] (
  [ID] int IDENTITY(1, 1) NOT NULL,
  [AttributShort] nvarchar(20) NOT NULL,
  [AttributLong] nvarchar(50),
  CONSTRAINT [PK_tablup_NameAttributLevel] PRIMARY KEY ([ID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablup_NamePostfixLevel : 
--

DROP TABLE [tablup_NamePostfixLevel]
GO

CREATE TABLE [tablup_NamePostfixLevel] (
  [ID] int IDENTITY(1, 1) NOT NULL,
  [Postfix] nvarchar(10) NOT NULL,
  CONSTRAINT [PK_tablup_NamePostfixLevel] PRIMARY KEY ([ID])
)
ON [PRIMARY]
GO

--
-- Structure for table tablup_NameTitelLevel : 
--

DROP TABLE [tablup_NameTitelLevel]
GO

CREATE TABLE [tablup_NameTitelLevel] (
  [ID] int IDENTITY(1, 1) NOT NULL,
  [TitleShort] nvarchar(10) NOT NULL,
  [TitleLong] nvarchar(50),
  CONSTRAINT [PK_tablup_NameTitelLevel] PRIMARY KEY ([ID])
)
ON [PRIMARY]
GO

--
-- Data for table tab_User  (LIMIT 0,500)
--

INSERT INTO [tab_User] ([intRecordLID], [uniRecordGID], [nvaRecordActor], [datRecordTime], [nvaRecordChangeActor], [datRecordChangeTime], [nvaShortName], [nvaPassword], [bitActivated])
VALUES 
  (1, NULL, 'System', '01.01.2004 12:34:00', NULL, NULL, 'SysAdmin', 'nachtlicht', True)
GO

INSERT INTO [tab_User] ([intRecordLID], [uniRecordGID], [nvaRecordActor], [datRecordTime], [nvaRecordChangeActor], [datRecordChangeTime], [nvaShortName], [nvaPassword], [bitActivated])
VALUES 
  (2, NULL, 'nekropole', '04.01.2004', NULL, NULL, 'nekropole', 'nachtlicht', True)
GO

INSERT INTO [tab_User] ([intRecordLID], [uniRecordGID], [nvaRecordActor], [datRecordTime], [nvaRecordChangeActor], [datRecordChangeTime], [nvaShortName], [nvaPassword], [bitActivated])
VALUES 
  (3, NULL, 't.sebesta', '04.01.2004', NULL, NULL, 't.sebesta', '15c?7', True)
GO

--
-- Data for table tablup_AdressLevel  (LIMIT 0,500)
--

INSERT INTO [tablup_AdressLevel] ([LID], [AdressLevel])
VALUES 
  (1, 'Hauptwohnsitz')
GO

INSERT INTO [tablup_AdressLevel] ([LID], [AdressLevel])
VALUES 
  (2, 'Nebenwohnsitz')
GO

INSERT INTO [tablup_AdressLevel] ([LID], [AdressLevel])
VALUES 
  (3, 'Urlaubsanschrift')
GO

--
-- Data for table tablup_ConnectionLevel  (LIMIT 0,500)
--

INSERT INTO [tablup_ConnectionLevel] ([LID], [ConnectionLevel])
VALUES 
  (1, 'Telefon')
GO

INSERT INTO [tablup_ConnectionLevel] ([LID], [ConnectionLevel])
VALUES 
  (2, 'Fernschreiber')
GO

INSERT INTO [tablup_ConnectionLevel] ([LID], [ConnectionLevel])
VALUES 
  (3, 'EMail')
GO

INSERT INTO [tablup_ConnectionLevel] ([LID], [ConnectionLevel])
VALUES 
  (4, 'Homepage')
GO

INSERT INTO [tablup_ConnectionLevel] ([LID], [ConnectionLevel])
VALUES 
  (5, 'Handy')
GO

INSERT INTO [tablup_ConnectionLevel] ([LID], [ConnectionLevel])
VALUES 
  (6, 'Fax')
GO

--
-- Data for table tablup_LandLevel  (LIMIT 0,500)
--

INSERT INTO [tablup_LandLevel] ([LID], [Landname], [LandShortname])
VALUES 
  (1, 'Österreich', 'A')
GO

INSERT INTO [tablup_LandLevel] ([LID], [Landname], [LandShortname])
VALUES 
  (2, 'Deutschland', 'D')
GO

INSERT INTO [tablup_LandLevel] ([LID], [Landname], [LandShortname])
VALUES 
  (3, 'United States of Amerika', 'USA')
GO

INSERT INTO [tablup_LandLevel] ([LID], [Landname], [LandShortname])
VALUES 
  (4, 'England', 'GB')
GO

INSERT INTO [tablup_LandLevel] ([LID], [Landname], [LandShortname])
VALUES 
  (5, 'Ungarn', 'H')
GO

--
-- Data for table tablup_NameAttributLevel  (LIMIT 0,500)
--

INSERT INTO [tablup_NameAttributLevel] ([ID], [AttributShort], [AttributLong])
VALUES 
  (1, 'Freiherr', NULL)
GO

INSERT INTO [tablup_NameAttributLevel] ([ID], [AttributShort], [AttributLong])
VALUES 
  (2, 'Baron', NULL)
GO

INSERT INTO [tablup_NameAttributLevel] ([ID], [AttributShort], [AttributLong])
VALUES 
  (3, 'Generaldirektor', NULL)
GO

INSERT INTO [tablup_NameAttributLevel] ([ID], [AttributShort], [AttributLong])
VALUES 
  (4, 'Graf', NULL)
GO

--
-- Data for table tablup_NamePostfixLevel  (LIMIT 0,500)
--

INSERT INTO [tablup_NamePostfixLevel] ([ID], [Postfix])
VALUES 
  (1, 'sen.')
GO

INSERT INTO [tablup_NamePostfixLevel] ([ID], [Postfix])
VALUES 
  (2, 'jun.')
GO

--
-- Data for table tablup_NameTitelLevel  (LIMIT 0,500)
--

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (1, 'Dr.', 'Doktor')
GO

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (2, 'DDr.', NULL)
GO

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (3, 'HR', 'Hofrat')
GO

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (4, 'Prof.', 'Professor')
GO

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (5, 'wHR', 'wirlicher Hofrat')
GO

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (6, 'Ing.', 'Ingenieur')
GO

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (7, 'Dipl.-Ing.', 'Diplomingenieur')
GO

INSERT INTO [tablup_NameTitelLevel] ([ID], [TitleShort], [TitleLong])
VALUES 
  (8, 'Mag.', 'Magister')
GO

