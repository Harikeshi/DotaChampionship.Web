USE [master]
GO
/****** Object:  Database [DotaChampionatship]    Script Date: 24.06.2020 21:48:26 ******/
CREATE DATABASE [DotaChampionatship]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DotaChampionatship', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DotaChampionatship.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DotaChampionatship_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DotaChampionatship_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DotaChampionatship] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DotaChampionatship].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DotaChampionatship] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DotaChampionatship] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DotaChampionatship] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DotaChampionatship] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DotaChampionatship] SET ARITHABORT OFF 
GO
ALTER DATABASE [DotaChampionatship] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DotaChampionatship] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DotaChampionatship] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DotaChampionatship] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DotaChampionatship] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DotaChampionatship] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DotaChampionatship] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DotaChampionatship] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DotaChampionatship] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DotaChampionatship] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DotaChampionatship] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DotaChampionatship] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DotaChampionatship] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DotaChampionatship] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DotaChampionatship] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DotaChampionatship] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DotaChampionatship] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DotaChampionatship] SET RECOVERY FULL 
GO
ALTER DATABASE [DotaChampionatship] SET  MULTI_USER 
GO
ALTER DATABASE [DotaChampionatship] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DotaChampionatship] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DotaChampionatship] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DotaChampionatship] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DotaChampionatship] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DotaChampionatship', N'ON'
GO
ALTER DATABASE [DotaChampionatship] SET QUERY_STORE = OFF
GO
USE [DotaChampionatship]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commentators]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commentators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NickName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[GameId] [int] NOT NULL,
 CONSTRAINT [PK_Commentators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[Logo] [varbinary](max) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BeginTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NOT NULL,
	[TournamentId] [int] NOT NULL,
	[GameType] [int] NOT NULL,
	[Score1] [nvarchar](max) NULL,
	[Score2] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personals]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[Sex] [nvarchar](10) NULL,
	[PlayerId] [int] NOT NULL,
 CONSTRAINT [PK_Personals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[TeamId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[NickName] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[Logo] [varbinary](max) NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[First] [nvarchar](max) NULL,
	[Second] [nvarchar](max) NULL,
	[Third] [nvarchar](max) NULL,
	[FirstPrice] [decimal](18, 2) NOT NULL,
	[SecondPrice] [decimal](18, 2) NOT NULL,
	[ThirdPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamGames]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamGames](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GameId] [int] NOT NULL,
	[TeamId] [int] NOT NULL,
	[Score] [nvarchar](max) NULL,
 CONSTRAINT [PK_TeamGames] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[CountryId] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Logo] [nvarchar](max) NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tournaments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[YearId] [int] NOT NULL,
	[ResultId] [int] NOT NULL,
 CONSTRAINT [PK_Tournaments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Years]    Script Date: 24.06.2020 21:48:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Years](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NOT NULL,
	[Years] [nvarchar](max) NULL,
 CONSTRAINT [PK_Years] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Commentators_GameId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE NONCLUSTERED INDEX [IX_Commentators_GameId] ON [dbo].[Commentators]
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Games_TournamentId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE NONCLUSTERED INDEX [IX_Games_TournamentId] ON [dbo].[Games]
(
	[TournamentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Personals_PlayerId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Personals_PlayerId] ON [dbo].[Personals]
(
	[PlayerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Players_CountryId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE NONCLUSTERED INDEX [IX_Players_CountryId] ON [dbo].[Players]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Players_TeamId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE NONCLUSTERED INDEX [IX_Players_TeamId] ON [dbo].[Players]
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TeamGames_GameId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE NONCLUSTERED INDEX [IX_TeamGames_GameId] ON [dbo].[TeamGames]
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TeamGames_TeamId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE NONCLUSTERED INDEX [IX_TeamGames_TeamId] ON [dbo].[TeamGames]
(
	[TeamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Teams_CountryId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE NONCLUSTERED INDEX [IX_Teams_CountryId] ON [dbo].[Teams]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tournaments_CountryId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Tournaments_CountryId] ON [dbo].[Tournaments]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tournaments_ResultId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Tournaments_ResultId] ON [dbo].[Tournaments]
(
	[ResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tournaments_YearId]    Script Date: 24.06.2020 21:48:26 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Tournaments_YearId] ON [dbo].[Tournaments]
(
	[YearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Games] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [BeginTime]
GO
ALTER TABLE [dbo].[Games] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [EndTime]
GO
ALTER TABLE [dbo].[Games] ADD  DEFAULT ((0)) FOR [TournamentId]
GO
ALTER TABLE [dbo].[Games] ADD  DEFAULT ((0)) FOR [GameType]
GO
ALTER TABLE [dbo].[Teams] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Teams] ADD  DEFAULT ((0)) FOR [Year]
GO
ALTER TABLE [dbo].[Tournaments] ADD  DEFAULT ((0)) FOR [ResultId]
GO
ALTER TABLE [dbo].[Commentators]  WITH CHECK ADD  CONSTRAINT [FK_Commentators_Games_GameId] FOREIGN KEY([GameId])
REFERENCES [dbo].[Games] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Commentators] CHECK CONSTRAINT [FK_Commentators_Games_GameId]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Tournaments_TournamentId] FOREIGN KEY([TournamentId])
REFERENCES [dbo].[Tournaments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [FK_Games_Tournaments_TournamentId]
GO
ALTER TABLE [dbo].[Personals]  WITH CHECK ADD  CONSTRAINT [FK_Personals_Players_PlayerId] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personals] CHECK CONSTRAINT [FK_Personals_Players_PlayerId]
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Countries_CountryId]
GO
ALTER TABLE [dbo].[Players]  WITH CHECK ADD  CONSTRAINT [FK_Players_Teams_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Players] CHECK CONSTRAINT [FK_Players_Teams_TeamId]
GO
ALTER TABLE [dbo].[TeamGames]  WITH CHECK ADD  CONSTRAINT [FK_TeamGames_Games_GameId] FOREIGN KEY([GameId])
REFERENCES [dbo].[Games] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamGames] CHECK CONSTRAINT [FK_TeamGames_Games_GameId]
GO
ALTER TABLE [dbo].[TeamGames]  WITH CHECK ADD  CONSTRAINT [FK_TeamGames_Teams_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Teams] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TeamGames] CHECK CONSTRAINT [FK_TeamGames_Teams_TeamId]
GO
ALTER TABLE [dbo].[Teams]  WITH CHECK ADD  CONSTRAINT [FK_Teams_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Teams] CHECK CONSTRAINT [FK_Teams_Countries_CountryId]
GO
ALTER TABLE [dbo].[Tournaments]  WITH CHECK ADD  CONSTRAINT [FK_Tournaments_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tournaments] CHECK CONSTRAINT [FK_Tournaments_Countries_CountryId]
GO
ALTER TABLE [dbo].[Tournaments]  WITH CHECK ADD  CONSTRAINT [FK_Tournaments_Results_ResultId] FOREIGN KEY([ResultId])
REFERENCES [dbo].[Results] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tournaments] CHECK CONSTRAINT [FK_Tournaments_Results_ResultId]
GO
ALTER TABLE [dbo].[Tournaments]  WITH CHECK ADD  CONSTRAINT [FK_Tournaments_Years_YearId] FOREIGN KEY([YearId])
REFERENCES [dbo].[Years] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tournaments] CHECK CONSTRAINT [FK_Tournaments_Years_YearId]
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD  CONSTRAINT [CK_Games_GameType_Enum_Constraint] CHECK  (([GameType]=(12) OR [GameType]=(11) OR [GameType]=(10) OR [GameType]=(9) OR [GameType]=(8) OR [GameType]=(7) OR [GameType]=(6) OR [GameType]=(5) OR [GameType]=(4) OR [GameType]=(3) OR [GameType]=(2) OR [GameType]=(1) OR [GameType]=(0)))
GO
ALTER TABLE [dbo].[Games] CHECK CONSTRAINT [CK_Games_GameType_Enum_Constraint]
GO
USE [master]
GO
ALTER DATABASE [DotaChampionatship] SET  READ_WRITE 
GO
