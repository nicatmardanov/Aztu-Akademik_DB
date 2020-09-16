USE [master]
GO
/****** Object:  Database [Aztu-Akademik]    Script Date: 9/16/2020 12:44:47 PM ******/
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
/****** Object:  Table [dbo].[A_Saheleri_Adlari]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[A_Saheleri_Adlari](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kafedra_Id] [int] NULL,
	[Ad] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Administrativ_vezifeler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrativ_vezifeler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vezife_ad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Administrativ_vezifeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arasdirma_Saheleri]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arasdirma_Saheleri](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sahe_Id] [int] NULL,
	[Arasdirmaci_Id] [int] NULL,
 CONSTRAINT [PK_Arasdirma_Saheleri] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arasdirmaci_administrativ_vezife]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arasdirmaci_administrativ_vezife](
	[Arasdirmaci_ID] [int] NULL,
	[Administrativ_vezife_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arasdirmaci_Dil]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arasdirmaci_Dil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[xarici_dil_id] [int] NULL,
	[dil_seviyye] [tinyint] NULL,
	[arasdirmaci_id] [int] NULL,
 CONSTRAINT [PK_Arasdirmaci_Dil] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arasdirmaci_Meqale]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arasdirmaci_Meqale](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Arasdirmaci_ID] [int] NULL,
	[Meqale_ID] [int] NULL,
	[Elmi_Rehber] [bit] NULL,
 CONSTRAINT [PK_Arasdirmaci_Meqale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arasdirmaci_pedoqoji_ad]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arasdirmaci_pedoqoji_ad](
	[Arasdirmaci_pedoqoji_Ad_ID] [int] IDENTITY(1,1) NOT NULL,
	[Arasdirmaci_ad] [nvarchar](20) NULL,
 CONSTRAINT [PK_Arasdirmaci_pedoqoji_ad] PRIMARY KEY CLUSTERED 
(
	[Arasdirmaci_pedoqoji_Ad_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arasdirmacilar]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arasdirmacilar](
	[ID] [int] IDENTITY(1000,1) NOT NULL,
	[Arasdirmaci_Ad] [nvarchar](50) NULL,
	[Arasdirmaci_Soyad] [nvarchar](50) NULL,
	[Kafedra_ID] [int] NULL,
	[Tehsil_seviyyesi_ID] [int] NULL,
	[Mesleki_Idari_Deneyim_iD] [int] NULL,
	[Arasdirmaci_emeil] [nvarchar](50) NULL,
	[Arasdirmaci_password] [nvarchar](50) NULL,
	[Arasdirmaci_pedoqoji_ad_ID] [int] NULL,
	[cv_adres] [nvarchar](500) NULL,
	[profil_shekil] [nvarchar](500) NULL,
	[rol_id] [int] NULL,
 CONSTRAINT [PK_Arasdirmacilar2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Arasdirmacilar_Elmi_jurnaldaki_vezifeleri]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arasdirmacilar_Elmi_jurnaldaki_vezifeleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[arasdirmaci_ID] [int] NULL,
	[elmi_jurnaldaki_vezife_ID] [int] NULL,
 CONSTRAINT [PK_Arasdirmacilar_Elmi_jurnaldaki_vezifeleri_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bakalavriat_siyahi]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bakalavriat_siyahi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bakalavr_Universitet] [int] NULL,
	[Bakalavr_baslangic_il] [date] NULL,
	[Bakalavr_bitis_il] [date] NULL,
	[Bakalavr_disertasiya_ad] [nvarchar](70) NULL,
	[Bakalavr_disertasiya_PDF_ID] [int] NULL,
 CONSTRAINT [PK_Bakalavriat_seviyyes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ders_arasdirmaci]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ders_arasdirmaci](
	[ders_ID] [int] NULL,
	[Arasdirmaci_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kafedra_ID] [int] NULL,
	[Ders_Seviyye] [nvarchar](20) NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dil_Seviyye]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dil_Seviyye](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[seviyye_ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dil_Seviyye] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elanlar]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elanlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](200) NULL,
	[aciqlama] [nvarchar](max) NULL,
	[arasdirmaci_id] [int] NULL,
 CONSTRAINT [PK_Elanlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elaqe]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elaqe](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nchar](50) NULL,
	[web_site] [nvarchar](100) NULL,
	[facebook] [nvarchar](500) NULL,
	[linkedin] [nvarchar](500) NULL,
	[instagram] [nvarchar](500) NULL,
	[scopus_link] [nvarchar](500) NULL,
	[google_scholar_link] [nvarchar](500) NULL,
	[number] [nvarchar](100) NULL,
	[arasdirmaci_id] [int] NULL,
 CONSTRAINT [PK_Elaqe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elmi_jurnaldaki_vezifeler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elmi_jurnaldaki_vezifeler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Vezife_ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Elmi_jurnaldaki_vezifeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Elmler_doktorlugu_siyahi]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elmler_doktorlugu_siyahi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[elmler_doktoru_universitet_ID] [int] NULL,
	[elmler_doktoru_baslangic_il] [date] NULL,
	[elmler_doktoru_bitis_il] [date] NULL,
	[elmler_doktoru_disertasiya_ad] [nvarchar](500) NULL,
	[elmler_doktoru__disertasiya_PDF_ID] [int] NULL,
 CONSTRAINT [PK_Elmler_doktorlugu_siyahi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[elmler_namizedlik_siyahi]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[elmler_namizedlik_siyahi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[elmler_namizedi_universitet_ID] [int] NULL,
	[elmler_namizedi_baslangic_il] [date] NULL,
	[elmler_namizedi_bitis_il] [date] NULL,
	[elmler_namizedi_disertasiya_ad] [nvarchar](100) NOT NULL,
	[elmler_namizedi_disertasiya_PDF_ID] [int] NULL,
 CONSTRAINT [PK_elmler_namizedlik_siyahi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fakulteler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fakulteler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fakulte_Ad] [nvarchar](10) NULL,
	[Kafedra_ID] [int] NULL,
 CONSTRAINT [PK_Fakulteler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Is_tecrubesi]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Is_tecrubesi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Is_vezife] [nvarchar](250) NOT NULL,
	[Is_yeri] [nvarchar](300) NULL,
	[Is_baslangic_tarixi] [date] NULL,
	[Is_bitis_tarixi] [date] NULL,
	[arasdirmaci_id] [int] NULL,
 CONSTRAINT [PK_Is_tecrubesi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jurnallar]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jurnallar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Jurnal_ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Jurnallar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[kafedralar]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kafedralar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kafedra_Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_kafedralar2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Magistrantura_siyahisi]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Magistrantura_siyahisi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Magistr_Universitet_ID] [int] NULL,
	[Magistr_baslangic_il] [date] NULL,
	[Magistr_bitis_il] [date] NULL,
	[Magistr_disertasiya_ad] [nvarchar](70) NOT NULL,
	[Magistr_disertasiya_PDF_ID] [int] NULL,
 CONSTRAINT [PK_Magistrantura_siyahisi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Meqale_Nov]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meqale_Nov](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Meqale_Nov_Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Meqale_Nov] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Meqaleler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meqaleler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Meqale_Ad] [nvarchar](500) NULL,
	[Meqale_Haqqinda] [nvarchar](max) NULL,
	[Meqale_il] [date] NULL,
	[Meqale_nov_Id] [tinyint] NULL,
	[Olke] [nvarchar](60) NULL,
	[Universitet_Id] [int] NULL,
	[Sahe_Id] [int] NULL,
	[Meqale_jurnal_ID] [int] NULL,
	[Indeks_Meqale] [bit] NULL,
 CONSTRAINT [PK_Meqale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mesleki_Idari_Deneyim]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesleki_Idari_Deneyim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mesleki-idari_Deneyim_Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mesleki_Idari_Deneyim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mukafatlar]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mukafatlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Arasdirmaci_ID] [int] NULL,
	[Mukafat_ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Mukafatlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patentler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patentler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Patent_Ad] [nvarchar](60) NULL,
	[Arasdirmaci_ID] [int] NULL,
 CONSTRAINT [PK_Patentler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pdfler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pdfler](
	[ID] [int] IDENTITY(10000,1) NOT NULL,
	[Meqale_ID] [int] NOT NULL,
	[PDF_Location] [text] NOT NULL,
 CONSTRAINT [PK_Pdfler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rol_ad] [nvarchar](10) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sertifikatlar]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sertifikatlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Sertifikat_ad] [nvarchar](70) NULL,
	[Arasdirmaci_ID] [int] NULL,
	[Aciqlama] [nvarchar](200) NULL,
	[sertifikat_link] [nvarchar](500) NULL,
	[pdf_adres] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sertifikatlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tehsil_seviyye]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tehsil_seviyye](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Bakalavr_ID] [int] NULL,
	[Magistr_ID] [int] NULL,
	[elmler_namizedi_ID] [int] NULL,
	[elmler_doktoru] [int] NULL,
	[arasdirmaci_id] [int] NULL,
 CONSTRAINT [PK_Tehsil_seviyye] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Universitetler]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universitetler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Universitet_Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Universitetler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Xarici_Dil]    Script Date: 9/16/2020 12:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xarici_Dil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](100) NULL,
 CONSTRAINT [PK_Xarici_Dil] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[A_Saheleri_Adlari] ON 

INSERT [dbo].[A_Saheleri_Adlari] ([ID], [Kafedra_Id], [Ad]) VALUES (1, NULL, N'Elm-texnika')
SET IDENTITY_INSERT [dbo].[A_Saheleri_Adlari] OFF
SET IDENTITY_INSERT [dbo].[Arasdirma_Saheleri] ON 

INSERT [dbo].[Arasdirma_Saheleri] ([ID], [Sahe_Id], [Arasdirmaci_Id]) VALUES (1, 1, 1005)
SET IDENTITY_INSERT [dbo].[Arasdirma_Saheleri] OFF
SET IDENTITY_INSERT [dbo].[Arasdirmaci_Dil] ON 

INSERT [dbo].[Arasdirmaci_Dil] ([id], [xarici_dil_id], [dil_seviyye], [arasdirmaci_id]) VALUES (1, 1, 4, 1005)
SET IDENTITY_INSERT [dbo].[Arasdirmaci_Dil] OFF
SET IDENTITY_INSERT [dbo].[Arasdirmaci_Meqale] ON 

INSERT [dbo].[Arasdirmaci_Meqale] ([Id], [Arasdirmaci_ID], [Meqale_ID], [Elmi_Rehber]) VALUES (1, 1006, 1, NULL)
INSERT [dbo].[Arasdirmaci_Meqale] ([Id], [Arasdirmaci_ID], [Meqale_ID], [Elmi_Rehber]) VALUES (5, 1005, 2, NULL)
INSERT [dbo].[Arasdirmaci_Meqale] ([Id], [Arasdirmaci_ID], [Meqale_ID], [Elmi_Rehber]) VALUES (8, 1007, 2, NULL)
SET IDENTITY_INSERT [dbo].[Arasdirmaci_Meqale] OFF
SET IDENTITY_INSERT [dbo].[Arasdirmacilar] ON 

INSERT [dbo].[Arasdirmacilar] ([ID], [Arasdirmaci_Ad], [Arasdirmaci_Soyad], [Kafedra_ID], [Tehsil_seviyyesi_ID], [Mesleki_Idari_Deneyim_iD], [Arasdirmaci_emeil], [Arasdirmaci_password], [Arasdirmaci_pedoqoji_ad_ID], [cv_adres], [profil_shekil], [rol_id]) VALUES (1005, N'Nicat', N'Mardanov', 1, NULL, NULL, N'nicat@aztu.edu.az', N'nicat123', NULL, NULL, NULL, 1)
INSERT [dbo].[Arasdirmacilar] ([ID], [Arasdirmaci_Ad], [Arasdirmaci_Soyad], [Kafedra_ID], [Tehsil_seviyyesi_ID], [Mesleki_Idari_Deneyim_iD], [Arasdirmaci_emeil], [Arasdirmaci_password], [Arasdirmaci_pedoqoji_ad_ID], [cv_adres], [profil_shekil], [rol_id]) VALUES (1006, N'string', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Arasdirmacilar] ([ID], [Arasdirmaci_Ad], [Arasdirmaci_Soyad], [Kafedra_ID], [Tehsil_seviyyesi_ID], [Mesleki_Idari_Deneyim_iD], [Arasdirmaci_emeil], [Arasdirmaci_password], [Arasdirmaci_pedoqoji_ad_ID], [cv_adres], [profil_shekil], [rol_id]) VALUES (1007, N'string11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Arasdirmacilar] OFF
SET IDENTITY_INSERT [dbo].[Bakalavriat_siyahi] ON 

INSERT [dbo].[Bakalavriat_siyahi] ([ID], [Bakalavr_Universitet], [Bakalavr_baslangic_il], [Bakalavr_bitis_il], [Bakalavr_disertasiya_ad], [Bakalavr_disertasiya_PDF_ID]) VALUES (1, 2, CAST(0x02390B00 AS Date), CAST(0x6B3E0B00 AS Date), N'Deykstra alqoritmi', NULL)
SET IDENTITY_INSERT [dbo].[Bakalavriat_siyahi] OFF
SET IDENTITY_INSERT [dbo].[Dil_Seviyye] ON 

INSERT [dbo].[Dil_Seviyye] ([id], [seviyye_ad]) VALUES (1, N'Başlanğıc')
INSERT [dbo].[Dil_Seviyye] ([id], [seviyye_ad]) VALUES (2, N'Elementar')
INSERT [dbo].[Dil_Seviyye] ([id], [seviyye_ad]) VALUES (3, N'Orta')
INSERT [dbo].[Dil_Seviyye] ([id], [seviyye_ad]) VALUES (4, N'Yaxşı')
INSERT [dbo].[Dil_Seviyye] ([id], [seviyye_ad]) VALUES (5, N'Sərbəst')
SET IDENTITY_INSERT [dbo].[Dil_Seviyye] OFF
SET IDENTITY_INSERT [dbo].[Elanlar] ON 

INSERT [dbo].[Elanlar] ([id], [ad], [aciqlama], [arasdirmaci_id]) VALUES (1, N'Test elan adi', N'Test elan aciqlama', 1005)
INSERT [dbo].[Elanlar] ([id], [ad], [aciqlama], [arasdirmaci_id]) VALUES (2, N'Test elan adi 1', N'Test elan aciqlama 1', 1005)
SET IDENTITY_INSERT [dbo].[Elanlar] OFF
SET IDENTITY_INSERT [dbo].[Elmler_doktorlugu_siyahi] ON 

INSERT [dbo].[Elmler_doktorlugu_siyahi] ([ID], [elmler_doktoru_universitet_ID], [elmler_doktoru_baslangic_il], [elmler_doktoru_bitis_il], [elmler_doktoru_disertasiya_ad], [elmler_doktoru__disertasiya_PDF_ID]) VALUES (1, 1, CAST(0x6C440B00 AS Date), CAST(0xB4480B00 AS Date), N'test', NULL)
SET IDENTITY_INSERT [dbo].[Elmler_doktorlugu_siyahi] OFF
SET IDENTITY_INSERT [dbo].[elmler_namizedlik_siyahi] ON 

INSERT [dbo].[elmler_namizedlik_siyahi] ([ID], [elmler_namizedi_universitet_ID], [elmler_namizedi_baslangic_il], [elmler_namizedi_bitis_il], [elmler_namizedi_disertasiya_ad], [elmler_namizedi_disertasiya_PDF_ID]) VALUES (3, 1, CAST(0xB73E0B00 AS Date), CAST(0x6C440B00 AS Date), N'Test', NULL)
SET IDENTITY_INSERT [dbo].[elmler_namizedlik_siyahi] OFF
SET IDENTITY_INSERT [dbo].[Fakulteler] ON 

INSERT [dbo].[Fakulteler] ([ID], [Fakulte_Ad], [Kafedra_ID]) VALUES (1, N'AKT', NULL)
SET IDENTITY_INSERT [dbo].[Fakulteler] OFF
SET IDENTITY_INSERT [dbo].[Is_tecrubesi] ON 

INSERT [dbo].[Is_tecrubesi] ([ID], [Is_vezife], [Is_yeri], [Is_baslangic_tarixi], [Is_bitis_tarixi], [arasdirmaci_id]) VALUES (1, N'Proqramçı', N'ADY QSC', CAST(0x53400B00 AS Date), CAST(0xAF400B00 AS Date), 1005)
SET IDENTITY_INSERT [dbo].[Is_tecrubesi] OFF
SET IDENTITY_INSERT [dbo].[Jurnallar] ON 

INSERT [dbo].[Jurnallar] ([ID], [Jurnal_ad]) VALUES (1, N'Jurnal1')
INSERT [dbo].[Jurnallar] ([ID], [Jurnal_ad]) VALUES (2, N'Jurnal2')
SET IDENTITY_INSERT [dbo].[Jurnallar] OFF
SET IDENTITY_INSERT [dbo].[kafedralar] ON 

INSERT [dbo].[kafedralar] ([Id], [Kafedra_Ad]) VALUES (1, N'Kompüter sistemləri və şəbəkələri')
SET IDENTITY_INSERT [dbo].[kafedralar] OFF
SET IDENTITY_INSERT [dbo].[Meqale_Nov] ON 

INSERT [dbo].[Meqale_Nov] ([id], [Meqale_Nov_Ad]) VALUES (1, N'Məqalə')
INSERT [dbo].[Meqale_Nov] ([id], [Meqale_Nov_Ad]) VALUES (2, N'Monoqraf')
INSERT [dbo].[Meqale_Nov] ([id], [Meqale_Nov_Ad]) VALUES (3, N'Dərslik')
INSERT [dbo].[Meqale_Nov] ([id], [Meqale_Nov_Ad]) VALUES (4, N'Tezis')
SET IDENTITY_INSERT [dbo].[Meqale_Nov] OFF
SET IDENTITY_INSERT [dbo].[Meqaleler] ON 

INSERT [dbo].[Meqaleler] ([Id], [Meqale_Ad], [Meqale_Haqqinda], [Meqale_il], [Meqale_nov_Id], [Olke], [Universitet_Id], [Sahe_Id], [Meqale_jurnal_ID], [Indeks_Meqale]) VALUES (1, N'Meqale Test', NULL, NULL, NULL, N'Aze', 1, NULL, 1, NULL)
INSERT [dbo].[Meqaleler] ([Id], [Meqale_Ad], [Meqale_Haqqinda], [Meqale_il], [Meqale_nov_Id], [Olke], [Universitet_Id], [Sahe_Id], [Meqale_jurnal_ID], [Indeks_Meqale]) VALUES (2, N'aaaa', NULL, NULL, NULL, N'Azərbaycan', 2, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Meqaleler] OFF
SET IDENTITY_INSERT [dbo].[Patentler] ON 

INSERT [dbo].[Patentler] ([ID], [Patent_Ad], [Arasdirmaci_ID]) VALUES (1, N'Patent ad', 1005)
SET IDENTITY_INSERT [dbo].[Patentler] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([id], [rol_ad]) VALUES (1, N'Admin')
INSERT [dbo].[Rol] ([id], [rol_ad]) VALUES (2, N'İstifadəçi')
SET IDENTITY_INSERT [dbo].[Rol] OFF
SET IDENTITY_INSERT [dbo].[Sertifikatlar] ON 

INSERT [dbo].[Sertifikatlar] ([id], [Sertifikat_ad], [Arasdirmaci_ID], [Aciqlama], [sertifikat_link], [pdf_adres]) VALUES (1, N'MTA', 1005, N'sertifikat aciqlama', N'http://microsoft.com', NULL)
SET IDENTITY_INSERT [dbo].[Sertifikatlar] OFF
SET IDENTITY_INSERT [dbo].[Tehsil_seviyye] ON 

INSERT [dbo].[Tehsil_seviyye] ([ID], [Bakalavr_ID], [Magistr_ID], [elmler_namizedi_ID], [elmler_doktoru], [arasdirmaci_id]) VALUES (4, 1, NULL, 3, 1, 1005)
SET IDENTITY_INSERT [dbo].[Tehsil_seviyye] OFF
SET IDENTITY_INSERT [dbo].[Universitetler] ON 

INSERT [dbo].[Universitetler] ([ID], [Universitet_Ad]) VALUES (1, N'Azərbaycan Texniki Universiteti')
INSERT [dbo].[Universitetler] ([ID], [Universitet_Ad]) VALUES (2, N'Azərbaycan Dövlət Neft və Sənaye Universiteti')
SET IDENTITY_INSERT [dbo].[Universitetler] OFF
SET IDENTITY_INSERT [dbo].[Xarici_Dil] ON 

INSERT [dbo].[Xarici_Dil] ([id], [ad]) VALUES (1, N'İngilis dili')
SET IDENTITY_INSERT [dbo].[Xarici_Dil] OFF
ALTER TABLE [dbo].[A_Saheleri_Adlari]  WITH CHECK ADD  CONSTRAINT [FK_A_Saheleri_Adlari_kafedralar] FOREIGN KEY([Kafedra_Id])
REFERENCES [dbo].[kafedralar] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[A_Saheleri_Adlari] CHECK CONSTRAINT [FK_A_Saheleri_Adlari_kafedralar]
GO
ALTER TABLE [dbo].[Arasdirma_Saheleri]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirma_Saheleri_A_Saheleri_Adlari] FOREIGN KEY([Sahe_Id])
REFERENCES [dbo].[A_Saheleri_Adlari] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirma_Saheleri] CHECK CONSTRAINT [FK_Arasdirma_Saheleri_A_Saheleri_Adlari]
GO
ALTER TABLE [dbo].[Arasdirma_Saheleri]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirma_Saheleri_Arasdirmacilar] FOREIGN KEY([Arasdirmaci_Id])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirma_Saheleri] CHECK CONSTRAINT [FK_Arasdirma_Saheleri_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Arasdirmaci_administrativ_vezife]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmaci_administrativ_vezife_Administrativ_vezifeler] FOREIGN KEY([Administrativ_vezife_ID])
REFERENCES [dbo].[Administrativ_vezifeler] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmaci_administrativ_vezife] CHECK CONSTRAINT [FK_Arasdirmaci_administrativ_vezife_Administrativ_vezifeler]
GO
ALTER TABLE [dbo].[Arasdirmaci_administrativ_vezife]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmaci_administrativ_vezife_Arasdirmacilar] FOREIGN KEY([Arasdirmaci_ID])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmaci_administrativ_vezife] CHECK CONSTRAINT [FK_Arasdirmaci_administrativ_vezife_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Arasdirmaci_Dil]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmaci_Dil_Arasdirmacilar] FOREIGN KEY([arasdirmaci_id])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmaci_Dil] CHECK CONSTRAINT [FK_Arasdirmaci_Dil_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Arasdirmaci_Dil]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmaci_Dil_Dil_Seviyye] FOREIGN KEY([dil_seviyye])
REFERENCES [dbo].[Dil_Seviyye] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmaci_Dil] CHECK CONSTRAINT [FK_Arasdirmaci_Dil_Dil_Seviyye]
GO
ALTER TABLE [dbo].[Arasdirmaci_Dil]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmaci_Dil_Xarici_Dil] FOREIGN KEY([xarici_dil_id])
REFERENCES [dbo].[Xarici_Dil] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmaci_Dil] CHECK CONSTRAINT [FK_Arasdirmaci_Dil_Xarici_Dil]
GO
ALTER TABLE [dbo].[Arasdirmaci_Meqale]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmaci_Meqale_Arasdirmacilar] FOREIGN KEY([Arasdirmaci_ID])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmaci_Meqale] CHECK CONSTRAINT [FK_Arasdirmaci_Meqale_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Arasdirmaci_Meqale]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmaci_Meqale_Meqaleler] FOREIGN KEY([Meqale_ID])
REFERENCES [dbo].[Meqaleler] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmaci_Meqale] CHECK CONSTRAINT [FK_Arasdirmaci_Meqale_Meqaleler]
GO
ALTER TABLE [dbo].[Arasdirmacilar]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmacilar_Arasdirmaci_Pedoqoji_Ad] FOREIGN KEY([Arasdirmaci_pedoqoji_ad_ID])
REFERENCES [dbo].[Arasdirmaci_pedoqoji_ad] ([Arasdirmaci_pedoqoji_Ad_ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmacilar] CHECK CONSTRAINT [FK_Arasdirmacilar_Arasdirmaci_Pedoqoji_Ad]
GO
ALTER TABLE [dbo].[Arasdirmacilar]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmacilar_kafedralar] FOREIGN KEY([Kafedra_ID])
REFERENCES [dbo].[kafedralar] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmacilar] CHECK CONSTRAINT [FK_Arasdirmacilar_kafedralar]
GO
ALTER TABLE [dbo].[Arasdirmacilar]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmacilar_Mesleki_Idari_Deneyim] FOREIGN KEY([Mesleki_Idari_Deneyim_iD])
REFERENCES [dbo].[Mesleki_Idari_Deneyim] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmacilar] CHECK CONSTRAINT [FK_Arasdirmacilar_Mesleki_Idari_Deneyim]
GO
ALTER TABLE [dbo].[Arasdirmacilar]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmacilar_Rol] FOREIGN KEY([rol_id])
REFERENCES [dbo].[Rol] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmacilar] CHECK CONSTRAINT [FK_Arasdirmacilar_Rol]
GO
ALTER TABLE [dbo].[Arasdirmacilar_Elmi_jurnaldaki_vezifeleri]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmacilar_Elmi_jurnaldaki_vezifeleri_Arasdirmacilar] FOREIGN KEY([arasdirmaci_ID])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmacilar_Elmi_jurnaldaki_vezifeleri] CHECK CONSTRAINT [FK_Arasdirmacilar_Elmi_jurnaldaki_vezifeleri_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Arasdirmacilar_Elmi_jurnaldaki_vezifeleri]  WITH CHECK ADD  CONSTRAINT [FK_Arasdirmacilar_Elmi_jurnaldaki_vezifeleri_Elmi_jurnaldaki_vezifeler] FOREIGN KEY([elmi_jurnaldaki_vezife_ID])
REFERENCES [dbo].[Elmi_jurnaldaki_vezifeler] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Arasdirmacilar_Elmi_jurnaldaki_vezifeleri] CHECK CONSTRAINT [FK_Arasdirmacilar_Elmi_jurnaldaki_vezifeleri_Elmi_jurnaldaki_vezifeler]
GO
ALTER TABLE [dbo].[Ders_arasdirmaci]  WITH CHECK ADD  CONSTRAINT [FK_Ders_arasdirmaci_Arasdirmacilar] FOREIGN KEY([Arasdirmaci_ID])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ders_arasdirmaci] CHECK CONSTRAINT [FK_Ders_arasdirmaci_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Ders_arasdirmaci]  WITH CHECK ADD  CONSTRAINT [FK_Ders_arasdirmaci_Dersler] FOREIGN KEY([ders_ID])
REFERENCES [dbo].[Dersler] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Ders_arasdirmaci] CHECK CONSTRAINT [FK_Ders_arasdirmaci_Dersler]
GO
ALTER TABLE [dbo].[Dersler]  WITH CHECK ADD  CONSTRAINT [FK_Dersler_kafedralar] FOREIGN KEY([Kafedra_ID])
REFERENCES [dbo].[kafedralar] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Dersler] CHECK CONSTRAINT [FK_Dersler_kafedralar]
GO
ALTER TABLE [dbo].[Elanlar]  WITH CHECK ADD  CONSTRAINT [FK_Elanlar_Arasdirmacilar] FOREIGN KEY([arasdirmaci_id])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Elanlar] CHECK CONSTRAINT [FK_Elanlar_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Elaqe]  WITH CHECK ADD  CONSTRAINT [FK_Elaqe_Arasdirmacilar] FOREIGN KEY([arasdirmaci_id])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Elaqe] CHECK CONSTRAINT [FK_Elaqe_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Fakulteler]  WITH CHECK ADD  CONSTRAINT [FK_Fakulteler_kafedralar] FOREIGN KEY([Kafedra_ID])
REFERENCES [dbo].[kafedralar] ([Id])
GO
ALTER TABLE [dbo].[Fakulteler] CHECK CONSTRAINT [FK_Fakulteler_kafedralar]
GO
ALTER TABLE [dbo].[Is_tecrubesi]  WITH CHECK ADD  CONSTRAINT [FK_Is_tecrubesi_Arasdirmacilar] FOREIGN KEY([arasdirmaci_id])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Is_tecrubesi] CHECK CONSTRAINT [FK_Is_tecrubesi_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Meqaleler]  WITH CHECK ADD  CONSTRAINT [FK_Meqale_Jurnallar] FOREIGN KEY([Meqale_jurnal_ID])
REFERENCES [dbo].[Jurnallar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Meqaleler] CHECK CONSTRAINT [FK_Meqale_Jurnallar]
GO
ALTER TABLE [dbo].[Meqaleler]  WITH CHECK ADD  CONSTRAINT [FK_Meqale_Universitetler] FOREIGN KEY([Universitet_Id])
REFERENCES [dbo].[Universitetler] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Meqaleler] CHECK CONSTRAINT [FK_Meqale_Universitetler]
GO
ALTER TABLE [dbo].[Meqaleler]  WITH CHECK ADD  CONSTRAINT [FK_Meqaleler_Meqale_Nov] FOREIGN KEY([Meqale_nov_Id])
REFERENCES [dbo].[Meqale_Nov] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Meqaleler] CHECK CONSTRAINT [FK_Meqaleler_Meqale_Nov]
GO
ALTER TABLE [dbo].[Mukafatlar]  WITH CHECK ADD  CONSTRAINT [FK_Mukafatlar_Arasdirmacilar] FOREIGN KEY([Arasdirmaci_ID])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Mukafatlar] CHECK CONSTRAINT [FK_Mukafatlar_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Patentler]  WITH CHECK ADD  CONSTRAINT [FK_Patentler_Arasdirmacilar] FOREIGN KEY([Arasdirmaci_ID])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Patentler] CHECK CONSTRAINT [FK_Patentler_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Pdfler]  WITH CHECK ADD  CONSTRAINT [FK_Pdfler_Meqale] FOREIGN KEY([Meqale_ID])
REFERENCES [dbo].[Meqaleler] ([Id])
GO
ALTER TABLE [dbo].[Pdfler] CHECK CONSTRAINT [FK_Pdfler_Meqale]
GO
ALTER TABLE [dbo].[Sertifikatlar]  WITH CHECK ADD  CONSTRAINT [FK_Sertifikatlar_Arasdirmacilar] FOREIGN KEY([Arasdirmaci_ID])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Sertifikatlar] CHECK CONSTRAINT [FK_Sertifikatlar_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Tehsil_seviyye]  WITH CHECK ADD  CONSTRAINT [FK_Tehsil_seviyye_Arasdirmacilar] FOREIGN KEY([arasdirmaci_id])
REFERENCES [dbo].[Arasdirmacilar] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Tehsil_seviyye] CHECK CONSTRAINT [FK_Tehsil_seviyye_Arasdirmacilar]
GO
ALTER TABLE [dbo].[Tehsil_seviyye]  WITH CHECK ADD  CONSTRAINT [FK_Tehsil_seviyye_Bakalavriat_siyahi] FOREIGN KEY([Bakalavr_ID])
REFERENCES [dbo].[Bakalavriat_siyahi] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Tehsil_seviyye] CHECK CONSTRAINT [FK_Tehsil_seviyye_Bakalavriat_siyahi]
GO
ALTER TABLE [dbo].[Tehsil_seviyye]  WITH CHECK ADD  CONSTRAINT [FK_Tehsil_seviyye_Elmler_doktorlugu_siyahi] FOREIGN KEY([elmler_doktoru])
REFERENCES [dbo].[Elmler_doktorlugu_siyahi] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Tehsil_seviyye] CHECK CONSTRAINT [FK_Tehsil_seviyye_Elmler_doktorlugu_siyahi]
GO
ALTER TABLE [dbo].[Tehsil_seviyye]  WITH CHECK ADD  CONSTRAINT [FK_Tehsil_seviyye_elmler_namizedlik_siyahi1] FOREIGN KEY([elmler_namizedi_ID])
REFERENCES [dbo].[elmler_namizedlik_siyahi] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Tehsil_seviyye] CHECK CONSTRAINT [FK_Tehsil_seviyye_elmler_namizedlik_siyahi1]
GO
ALTER TABLE [dbo].[Tehsil_seviyye]  WITH CHECK ADD  CONSTRAINT [FK_Tehsil_seviyye_Magistrantura_siyahisi] FOREIGN KEY([Magistr_ID])
REFERENCES [dbo].[Magistrantura_siyahisi] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Tehsil_seviyye] CHECK CONSTRAINT [FK_Tehsil_seviyye_Magistrantura_siyahisi]
GO
USE [master]
GO
ALTER DATABASE [Aztu-Akademik] SET  READ_WRITE 
GO
