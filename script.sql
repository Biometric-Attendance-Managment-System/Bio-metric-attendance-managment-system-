USE [ATMS]
GO
/****** Object:  Table [dbo].[tbl_admins]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AdminFirstName] [varchar](70) NOT NULL,
	[AdminLastName] [varchar](70) NOT NULL,
	[AdminEmail] [varchar](50) NOT NULL,
	[AdminPassword] [varchar](500) NOT NULL,
	[AdminPhone] [varchar](20) NOT NULL,
	[AdminDesignation] [varchar](100) NOT NULL,
	[AdminGender] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_admins] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_class]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_class](
	[ClassId] [varchar](50) NOT NULL,
	[SemesterNo] [int] NOT NULL,
 CONSTRAINT [PK_tbl_class] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_courseAllocation]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_courseAllocation](
	[AllocationID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[FacultyId] [int] NOT NULL,
	[ClassId] [varchar](50) NOT NULL,
	[Day] [varchar](50) NOT NULL,
	[StartHour] [float] NOT NULL,
 CONSTRAINT [PK_tbl_courseAllocation] PRIMARY KEY CLUSTERED 
(
	[AllocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_courses]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[ProgramId] [int] NOT NULL,
	[CourseName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tbl_courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_designation]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_designation](
	[desId] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_designation] PRIMARY KEY CLUSTERED 
(
	[desId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_faculty]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_faculty](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyFullName] [varchar](50) NOT NULL,
	[FacultyEmail] [varchar](30) NOT NULL,
	[FacultyPassword] [varchar](500) NOT NULL,
	[FacultyPhone] [varchar](20) NOT NULL,
	[FacultyDesignation] [varchar](50) NOT NULL,
	[FacultyGender] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_faculty] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_programme]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_programme](
	[ProgrammeID] [int] IDENTITY(1,1) NOT NULL,
	[ProgrammeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_programme] PRIMARY KEY CLUSTERED 
(
	[ProgrammeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_role]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[RoleStatus] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_semester]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_semester](
	[SemesterID] [int] IDENTITY(1,1) NOT NULL,
	[SemesterName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_semester] PRIMARY KEY CLUSTERED 
(
	[SemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_sessions]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sessions](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[SessionName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_sessions] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_students]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_students](
	[StudentID] [varchar](50) NOT NULL,
	[StudentFirstName] [varchar](50) NOT NULL,
	[StudentLastName] [varchar](50) NOT NULL,
	[StudentEmail] [varchar](30) NOT NULL,
	[StudentPassword] [varchar](500) NOT NULL,
	[StudentPhone] [varchar](20) NOT NULL,
	[StudentGender] [varchar](20) NOT NULL,
	[ClassId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_subjects]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subjects](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](50) NOT NULL,
	[SubjectCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_subjects] PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_teach]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_teach](
	[TeachID] [int] IDENTITY(1,1) NOT NULL,
	[FacultyID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_teach] PRIMARY KEY CLUSTERED 
(
	[TeachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CNIC] [varchar](50) NULL,
	[DesiganitaionId] [int] NULL,
	[Email] [varchar](50) NULL,
	[cell] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[RoleId] [int] NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_admins] ON 

INSERT [dbo].[tbl_admins] ([AdminID], [AdminFirstName], [AdminLastName], [AdminEmail], [AdminPassword], [AdminPhone], [AdminDesignation], [AdminGender]) VALUES (50, N'sadaf ', N'sultana', N'', N'12345', N'97481727937', N'Assistent Professor', 0)
INSERT [dbo].[tbl_admins] ([AdminID], [AdminFirstName], [AdminLastName], [AdminEmail], [AdminPassword], [AdminPhone], [AdminDesignation], [AdminGender]) VALUES (51, N'Iqra', N'Aziz', N'iqra@gmail.com', N'12345', N'981781923', N'Assistent Professor', 0)
SET IDENTITY_INSERT [dbo].[tbl_admins] OFF
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF16E', 8)
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF16M', 8)
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF17E', 6)
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF17M', 6)
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF18E', 4)
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF18M', 4)
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF19E', 2)
INSERT [dbo].[tbl_class] ([ClassId], [SemesterNo]) VALUES (N'BCSF19M', 2)
SET IDENTITY_INSERT [dbo].[tbl_courseAllocation] ON 

INSERT [dbo].[tbl_courseAllocation] ([AllocationID], [SubjectId], [FacultyId], [ClassId], [Day], [StartHour]) VALUES (1, 5, 2, N'BCSF16E', N'Monday', 8)
INSERT [dbo].[tbl_courseAllocation] ([AllocationID], [SubjectId], [FacultyId], [ClassId], [Day], [StartHour]) VALUES (5, 5, 2, N'BCSF19E', N'Thursday', 11)
INSERT [dbo].[tbl_courseAllocation] ([AllocationID], [SubjectId], [FacultyId], [ClassId], [Day], [StartHour]) VALUES (6, 3, 1, N'BCSF18M', N'Thursday', 2)
INSERT [dbo].[tbl_courseAllocation] ([AllocationID], [SubjectId], [FacultyId], [ClassId], [Day], [StartHour]) VALUES (7, 3, 1, N'BCSF17E', N'Thursday', 11)
SET IDENTITY_INSERT [dbo].[tbl_courseAllocation] OFF
SET IDENTITY_INSERT [dbo].[tbl_courses] ON 

INSERT [dbo].[tbl_courses] ([CourseID], [ProgramId], [CourseName]) VALUES (1, 3, N'BS Computer Sciences ')
INSERT [dbo].[tbl_courses] ([CourseID], [ProgramId], [CourseName]) VALUES (2, 3, N'BS Information Technology')
INSERT [dbo].[tbl_courses] ([CourseID], [ProgramId], [CourseName]) VALUES (1005, 0, N'BS software Engineering')
SET IDENTITY_INSERT [dbo].[tbl_courses] OFF
SET IDENTITY_INSERT [dbo].[tbl_designation] ON 

INSERT [dbo].[tbl_designation] ([desId], [Designation]) VALUES (1, N'HOD')
INSERT [dbo].[tbl_designation] ([desId], [Designation]) VALUES (2, N'Professior')
INSERT [dbo].[tbl_designation] ([desId], [Designation]) VALUES (3, N'A.P')
INSERT [dbo].[tbl_designation] ([desId], [Designation]) VALUES (4, N'Lecturer')
INSERT [dbo].[tbl_designation] ([desId], [Designation]) VALUES (5, N'Clarek')
SET IDENTITY_INSERT [dbo].[tbl_designation] OFF
SET IDENTITY_INSERT [dbo].[tbl_faculty] ON 

INSERT [dbo].[tbl_faculty] ([FacultyID], [FacultyFullName], [FacultyEmail], [FacultyPassword], [FacultyPhone], [FacultyDesignation], [FacultyGender]) VALUES (1, N'Hamza Naseer Tiwana', N'hamza@gmail.com', N'12345', N'01823810928', N'2', N'male')
INSERT [dbo].[tbl_faculty] ([FacultyID], [FacultyFullName], [FacultyEmail], [FacultyPassword], [FacultyPhone], [FacultyDesignation], [FacultyGender]) VALUES (2, N'Muhammad Bilal', N'bilal@gmail.com', N'12345', N'1972398728', N'3', N'male')
SET IDENTITY_INSERT [dbo].[tbl_faculty] OFF
SET IDENTITY_INSERT [dbo].[tbl_programme] ON 

INSERT [dbo].[tbl_programme] ([ProgrammeID], [ProgrammeName]) VALUES (2, N'MS')
INSERT [dbo].[tbl_programme] ([ProgrammeID], [ProgrammeName]) VALUES (3, N'BS')
INSERT [dbo].[tbl_programme] ([ProgrammeID], [ProgrammeName]) VALUES (12, N'Phd')
SET IDENTITY_INSERT [dbo].[tbl_programme] OFF
SET IDENTITY_INSERT [dbo].[tbl_role] ON 

INSERT [dbo].[tbl_role] ([RoleId], [RoleName], [RoleStatus]) VALUES (1, N'SuperAdmin', 1)
INSERT [dbo].[tbl_role] ([RoleId], [RoleName], [RoleStatus]) VALUES (2, N'Admin', 1)
INSERT [dbo].[tbl_role] ([RoleId], [RoleName], [RoleStatus]) VALUES (3, N'Feculty', 1)
INSERT [dbo].[tbl_role] ([RoleId], [RoleName], [RoleStatus]) VALUES (4, N'Student', 1)
SET IDENTITY_INSERT [dbo].[tbl_role] OFF
SET IDENTITY_INSERT [dbo].[tbl_semester] ON 

INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (2, N'1ST')
INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (3, N'2ND')
INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (4, N'3RD')
INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (5, N'4TH')
INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (6, N'5TH')
INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (7, N'6TH')
INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (8, N'7TH')
INSERT [dbo].[tbl_semester] ([SemesterID], [SemesterName]) VALUES (10, N'8TH')
SET IDENTITY_INSERT [dbo].[tbl_semester] OFF
SET IDENTITY_INSERT [dbo].[tbl_sessions] ON 

INSERT [dbo].[tbl_sessions] ([SessionID], [SessionName]) VALUES (2, N'2016-2020')
INSERT [dbo].[tbl_sessions] ([SessionID], [SessionName]) VALUES (3, N'2017-2021')
INSERT [dbo].[tbl_sessions] ([SessionID], [SessionName]) VALUES (4, N'2018-2022')
INSERT [dbo].[tbl_sessions] ([SessionID], [SessionName]) VALUES (5, N'2019-2023')
SET IDENTITY_INSERT [dbo].[tbl_sessions] OFF
SET IDENTITY_INSERT [dbo].[tbl_subjects] ON 

INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (2, N'Introduction to ICT', N'ICTC-101')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (3, N'Programming Fundamentals', N'CMPC-101')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (4, N'English Composition & Comprehensionals', N'ENGL-101')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (5, N'Calculus & Analytical geometry', N'MATH-101')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (6, N'Applied Physics/Quantum Computing', N'PHYS-101')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (7, N'Object Oriented Programming ', N'CMPC-102')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (8, N'Communication & Presentation Skills', N'ENGL-102')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (9, N'Discrete Structures ', N'ITSC-102')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (10, N'Software Engineering ', N'MATH-102')
INSERT [dbo].[tbl_subjects] ([SubjectID], [SubjectName], [SubjectCode]) VALUES (11, N'Islamic Studies  ', N'BUSB-102')
SET IDENTITY_INSERT [dbo].[tbl_subjects] OFF
SET IDENTITY_INSERT [dbo].[tbl_teach] ON 

INSERT [dbo].[tbl_teach] ([TeachID], [FacultyID], [SubjectID]) VALUES (1, 1, 3)
INSERT [dbo].[tbl_teach] ([TeachID], [FacultyID], [SubjectID]) VALUES (2, 2, 5)
SET IDENTITY_INSERT [dbo].[tbl_teach] OFF
SET IDENTITY_INSERT [dbo].[tbl_user] ON 

INSERT [dbo].[tbl_user] ([UserId], [Name], [CNIC], [DesiganitaionId], [Email], [cell], [gender], [RoleId], [UserName], [Password], [Address]) VALUES (4, N'Muhammad Bilal', N'38302-8762202-1', 2, N'mb974185@gmail.com', N'03058090768', N'Male', 2, N'mb974185', N'12345', N'mianwali')
INSERT [dbo].[tbl_user] ([UserId], [Name], [CNIC], [DesiganitaionId], [Email], [cell], [gender], [RoleId], [UserName], [Password], [Address]) VALUES (5, N'Muhammad Bilal', N'38302-8762202-1', 4, N'mb974185@gmail.com', N'03058090768', N'Male', 2, N'mb974185', N'12345', N'mianwali')
INSERT [dbo].[tbl_user] ([UserId], [Name], [CNIC], [DesiganitaionId], [Email], [cell], [gender], [RoleId], [UserName], [Password], [Address]) VALUES (1002, N'faculty', N'11111-1111111-1', 1, N'faculty@gmail.com', N'91872388191', N'Male', 3, N'faculty', N'faculty', N'sargodha')
INSERT [dbo].[tbl_user] ([UserId], [Name], [CNIC], [DesiganitaionId], [Email], [cell], [gender], [RoleId], [UserName], [Password], [Address]) VALUES (1003, N'admin', N'11111-1111111-1', 1, N'faculty@gmail.com', N'91827387122', N'Male', 2, N'admin', N'admin', N'Lahore')
INSERT [dbo].[tbl_user] ([UserId], [Name], [CNIC], [DesiganitaionId], [Email], [cell], [gender], [RoleId], [UserName], [Password], [Address]) VALUES (1004, N'student', N'44444-4444444-4', NULL, N'student@gmail.com', N'91288917828', N'Female', 4, N'student', N'student', N'Sahiwal')
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
ALTER TABLE [dbo].[tbl_courseAllocation]  WITH CHECK ADD  CONSTRAINT [FK_tbl_courseAllocation_tbl_class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[tbl_class] ([ClassId])
GO
ALTER TABLE [dbo].[tbl_courseAllocation] CHECK CONSTRAINT [FK_tbl_courseAllocation_tbl_class]
GO
ALTER TABLE [dbo].[tbl_courseAllocation]  WITH CHECK ADD  CONSTRAINT [FK_tbl_courseAllocation_tbl_faculty] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[tbl_faculty] ([FacultyID])
GO
ALTER TABLE [dbo].[tbl_courseAllocation] CHECK CONSTRAINT [FK_tbl_courseAllocation_tbl_faculty]
GO
ALTER TABLE [dbo].[tbl_courseAllocation]  WITH CHECK ADD  CONSTRAINT [FK_tbl_courseAllocation_tbl_subjects] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[tbl_subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[tbl_courseAllocation] CHECK CONSTRAINT [FK_tbl_courseAllocation_tbl_subjects]
GO
ALTER TABLE [dbo].[tbl_students]  WITH CHECK ADD  CONSTRAINT [FK_tbl_students_tbl_class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[tbl_class] ([ClassId])
GO
ALTER TABLE [dbo].[tbl_students] CHECK CONSTRAINT [FK_tbl_students_tbl_class]
GO
ALTER TABLE [dbo].[tbl_teach]  WITH CHECK ADD  CONSTRAINT [FK_tbl_teach_tbl_faculty] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[tbl_faculty] ([FacultyID])
GO
ALTER TABLE [dbo].[tbl_teach] CHECK CONSTRAINT [FK_tbl_teach_tbl_faculty]
GO
ALTER TABLE [dbo].[tbl_teach]  WITH CHECK ADD  CONSTRAINT [FK_tbl_teach_tbl_subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[tbl_subjects] ([SubjectID])
GO
ALTER TABLE [dbo].[tbl_teach] CHECK CONSTRAINT [FK_tbl_teach_tbl_subjects]
GO
/****** Object:  StoredProcedure [dbo].[AdminLogin]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AdminLogin]
	-- Add the parameters for the stored procedure here
	@email as varchar(30),
	@pass as varchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_admins where AdminEmail=@email and AdminPassword=@pass
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteAdmin]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteAdmin]
	-- Add the parameters for the stored procedure here
	@id as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from tbl_admins where AdminID=@id 
END
GO
/****** Object:  StoredProcedure [dbo].[deletecourseallocations]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deletecourseallocations] 
	@id as int
AS
BEGIN
	delete from tbl_courseAllocation where AllocationID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[Deletefaculty]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Deletefaculty]
	-- Add the parameters for the stored procedure here
	@id as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from tbl_faculty where FacultyID=@id 
END
GO
/****** Object:  StoredProcedure [dbo].[Deletestudent]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Deletestudent]
	-- Add the parameters for the stored procedure here
	@id as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from tbl_students where StudentID=@id 
END
GO
/****** Object:  StoredProcedure [dbo].[DoLogin]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DoLogin]
@usrenamr varchar(50),
@pasword varchar(50)
as
begin



if((select COUNT(*) from tbl_user where UserName = @usrenamr and [Password] = @pasword) > 0)
	begin
		select a.UserId,a.[Name],a.UserName,c.RoleName from tbl_user as a 
		left join tbl_designation as b 
		on a.DesiganitaionId = b.desId 
		left join tbl_role as c 
		on a.RoleId = c.RoleId
		where a.UserName = @usrenamr and a.Password = @pasword
	end

end
GO
/****** Object:  StoredProcedure [dbo].[FacultyLogin]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FacultyLogin] 
	-- Add the parameters for the stored procedure here
	@email as varchar(30),
	@pass as varchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_faculty where FacultyEmail=@email and FacultyPassword=@pass
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllAdmins]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllAdmins]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_admins
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllFaculty]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllFaculty]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_faculty
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllProgrammes]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllProgrammes] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_programme
END
GO
/****** Object:  StoredProcedure [dbo].[getallsemesters]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getallsemesters] 
	-- Add the parameters for the stored procedure here
	 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_semester
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllSession]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllSession] 
	-- Add the parameters for the stored procedure here
	 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_sessions
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudents]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllStudents]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_students
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudentss]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllStudentss]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_students
END
GO
/****** Object:  StoredProcedure [dbo].[getallsubjectss]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getallsubjectss]
	-- Add the parameters for the stored procedure here
	 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_subjects
END
GO
/****** Object:  StoredProcedure [dbo].[getcourcesall]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getcourcesall]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_courses
END
GO
/****** Object:  StoredProcedure [dbo].[GetFaculty]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFaculty]
	-- Add the parameters for the stored procedure here
	 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_user
END
GO
/****** Object:  StoredProcedure [dbo].[StudentLogin]    Script Date: 2/17/2020 6:24:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[StudentLogin] 
	-- Add the parameters for the stored procedure here
	@email as varchar(30),
	@pass as varchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tbl_students where StudentEmail=@email and StudentPassword=@pass
END
GO
