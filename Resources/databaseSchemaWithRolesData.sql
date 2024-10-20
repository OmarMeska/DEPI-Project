USE [OnlineCourseDemo02]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlackLists]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlackLists](
	[Email] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_BlackLists] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CourseStatus] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[InstructorId] [int] NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseStudent]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseStudent](
	[CoursesCourseId] [int] NOT NULL,
	[StudentsStudentId] [int] NOT NULL,
 CONSTRAINT [PK_CourseStudent] PRIMARY KEY CLUSTERED 
(
	[CoursesCourseId] ASC,
	[StudentsStudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructors]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructors](
	[InstructorId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[About] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[IdentityUserID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sections]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[SectionId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[Number] [int] NOT NULL,
	[CourseId] [int] NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentProgresses]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentProgresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[SectionId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_StudentProgresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Education] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[IdentityUserID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebAdmins]    Script Date: 10/19/2024 1:47:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebAdmins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[IdentityUserID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_WebAdmins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'15bb9739-35ca-4ef7-b3a8-18682a8e840f', N'Student', N'STUDENT', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'94d67c08-ff63-45d2-8209-67a27cf8bc91', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c1a25ea1-3f25-4551-934d-56f66d4ffdbc', N'Instructor', N'INSTRUCTOR', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3b3182bd-e129-441b-a16c-b94d56d854cd', N'15bb9739-35ca-4ef7-b3a8-18682a8e840f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7252eb45-a283-4c32-88ff-669c4a95878b', N'15bb9739-35ca-4ef7-b3a8-18682a8e840f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7e7ae501-4db3-4235-9cd5-95b70b194bb7', N'15bb9739-35ca-4ef7-b3a8-18682a8e840f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'be0bb058-3935-4ac7-8fd5-a37c07baf669', N'15bb9739-35ca-4ef7-b3a8-18682a8e840f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bca951b3-f045-43ce-b486-9776ba196e6b', N'94d67c08-ff63-45d2-8209-67a27cf8bc91')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'431741fe-9575-4a11-b1cb-a914b1e3485e', N'c1a25ea1-3f25-4551-934d-56f66d4ffdbc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'67cc1646-fe06-42a0-97aa-25a7d7f3993c', N'c1a25ea1-3f25-4551-934d-56f66d4ffdbc')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ce912cb4-2a8e-4b88-863f-dda4a90f90fb', N'c1a25ea1-3f25-4551-934d-56f66d4ffdbc')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3b3182bd-e129-441b-a16c-b94d56d854cd', N'studentTest@mail.com', N'STUDENTTEST@MAIL.COM', N'studentTest@mail.com', N'STUDENTTEST@MAIL.COM', 1, N'AQAAAAIAAYagAAAAELAjhBWLe3f+B07JSWcVYx1E7B3CGl94+EKUJe5iQQ76GLR0OdBeBJHcLH9iM8YrFw==', N'CQ46E4ULPYHWTHH7O5WTKJYQ2BBEQMRR', N'f3cac6a6-0b17-4c81-8f5d-874560c9458e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'431741fe-9575-4a11-b1cb-a914b1e3485e', N'zero@gmail.com', N'ZERO@GMAIL.COM', N'zero@gmail.com', N'ZERO@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJUFjfSiRqpUBZSFLsZ02GC5j39udl/9xEYOp2fC0RVQor0zQfHS3HgxsSzX+A4YaA==', N'Z7B5Q5KOWNMVYV35JGGDXZ6BS2D7GK73', N'ef2dc5ef-000c-412e-bc8a-e07e24c47b5e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'67cc1646-fe06-42a0-97aa-25a7d7f3993c', N'InsturctorTest@mail.com', N'INSTURCTORTEST@MAIL.COM', N'InsturctorTest@mail.com', N'INSTURCTORTEST@MAIL.COM', 1, N'AQAAAAIAAYagAAAAENAap1E8LMEHbaMNMjRMlTBeqA8fNlDN/EYUx9bgbi+HtbVhrRbx0Q3i570WooFHDQ==', N'CCE67PENFGCDHSVRBP6RPT7VVQR4DD2N', N'3de65ad8-1676-48df-bff1-0ebfeefd5bb1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7252eb45-a283-4c32-88ff-669c4a95878b', N'student@mail.com', N'STUDENT@MAIL.COM', N'student@mail.com', N'STUDENT@MAIL.COM', 1, N'AQAAAAIAAYagAAAAEE/qEsaTT5y5b+g1u7TCXHBlo4BqbYzBtTngRC9632YXXKqcEOtvFdTXhbxOEQ67Pg==', N'OIZPFUGGZBIQRL5UFGLLQVHRNGTSXUN7', N'02f387ac-a41d-4125-8fd9-b55cc81ceb15', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7e7ae501-4db3-4235-9cd5-95b70b194bb7', N'ibrahim@gamil.com', N'IBRAHIM@GAMIL.COM', N'ibrahim@gamil.com', N'IBRAHIM@GAMIL.COM', 1, N'AQAAAAIAAYagAAAAEB3hxsjQTM4dNdWn9yibfhvuKY6k1uaYV48kfyapJhf39l+2APIsNUzzBvHBF56pww==', N'IKRVDBONGQ4RI2GDLZ4T2KZ7XW65SFJ3', N'ccbb0663-298f-4341-9228-81d9d24976ca', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bca951b3-f045-43ce-b486-9776ba196e6b', N'AdminTest@mail.com', N'ADMINTEST@MAIL.COM', N'AdminTest@mail.com', N'ADMINTEST@MAIL.COM', 1, N'AQAAAAIAAYagAAAAEMvjRTTBYoUkeU4G7OiMRuTqlUfRRd1lr251v/tNBEu1S5VYbaNhUunRtsD+Udf8OA==', N'G2PXJTA7CBL3BK4FTDC7IKF4TFCL7HD2', N'07337dc7-636c-44b1-86c3-50fe2c929ef5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'be0bb058-3935-4ac7-8fd5-a37c07baf669', N'studentTest2@mail.com', N'STUDENTTEST2@MAIL.COM', N'studentTest2@mail.com', N'STUDENTTEST2@MAIL.COM', 1, N'AQAAAAIAAYagAAAAEGn6kzkX4EG+zI1ONS3F2bufMhwjNDd5PWs+Bmx8wYOKD4qMTKAqV45K2SIFXajeuw==', N'FI6AYRSYVXGSGKHLNMDEVQKCDUDLDHAW', N'eb37989f-769b-4921-b7bd-8bdd35279bb0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ce912cb4-2a8e-4b88-863f-dda4a90f90fb', N'zero@mail.com', N'ZERO@MAIL.COM', N'zero@mail.com', N'ZERO@MAIL.COM', 1, N'AQAAAAIAAYagAAAAEDcFbHynkq6AyKPWpKnCFSWrWyNJt89AbSJHtueMUkb20i+9AQ8J5dFz0K0I9bbNiw==', N'3ERWA4PEQFZYLX6IHYMLZ7K2VHBWQIJ7', N'd20b35ac-3abe-4996-8ada-ee12646fa7b3', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [Name], [Type], [Description], [CourseStatus], [Image], [InstructorId]) VALUES (1, N'new course', N'backedn', N'descreption', 1, N'image', 3)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
INSERT [dbo].[CourseStudent] ([CoursesCourseId], [StudentsStudentId]) VALUES (1, 9)
GO
SET IDENTITY_INSERT [dbo].[Instructors] ON 

INSERT [dbo].[Instructors] ([InstructorId], [Name], [Email], [About], [Image], [IdentityUserID]) VALUES (3, N'osama el zero', N'zero@mail.com', N'CS', NULL, N'ce912cb4-2a8e-4b88-863f-dda4a90f90fb')
SET IDENTITY_INSERT [dbo].[Instructors] OFF
GO
SET IDENTITY_INSERT [dbo].[Sections] ON 

INSERT [dbo].[Sections] ([SectionId], [Title], [Link], [Number], [CourseId]) VALUES (1, N'new section', N'section link', 1, 1)
SET IDENTITY_INSERT [dbo].[Sections] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentProgresses] ON 

INSERT [dbo].[StudentProgresses] ([Id], [Status], [SectionId], [StudentId], [CourseId]) VALUES (1, 1, 1, 9, 1)
SET IDENTITY_INSERT [dbo].[StudentProgresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [Name], [Email], [Education], [Image], [IdentityUserID]) VALUES (8, N'ibrahim gaber', N'ibrahim@gamil.com', N'CS', NULL, N'7e7ae501-4db3-4235-9cd5-95b70b194bb7')
INSERT [dbo].[Students] ([StudentId], [Name], [Email], [Education], [Image], [IdentityUserID]) VALUES (9, N'student name', N'student@mail.com', N'CS', NULL, N'7252eb45-a283-4c32-88ff-669c4a95878b')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[WebAdmins] ON 

INSERT [dbo].[WebAdmins] ([ID], [Name], [Email], [IdentityUserID]) VALUES (1, N'Admin name', N'AdminTest@mail.com', N'bca951b3-f045-43ce-b486-9776ba196e6b')
SET IDENTITY_INSERT [dbo].[WebAdmins] OFF
GO
ALTER TABLE [dbo].[Instructors] ADD  DEFAULT (N'') FOR [IdentityUserID]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT (N'') FOR [IdentityUserID]
GO
ALTER TABLE [dbo].[WebAdmins] ADD  DEFAULT (N'') FOR [IdentityUserID]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Instructors_InstructorId] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructors] ([InstructorId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Instructors_InstructorId]
GO
ALTER TABLE [dbo].[CourseStudent]  WITH CHECK ADD  CONSTRAINT [FK_CourseStudent_Courses_CoursesCourseId] FOREIGN KEY([CoursesCourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[CourseStudent] CHECK CONSTRAINT [FK_CourseStudent_Courses_CoursesCourseId]
GO
ALTER TABLE [dbo].[CourseStudent]  WITH CHECK ADD  CONSTRAINT [FK_CourseStudent_Students_StudentsStudentId] FOREIGN KEY([StudentsStudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[CourseStudent] CHECK CONSTRAINT [FK_CourseStudent_Students_StudentsStudentId]
GO
ALTER TABLE [dbo].[Instructors]  WITH CHECK ADD  CONSTRAINT [FK_Instructors_AspNetUsers_IdentityUserID] FOREIGN KEY([IdentityUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Instructors] CHECK CONSTRAINT [FK_Instructors_AspNetUsers_IdentityUserID]
GO
ALTER TABLE [dbo].[Sections]  WITH CHECK ADD  CONSTRAINT [FK_Sections_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[Sections] CHECK CONSTRAINT [FK_Sections_Courses_CourseId]
GO
ALTER TABLE [dbo].[StudentProgresses]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgresses_Courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[StudentProgresses] CHECK CONSTRAINT [FK_StudentProgresses_Courses_CourseId]
GO
ALTER TABLE [dbo].[StudentProgresses]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgresses_Sections_SectionId] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Sections] ([SectionId])
GO
ALTER TABLE [dbo].[StudentProgresses] CHECK CONSTRAINT [FK_StudentProgresses_Sections_SectionId]
GO
ALTER TABLE [dbo].[StudentProgresses]  WITH CHECK ADD  CONSTRAINT [FK_StudentProgresses_Students_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[StudentProgresses] CHECK CONSTRAINT [FK_StudentProgresses_Students_StudentId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_AspNetUsers_IdentityUserID] FOREIGN KEY([IdentityUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_AspNetUsers_IdentityUserID]
GO
ALTER TABLE [dbo].[WebAdmins]  WITH CHECK ADD  CONSTRAINT [FK_WebAdmins_AspNetUsers_IdentityUserID] FOREIGN KEY([IdentityUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[WebAdmins] CHECK CONSTRAINT [FK_WebAdmins_AspNetUsers_IdentityUserID]
GO
