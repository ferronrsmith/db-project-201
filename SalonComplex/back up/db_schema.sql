USE [SalonDb]
GO
/****** Object:  ForeignKey [FK_UserValidate_UserLogin]    Script Date: 05/18/2012 17:14:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserValidate_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserValidate]'))
ALTER TABLE [dbo].[UserValidate] DROP CONSTRAINT [FK_UserValidate_UserLogin]
GO
/****** Object:  ForeignKey [FK_client_UserLogin]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[client]'))
ALTER TABLE [dbo].[client] DROP CONSTRAINT [FK_client_UserLogin]
GO
/****** Object:  ForeignKey [FK_service_service_name]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_service_service_name]') AND parent_object_id = OBJECT_ID(N'[dbo].[service]'))
ALTER TABLE [dbo].[service] DROP CONSTRAINT [FK_service_service_name]
GO
/****** Object:  ForeignKey [FK_schedule_employee]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_schedule_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[schedule]'))
ALTER TABLE [dbo].[schedule] DROP CONSTRAINT [FK_schedule_employee]
GO
/****** Object:  ForeignKey [FK_appointment_client]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_client]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment]'))
ALTER TABLE [dbo].[appointment] DROP CONSTRAINT [FK_appointment_client]
GO
/****** Object:  ForeignKey [FK_skills_employee]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] DROP CONSTRAINT [FK_skills_employee]
GO
/****** Object:  ForeignKey [FK_skills_service]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] DROP CONSTRAINT [FK_skills_service]
GO
/****** Object:  ForeignKey [FK_appointment_services_appointment]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] DROP CONSTRAINT [FK_appointment_services_appointment]
GO
/****** Object:  ForeignKey [FK_appointment_services_service]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] DROP CONSTRAINT [FK_appointment_services_service]
GO
/****** Object:  ForeignKey [FK_appointment_emp_appointment]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] DROP CONSTRAINT [FK_appointment_emp_appointment]
GO
/****** Object:  ForeignKey [FK_appointment_emp_schedule]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] DROP CONSTRAINT [FK_appointment_emp_schedule]
GO
/****** Object:  Table [dbo].[appointment_emp]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_emp]') AND type in (N'U'))
DROP TABLE [dbo].[appointment_emp]
GO
/****** Object:  Table [dbo].[appointment_services]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_services]') AND type in (N'U'))
DROP TABLE [dbo].[appointment_services]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteEmployee]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_DeleteEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertAppointment]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertAppointment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertAppointment]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertClient]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertClient]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertClient]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertUserLogin]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertUserLogin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertUserLogin]
GO
/****** Object:  Table [dbo].[skills]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[skills]') AND type in (N'U'))
DROP TABLE [dbo].[skills]
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment]') AND type in (N'U'))
DROP TABLE [dbo].[appointment]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckEmployee]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_CheckEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckLoginPassWord]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckLoginPassWord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_CheckLoginPassWord]
GO
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmail]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_ConfirmEmail]
GO
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmailShowAllFields]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmailShowAllFields]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_ConfirmEmailShowAllFields]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schedule]') AND type in (N'U'))
DROP TABLE [dbo].[schedule]
GO
/****** Object:  Table [dbo].[service]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service]') AND type in (N'U'))
DROP TABLE [dbo].[service]
GO
/****** Object:  Table [dbo].[client]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client]') AND type in (N'U'))
DROP TABLE [dbo].[client]
GO
/****** Object:  StoredProcedure [dbo].[SP_ChangePassWord]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ChangePassWord]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_ChangePassWord]
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectEmployee]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SelectEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_SelectEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateEmployee]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_UpdateEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_UpdateEmployee]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertComments]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertComments]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertComments]
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertEmployee]    Script Date: 05/18/2012 17:14:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertEmployee]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_InsertEmployee]
GO
/****** Object:  Table [dbo].[UserValidate]    Script Date: 05/18/2012 17:14:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserValidate]') AND type in (N'U'))
DROP TABLE [dbo].[UserValidate]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 05/18/2012 17:14:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLogin]') AND type in (N'U'))
DROP TABLE [dbo].[UserLogin]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 05/18/2012 17:14:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 05/18/2012 17:14:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type in (N'U'))
DROP TABLE [dbo].[employee]
GO
/****** Object:  Table [dbo].[service_name]    Script Date: 05/18/2012 17:14:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service_name]') AND type in (N'U'))
DROP TABLE [dbo].[service_name]
GO
/****** Object:  Table [dbo].[service_name]    Script Date: 05/18/2012 17:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service_name]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[service_name](
	[service_name_id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [varchar](10) NOT NULL,
 CONSTRAINT [PK_service_name] PRIMARY KEY CLUSTERED 
(
	[service_name_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[service_name] ON
INSERT [dbo].[service_name] ([service_name_id], [service_name]) VALUES (1, N'men')
INSERT [dbo].[service_name] ([service_name_id], [service_name]) VALUES (2, N'women')
INSERT [dbo].[service_name] ([service_name_id], [service_name]) VALUES (3, N'spa')
INSERT [dbo].[service_name] ([service_name_id], [service_name]) VALUES (4, N'children')
SET IDENTITY_INSERT [dbo].[service_name] OFF
/****** Object:  Table [dbo].[employee]    Script Date: 05/18/2012 17:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[employee](
	[employee_id] [int] IDENTITY(1000,1) NOT NULL,
	[employee_type] [varchar](20) NOT NULL,
	[employee_fname] [varchar](20) NOT NULL,
	[employee_gender] [varchar](1) NOT NULL,
	[employee_street] [varchar](20) NOT NULL,
	[employee_city] [varchar](20) NOT NULL,
	[employee_parish] [varchar](20) NOT NULL,
	[employee_phone] [varchar](13) NOT NULL,
	[employee_yoe] [float] NOT NULL,
	[employee_email] [varchar](30) NOT NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1000, N'Salon Services', N'Marcus Lam', N'M', N'622  Rocky  Way', N'Columbus', N'Hanover', N'1480521187', 7.2325443184154778, N'twhwu.npzt@ce.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1001, N'Salon Services', N'Neal Bentley', N'M', N'978  White  Way', N'Louisville', N'St. Catherine', N'074641-9461', 4.6799636141769421, N'nh442@rgusm.oo.org')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1002, N'Salon Services', N'Noah Keith', N'F', N'883   Way', N'Dallas', N'St. Thomas', N'995943-1540', 1.7843785843739184, N'usf3@ph.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1003, N'Spa Services', N'Esther Howard', N'M', N'815   Street', N'Cincinnati', N'Hanover', N'6704796378', 0.93509233600231456, N'dhjek505@iitxnyzhc.bg.org')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1004, N'Salon Services', N'Rickey Martin', N'M', N'84   Drive', N'Detroit', N'St Ann', N'6812696330', 4.2490667124507331, N'qndsu@miikkncpw.br.com')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1005, N'Spa Services', N'Susan Douglas', N'F', N'417   Parkway', N'Fort Worth', N'St. James', N'100-138-2973', 9.0683746286986278, N'up.ndofc@nn.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1006, N'Salon Services', N'Lea Willis', N'M', N'777   Street', N'Boston', N'Hanover', N'675245-9828', 5.4077229953406949, N'ekgxf1@tz.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1007, N'Spa Services', N'Darrick Landry', N'F', N'733  Green  Street', N'St. Paul', N'Manchester', N'039623-2003', 0.797955082169713, N'bfphp041@hglgwz.gr.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1008, N'Spa Services', N'Rebekah Dillon', N'F', N'290  Rocky  Parkway', N'Chicago', N'Clarendon', N'295883-7467', 3.9678947646021352, N'ud.jbttd@-q.com')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1009, N'Spa Services', N'Brandy Cameron', N'M', N'401  White  Parkway', N'Indianapolis', N'St Ann', N'319909-3310', 2.2933316707114368, N'ymeaq.qzht@ussof.ud.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1010, N'Salon Services', N'Joseph Casey', N'F', N'75  Rocky  Freeway', N'Houston', N'St. Thomas', N'131-0272971', 2.4605356866775714, N'tbzoez443@crfyf.qy.com')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1011, N'Spa Services', N'Jerome Daniel', N'M', N'631  White  Avenue', N'Norfolk', N'St. Mary', N'2661031059', 9.709895816496525, N'azk.vitb@ky.com')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1012, N'Salon Services', N'Todd Kaufman', N'M', N'496  Rocky  Blvd.', N'Madison', N'St Ann', N'572324-0441', 8.8168887183148819, N'kqrcz.txqwak@id.org')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1013, N'Spa Services', N'Floyd Vega', N'F', N'39  Green  Street', N'Jackson', N'Kingston', N'927-6620017', 3.3853264029069461, N'zptdx53@rsopvvz.qc.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1014, N'Spa Services', N'Ross Woods', N'F', N'856   Avenue', N'St. Louis', N'Manchester', N'0774609134', 4.3787868015369344, N'nfnvx31@rtqnts.qn.net')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1015, N'Salon Services', N'Ruth Boyer', N'M', N'815  Rocky  St.', N'Anchorage', N'Portlan', N'6628208572', 5.7352318362031287, N'zelv.ji@bkgxkoou.le.com')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1016, N'Spa Services', N'Jill Newton', N'M', N'43  White  Road', N'Boston', N'Hanover', N'307-368-3212', 4.636818466073283, N'wvfifd23@jjckngwt.qi.com')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1017, N'Salon Services', N'Pamela Gentry', N'M', N'63  Rocky  Road', N'Toledo', N'Clarendon', N'537474-8622', 3.5189621539409095, N'jdzw130@on.org')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1018, N'Salon Services', N'Eddie Jackson', N'M', N'761   Road', N'Sacramento', N'St. Mary', N'987-843-0819', 4.9412234103964749, N'jsqwfr224@qrfmvtwz.pa.org')
INSERT [dbo].[employee] ([employee_id], [employee_type], [employee_fname], [employee_gender], [employee_street], [employee_city], [employee_parish], [employee_phone], [employee_yoe], [employee_email]) VALUES (1019, N'Salon Services', N'Vanessa Jensen', N'F', N'45  White  Way', N'Stockton', N'Clarendon', N'617-5775647', 9.0122875799482163, N'rhu@rj.net')
SET IDENTITY_INSERT [dbo].[employee] OFF
/****** Object:  Table [dbo].[comments]    Script Date: 05/18/2012 17:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[comments](
	[contact_id] [int] IDENTITY(2000,1) NOT NULL,
	[contact_name] [varchar](60) NOT NULL,
	[contact_email] [varchar](30) NULL,
	[contact_phone] [varchar](15) NULL,
	[contact_regs] [varchar](30) NOT NULL,
	[contact_comments] [varchar](600) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 05/18/2012 17:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserLogin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserLogin](
	[LoginID] [int] IDENTITY(1000,1) NOT NULL,
	[LoginName] [varchar](50) NOT NULL,
	[LoginPassword] [varchar](32) NOT NULL,
	[LoginEmail] [varchar](200) NOT NULL,
	[LoginEnable] [smallint] NOT NULL,
	[LoginDenied] [smallint] NOT NULL,
	[LoginDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserLogin] ON
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1000, N'Kathy Fuller', N'J12053YEFH3K6BVQ57', N'vthl4@ewfr-m.org', 0, 0, CAST(0x0000A04B0014B3A7 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1001, N'Bart Krueger', N'MDVA4D88OV9J23', N'gytpb.acwyrqumc@occnxz.net', 0, 0, CAST(0x0000A04E007895A0 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1002, N'Shari Brewer', N'9RFXY4P6FYJHVOKC9VFW', N'mkvwur5@iubakx.net', 0, 0, CAST(0x0000A050004EF1FE AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1003, N'Leon Mueller', N'OQYMWUAI5X0GT23A78FX7GCKWDJ4JZ', N'vdkkdz.arsb@mduefa.org', 1, 1, CAST(0x0000A0510138BE6B AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1004, N'Erick Edwards', N'M6AK0HB29E', N'xfvajnm6@xjcasxb.kaxoim.org', 1, 0, CAST(0x0000A04F011FE6E0 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1005, N'Kristi Byrd', N'91I11MG22MZ', N'hfrq2@dqfkzz.whycau.com', 1, 1, CAST(0x0000A04C017A055E AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1006, N'Amber Ibarra', N'', N'amuvigr.oumypfhdw@hvjlcu.-ncwmt.com', 1, 0, CAST(0x0000A051001112C1 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1007, N'Julian Carr', N'7ED', N'uvkxi0@mdgcq-.org', 1, 0, CAST(0x0000A05200E86593 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1008, N'Kristina Cardenas', N'IB6Z59DAI', N'xbecisn.icshso@mszccn.net', 1, 1, CAST(0x0000A05100475314 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1009, N'Annette Gardner', N'3TV66IJ7A2UBXOHX', N'fpqlxw1@krlrju.net', 0, 1, CAST(0x0000A051005DF4B6 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1010, N'Cecil Cole', N'M6EDM3LJY8O3R4QJ4C86FTHC03BV6DI', N'xdyuph.gfeuniodd@tlyacw.org', 1, 1, CAST(0x0000A049003CFC2D AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1011, N'Jocelyn Andersen', N'88R344HP9M7AV3JX', N'tabpii@vbefswlz.ubbinn.net', 1, 0, CAST(0x0000A04501094C52 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1012, N'Everett Rocha', N'SSB8QLTP2CISQCKQ6VJDME0VIXTL6', N'yzcvxitx684@evhuxnt.ocullq.com', 1, 1, CAST(0x0000A047005211DE AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1013, N'Tami Heath', N'XKDQEL69IMXE2RYXJ', N'bpgeyi@hnqvco.com', 0, 1, CAST(0x0000A04600BE5A14 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1014, N'Clifton Reyes', N'NJO80JHDSFPTS7IKFYFZYZJ', N'yngtw.xnrcwhgms@femwjj.org', 1, 0, CAST(0x0000A0440021F420 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1015, N'Bridgett Newman', N'CW', N'ffktaf@fhts-a.net', 0, 1, CAST(0x0000A048003D657B AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1016, N'Barry Reed', N'8C9XLDIYNSPJT90SRJ', N'vvdab.wjeebdwr@ymtrwvmn.lfmmek.org', 1, 1, CAST(0x0000A049000D1CF7 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1017, N'Pete Lane', N'UQVHBZIJB', N'ogieem886@jqijao.org', 0, 0, CAST(0x0000A04C01130940 AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1018, N'John Ellison', N'0RV3380II3F', N'yaqnrnbk.taoi@duaioayww.aoccdw.org', 0, 0, CAST(0x0000A04700AFEEEB AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1019, N'Bryce Figueroa', N'8VRQELQX6SDN2PDVYX3U7AN1', N'pfrrmy0@qkafgg.org', 0, 1, CAST(0x0000A04400027D4D AS DateTime))
INSERT [dbo].[UserLogin] ([LoginID], [LoginName], [LoginPassword], [LoginEmail], [LoginEnable], [LoginDenied], [LoginDate]) VALUES (1026, N'test', N'9DA7EFFAE3839F79B8AA444F1301221F', N'test@gmail.com', 1, 0, CAST(0x0000A05300E2AAA2 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
/****** Object:  Table [dbo].[UserValidate]    Script Date: 05/18/2012 17:14:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserValidate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserValidate](
	[LoginID] [int] NOT NULL,
	[codeValidate] [varchar](10) NOT NULL,
	[dateValidate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserValidate] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1000, N'75641', CAST(0x0000A036013D5BBD AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1001, N'48461', CAST(0x0000A0290005E2C3 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1002, N'39171', CAST(0x0000A04D01579E96 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1003, N'37027', CAST(0x0000A03400D33CDA AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1004, N'59405', CAST(0x0000A0270003FDE6 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1005, N'16301', CAST(0x0000A04F01752AF5 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1006, N'13458', CAST(0x0000A0450057F7CB AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1007, N'98844', CAST(0x0000A04F00E50836 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1008, N'08851', CAST(0x0000A03E00C9A149 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1009, N'65376', CAST(0x0000A04201481607 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1010, N'04755', CAST(0x0000A0260167E32F AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1011, N'81002', CAST(0x0000A027006EED0A AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1012, N'02685', CAST(0x0000A03C0137BA88 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1013, N'43774', CAST(0x0000A04A0035C52C AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1014, N'71481', CAST(0x0000A03800705363 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1015, N'24114', CAST(0x0000A02E0026F49F AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1016, N'19617', CAST(0x0000A02600C05619 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1017, N'56590', CAST(0x0000A02A005AF771 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1018, N'61849', CAST(0x0000A04E00F63B2B AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1019, N'72338', CAST(0x0000A02901346A03 AS DateTime))
INSERT [dbo].[UserValidate] ([LoginID], [codeValidate], [dateValidate]) VALUES (1026, N'1TBf2eSVUi', CAST(0x0000A053005B8776 AS DateTime))
/****** Object:  StoredProcedure [dbo].[SP_InsertEmployee]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertEmployee] 
	-- Add the parameters for the stored procedure here
	@strEmpType varchar (20),
	@strEmpFname varchar (20),
	@strEmpGender varchar (1),
	@strEmpAddr1 varchar (20),
	@strEmpAddr2 varchar  (20),
	@strEmpAddr3 varchar (20),
	@strEmpPhone_Num varchar (13),
	@strEmpYoe float,
	@strEmpEmail varchar (30)
	
	AS
   BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    

	
	IF NOT EXISTS (SELECT employee_id FROM employee WHERE employee_fname = @strEmpFname and 
				@strEmpEmail = employee_email)
	BEGIN
		INSERT INTO employee (employee_type, employee_fname, employee_gender,
		employee_street, employee_city,employee_parish, employee_phone, employee_yoe, employee_email) 
		values (@strEmpType, @strEmpFname,@strEmpGender,
		@strEmpAddr1, @strEmpAddr2, @strEmpAddr3, @strEmpPhone_Num, @strEmpYoe, @strEmpEmail)
		RETURN (1);
		END
	
	BEGIN
	RETURN (0);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertComments]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertComments]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertComments]
	-- Add the parameters for the stored procedure here
	@contactFullname varchar (60),
	@contactEmail varchar (30),
	@contactPhone_Num varchar (15),
	@contactRegs varchar (30),
	@contact_comments varchar  (600)
	
	
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


	
	
	BEGIN
		INSERT INTO comments ( contact_name, contact_email, contact_phone, contact_regs, contact_comments)
			 values (@contactFullname, @contactEmail,@contactPhone_Num, @contactRegs, @contact_comments)
		RETURN (1);
		END
	
	BEGIN
	RETURN (0);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateEmployee]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_UpdateEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_UpdateEmployee] 
	-- Add the parameters for the stored procedure here
	@empid int = 0,
	@strEmpEditType varchar (20),
	@strEmpEditFname varchar (20),
	@strEmpEditGender varchar (1),
	@strEmpEditAddr1 varchar (20),
	@strEmpEditAddr2 varchar  (20),
	@strEmpEditAddr3 varchar (20),
	@strEmpEditPhone_Num varchar (13),
	@strEmpEditYoe float,
	@strEmpEditEmail varchar (30)
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 
	
	IF exists (SELECT employee_id FROM [employee] WHERE [employee_fname] = @strEmpEditFname
	and employee_id<>@empid) 
			
			
			
	begin		
		--data already exists
		return(2);
	end
	else
	if not exists (SELECT employee_id FROM [employee] WHERE employee_id=@empid)
	
		BEGIN
			return(0);
		END 
	else
		BEGIN
			Update [employee] SET employee_type = @strEmpEditType, employee_fname = @strEmpEditFname, 
							employee_gender = @strEmpEditGender,  employee_street=@strEmpEditAddr1,
							employee_city=@strEmpEditAddr2,employee_parish=@strEmpEditAddr3,
							employee_phone=@strEmpEditPhone_Num,employee_yoe=@strEmpEditYoe, 
							employee_email = @strEmpEditEmail WHERE employee_id=@empid;
							--success true
							return(1);
		END
		
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectEmployee]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SelectEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_SelectEmployee]
	-- Add the parameters for the stored procedure here
	@EmpType varchar (20)
	
		
AS
BEGIN

-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT employee_id, employee_fname FROM [employee] 
				WHERE (employee_type=@EmpType)


END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ChangePassWord]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ChangePassWord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_ChangePassWord] 
	-- Add the parameters for the stored procedure here
@strLoginName varchar (50),
@strOldLoginPassWord varchar (30),
@strNewLoginPassWord varchar (30)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @dtDate DATETIME;
	DECLARE @strPassWordMD5 varchar (32)
	DECLARE @Ciphertext varbinary (32)
	DECLARE @iIdUser int = 0
	
	
	
	  --convert to MD5
    SET @Ciphertext = HashBytes (''MD5'', @strOldLoginPassWord)
    SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
    
    SET @iIdUser = (Select LoginID from [UserLogin] 
		Where LoginName = @strLoginName  and LoginPassword = @strPassWordMD5)
	
	--if not found set 0
	Set @iIdUser = (select ISNULL (@iIdUser, 0))
	
		if (@iIdUser>0)
	
		BEGIN
			
				--convert to MD5
			SET @Ciphertext = HashBytes (''MD5'', @strNewLoginPassWord)
			SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
		
		       --Take Date Time from server GETDATE() 2012-05-04 5:59
            SET @dtDate = GETDATE();
            
			
				UPDATE [UserLogin]
				
				SET [LoginPassword] = @strPassWordMD5
				
				      ,[LoginDate] = @dtDate
               WHERE [LoginID] = @iIdUser
				
				
				--Success
				RETURN (1)

	
	
	
			
	
		END
	ELSE
		BEGIN
	
				--Login PassWord Not Found
				return (2)
		end 
	
	--fail
	RETURN (0)
	
END
' 
END
GO
/****** Object:  Table [dbo].[client]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[client]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[client](
	[client_id] [int] IDENTITY(1000,1) NOT NULL,
	[client_LoginID] [int] NOT NULL,
	[client_fname] [varchar](20) NOT NULL,
	[client_lname] [varchar](20) NOT NULL,
	[client_gender] [varchar](1) NOT NULL,
	[client_street] [varchar](20) NOT NULL,
	[client_city] [varchar](20) NOT NULL,
	[client_parish] [varchar](20) NOT NULL,
	[client_profession] [varchar](20) NOT NULL,
	[client_phone] [varchar](13) NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[client] ON
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1000, 1014, N'Marc', N'Jarrod185', N'F', N'36  Rocky  Parkway', N'Raleigh', N'Kingston', N'Corporate Care', N'831-311-8635')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1001, 1016, N'Dylan0', N'Derrick1', N'M', N'26   St.', N'Bakersfield', N'Kingston', N'Cutomer', N'920-7638653')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1002, 1015, N'Jim628', N'Lance715', N'F', N'867   Freeway', N'Nashville', N'St Andrew', N'Service', N'022-109-6993')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1003, 1011, N'Shawn87', N'Tammy44', N'M', N'196  White  Street', N'Mesa', N'Westmoreland', N'Web', N'571-371-1950')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1004, 1004, N'Kelley', N'Julia', N'F', N'29  Green  Drive', N'Greensboro', N'Portlan', N'Corporate Care', N'657649-9275')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1005, 1011, N'Randall', N'Alice26', N'F', N'427   Street', N'Sacramento', N'Kingston', N'Technical', N'870151-2018')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1006, 1018, N'Marvin2', N'Chanda379', N'M', N'51   Road', N'Chicago', N'St Ann', N'Web', N'159-111-1884')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1007, 1008, N'Felipe9', N'Emma4', N'F', N'834   Drive', N'Norfolk', N'Clarendon', N'Service', N'006399-1474')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1008, 1019, N'Alice8', N'Jamal', N'F', N'23   Way', N'Jackson', N'St. Catherine', N'CorporateSales', N'530-335-6681')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1009, 1005, N'Roman7', N'Robert02', N'F', N'82   Drive', N'Oklahoma', N'Hanover', N'Accounting', N'376245-2641')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1010, 1005, N'Dina400', N'Evelyn', N'M', N'105   Freeway', N'Tacoma', N'Hanover', N'Sales', N'646-8767522')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1011, 1009, N'Neal37', N'Edward042', N'F', N'556  White  Parkway', N'Buffalo', N'Kingston', N'Corporate Care', N'707371-1793')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1012, 1012, N'Dawn78', N'Jo', N'M', N'524  Rocky  Street', N'Birmingham', N'Kingston', N'Web', N'783-296-5004')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1013, 1009, N'Gretchen8', N'Marlene5', N'F', N'794  Green  Blvd.', N'Lincoln', N'Portlan', N'Cutomer', N'713-195-9245')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1014, 1019, N'Terence4', N'Herman6', N'M', N'192  Green  St.', N'Toledo', N'St. James', N'Service', N'082-8188442')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1015, 1000, N'Damon1', N'Stacie', N'M', N'43  White  Street', N'Portland', N'St Andrew', N'Service', N'366948-7387')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1016, 1017, N'Julio7', N'Emma', N'F', N'89   Blvd.', N'Baton Rouge', N'Clarendon', N'Sales', N'940-770-5372')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1017, 1019, N'Lorena57', N'Dominick', N'M', N'960   Blvd.', N'Charlotte', N'St Andrew', N'InternationalSales', N'742-2665986')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1018, 1013, N'Clifton895', N'Clayton062', N'F', N'443  Green  Parkway', N'Arlington', N'Manchester', N'Cutomer', N'5203495652')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1019, 1006, N'Jessie', N'Claudia', N'M', N'339   Drive', N'Indianapolis', N'St Ann', N'BusinessSales', N'666-3153846')
INSERT [dbo].[client] ([client_id], [client_LoginID], [client_fname], [client_lname], [client_gender], [client_street], [client_city], [client_parish], [client_profession], [client_phone]) VALUES (1026, 1026, N'', N'', N'F', N'', N'', N'------Select Your Pa', N'----Select Your Prof', N'')
SET IDENTITY_INSERT [dbo].[client] OFF
/****** Object:  Table [dbo].[service]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[service](
	[service_id] [int] IDENTITY(1000,1) NOT NULL,
	[service_type] [varchar](1200) NOT NULL,
	[price] [money] NOT NULL,
	[service_name_id] [int] NULL,
 CONSTRAINT [PK_service] PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[service] ON
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1000, N'Shampoo, Blow-dry, Flat Iron/Curl', 3500.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1001, N'Press/Flat Iron or Re-curl', 4000.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1002, N'Conditioner', 1500.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1003, N'Cornrows', 1500.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1004, N'Invisible Braid', 2500.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1005, N'Micro Braid', 6000.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1006, N'Re-touch Relaxer', 2000.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1007, N'Virgin Relaxer', 3000.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1008, N'Colour Hair', 3000.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1009, N'Colour Hair Re-touch', 2000.0000, 2)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1010, N'Basic Cut', 350.0000, 1)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1011, N'Style', 450.0000, 1)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1012, N'Afro', 380.0000, 1)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1013, N'Afro Fade', 360.0000, 1)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1014, N'Beard Trim', 200.0000, 1)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1015, N'Basic Cut', 180.0000, 4)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1016, N'Style', 250.0000, 4)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1019, N'Afro', 300.0000, 4)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1020, N'Afro Fade', 280.0000, 4)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1021, N'Polishing', 300.0000, 3)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1022, N'Buffing', 500.0000, 3)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1023, N'Manicures', 600.0000, 3)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1024, N'Pedicures', 800.0000, 3)
INSERT [dbo].[service] ([service_id], [service_type], [price], [service_name_id]) VALUES (1025, N'Full Sets', 1300.0000, 3)
SET IDENTITY_INSERT [dbo].[service] OFF
/****** Object:  Table [dbo].[schedule]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[schedule](
	[schedule_id] [int] IDENTITY(3000,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[sch_date] [date] NOT NULL,
	[8:00 am] [bit] NOT NULL,
	[9:00 am] [bit] NOT NULL,
	[10:00 am] [bit] NOT NULL,
	[11:00 am] [bit] NOT NULL,
	[12:00 pm] [bit] NOT NULL,
	[1:00 pm] [bit] NOT NULL,
	[2:00 pm] [bit] NOT NULL,
	[3:00 pm] [bit] NOT NULL,
	[4:00 pm] [bit] NOT NULL,
	[5:00 pm] [bit] NOT NULL,
 CONSTRAINT [PK_schedule1] PRIMARY KEY CLUSTERED 
(
	[schedule_id] ASC,
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[schedule] ON
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3000, 1014, CAST(0xB9350B00 AS Date), 0, 1, 0, 1, 0, 1, 0, 1, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3001, 1016, CAST(0xB1350B00 AS Date), 0, 1, 0, 0, 1, 1, 0, 1, 1, 0)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3002, 1013, CAST(0xBC350B00 AS Date), 0, 0, 1, 1, 0, 1, 1, 0, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3003, 1009, CAST(0xB5350B00 AS Date), 1, 1, 0, 0, 0, 1, 1, 0, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3004, 1003, CAST(0xAE350B00 AS Date), 0, 1, 0, 1, 0, 1, 0, 1, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3005, 1010, CAST(0xB8350B00 AS Date), 0, 0, 0, 0, 1, 1, 1, 1, 0, 0)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3006, 1018, CAST(0xBB350B00 AS Date), 0, 1, 0, 0, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3007, 1006, CAST(0xBD350B00 AS Date), 0, 1, 0, 1, 0, 1, 0, 1, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3008, 1019, CAST(0xB4350B00 AS Date), 0, 1, 1, 1, 1, 0, 0, 0, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3009, 1004, CAST(0xBA350B00 AS Date), 1, 0, 1, 0, 0, 1, 0, 1, 1, 0)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3010, 1002, CAST(0xB2350B00 AS Date), 1, 1, 0, 0, 1, 1, 0, 0, 1, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3011, 1008, CAST(0xBC350B00 AS Date), 1, 0, 0, 1, 1, 0, 0, 1, 1, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3012, 1012, CAST(0xBC350B00 AS Date), 0, 0, 1, 0, 0, 1, 1, 0, 1, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3013, 1007, CAST(0xC1350B00 AS Date), 0, 1, 1, 0, 1, 0, 1, 0, 1, 0)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3014, 1017, CAST(0xAE350B00 AS Date), 1, 0, 0, 1, 1, 0, 1, 1, 0, 0)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3015, 1000, CAST(0xB4350B00 AS Date), 1, 1, 0, 1, 0, 0, 1, 0, 1, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3016, 1015, CAST(0xB5350B00 AS Date), 1, 0, 1, 0, 0, 1, 0, 1, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3017, 1011, CAST(0xB8350B00 AS Date), 0, 1, 0, 1, 1, 0, 1, 0, 0, 1)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3018, 1005, CAST(0xAF350B00 AS Date), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[schedule] ([schedule_id], [employee_id], [sch_date], [8:00 am], [9:00 am], [10:00 am], [11:00 am], [12:00 pm], [1:00 pm], [2:00 pm], [3:00 pm], [4:00 pm], [5:00 pm]) VALUES (3019, 1001, CAST(0xAF350B00 AS Date), 0, 1, 0, 1, 0, 0, 1, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[schedule] OFF
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmailShowAllFields]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmailShowAllFields]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		MarcoMack
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_ConfirmEmailShowAllFields] 
-- Add the parameters for the stored procedure here
	@iUserID int = 0,
    @strCodeValidateUser varchar (10),
    @strResult varchar (253) out, --return LoginName, LoginEmail,LoginEnable,LoginDenied
    @RecDateTime datetime out   --return LoginDate
    

AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF exists (Select LoginID from [UserValidate] where LoginID = @iUserID
    and codeValidate = @strCodeValidateUser )
    begin
    
    
    ---success
    
    update [UserLogin] set LoginEnable = 1 Where LoginID = @iUserID
    
    delete [UserValidate] where LoginID = @iUserID
    
    
    SET @strResult = (SELECT TOP 1 [LoginName] +  '','' +[LoginEmail]
												+  '',''  + CAST ([LoginEnable] AS VARCHAR(1))
												+  '',''  + CAST ([LoginDenied] AS VARCHAR (1))
												
												FROM [UserLogin] WHERE LoginID=@iUserID);
												
	SET @RecDateTime = (SELECT [LoginDate]
	FROM [Salon].[dbo].[UserLogin] where LoginID=@iUserID);

    
    --success
    return (1)
    end
		else 
           
       begin
    
   --fail 
   return(0)
    
    end
   
   
    
  return (0)  
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ConfirmEmail]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ConfirmEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================

CREATE Proc [dbo].[SP_ConfirmEmail]
-- Add the parameters for the stored procedure here
	@iUserID int = 0,
    @strCodeValidateUser varchar (10)
    
	
	
AS
BEGIN






	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF exists (Select LoginID from [UserValidate] where LoginID = @iUserID
    and codeValidate = @strCodeValidateUser )
    begin
    
    
    ---success
    
    update [UserLogin] set LoginEnable = 1 Where LoginID = @iUserID
    
    delete [UserValidate] where LoginID = @iUserID
    
    --success
    return (1)
    end
		else 
           
       begin
    
   --fail 
   return(0)
    
    end
   
   
    
  return (0)  
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckLoginPassWord]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckLoginPassWord]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_CheckLoginPassWord] 
	-- Add the parameters for the stored procedure here
@strLoginName varchar (50),
@strLoginPassWord varchar (30),

@strResult varchar (203) out, --return Email, LoginEnable, LoginDenied
@RecDateTime datetime out -- return last LoginDate or Register

	
	
	
AS
BEGIN

	DECLARE @dtDate DATETIME;
	DECLARE @strPassWordMD5 varchar (32)
	DECLARE @Ciphertext varbinary (32)
	DECLARE @iIdUser int = 0
	DECLARE @clientId INT = 0

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		
	  --convert to MD5
    SET @Ciphertext = HashBytes (''MD5'', @strLoginPassWord)
    SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
    
    SET @iIdUser = (Select LoginID from [UserLogin] 
		Where LoginName = @strLoginName  and LoginPassword = @strPassWordMD5)
	
	--if not found set 0
	Set @iIdUser = (select ISNULL (@iIdUser, 0))
	
	if (@iIdUser>0)
	
	BEGIN
			UPDATE [UserLogin] SET LoginDate = GETDATE() WHERE LoginID= @iIdUser
	
			SET @clientId = (SELECT client_id FROM dbo.client WHERE client_LoginID = @iIdUser)
	
			SET @strResult = (SELECT TOP 1    [LoginEmail]
												+  '',''  + CAST ([LoginEnable] AS VARCHAR(1))
												+  '',''  + CAST ([LoginDenied] AS VARCHAR (1))
												+  '',''  + CAST(@iIdUser AS VARCHAR(50))
												+  '',''  + CAST(@clientId AS VARCHAR(50))
												
					FROM [UserLogin] WHERE LoginID=@iIdUser);
												
			SET @RecDateTime = (SELECT [LoginDate]
			FROM [UserLogin] where LoginID=@iIdUser);
	
			
			
			--success
			return (1)
	end
	else
	begin
	
	--login PassWord not found
	return (2)
	
	end
	
	---fail
	return (0)
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckEmployee]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_CheckEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_CheckEmployee]
	-- Add the parameters for the stored procedure here
	/*@EmpID int, (schedule.employee_id = @EmpID) AND */
	@SchDate date,
	@EmpType varchar(20)


AS
BEGIN

SELECT  schedule.employee_id, schedule.sch_date, schedule.[8:00 am], schedule.[9:00 am], schedule.[10:00 am], 
	   schedule.[11:00 am], schedule.[12:00 pm], schedule.[1:00 pm], schedule.[2:00 pm], 
	   schedule.[3:00 pm], schedule.[4:00 pm], schedule.[5:00 pm], employee.employee_fname 
FROM [schedule] INNER JOIN [employee] 
ON schedule.employee_id = employee.employee_id 
WHERE (schedule.sch_date = @SchDate AND employee.employee_type = @EmpType)

END
' 
END
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[appointment](
	[app_id] [int] IDENTITY(1,1) NOT NULL,
	[client_id] [int] NULL,
	[app_day] [datetime] NULL,
	[notes_requests] [varchar](600) NULL,
	[visited_status] [varchar](1) NULL,
	[app_status] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[app_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[appointment] ON
INSERT [dbo].[appointment] ([app_id], [client_id], [app_day], [notes_requests], [visited_status], [app_status]) VALUES (2, 1026, CAST(0x0000A05A00000000 AS DateTime), N'', N'P', N'P')
SET IDENTITY_INSERT [dbo].[appointment] OFF
/****** Object:  Table [dbo].[skills]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[skills]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[skills](
	[skills_id] [int] IDENTITY(1000,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
 CONSTRAINT [PK_skills] PRIMARY KEY CLUSTERED 
(
	[skills_id] ASC,
	[employee_id] ASC,
	[service_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[skills] ON
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1000, 1014, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1001, 1016, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1002, 1013, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1003, 1009, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1004, 1003, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1005, 1010, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1006, 1018, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1007, 1006, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1008, 1019, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1009, 1004, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1010, 1002, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1011, 1008, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1012, 1012, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1013, 1007, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1014, 1017, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1015, 1000, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1016, 1015, 1009)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1017, 1011, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1018, 1005, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1019, 1001, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1020, 1014, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1021, 1016, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1022, 1013, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1023, 1009, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1024, 1003, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1025, 1010, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1026, 1018, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1027, 1006, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1028, 1019, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1029, 1004, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1030, 1002, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1031, 1008, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1032, 1012, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1033, 1007, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1034, 1017, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1035, 1000, 1009)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1036, 1015, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1037, 1011, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1038, 1005, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1039, 1001, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1040, 1014, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1041, 1016, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1042, 1013, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1043, 1009, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1044, 1003, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1045, 1010, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1046, 1018, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1047, 1006, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1048, 1019, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1049, 1004, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1050, 1002, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1051, 1008, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1052, 1012, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1053, 1007, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1054, 1017, 1009)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1055, 1000, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1056, 1015, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1057, 1011, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1058, 1005, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1059, 1001, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1060, 1014, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1061, 1016, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1062, 1013, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1063, 1009, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1064, 1003, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1065, 1010, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1066, 1018, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1067, 1006, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1068, 1019, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1069, 1004, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1070, 1002, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1071, 1008, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1072, 1012, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1073, 1007, 1009)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1074, 1017, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1075, 1000, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1076, 1015, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1077, 1011, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1078, 1005, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1079, 1001, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1080, 1014, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1081, 1016, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1082, 1013, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1083, 1009, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1084, 1003, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1085, 1010, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1086, 1018, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1087, 1006, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1088, 1019, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1089, 1004, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1090, 1002, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1091, 1008, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1092, 1012, 1009)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1093, 1007, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1094, 1017, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1095, 1000, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1096, 1015, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1097, 1011, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1098, 1005, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1099, 1001, 1015)
GO
print 'Processed 100 total records'
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1100, 1014, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1101, 1016, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1102, 1013, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1103, 1009, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1104, 1003, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1105, 1010, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1106, 1018, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1107, 1006, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1108, 1019, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1109, 1004, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1110, 1002, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1111, 1008, 1009)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1112, 1012, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1113, 1007, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1114, 1017, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1115, 1000, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1116, 1015, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1117, 1011, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1118, 1005, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1119, 1001, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1120, 1014, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1121, 1016, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1122, 1013, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1123, 1009, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1124, 1003, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1125, 1010, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1126, 1018, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1127, 1006, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1128, 1019, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1129, 1004, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1130, 1002, 1009)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1131, 1008, 1012)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1132, 1012, 1014)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1133, 1007, 1011)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1134, 1017, 1007)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1135, 1000, 1002)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1136, 1015, 1008)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1137, 1011, 1015)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1138, 1005, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1139, 1001, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1140, 1014, 1005)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1141, 1016, 1016)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1142, 1013, 1003)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1143, 1009, 1004)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1144, 1003, 1006)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1145, 1010, 1010)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1146, 1018, 1001)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1147, 1006, 1013)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1148, 1019, 1000)
INSERT [dbo].[skills] ([skills_id], [employee_id], [service_id]) VALUES (1149, 1004, 1009)
SET IDENTITY_INSERT [dbo].[skills] OFF
/****** Object:  StoredProcedure [dbo].[SP_InsertUserLogin]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertUserLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================

CREATE Proc [dbo].[SP_InsertUserLogin]
-- Add the parameters for the stored procedure here
	@LoginUname varchar (50),
	@LoginPwd varchar (30),
	@LoginEmail varchar (200),
    @LoginEnable smallint = 0,
    @LoginDenied smallint = 0,
    @strCodeValidateUser varchar (10),
    @iIdUser int OUTPUT
	
	
AS
BEGIN

	DECLARE @dtDate datetime;
	DECLARE @strPassWordMD5 varchar (32)
	DECLARE @Ciphertext varbinary (32)
	




	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF exists (Select LoginID from [UserLogin] where LoginName = @LoginUname )
    begin
    
    
    ---User exist
    return (2);
    
    end;
           
     IF exists (Select LoginID from [UserLogin] where LoginEmail = @LoginEmail   )
    begin
    
    
    ---Email exist
    return (3);
    
    end; 
   
    else
    begin
    
    --Take Date Time from server GETDATE() 2012-05-04 5:59
    SET @dtDate = GETDATE();
    
    --MD5
    SET @Ciphertext = HashBytes (''MD5'', @LoginPwd)
    SET @strPassWordMD5 = CONVERT (VARCHAR(32),@Ciphertext,2)
    
    INSERT INTO 
    [UserLogin] (LoginName, LoginPassword,
     LoginEmail,LoginEnable,
	 LoginDenied,LoginDate)
	
	values 
	(@LoginUname, @strPassWordMD5, 
	 @LoginEmail,  @LoginEnable, 
	 @LoginDenied, @dtDate)
	 
	 
		SET @iIdUser = (Select LoginID from [UserLogin] 
		Where LoginName = @LoginUname  and LoginEmail = @LoginEmail)
		
		INSERT INTO [UserValidate]
		(LoginID,
		codeValidate,
		dateValidate)
		
		Values
		(@iIdUser,@strCodeValidateUser,@dtDate)
			 
	 
	 --Success
	 return (1)
    
    end
    
    
    --fail
    
    return(0);
    
    
    
 END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertClient]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertClient]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertClient]
	-- Add the parameters for the stored procedure here
	
	@clientLoginId INT,
	@clientFname varchar (20),
	@clientLname varchar (20),
	@clientGender varchar (1),
	@clientAddr1 varchar (20),
	@clientAddr2 varchar  (20),
	@clientAddr3 varchar (20),
	@clientPro	varchar (20),
	@clientPhone_Num varchar (13)
	
	
	
AS
BEGIN
		
	
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--IF exists (Select client_id from [client] where client_id = @client_id)
 --   begin
    
    
 --   ---User exist
 --   return (2);
    
 --   end;
 

 
 
		
   
    
    INSERT INTO 
    [client] (client_LoginID,client_fname,client_lname,client_gender,client_street,
	client_city, client_parish, client_profession,client_phone)
	
	values 
	( @clientLoginId,@clientFname, @clientLname, 
	 @clientGender, @clientAddr1,@clientAddr2, 
	 @clientAddr3, @clientPro, @clientPhone_Num)
	 	 
	 --sucess
	 RETURN (1);
		END
		
	--fail
	BEGIN
	RETURN (0);
	END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_InsertAppointment]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_InsertAppointment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		GroupProject`
-- Create date: 
-- Description:	
-- =============================================

CREATE Proc [dbo].[SP_InsertAppointment]
-- Add the parameters for the stored procedure here
	@schId int = 0,
	@empId int = 0,
	@LoginID int = 0,
	@appDate datetime,
	@timeOne time(7),
	@timeTwo time (7),
	@timeThree time(7),
    @notesRequest  varchar (600),
    @app_status varchar (1),
    @serviceType varchar (20),
    @priceTotal money,
    @visitedStatus varchar (1)
  
   
	
	
AS
BEGIN

	

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

    
     
	SET @schId = (Select schedule_id from [schedule]
	Where employee_id = @empId)
	
	SET @empId = (SELECT[employee_id]
	FROM [Salon].[dbo].[schedule] where schedule_id =@schId)
	
	SET @LoginID = (SELECT [LoginID] 
	FROM [Salon].[dbo].[UserLogin])
	
	
    
    
    
    INSERT INTO 
    [appointment] ( app_day, app_time1,
     app_time2,app_time3,
	 notes_requests,visited_status,app_status)
	
	values 
	(@appDate, @timeOne,@timeTwo,@timeThree, 
	 @notesRequest, @visitedStatus, @app_status) 
	
	 		
		
    INSERT INTO [service]
		
	(service_type,price)
		
	Values
	(@serviceType,@priceTotal)
		
		
		
			
		
			 
	 
	   --sucess
	    RETURN (1);
		END
    
     
    
       --fail
	  BEGIN
	  RETURN (0);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteEmployee]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_DeleteEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		dbGroupProject
-- Create date: 4/13/2012
-- Description:	insert values in edu_start db
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteEmployee] 
	-- Add the parameters for the stored procedure here
	@strEmp_id int=0
	--@strC_Name varchar(20), 
	--@strC_description varchar(60)
		
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if not exists ( SELECT  employee_id from [employee] where employee_id = @strEmp_id)
	BEGIN 
	RETURN (0);
	END
	ELSE
		BEGIN
		DELETE FROM [employee] WHERE employee_id = @strEmp_id;
		DELETE FROM [appointment] WHERE  employee_id = @strEmp_id;
		DELETE FROM [schedule] WHERE	employee_id = @strEmp_id;
		DELETE FROM [skills]	WHERE employee_id = @strEmp_id;
		
			
			return (1);
    END

		
END
' 
END
GO
/****** Object:  Table [dbo].[appointment_services]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_services]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[appointment_services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_id] [int] NULL,
	[service_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[appointment_services] ON
INSERT [dbo].[appointment_services] ([id], [app_id], [service_id]) VALUES (2, 2, 1024)
INSERT [dbo].[appointment_services] ([id], [app_id], [service_id]) VALUES (3, 2, 1025)
SET IDENTITY_INSERT [dbo].[appointment_services] OFF
/****** Object:  Table [dbo].[appointment_emp]    Script Date: 05/18/2012 17:14:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appointment_emp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[appointment_emp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_id] [int] NOT NULL,
	[app_time] [datetime] NULL,
	[emp_id] [int] NULL,
	[schedule_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[appointment_emp] ON
INSERT [dbo].[appointment_emp] ([id], [app_id], [app_time], [emp_id], [schedule_id]) VALUES (2, 2, CAST(0x0000A05A00A4CB80 AS DateTime), 1009, 3003)
INSERT [dbo].[appointment_emp] ([id], [app_id], [app_time], [emp_id], [schedule_id]) VALUES (3, 2, CAST(0x0000A05A00B54640 AS DateTime), 1009, 3003)
SET IDENTITY_INSERT [dbo].[appointment_emp] OFF
/****** Object:  ForeignKey [FK_UserValidate_UserLogin]    Script Date: 05/18/2012 17:14:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserValidate_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserValidate]'))
ALTER TABLE [dbo].[UserValidate]  WITH CHECK ADD  CONSTRAINT [FK_UserValidate_UserLogin] FOREIGN KEY([LoginID])
REFERENCES [dbo].[UserLogin] ([LoginID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserValidate_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserValidate]'))
ALTER TABLE [dbo].[UserValidate] CHECK CONSTRAINT [FK_UserValidate_UserLogin]
GO
/****** Object:  ForeignKey [FK_client_UserLogin]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[client]'))
ALTER TABLE [dbo].[client]  WITH CHECK ADD  CONSTRAINT [FK_client_UserLogin] FOREIGN KEY([client_LoginID])
REFERENCES [dbo].[UserLogin] ([LoginID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_client_UserLogin]') AND parent_object_id = OBJECT_ID(N'[dbo].[client]'))
ALTER TABLE [dbo].[client] CHECK CONSTRAINT [FK_client_UserLogin]
GO
/****** Object:  ForeignKey [FK_service_service_name]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_service_service_name]') AND parent_object_id = OBJECT_ID(N'[dbo].[service]'))
ALTER TABLE [dbo].[service]  WITH CHECK ADD  CONSTRAINT [FK_service_service_name] FOREIGN KEY([service_name_id])
REFERENCES [dbo].[service_name] ([service_name_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_service_service_name]') AND parent_object_id = OBJECT_ID(N'[dbo].[service]'))
ALTER TABLE [dbo].[service] CHECK CONSTRAINT [FK_service_service_name]
GO
/****** Object:  ForeignKey [FK_schedule_employee]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_schedule_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[schedule]'))
ALTER TABLE [dbo].[schedule]  WITH CHECK ADD  CONSTRAINT [FK_schedule_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_schedule_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[schedule]'))
ALTER TABLE [dbo].[schedule] CHECK CONSTRAINT [FK_schedule_employee]
GO
/****** Object:  ForeignKey [FK_appointment_client]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_client]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment]'))
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK_appointment_client] FOREIGN KEY([client_id])
REFERENCES [dbo].[client] ([client_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_client]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment]'))
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK_appointment_client]
GO
/****** Object:  ForeignKey [FK_skills_employee]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills]  WITH CHECK ADD  CONSTRAINT [FK_skills_employee] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([employee_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_employee]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] CHECK CONSTRAINT [FK_skills_employee]
GO
/****** Object:  ForeignKey [FK_skills_service]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills]  WITH CHECK ADD  CONSTRAINT [FK_skills_service] FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_skills_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[skills]'))
ALTER TABLE [dbo].[skills] CHECK CONSTRAINT [FK_skills_service]
GO
/****** Object:  ForeignKey [FK_appointment_services_appointment]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services]  WITH CHECK ADD  CONSTRAINT [FK_appointment_services_appointment] FOREIGN KEY([app_id])
REFERENCES [dbo].[appointment] ([app_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] CHECK CONSTRAINT [FK_appointment_services_appointment]
GO
/****** Object:  ForeignKey [FK_appointment_services_service]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services]  WITH CHECK ADD  CONSTRAINT [FK_appointment_services_service] FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_services_service]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_services]'))
ALTER TABLE [dbo].[appointment_services] CHECK CONSTRAINT [FK_appointment_services_service]
GO
/****** Object:  ForeignKey [FK_appointment_emp_appointment]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp]  WITH CHECK ADD  CONSTRAINT [FK_appointment_emp_appointment] FOREIGN KEY([app_id])
REFERENCES [dbo].[appointment] ([app_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_appointment]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] CHECK CONSTRAINT [FK_appointment_emp_appointment]
GO
/****** Object:  ForeignKey [FK_appointment_emp_schedule]    Script Date: 05/18/2012 17:14:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp]  WITH CHECK ADD  CONSTRAINT [FK_appointment_emp_schedule] FOREIGN KEY([schedule_id], [emp_id])
REFERENCES [dbo].[schedule] ([schedule_id], [employee_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_appointment_emp_schedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[appointment_emp]'))
ALTER TABLE [dbo].[appointment_emp] CHECK CONSTRAINT [FK_appointment_emp_schedule]
GO
