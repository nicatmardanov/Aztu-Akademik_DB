USE [master]
GO
/****** Object:  Database [Aztu-Akademik]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE DATABASE [Aztu-Akademik]
 CONTAINMENT = NONE
GO
ALTER DATABASE [Aztu-Akademik] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Aztu-Akademik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Aztu-Akademik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET ARITHABORT OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Aztu-Akademik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Aztu-Akademik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Aztu-Akademik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Aztu-Akademik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Aztu-Akademik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Aztu-Akademik] SET  MULTI_USER 
GO
ALTER DATABASE [Aztu-Akademik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Aztu-Akademik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Aztu-Akademik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Aztu-Akademik] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Aztu-Akademik]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[researcher_id] [int] NULL,
 CONSTRAINT [PK_Announcement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Article]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[volume] [nvarchar](max) NULL,
	[page_start] [int] NULL,
	[page_end] [int] NULL,
	[url] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[creator_id] [int] NULL,
	[file_id] [bigint] NULL,
	[journal_id] [int] NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[researcher_id] [int] NULL,
	[file_id] [bigint] NULL,
 CONSTRAINT [PK_Certificate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NOT NULL,
	[status_id] [tinyint] NULL,
	[type_id] [smallint] NULL,
	[researcher_id] [int] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[icon] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[short_name] [nvarchar](100) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[faculty_id] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dissertation]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dissertation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[education_id] [bigint] NULL,
	[file_id] [bigint] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Dissertation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationDegree]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationDegree](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_EducationDegree] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationForm]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationForm](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[description] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_EducationForm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationLevel]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationLevel](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[description] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_EducationLevel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationOrganization]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationOrganization](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[short_name] [nvarchar](100) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[type_id] [tinyint] NULL,
 CONSTRAINT [PK_EducationOrganization] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationOrganizationType]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationOrganizationType](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_EducationOrganizationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExternalResearcher]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalResearcher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[organization_id] [int] NULL,
 CONSTRAINT [PK_ExternalResearcher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[short_name] [nvarchar](50) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[File]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[type] [tinyint] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Journal]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[indexed] [tinyint] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Journal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[iso_639_1] [nvarchar](1000) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LanguageLevels]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageLevels](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[short_name] [nvarchar](50) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_LanguageLevels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_name] [nvarchar](200) NULL,
	[ipAddress] [nvarchar](300) NULL,
	[description] [nvarchar](max) NULL,
	[additional_information] [varchar](500) NULL,
	[create_date] [datetime] NULL,
	[ref_id] [bigint] NULL,
	[user_id] [int] NULL,
	[operation_id] [tinyint] NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ManagementExperience]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagementExperience](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[researcher_id] [int] NULL,
	[organization_id] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_ManagementExperience] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Operation]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PasswordReset]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordReset](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](100) NULL,
	[hash] [nvarchar](max) NULL,
	[user_id] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_PasswordReset] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patent]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[apply_date] [datetime] NULL,
	[registration_date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[organization_id] [int] NULL,
	[researcher_id] [int] NULL,
 CONSTRAINT [PK_Patent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profession]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profession](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[department_id] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Profession] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[organization_id] [int] NULL,
	[researcher_id] [int] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rel_ArticleResearcher]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_ArticleResearcher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[article_id] [int] NULL,
	[int_author_id] [int] NULL,
	[ext_author_id] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[type] [tinyint] NULL,
 CONSTRAINT [PK_Rel_ArticleResearcher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rel_PatentResearcher]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_PatentResearcher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[type] [tinyint] NULL,
	[patent_id] [int] NULL,
	[int_author_id] [int] NULL,
	[ext_author_id] [int] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Rel_PatentResearcher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rel_ProjectResearcher]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_ProjectResearcher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[type] [tinyint] NULL,
	[project_id] [int] NULL,
	[int_author_id] [int] NULL,
	[ext_author_id] [int] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Rel_ProjectResearcher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rel_Researcher_ResearcherArea]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_Researcher_ResearcherArea](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[researcher_id] [int] NULL,
	[area_id] [int] NULL,
 CONSTRAINT [PK_Rel_Researcher_ResearcherArea] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rel_ResearcherDegree]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_ResearcherDegree](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[researcher_id] [int] NULL,
	[degree_id] [int] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_Rel_ResearcherDegree] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rel_TextbookResearcher]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_TextbookResearcher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[textbook_id] [int] NULL,
	[int_author_id] [int] NULL,
	[ext_author_id] [int] NULL,
	[type] [tinyint] NULL,
 CONSTRAINT [PK_Rel_TextbookResearcher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rel_ThesisResearcher]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rel_ThesisResearcher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[thesis_id] [int] NULL,
	[int_author_id] [int] NULL,
	[ext_author_id] [int] NULL,
	[type] [tinyint] NULL,
 CONSTRAINT [PK_Rel_ThesisResearcher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResearchArea]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResearchArea](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_ResearchArea] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResearcherEducation]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResearcherEducation](
	[id] [bigint] NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[researcher_id] [int] NULL,
	[form_id] [smallint] NULL,
	[level_id] [smallint] NULL,
	[organization_id] [int] NULL,
	[country_id] [smallint] NULL,
	[language_id] [smallint] NULL,
	[profession_id] [int] NULL,
	[status_id] [tinyint] NULL,
 CONSTRAINT [PK_ResearcherEducation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResearcherLanguage]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResearcherLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[researcher_id] [int] NULL,
	[language_id] [smallint] NULL,
	[level_id] [smallint] NULL,
	[file_id] [bigint] NULL,
 CONSTRAINT [PK_ResearcherLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResearcherPosition]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResearcherPosition](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[researcher_id] [int] NULL,
	[organization_id] [int] NULL,
	[position_id] [int] NULL,
	[department_id] [int] NULL,
 CONSTRAINT [PK_ResearcherPosition] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Textbook]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Textbook](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[publisher_id] [int] NULL,
	[creator_id] [int] NULL,
 CONSTRAINT [PK_Textbook] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thesis]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thesis](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[date] [datetime] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[publisher_id] [int] NULL,
	[creator_id] [int] NULL,
 CONSTRAINT [PK_Thesis] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 12/19/2020 3:46:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](100) NULL,
	[last_name] [nvarchar](100) NULL,
	[patronymic] [nvarchar](100) NULL,
	[image_address] [varchar](max) NULL,
	[email] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[is_online] [bit] NULL,
	[last_seen] [datetime] NULL,
	[create_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[delete_date] [datetime] NULL,
	[status_id] [tinyint] NULL,
	[nationality_id] [smallint] NULL,
	[citizenship_id] [smallint] NULL,
	[role_id] [tinyint] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Announcement] ON 

INSERT [dbo].[Announcement] ([id], [title], [description], [create_date], [update_date], [delete_date], [status_id], [researcher_id]) VALUES (1, N'yeni elan', N'yeni elan mətni', CAST(0x0000AC9600F88282 AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Announcement] OFF
SET IDENTITY_INSERT [dbo].[LanguageLevels] ON 

INSERT [dbo].[LanguageLevels] ([id], [name], [short_name], [create_date], [update_date], [delete_date], [status_id]) VALUES (1, N'interfilan', N'stringer', CAST(0x0000AC8900FF0490 AS DateTime), CAST(0x0000AC89011770D2 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[LanguageLevels] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([id], [table_name], [ipAddress], [description], [additional_information], [create_date], [ref_id], [user_id], [operation_id]) VALUES (4, N'User', N'127.0.0.1', N'', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', CAST(0x0000AC9600F72F94 AS DateTime), 1, 1, 4)
INSERT [dbo].[Log] ([id], [table_name], [ipAddress], [description], [additional_information], [create_date], [ref_id], [user_id], [operation_id]) VALUES (5, N'User', N'127.0.0.1', N'', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', CAST(0x0000AC9600F80956 AS DateTime), 1, 1, 4)
INSERT [dbo].[Log] ([id], [table_name], [ipAddress], [description], [additional_information], [create_date], [ref_id], [user_id], [operation_id]) VALUES (6, N'Announcement', N'127.0.0.1', N'', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:84.0) Gecko/20100101 Firefox/84.0', CAST(0x0000AC9600F88293 AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Log] OFF
SET IDENTITY_INSERT [dbo].[Operation] ON 

INSERT [dbo].[Operation] ([id], [name]) VALUES (1, N'Add')
INSERT [dbo].[Operation] ([id], [name]) VALUES (2, N'Update')
INSERT [dbo].[Operation] ([id], [name]) VALUES (3, N'Delete')
INSERT [dbo].[Operation] ([id], [name]) VALUES (4, N'Login')
SET IDENTITY_INSERT [dbo].[Operation] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [first_name], [last_name], [patronymic], [image_address], [email], [password], [is_online], [last_seen], [create_date], [update_date], [delete_date], [status_id], [nationality_id], [citizenship_id], [role_id]) VALUES (1, N'Nijat', N'Mardanli', NULL, NULL, N'nicat@aztu.edu.az', N'nicat123', NULL, CAST(0x0000AC9600F80902 AS DateTime), CAST(0x0000AC8900FC2592 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Index [IX_Announcement_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Announcement_DeleteDate] ON [dbo].[Announcement]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Article_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Article_DeleteDate] ON [dbo].[Article]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Certificate_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Certificate_DeleteDate] ON [dbo].[Certificate]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Contact_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Contact_DeleteDate] ON [dbo].[Contact]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContactType_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ContactType_DeleteDate] ON [dbo].[ContactType]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Country_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Country_DeleteDate] ON [dbo].[Country]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Department_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Department_DeleteDate] ON [dbo].[Department]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Dissertation_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Dissertation_DeleteDate] ON [dbo].[Dissertation]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EducationDegree_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_EducationDegree_DeleteDate] ON [dbo].[EducationDegree]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EducationForm_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_EducationForm_DeleteDate] ON [dbo].[EducationForm]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EducationLevel_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_EducationLevel_DeleteDate] ON [dbo].[EducationLevel]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EducationOrganization_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_EducationOrganization_DeleteDate] ON [dbo].[EducationOrganization]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EducationOrganizationType_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_EducationOrganizationType_DeleteDate] ON [dbo].[EducationOrganizationType]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ExternalResearcher_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ExternalResearcher_DeleteDate] ON [dbo].[ExternalResearcher]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Faculty_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Faculty_DeleteDate] ON [dbo].[Faculty]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_File_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_File_DeleteDate] ON [dbo].[File]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Journal_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Journal_DeleteDate] ON [dbo].[Journal]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Language_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Language_DeleteDate] ON [dbo].[Language]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_LanguageLevels_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_LanguageLevels_DeleteDate] ON [dbo].[LanguageLevels]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Log_TableName]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Log_TableName] ON [dbo].[Log]
(
	[table_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Log_UserId]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Log_UserId] ON [dbo].[Log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ManagementExperience_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ManagementExperience_DeleteDate] ON [dbo].[ManagementExperience]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PasswordReset_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_PasswordReset_DeleteDate] ON [dbo].[PasswordReset]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Patent_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Patent_DeleteDate] ON [dbo].[Patent]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Position_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Position_DeleteDate] ON [dbo].[Position]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Profession_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Profession_DeleteDate] ON [dbo].[Profession]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Project_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Project_DeleteDate] ON [dbo].[Project]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rel_ArticleResearcher_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rel_ArticleResearcher_DeleteDate] ON [dbo].[Rel_ArticleResearcher]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rel_PatentResearcher_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rel_PatentResearcher_DeleteDate] ON [dbo].[Rel_PatentResearcher]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rel_ProjectResearcher_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rel_ProjectResearcher_DeleteDate] ON [dbo].[Rel_ProjectResearcher]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rel_Researcher_ResearcherArea_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rel_Researcher_ResearcherArea_DeleteDate] ON [dbo].[Rel_Researcher_ResearcherArea]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rel_ResearcherDegree_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rel_ResearcherDegree_DeleteDate] ON [dbo].[Rel_ResearcherDegree]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rel_TextbookResearcher_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rel_TextbookResearcher_DeleteDate] ON [dbo].[Rel_TextbookResearcher]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rel_ThesisResearcher_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Rel_ThesisResearcher_DeleteDate] ON [dbo].[Rel_ThesisResearcher]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResearchArea_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ResearchArea_DeleteDate] ON [dbo].[ResearchArea]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResearcherEducation_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ResearcherEducation_DeleteDate] ON [dbo].[ResearcherEducation]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResearcherLanguage_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ResearcherLanguage_DeleteDate] ON [dbo].[ResearcherLanguage]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ResearcherPosition_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_ResearcherPosition_DeleteDate] ON [dbo].[ResearcherPosition]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Textbook_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Textbook_DeleteDate] ON [dbo].[Textbook]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Thesis_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_Thesis_DeleteDate] ON [dbo].[Thesis]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_DeleteDate]    Script Date: 12/19/2020 3:46:01 PM ******/
CREATE NONCLUSTERED INDEX [IX_User_DeleteDate] ON [dbo].[User]
(
	[delete_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD  CONSTRAINT [FK_Announcement_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Announcement] CHECK CONSTRAINT [FK_Announcement_User]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_File] FOREIGN KEY([file_id])
REFERENCES [dbo].[File] ([id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_File]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_Journal] FOREIGN KEY([journal_id])
REFERENCES [dbo].[Journal] ([id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_Journal]
GO
ALTER TABLE [dbo].[Article]  WITH CHECK ADD  CONSTRAINT [FK_Article_User] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Article] CHECK CONSTRAINT [FK_Article_User]
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD  CONSTRAINT [FK_Certificate_File] FOREIGN KEY([file_id])
REFERENCES [dbo].[File] ([id])
GO
ALTER TABLE [dbo].[Certificate] CHECK CONSTRAINT [FK_Certificate_File]
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD  CONSTRAINT [FK_Certificate_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Certificate] CHECK CONSTRAINT [FK_Certificate_User]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_ContactType] FOREIGN KEY([type_id])
REFERENCES [dbo].[ContactType] ([id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_ContactType]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_User]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Faculty] FOREIGN KEY([faculty_id])
REFERENCES [dbo].[Faculty] ([id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Faculty]
GO
ALTER TABLE [dbo].[Dissertation]  WITH CHECK ADD  CONSTRAINT [FK_Dissertation_File] FOREIGN KEY([file_id])
REFERENCES [dbo].[File] ([id])
GO
ALTER TABLE [dbo].[Dissertation] CHECK CONSTRAINT [FK_Dissertation_File]
GO
ALTER TABLE [dbo].[Dissertation]  WITH CHECK ADD  CONSTRAINT [FK_Dissertation_ResearcherEducation] FOREIGN KEY([education_id])
REFERENCES [dbo].[ResearcherEducation] ([id])
GO
ALTER TABLE [dbo].[Dissertation] CHECK CONSTRAINT [FK_Dissertation_ResearcherEducation]
GO
ALTER TABLE [dbo].[EducationOrganization]  WITH CHECK ADD  CONSTRAINT [FK_EducationOrganization_EducationOrganizationType] FOREIGN KEY([type_id])
REFERENCES [dbo].[EducationOrganizationType] ([id])
GO
ALTER TABLE [dbo].[EducationOrganization] CHECK CONSTRAINT [FK_EducationOrganization_EducationOrganizationType]
GO
ALTER TABLE [dbo].[ExternalResearcher]  WITH CHECK ADD  CONSTRAINT [FK_ExternalResearcher_EducationOrganization] FOREIGN KEY([organization_id])
REFERENCES [dbo].[EducationOrganization] ([id])
GO
ALTER TABLE [dbo].[ExternalResearcher] CHECK CONSTRAINT [FK_ExternalResearcher_EducationOrganization]
GO
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_User]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK_Log_Operation] FOREIGN KEY([operation_id])
REFERENCES [dbo].[Operation] ([id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK_Log_Operation]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [FK_Log_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [FK_Log_User]
GO
ALTER TABLE [dbo].[ManagementExperience]  WITH CHECK ADD  CONSTRAINT [FK_ManagementExperience_EducationOrganization] FOREIGN KEY([organization_id])
REFERENCES [dbo].[EducationOrganization] ([id])
GO
ALTER TABLE [dbo].[ManagementExperience] CHECK CONSTRAINT [FK_ManagementExperience_EducationOrganization]
GO
ALTER TABLE [dbo].[ManagementExperience]  WITH CHECK ADD  CONSTRAINT [FK_ManagementExperience_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ManagementExperience] CHECK CONSTRAINT [FK_ManagementExperience_User]
GO
ALTER TABLE [dbo].[PasswordReset]  WITH CHECK ADD  CONSTRAINT [FK_PasswordReset_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[PasswordReset] CHECK CONSTRAINT [FK_PasswordReset_User]
GO
ALTER TABLE [dbo].[Patent]  WITH CHECK ADD  CONSTRAINT [FK_Patent_EducationOrganization] FOREIGN KEY([organization_id])
REFERENCES [dbo].[EducationOrganization] ([id])
GO
ALTER TABLE [dbo].[Patent] CHECK CONSTRAINT [FK_Patent_EducationOrganization]
GO
ALTER TABLE [dbo].[Patent]  WITH CHECK ADD  CONSTRAINT [FK_Patent_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Patent] CHECK CONSTRAINT [FK_Patent_User]
GO
ALTER TABLE [dbo].[Profession]  WITH CHECK ADD  CONSTRAINT [FK_Profession_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Profession] CHECK CONSTRAINT [FK_Profession_Department]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_EducationOrganization] FOREIGN KEY([organization_id])
REFERENCES [dbo].[EducationOrganization] ([id])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_EducationOrganization]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_User]
GO
ALTER TABLE [dbo].[Rel_ArticleResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ArticleResearcher_Article] FOREIGN KEY([article_id])
REFERENCES [dbo].[Article] ([id])
GO
ALTER TABLE [dbo].[Rel_ArticleResearcher] CHECK CONSTRAINT [FK_Rel_ArticleResearcher_Article]
GO
ALTER TABLE [dbo].[Rel_ArticleResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ArticleResearcher_ExternalResearcher] FOREIGN KEY([ext_author_id])
REFERENCES [dbo].[ExternalResearcher] ([id])
GO
ALTER TABLE [dbo].[Rel_ArticleResearcher] CHECK CONSTRAINT [FK_Rel_ArticleResearcher_ExternalResearcher]
GO
ALTER TABLE [dbo].[Rel_ArticleResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ArticleResearcher_User] FOREIGN KEY([int_author_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rel_ArticleResearcher] CHECK CONSTRAINT [FK_Rel_ArticleResearcher_User]
GO
ALTER TABLE [dbo].[Rel_PatentResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_PatentResearcher_ExternalResearcher] FOREIGN KEY([ext_author_id])
REFERENCES [dbo].[ExternalResearcher] ([id])
GO
ALTER TABLE [dbo].[Rel_PatentResearcher] CHECK CONSTRAINT [FK_Rel_PatentResearcher_ExternalResearcher]
GO
ALTER TABLE [dbo].[Rel_PatentResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_PatentResearcher_Patent] FOREIGN KEY([patent_id])
REFERENCES [dbo].[Patent] ([id])
GO
ALTER TABLE [dbo].[Rel_PatentResearcher] CHECK CONSTRAINT [FK_Rel_PatentResearcher_Patent]
GO
ALTER TABLE [dbo].[Rel_PatentResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_PatentResearcher_User] FOREIGN KEY([int_author_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rel_PatentResearcher] CHECK CONSTRAINT [FK_Rel_PatentResearcher_User]
GO
ALTER TABLE [dbo].[Rel_ProjectResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ProjectResearcher_ExternalResearcher] FOREIGN KEY([ext_author_id])
REFERENCES [dbo].[ExternalResearcher] ([id])
GO
ALTER TABLE [dbo].[Rel_ProjectResearcher] CHECK CONSTRAINT [FK_Rel_ProjectResearcher_ExternalResearcher]
GO
ALTER TABLE [dbo].[Rel_ProjectResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ProjectResearcher_Project] FOREIGN KEY([project_id])
REFERENCES [dbo].[Project] ([id])
GO
ALTER TABLE [dbo].[Rel_ProjectResearcher] CHECK CONSTRAINT [FK_Rel_ProjectResearcher_Project]
GO
ALTER TABLE [dbo].[Rel_ProjectResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ProjectResearcher_User] FOREIGN KEY([int_author_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rel_ProjectResearcher] CHECK CONSTRAINT [FK_Rel_ProjectResearcher_User]
GO
ALTER TABLE [dbo].[Rel_Researcher_ResearcherArea]  WITH CHECK ADD  CONSTRAINT [FK_Rel_Researcher_ResearcherArea_ResearchArea] FOREIGN KEY([area_id])
REFERENCES [dbo].[ResearchArea] ([id])
GO
ALTER TABLE [dbo].[Rel_Researcher_ResearcherArea] CHECK CONSTRAINT [FK_Rel_Researcher_ResearcherArea_ResearchArea]
GO
ALTER TABLE [dbo].[Rel_Researcher_ResearcherArea]  WITH CHECK ADD  CONSTRAINT [FK_Rel_Researcher_ResearcherArea_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rel_Researcher_ResearcherArea] CHECK CONSTRAINT [FK_Rel_Researcher_ResearcherArea_User]
GO
ALTER TABLE [dbo].[Rel_ResearcherDegree]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ResearcherDegree_EducationDegree] FOREIGN KEY([degree_id])
REFERENCES [dbo].[EducationDegree] ([id])
GO
ALTER TABLE [dbo].[Rel_ResearcherDegree] CHECK CONSTRAINT [FK_Rel_ResearcherDegree_EducationDegree]
GO
ALTER TABLE [dbo].[Rel_ResearcherDegree]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ResearcherDegree_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rel_ResearcherDegree] CHECK CONSTRAINT [FK_Rel_ResearcherDegree_User]
GO
ALTER TABLE [dbo].[Rel_TextbookResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_TextbookResearcher_ExternalResearcher] FOREIGN KEY([ext_author_id])
REFERENCES [dbo].[ExternalResearcher] ([id])
GO
ALTER TABLE [dbo].[Rel_TextbookResearcher] CHECK CONSTRAINT [FK_Rel_TextbookResearcher_ExternalResearcher]
GO
ALTER TABLE [dbo].[Rel_TextbookResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_TextbookResearcher_Textbook] FOREIGN KEY([textbook_id])
REFERENCES [dbo].[Textbook] ([id])
GO
ALTER TABLE [dbo].[Rel_TextbookResearcher] CHECK CONSTRAINT [FK_Rel_TextbookResearcher_Textbook]
GO
ALTER TABLE [dbo].[Rel_TextbookResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_TextbookResearcher_User] FOREIGN KEY([int_author_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rel_TextbookResearcher] CHECK CONSTRAINT [FK_Rel_TextbookResearcher_User]
GO
ALTER TABLE [dbo].[Rel_ThesisResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ThesisResearcher_ExternalResearcher] FOREIGN KEY([ext_author_id])
REFERENCES [dbo].[ExternalResearcher] ([id])
GO
ALTER TABLE [dbo].[Rel_ThesisResearcher] CHECK CONSTRAINT [FK_Rel_ThesisResearcher_ExternalResearcher]
GO
ALTER TABLE [dbo].[Rel_ThesisResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ThesisResearcher_Thesis] FOREIGN KEY([thesis_id])
REFERENCES [dbo].[Thesis] ([id])
GO
ALTER TABLE [dbo].[Rel_ThesisResearcher] CHECK CONSTRAINT [FK_Rel_ThesisResearcher_Thesis]
GO
ALTER TABLE [dbo].[Rel_ThesisResearcher]  WITH CHECK ADD  CONSTRAINT [FK_Rel_ThesisResearcher_User] FOREIGN KEY([int_author_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Rel_ThesisResearcher] CHECK CONSTRAINT [FK_Rel_ThesisResearcher_User]
GO
ALTER TABLE [dbo].[ResearcherEducation]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherEducation_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[ResearcherEducation] CHECK CONSTRAINT [FK_ResearcherEducation_Country]
GO
ALTER TABLE [dbo].[ResearcherEducation]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherEducation_EducationForm] FOREIGN KEY([form_id])
REFERENCES [dbo].[EducationForm] ([id])
GO
ALTER TABLE [dbo].[ResearcherEducation] CHECK CONSTRAINT [FK_ResearcherEducation_EducationForm]
GO
ALTER TABLE [dbo].[ResearcherEducation]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherEducation_EducationLevel] FOREIGN KEY([level_id])
REFERENCES [dbo].[EducationLevel] ([id])
GO
ALTER TABLE [dbo].[ResearcherEducation] CHECK CONSTRAINT [FK_ResearcherEducation_EducationLevel]
GO
ALTER TABLE [dbo].[ResearcherEducation]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherEducation_EducationOrganization] FOREIGN KEY([organization_id])
REFERENCES [dbo].[EducationOrganization] ([id])
GO
ALTER TABLE [dbo].[ResearcherEducation] CHECK CONSTRAINT [FK_ResearcherEducation_EducationOrganization]
GO
ALTER TABLE [dbo].[ResearcherEducation]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherEducation_Language] FOREIGN KEY([language_id])
REFERENCES [dbo].[Language] ([id])
GO
ALTER TABLE [dbo].[ResearcherEducation] CHECK CONSTRAINT [FK_ResearcherEducation_Language]
GO
ALTER TABLE [dbo].[ResearcherEducation]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherEducation_Profession] FOREIGN KEY([profession_id])
REFERENCES [dbo].[Profession] ([id])
GO
ALTER TABLE [dbo].[ResearcherEducation] CHECK CONSTRAINT [FK_ResearcherEducation_Profession]
GO
ALTER TABLE [dbo].[ResearcherEducation]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherEducation_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ResearcherEducation] CHECK CONSTRAINT [FK_ResearcherEducation_User]
GO
ALTER TABLE [dbo].[ResearcherLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherLanguage_File] FOREIGN KEY([file_id])
REFERENCES [dbo].[File] ([id])
GO
ALTER TABLE [dbo].[ResearcherLanguage] CHECK CONSTRAINT [FK_ResearcherLanguage_File]
GO
ALTER TABLE [dbo].[ResearcherLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherLanguage_Language] FOREIGN KEY([language_id])
REFERENCES [dbo].[Language] ([id])
GO
ALTER TABLE [dbo].[ResearcherLanguage] CHECK CONSTRAINT [FK_ResearcherLanguage_Language]
GO
ALTER TABLE [dbo].[ResearcherLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherLanguage_LanguageLevels] FOREIGN KEY([level_id])
REFERENCES [dbo].[LanguageLevels] ([id])
GO
ALTER TABLE [dbo].[ResearcherLanguage] CHECK CONSTRAINT [FK_ResearcherLanguage_LanguageLevels]
GO
ALTER TABLE [dbo].[ResearcherLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherLanguage_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ResearcherLanguage] CHECK CONSTRAINT [FK_ResearcherLanguage_User]
GO
ALTER TABLE [dbo].[ResearcherPosition]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherPosition_Department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[ResearcherPosition] CHECK CONSTRAINT [FK_ResearcherPosition_Department]
GO
ALTER TABLE [dbo].[ResearcherPosition]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherPosition_EducationOrganization] FOREIGN KEY([organization_id])
REFERENCES [dbo].[EducationOrganization] ([id])
GO
ALTER TABLE [dbo].[ResearcherPosition] CHECK CONSTRAINT [FK_ResearcherPosition_EducationOrganization]
GO
ALTER TABLE [dbo].[ResearcherPosition]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherPosition_Position] FOREIGN KEY([position_id])
REFERENCES [dbo].[Position] ([id])
GO
ALTER TABLE [dbo].[ResearcherPosition] CHECK CONSTRAINT [FK_ResearcherPosition_Position]
GO
ALTER TABLE [dbo].[ResearcherPosition]  WITH CHECK ADD  CONSTRAINT [FK_ResearcherPosition_User] FOREIGN KEY([researcher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[ResearcherPosition] CHECK CONSTRAINT [FK_ResearcherPosition_User]
GO
ALTER TABLE [dbo].[Textbook]  WITH CHECK ADD  CONSTRAINT [FK_Textbook_User] FOREIGN KEY([publisher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Textbook] CHECK CONSTRAINT [FK_Textbook_User]
GO
ALTER TABLE [dbo].[Textbook]  WITH CHECK ADD  CONSTRAINT [FK_Textbook_User1] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Textbook] CHECK CONSTRAINT [FK_Textbook_User1]
GO
ALTER TABLE [dbo].[Thesis]  WITH CHECK ADD  CONSTRAINT [FK_Thesis_User] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Thesis] CHECK CONSTRAINT [FK_Thesis_User]
GO
ALTER TABLE [dbo].[Thesis]  WITH CHECK ADD  CONSTRAINT [FK_Thesis_User1] FOREIGN KEY([publisher_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Thesis] CHECK CONSTRAINT [FK_Thesis_User1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Country] FOREIGN KEY([nationality_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Country]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Country1] FOREIGN KEY([citizenship_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Country1]
GO
USE [master]
GO
ALTER DATABASE [Aztu-Akademik] SET  READ_WRITE 
GO
