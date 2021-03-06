ALTER TABLE [dbo].[tablink_PersonAdress] DROP CONSTRAINT FK_tabUserAdressLinks_tabAdressBasic
GO

ALTER TABLE [dbo].[tablink_PersonAdress] DROP CONSTRAINT FK_tablink_PersonAdress_tabPerson
GO

ALTER TABLE [dbo].[tablink_UserPerson] DROP CONSTRAINT FK_tabUserBasicAttributesLinks_tabUserAttributes
GO

ALTER TABLE [dbo].[tablink_UserPerson] DROP CONSTRAINT FK_tabUserBasicAttributesLinks_tabUserBasic
GO

/****** Objekt:  Tabelle [dbo].[tablink_PersonAdress]    Skriptdatum: 07.01.2004 19:30:37 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablink_PersonAdress]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablink_PersonAdress]
GO

/****** Objekt:  Tabelle [dbo].[tablink_UserPerson]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablink_UserPerson]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablink_UserPerson]
GO

/****** Objekt:  Tabelle [dbo].[tab_Adress]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tab_Adress]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tab_Adress]
GO

/****** Objekt:  Tabelle [dbo].[tab_Connections]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tab_Connections]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tab_Connections]
GO

/****** Objekt:  Tabelle [dbo].[tab_Person]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tab_Person]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tab_Person]
GO

/****** Objekt:  Tabelle [dbo].[tab_Right]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tab_Right]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tab_Right]
GO

/****** Objekt:  Tabelle [dbo].[tab_Roll]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tab_Roll]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tab_Roll]
GO

/****** Objekt:  Tabelle [dbo].[tab_User]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tab_User]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tab_User]
GO

/****** Objekt:  Tabelle [dbo].[tablink_RollRight]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablink_RollRight]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablink_RollRight]
GO

/****** Objekt:  Tabelle [dbo].[tablink_UserRight]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablink_UserRight]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablink_UserRight]
GO

/****** Objekt:  Tabelle [dbo].[tablink_UserRolls]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablink_UserRolls]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablink_UserRolls]
GO

/****** Objekt:  Tabelle [dbo].[tablup_AdressLevel]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablup_AdressLevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablup_AdressLevel]
GO

/****** Objekt:  Tabelle [dbo].[tablup_ConnectionLevel]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablup_ConnectionLevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablup_ConnectionLevel]
GO

/****** Objekt:  Tabelle [dbo].[tablup_LandLevel]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablup_LandLevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablup_LandLevel]
GO

/****** Objekt:  Tabelle [dbo].[tablup_NameAttributLevel]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablup_NameAttributLevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablup_NameAttributLevel]
GO

/****** Objekt:  Tabelle [dbo].[tablup_NamePostfixLevel]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablup_NamePostfixLevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablup_NamePostfixLevel]
GO

/****** Objekt:  Tabelle [dbo].[tablup_NameTitelLevel]    Skriptdatum: 07.01.2004 19:30:38 ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[tablup_NameTitelLevel]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tablup_NameTitelLevel]
GO

/****** Objekt:  Tabelle [dbo].[tab_Adress]    Skriptdatum: 07.01.2004 19:30:49 ******/
CREATE TABLE [dbo].[tab_Adress] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[nvaStreet] [nvarchar] (50) NOT NULL ,
	[nvaTown] [nvarchar] (50) NOT NULL ,
	[nvaRegion] [nvarchar] (50) NOT NULL ,
	[nvaLandLevel] [nvarchar] (50) NOT NULL ,
	[intAdressLevel] [tinyint] NOT NULL ,
	[intTabelDestination] [tinyint] NOT NULL ,
	[datActivatedBegin] [datetime] NULL ,
	[datActivatedEnd] [datetime] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tab_Connections]    Skriptdatum: 07.01.2004 19:30:51 ******/
CREATE TABLE [dbo].[tab_Connections] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[nvaConectionState] [nvarchar] (4) NULL ,
	[nvaConnectionPrefix] [nvarchar] (10) NULL ,
	[nvaConnectionMain] [nvarchar] (100) NULL ,
	[nvaConnectionLevel] [nvarchar] (50) NULL ,
	[datActivatedBegin] [datetime] NULL ,
	[datActivatedEnd] [datetime] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tab_Person]    Skriptdatum: 07.01.2004 19:30:51 ******/
CREATE TABLE [dbo].[tab_Person] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[navRecordActor] [nvarchar] (50) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[navRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[navNameTitleLevel] [nvarchar] (50) NULL ,
	[navNameattributLevel] [nvarchar] (20) NULL ,
	[nvaFirstName] [nvarchar] (50) NULL ,
	[nvaLastName] [nvarchar] (50) NOT NULL ,
	[nvaNamePostfixLevel] [nvarchar] (50) NULL ,
	[datBirthdate] [datetime] NULL ,
	[datDeathdate] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tab_Right]    Skriptdatum: 07.01.2004 19:30:51 ******/
CREATE TABLE [dbo].[tab_Right] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[nvaRigthName] [nvarchar] (50) NULL ,
	[nvaRightDeskripion] [nvarchar] (255) NULL ,
	[bitNoRightAktivated] [bit] NOT NULL ,
	[bitReadPightAktivated] [bit] NOT NULL ,
	[bitNewRightAktivated] [bit] NOT NULL ,
	[bitChangeRightAktivated] [bit] NOT NULL ,
	[bitDeleteRightAktivated] [bit] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tab_Roll]    Skriptdatum: 07.01.2004 19:30:52 ******/
CREATE TABLE [dbo].[tab_Roll] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[navRollName] [nvarchar] (50) NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tab_User]    Skriptdatum: 07.01.2004 19:30:52 ******/
CREATE TABLE [dbo].[tab_User] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NULL ,
	[nvaRecordActor] [nvarchar] (50) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[nvaShortName] [nvarchar] (50) NULL ,
	[nvaPassword] [nvarchar] (50) NOT NULL ,
	[bitActivated] [bit] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablink_RollRight]    Skriptdatum: 07.01.2004 19:30:53 ******/
CREATE TABLE [dbo].[tablink_RollRight] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[intRightLID] [int] NULL ,
	[bitNoRightAktivated] [bit] NOT NULL ,
	[bitReadRightAktivated] [bit] NOT NULL ,
	[bitNewRightAktivated] [bit] NOT NULL ,
	[bitChangeRightAktivated] [bit] NOT NULL ,
	[bitDeleteRightAktivated] [bit] NOT NULL ,
	[datAktivatedBegin] [datetime] NOT NULL ,
	[datAktivatedEnd] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablink_UserRight]    Skriptdatum: 07.01.2004 19:30:53 ******/
CREATE TABLE [dbo].[tablink_UserRight] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[intRightLID] [int] NULL ,
	[bitNoRightAktivated] [bit] NOT NULL ,
	[bitReadRightAktivated] [bit] NOT NULL ,
	[bitNewRightAktivated] [bit] NOT NULL ,
	[bitChangeRightAktivated] [bit] NOT NULL ,
	[bitDeleteRightAktivated] [bit] NOT NULL ,
	[datAktivatedBegin] [datetime] NOT NULL ,
	[datAktivatedEnd] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablink_UserRolls]    Skriptdatum: 07.01.2004 19:30:53 ******/
CREATE TABLE [dbo].[tablink_UserRolls] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[intUserLID] [int] NOT NULL ,
	[intRollLID] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablup_AdressLevel]    Skriptdatum: 07.01.2004 19:30:53 ******/
CREATE TABLE [dbo].[tablup_AdressLevel] (
	[LID] [int] IDENTITY (1, 1) NOT NULL ,
	[AdressLevel] [nvarchar] (50) NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablup_ConnectionLevel]    Skriptdatum: 07.01.2004 19:30:53 ******/
CREATE TABLE [dbo].[tablup_ConnectionLevel] (
	[LID] [int] IDENTITY (1, 1) NOT NULL ,
	[ConnectionLevel] [nvarchar] (50) NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablup_LandLevel]    Skriptdatum: 07.01.2004 19:30:54 ******/
CREATE TABLE [dbo].[tablup_LandLevel] (
	[LID] [int] IDENTITY (1, 1) NOT NULL ,
	[Landname] [nvarchar] (50) NOT NULL ,
	[LandShortname] [nvarchar] (10) NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablup_NameAttributLevel]    Skriptdatum: 07.01.2004 19:30:54 ******/
CREATE TABLE [dbo].[tablup_NameAttributLevel] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[AttributShort] [nvarchar] (20) NOT NULL ,
	[AttributLong] [nvarchar] (50) NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablup_NamePostfixLevel]    Skriptdatum: 07.01.2004 19:30:54 ******/
CREATE TABLE [dbo].[tablup_NamePostfixLevel] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Postfix] [nvarchar] (10) NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablup_NameTitelLevel]    Skriptdatum: 07.01.2004 19:30:54 ******/
CREATE TABLE [dbo].[tablup_NameTitelLevel] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[TitleShort] [nvarchar] (10) NOT NULL ,
	[TitleLong] [nvarchar] (50) NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablink_PersonAdress]    Skriptdatum: 07.01.2004 19:30:54 ******/
CREATE TABLE [dbo].[tablink_PersonAdress] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[intPersonRecordLID] [int] NOT NULL ,
	[intAdressRecordLID] [int] NOT NULL ,
	[datActivatedBegin] [datetime] NOT NULL ,
	[datAcitvatedEnd] [datetime] NOT NULL 
) ON [PRIMARY]
GO

/****** Objekt:  Tabelle [dbo].[tablink_UserPerson]    Skriptdatum: 07.01.2004 19:30:55 ******/
CREATE TABLE [dbo].[tablink_UserPerson] (
	[intRecordLID] [int] IDENTITY (1, 1) NOT NULL ,
	[uniRecordGID] [uniqueidentifier] NOT NULL ,
	[nvaRecordActor] [nvarchar] (100) NOT NULL ,
	[datRecordTime] [datetime] NULL ,
	[nvaRecordChangeActor] [nvarchar] (50) NULL ,
	[datRecordChangeTime] [datetime] NULL ,
	[intUserBasicRecordLID] [int] NULL ,
	[intPersonRecordLID] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tab_Adress] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabAdressBasic] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tab_Connections] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabTelConections] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tab_Person] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabUserAttributes] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tab_Right] WITH NOCHECK ADD 
	CONSTRAINT [DF_tab_Right_bitNoRightAktivated] DEFAULT ((-1)) FOR [bitNoRightAktivated],
	CONSTRAINT [DF_tab_Right_bitReadPightAktivated] DEFAULT ((-1)) FOR [bitReadPightAktivated],
	CONSTRAINT [DF_tab_Right_bitNewRightAktivated] DEFAULT ((-1)) FOR [bitNewRightAktivated],
	CONSTRAINT [DF_tab_Right_bitChangeRightAktivated] DEFAULT ((-1)) FOR [bitChangeRightAktivated],
	CONSTRAINT [DF_tab_Right_bitDeleteRightAktivated] DEFAULT ((-1)) FOR [bitDeleteRightAktivated]
GO

ALTER TABLE [dbo].[tab_Roll] WITH NOCHECK ADD 
	CONSTRAINT [PK_tab_UserRolls] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tab_User] WITH NOCHECK ADD 
	CONSTRAINT [DF_tabUserBasic_bitActivated] DEFAULT ((-1)) FOR [bitActivated],
	CONSTRAINT [PK_tabUserBasic] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablink_RollRight] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablink_RollRight] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablink_UserRight] WITH NOCHECK ADD 
	CONSTRAINT [DF_tablink_UserRight_bitNoRightAktivated] DEFAULT ((-1)) FOR [bitNoRightAktivated],
	CONSTRAINT [DF_tablink_UserRight_bitReadRightAktivated] DEFAULT ((-1)) FOR [bitReadRightAktivated],
	CONSTRAINT [DF_tablink_UserRight_bitNewRightAktivated] DEFAULT ((-1)) FOR [bitNewRightAktivated],
	CONSTRAINT [DF_tablink_UserRight_bitChangeRightAktivated] DEFAULT ((-1)) FOR [bitChangeRightAktivated],
	CONSTRAINT [DF_tablink_UserRight_bitDeleteRightAktivated] DEFAULT ((-1)) FOR [bitDeleteRightAktivated],
	CONSTRAINT [PK_tablink_UserRight] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablink_UserRolls] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablink_UserRolls] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablup_AdressLevel] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablup_AdressLevel] PRIMARY KEY  NONCLUSTERED 
	(
		[LID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablup_ConnectionLevel] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablup_ConnectionLevel] PRIMARY KEY  NONCLUSTERED 
	(
		[LID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablup_LandLevel] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablup_Land] PRIMARY KEY  NONCLUSTERED 
	(
		[LID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablup_NameAttributLevel] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablup_NameAttributLevel] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablup_NamePostfixLevel] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablup_NamePostfixLevel] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablup_NameTitelLevel] WITH NOCHECK ADD 
	CONSTRAINT [PK_tablup_NameTitelLevel] PRIMARY KEY  NONCLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablink_PersonAdress] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabUserAdressLinks] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tablink_UserPerson] WITH NOCHECK ADD 
	CONSTRAINT [PK_tabUserBasicAttributesLinks] PRIMARY KEY  NONCLUSTERED 
	(
		[intRecordLID]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [tabAdressBasic_Index_Town] ON [dbo].[tab_Adress]([nvaTown]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [tabAdressBasic_Index_Land] ON [dbo].[tab_Adress]([nvaLandLevel]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [tabTelConection_Index_PrefixNumber] ON [dbo].[tab_Connections]([nvaConnectionPrefix], [nvaConnectionMain]) ON [PRIMARY]
GO

 CREATE  INDEX [tabUserAttributes_Index_Lastname] ON [dbo].[tab_Person]([nvaLastName]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [tabUserBasic_Index_Shortname] ON [dbo].[tab_User]([nvaShortName]) ON [PRIMARY]
GO

GRANT  REFERENCES ,  SELECT ,  INSERT ,  DELETE ,  UPDATE  ON [dbo].[tab_Adress]  TO [public]
GO

GRANT  REFERENCES ,  SELECT ,  INSERT ,  DELETE ,  UPDATE  ON [dbo].[tab_Person]  TO [public]
GO

GRANT  REFERENCES ,  SELECT ,  INSERT ,  DELETE ,  UPDATE  ON [dbo].[tab_User]  TO [public]
GO

GRANT  REFERENCES ,  SELECT ,  INSERT ,  DELETE ,  UPDATE  ON [dbo].[tablink_PersonAdress]  TO [public]
GO

GRANT  REFERENCES ,  SELECT ,  INSERT ,  DELETE ,  UPDATE  ON [dbo].[tablink_UserPerson]  TO [public]
GO

ALTER TABLE [dbo].[tablink_PersonAdress] ADD 
	CONSTRAINT [FK_tablink_PersonAdress_tabPerson] FOREIGN KEY 
	(
		[intPersonRecordLID]
	) REFERENCES [dbo].[tab_Person] (
		[intRecordLID]
	),
	CONSTRAINT [FK_tabUserAdressLinks_tabAdressBasic] FOREIGN KEY 
	(
		[intAdressRecordLID]
	) REFERENCES [dbo].[tab_Adress] (
		[intRecordLID]
	)
GO

ALTER TABLE [dbo].[tablink_UserPerson] ADD 
	CONSTRAINT [FK_tabUserBasicAttributesLinks_tabUserAttributes] FOREIGN KEY 
	(
		[intPersonRecordLID]
	) REFERENCES [dbo].[tab_Person] (
		[intRecordLID]
	),
	CONSTRAINT [FK_tabUserBasicAttributesLinks_tabUserBasic] FOREIGN KEY 
	(
		[intUserBasicRecordLID]
	) REFERENCES [dbo].[tab_User] (
		[intRecordLID]
	)
GO

