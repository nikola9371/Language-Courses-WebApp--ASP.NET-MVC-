USE [master]
GO
/****** Object:  Database [SkolaS]    Script Date: 30.6.2019. 14:51:19 ******/
CREATE DATABASE [SkolaS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Škola Stranih Jezika', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.NIKOLASQL\MSSQL\DATA\Škola Stranih Jezika.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Škola Stranih Jezika_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.NIKOLASQL\MSSQL\DATA\Škola Stranih Jezika_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SkolaS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SkolaS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SkolaS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SkolaS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SkolaS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SkolaS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SkolaS] SET ARITHABORT OFF 
GO
ALTER DATABASE [SkolaS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SkolaS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SkolaS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SkolaS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SkolaS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SkolaS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SkolaS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SkolaS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SkolaS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SkolaS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SkolaS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SkolaS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SkolaS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SkolaS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SkolaS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SkolaS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SkolaS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SkolaS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SkolaS] SET  MULTI_USER 
GO
ALTER DATABASE [SkolaS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SkolaS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SkolaS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SkolaS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SkolaS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SkolaS', N'ON'
GO
ALTER DATABASE [SkolaS] SET QUERY_STORE = OFF
GO
USE [SkolaS]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 30.6.2019. 14:51:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] NOT NULL,
	[Jezici] [nvarchar](20) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cas]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [date] NOT NULL,
	[StudentID] [int] NOT NULL,
	[ProfesorID] [int] NOT NULL,
	[KursID] [int] NOT NULL,
	[Opis] [nvarchar](300) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dokument]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dokument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](20) NOT NULL,
	[Dokumentadresa] [nvarchar](20) NOT NULL,
	[KorisnikID] [int] NOT NULL,
 CONSTRAINT [PK_Dokument] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ispit]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ispit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Datum] [date] NOT NULL,
 CONSTRAINT [PK_Ispit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ispit_Odrzavanje]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ispit_Odrzavanje](
	[IspitID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Ocena] [int] NOT NULL,
	[Rad] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Korisnik]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Korisnik](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](20) NULL,
	[Adresa] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Telefon] [int] NULL,
	[JMGB] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kurs]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kurs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](20) NULL,
	[Trajanje] [nvarchar](10) NULL,
	[Kod] [nvarchar](5) NULL,
 CONSTRAINT [PK_Kurs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[userType] [varchar](50) NOT NULL,
	[korisnikID] [int] NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materijal]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materijal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](20) NOT NULL,
	[Atribut] [nvarchar](50) NOT NULL,
	[StudentID] [int] NOT NULL,
	[ProfesorID] [int] NOT NULL,
	[KursID] [int] NOT NULL,
 CONSTRAINT [PK_Materijal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odeljenje]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odeljenje](
	[StudentID] [int] NOT NULL,
	[ProfesorID] [int] NOT NULL,
	[KursID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ProfesorID] ASC,
	[KursID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prisustvuje]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prisustvuje](
	[CasID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[prisutan] [binary](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[CasID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesor]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesor](
	[ProfesorID] [int] NOT NULL,
	[Jezici] [nvarchar](20) NULL,
 CONSTRAINT [PK_Profesor] PRIMARY KEY CLUSTERED 
(
	[ProfesorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[ZakljucnaOcena] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transakcija]    Script Date: 30.6.2019. 14:51:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transakcija](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Suma] [money] NOT NULL,
	[BorjKartice] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
 CONSTRAINT [PK_Transakcija] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Korisnik] ON 

INSERT [dbo].[Korisnik] ([ID], [Ime], [Adresa], [Email], [Telefon], [JMGB]) VALUES (1, N'Aleksandra Tomic', N'Jurija Gagarina 1', N'at@gmail.com', 655689741, N'1508994715557')
INSERT [dbo].[Korisnik] ([ID], [Ime], [Adresa], [Email], [Telefon], [JMGB]) VALUES (2, N'Milos NIkolic', N'Sumatovcka 5', N'mn@yahoo.com', 658458963, N'12084987710007')
INSERT [dbo].[Korisnik] ([ID], [Ime], [Adresa], [Email], [Telefon], [JMGB]) VALUES (3, N'Tatjana Petrovic', N'Ganijeva 58', N'tacaa@gmail.com', 69574963, N'1410997715482')
SET IDENTITY_INSERT [dbo].[Korisnik] OFF
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([id], [username], [password], [userType], [korisnikID]) VALUES (1, N'korisnik1', N'korisnik1', N'korisnik', 1)
INSERT [dbo].[login] ([id], [username], [password], [userType], [korisnikID]) VALUES (3, N'admin1', N'admin1', N'admin', 2)
INSERT [dbo].[login] ([id], [username], [password], [userType], [korisnikID]) VALUES (4, N'profesor1', N'profesor1', N'profesor', 3)
SET IDENTITY_INSERT [dbo].[login] OFF
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD FOREIGN KEY([AdminID])
REFERENCES [dbo].[Korisnik] ([ID])
GO
ALTER TABLE [dbo].[Cas]  WITH CHECK ADD FOREIGN KEY([StudentID], [ProfesorID], [KursID])
REFERENCES [dbo].[Odeljenje] ([StudentID], [ProfesorID], [KursID])
GO
ALTER TABLE [dbo].[Cas]  WITH CHECK ADD FOREIGN KEY([StudentID], [ProfesorID], [KursID])
REFERENCES [dbo].[Odeljenje] ([StudentID], [ProfesorID], [KursID])
GO
ALTER TABLE [dbo].[Dokument]  WITH CHECK ADD FOREIGN KEY([KorisnikID])
REFERENCES [dbo].[Korisnik] ([ID])
GO
ALTER TABLE [dbo].[Dokument]  WITH CHECK ADD FOREIGN KEY([KorisnikID])
REFERENCES [dbo].[Korisnik] ([ID])
GO
ALTER TABLE [dbo].[Ispit_Odrzavanje]  WITH CHECK ADD FOREIGN KEY([IspitID])
REFERENCES [dbo].[Ispit] ([ID])
GO
ALTER TABLE [dbo].[Ispit_Odrzavanje]  WITH CHECK ADD FOREIGN KEY([IspitID])
REFERENCES [dbo].[Ispit] ([ID])
GO
ALTER TABLE [dbo].[Ispit_Odrzavanje]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Ispit_Odrzavanje]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[login]  WITH CHECK ADD FOREIGN KEY([korisnikID])
REFERENCES [dbo].[Korisnik] ([ID])
GO
ALTER TABLE [dbo].[Materijal]  WITH CHECK ADD FOREIGN KEY([StudentID], [ProfesorID], [KursID])
REFERENCES [dbo].[Odeljenje] ([StudentID], [ProfesorID], [KursID])
GO
ALTER TABLE [dbo].[Materijal]  WITH CHECK ADD FOREIGN KEY([StudentID], [ProfesorID], [KursID])
REFERENCES [dbo].[Odeljenje] ([StudentID], [ProfesorID], [KursID])
GO
ALTER TABLE [dbo].[Materijal]  WITH CHECK ADD FOREIGN KEY([StudentID], [ProfesorID], [KursID])
REFERENCES [dbo].[Odeljenje] ([StudentID], [ProfesorID], [KursID])
GO
ALTER TABLE [dbo].[Materijal]  WITH CHECK ADD FOREIGN KEY([StudentID], [ProfesorID], [KursID])
REFERENCES [dbo].[Odeljenje] ([StudentID], [ProfesorID], [KursID])
GO
ALTER TABLE [dbo].[Odeljenje]  WITH CHECK ADD FOREIGN KEY([KursID])
REFERENCES [dbo].[Kurs] ([ID])
GO
ALTER TABLE [dbo].[Odeljenje]  WITH CHECK ADD FOREIGN KEY([KursID])
REFERENCES [dbo].[Kurs] ([ID])
GO
ALTER TABLE [dbo].[Odeljenje]  WITH CHECK ADD FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesor] ([ProfesorID])
GO
ALTER TABLE [dbo].[Odeljenje]  WITH CHECK ADD FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Profesor] ([ProfesorID])
GO
ALTER TABLE [dbo].[Odeljenje]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Odeljenje]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[prisustvuje]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[prisustvuje]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Profesor]  WITH CHECK ADD FOREIGN KEY([ProfesorID])
REFERENCES [dbo].[Korisnik] ([ID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Korisnik] ([ID])
GO
ALTER TABLE [dbo].[Transakcija]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Transakcija]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Transakcija]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Transakcija]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
USE [master]
GO
ALTER DATABASE [SkolaS] SET  READ_WRITE 
GO
