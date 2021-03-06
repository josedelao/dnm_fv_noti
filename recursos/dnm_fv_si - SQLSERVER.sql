USE [master]
GO
/****** Object:  Database [dnm_fv_si]    Script Date: 18/6/2021 07:31:10 ******/
CREATE DATABASE [dnm_fv_si]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dnm_fv_si', FILENAME = N'G:\DATASQL\dnm_fv_si.mdf' , SIZE = 75072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dnm_fv_si_log', FILENAME = N'G:\DATASQL\dnm_fv_si_log.ldf' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dnm_fv_si] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dnm_fv_si].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dnm_fv_si] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dnm_fv_si] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dnm_fv_si] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dnm_fv_si] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dnm_fv_si] SET ARITHABORT OFF 
GO
ALTER DATABASE [dnm_fv_si] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dnm_fv_si] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dnm_fv_si] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dnm_fv_si] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dnm_fv_si] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dnm_fv_si] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dnm_fv_si] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dnm_fv_si] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dnm_fv_si] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dnm_fv_si] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dnm_fv_si] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dnm_fv_si] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dnm_fv_si] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dnm_fv_si] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dnm_fv_si] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dnm_fv_si] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dnm_fv_si] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dnm_fv_si] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dnm_fv_si] SET  MULTI_USER 
GO
ALTER DATABASE [dnm_fv_si] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dnm_fv_si] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dnm_fv_si] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dnm_fv_si] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dnm_fv_si] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dnm_fv_si', N'ON'
GO
USE [dnm_fv_si]
GO
/****** Object:  User [prueba]    Script Date: 18/6/2021 07:31:12 ******/
CREATE USER [prueba] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MEDICAMENTOS\rogelio.menjivar]    Script Date: 18/6/2021 07:31:12 ******/
CREATE USER [MEDICAMENTOS\rogelio.menjivar] FOR LOGIN [MEDICAMENTOS\rogelio.menjivar] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MEDICAMENTOS\luis.rivera]    Script Date: 18/6/2021 07:31:12 ******/
CREATE USER [MEDICAMENTOS\luis.rivera] FOR LOGIN [MEDICAMENTOS\luis.rivera] WITH DEFAULT_SCHEMA=[FV]
GO
/****** Object:  User [MEDICAMENTOS\Desarrollo]    Script Date: 18/6/2021 07:31:12 ******/
CREATE USER [MEDICAMENTOS\Desarrollo] FOR LOGIN [MEDICAMENTOS\Desarrollo]
GO
/****** Object:  User [MEDICAMENTOS\ana.orellana]    Script Date: 18/6/2021 07:31:12 ******/
CREATE USER [MEDICAMENTOS\ana.orellana] FOR LOGIN [MEDICAMENTOS\ana.orellana] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MEDICAMENTOS\rogelio.menjivar]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MEDICAMENTOS\luis.rivera]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MEDICAMENTOS\Desarrollo]
GO
ALTER ROLE [db_owner] ADD MEMBER [MEDICAMENTOS\ana.orellana]
GO
/****** Object:  Schema [ADM]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [ADM]
GO
/****** Object:  Schema [CAT]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [CAT]
GO
/****** Object:  Schema [DPX]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [DPX]
GO
/****** Object:  Schema [FV]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [FV]
GO
/****** Object:  Schema [IPS]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [IPS]
GO
/****** Object:  Schema [MDRA]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [MDRA]
GO
/****** Object:  Schema [PGR]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [PGR]
GO
/****** Object:  Schema [PRM]    Script Date: 18/6/2021 07:31:13 ******/
CREATE SCHEMA [PRM]
GO
/****** Object:  Table [ADM].[opcionesFarmaco]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADM].[opcionesFarmaco](
	[idOpcion] [int] NOT NULL,
	[nombreOpcion] [nvarchar](50) NOT NULL,
	[estado] [int] NOT NULL,
 CONSTRAINT [PK_opcionesUsuarios] PRIMARY KEY CLUSTERED 
(
	[idOpcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ADM].[opcionesReferentes]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADM].[opcionesReferentes](
	[idOpcion] [int] NOT NULL,
	[nombreOpcion] [nvarchar](150) NOT NULL,
	[privilegio] [nchar](4) NOT NULL,
 CONSTRAINT [PK_opcionesReferentes] PRIMARY KEY CLUSTERED 
(
	[idOpcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ADM].[perfilReferentes]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADM].[perfilReferentes](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[nombrePerfil] [text] NOT NULL,
	[tipoPerfil] [char](3) NOT NULL,
 CONSTRAINT [PK_perfilReferentes] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ADM].[referentesSupervision]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADM].[referentesSupervision](
	[idUsuarioRef] [int] NOT NULL,
	[idPerfilReferente] [int] NOT NULL,
	[idInstitucion] [int] NOT NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[idUsuarioCrea] [varchar](50) NOT NULL,
 CONSTRAINT [PK_referentesSupervision_1] PRIMARY KEY CLUSTERED 
(
	[idUsuarioRef] ASC,
	[idPerfilReferente] ASC,
	[idInstitucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ADM].[rolesReferentes]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADM].[rolesReferentes](
	[indexReferente] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idPerfil] [int] NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioCreacion] [varchar](50) NULL,
 CONSTRAINT [PK_rolesRefentes] PRIMARY KEY CLUSTERED 
(
	[indexReferente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ADM].[usuariosFarmaco]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADM].[usuariosFarmaco](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombresUsuario] [varchar](80) NOT NULL,
	[apellidosUsuario] [varchar](80) NOT NULL,
	[emailUsuario] [varchar](120) NOT NULL,
	[passwdUsuario] [varchar](50) NOT NULL,
	[chgPassword] [char](1) NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[idUsuarioCrea] [varchar](50) NOT NULL,
	[fechaModificacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](50) NULL,
	[idPerfil] [int] NULL,
	[estado] [nchar](1) NOT NULL,
 CONSTRAINT [PK_usuariosFarmaco] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ADM].[usuariosReferentes]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ADM].[usuariosReferentes](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombresUsuario] [text] NOT NULL,
	[apellidosUsuario] [text] NOT NULL,
	[emailUsuario] [varchar](100) NOT NULL,
	[estadoUsuario] [char](1) NOT NULL,
	[passwd] [varchar](50) NOT NULL,
	[chgPassswd] [char](1) NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[idUsuarioCrea] [varchar](50) NOT NULL,
	[fechaModificacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](50) NULL,
	[idEfectora] [int] NULL,
	[idEstablecimiento] [int] NULL,
 CONSTRAINT [PK_usuariosReferentes] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_emailUsuarioRef] UNIQUE NONCLUSTERED 
(
	[emailUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CAT].[accionTomada]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[accionTomada](
	[idAccion] [int] NOT NULL,
	[nombreAccion] [varchar](300) NOT NULL,
 CONSTRAINT [PK_accionTomada] PRIMARY KEY CLUSTERED 
(
	[idAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[causalidadPrm]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[causalidadPrm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreCausalidad] [varchar](250) NOT NULL,
	[estado] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[causaMuerte]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[causaMuerte](
	[idCausa] [int] NOT NULL,
	[nombreCausa] [varchar](600) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[clasificacionFinalEsavi]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[clasificacionFinalEsavi](
	[idClasificacionFinalEsavi] [int] IDENTITY(1,1) NOT NULL,
	[nombreClaFinalEsavi] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[idClasificacionFinalEsavi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CAT].[clasificacionNaranjo]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[clasificacionNaranjo](
	[idClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[descripcionClasificacion] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idClasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[codigosAtc]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[codigosAtc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoAtc] [nvarchar](50) NOT NULL,
	[nombre] [nvarchar](250) NOT NULL,
	[comentario] [text] NULL,
	[parentAtc] [nvarchar](50) NULL,
	[nivelAtc] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CAT].[criteriosEsavi]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[criteriosEsavi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreCriterio] [text] NOT NULL,
	[estado] [tinyint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CAT].[criteriosFalloTerapeutico]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[criteriosFalloTerapeutico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreCriterio] [varchar](250) NOT NULL,
	[estado] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[criteriosNaranjo]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[criteriosNaranjo](
	[idCriterio] [int] NOT NULL,
	[descripcionCriterio] [text] NULL,
	[valorSI] [smallint] NULL,
	[valorNO] [smallint] NULL,
	[valorNOSABE] [smallint] NULL,
 CONSTRAINT [PK__criterio__0B43DC3FC486E7D7] PRIMARY KEY CLUSTERED 
(
	[idCriterio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CAT].[diagnosticoClinico]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[diagnosticoClinico](
	[idDiagnostico] [int] NOT NULL,
	[nombreDiagnostico] [varchar](300) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[edades]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[edades](
	[idEdad] [int] IDENTITY(1,1) NOT NULL,
	[descripcionEdad] [text] NOT NULL,
	[estado] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idEdad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CAT].[establecimientosSalud]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[establecimientosSalud](
	[idInstitucion] [int] IDENTITY(1,1) NOT NULL,
	[nombreInstitucion] [varchar](300) NOT NULL,
	[direccionInstitucion] [text] NOT NULL,
	[paisInstitucion] [int] NULL,
	[idMunicipio] [int] NULL,
	[telefonosContacto] [text] NULL,
	[emailsContacto] [text] NULL,
	[estado] [tinyint] NOT NULL,
	[idUnidadEfectora] [int] NULL,
	[zonaTerritorial] [int] NULL,
 CONSTRAINT [PK_establecimientosSalud] PRIMARY KEY CLUSTERED 
(
	[idInstitucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [CAT].[estadoPaciente]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[estadoPaciente](
	[idEstadoPaciente] [int] NOT NULL,
	[nombreEstadoPaciente] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_estadoPaciente] PRIMARY KEY CLUSTERED 
(
	[idEstadoPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[estadoReporte]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[estadoReporte](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[estadoProceso] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[marcoAppVacuna]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[marcoAppVacuna](
	[idMarcoApp] [int] NOT NULL,
	[marcoAplicacion] [varchar](300) NOT NULL,
 CONSTRAINT [PK_marcoAppVacuna] PRIMARY KEY CLUSTERED 
(
	[idMarcoApp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[numeroDosis]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[numeroDosis](
	[idNumeroDosis] [int] IDENTITY(1,1) NOT NULL,
	[descripcionNumeroDosis] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idNumeroDosis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[razonSeriedad]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[razonSeriedad](
	[idSeriedad] [int] NOT NULL,
	[nombreSeriedad] [varchar](300) NOT NULL,
 CONSTRAINT [PK_razonSeriedad] PRIMARY KEY CLUSTERED 
(
	[idSeriedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[resultadoPaciente]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[resultadoPaciente](
	[idCondicion] [int] NOT NULL,
	[condicionPaciente] [varchar](300) NOT NULL,
 CONSTRAINT [PK_resultadoPaciente] PRIMARY KEY CLUSTERED 
(
	[idCondicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[semanasEpidemiologicas]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[semanasEpidemiologicas](
	[annioSemana] [int] NOT NULL,
	[numeroSemana] [int] NOT NULL,
	[fechaInicio] [date] NOT NULL,
	[fechaFinal] [date] NOT NULL,
	[dosisLiberada] [float] NULL,
	[idUsuarioCreacion] [varchar](50) NOT NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[idUsuarioModifica] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK_indexSemana] PRIMARY KEY CLUSTERED 
(
	[annioSemana] ASC,
	[numeroSemana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[sitioAnatomico]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[sitioAnatomico](
	[idSitioAdmon] [int] NOT NULL,
	[nombreSitioAnatomico] [varchar](100) NOT NULL,
 CONSTRAINT [PK_sitioAnatomico] PRIMARY KEY CLUSTERED 
(
	[idSitioAdmon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[tipoAnalisis]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[tipoAnalisis](
	[idTipoAnalisis] [int] NOT NULL,
	[nombreTipoAnalisis] [varchar](300) NOT NULL,
 CONSTRAINT [PK_tipoAnalisis] PRIMARY KEY CLUSTERED 
(
	[idTipoAnalisis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[tipoEvento]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[tipoEvento](
	[idEvento] [int] NOT NULL,
	[nombreEvento] [varchar](300) NOT NULL,
	[estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_tipoEvento] PRIMARY KEY CLUSTERED 
(
	[idEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[tipoNotificacion]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[tipoNotificacion](
	[idTipoNotificacion] [int] NOT NULL,
	[nombreNotificacion] [varchar](300) NOT NULL,
	[estado] [tinyint] NOT NULL,
 CONSTRAINT [PK_tipoNotificacion] PRIMARY KEY CLUSTERED 
(
	[idTipoNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[tipoNotificador]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[tipoNotificador](
	[idNotificador] [int] NOT NULL,
	[nombreNotificador] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipoNotificador] PRIMARY KEY CLUSTERED 
(
	[idNotificador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[tipoPrm]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[tipoPrm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreTipo] [varchar](250) NOT NULL,
	[estado] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[unidadEfectora]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[unidadEfectora](
	[idEfectora] [int] NOT NULL,
	[nombreEfectora] [varchar](120) NOT NULL,
 CONSTRAINT [PK_unidadEfectora] PRIMARY KEY CLUSTERED 
(
	[idEfectora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[viasAdmon]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[viasAdmon](
	[idVia] [int] NOT NULL,
	[nombreVia] [varchar](300) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CAT].[zonasTerritoriales]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CAT].[zonasTerritoriales](
	[idZona] [int] IDENTITY(1,1) NOT NULL,
	[nombreZona] [varchar](50) NOT NULL,
 CONSTRAINT [PK_zonasTerritoriales] PRIMARY KEY CLUSTERED 
(
	[idZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DPX].[estadoDuplicados]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DPX].[estadoDuplicados](
	[idEstadoRpt] [int] IDENTITY(1,1) NOT NULL,
	[nombreEstado] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_estadoDuplicados] PRIMARY KEY CLUSTERED 
(
	[idEstadoRpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DPX].[reportesDuplicados]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DPX].[reportesDuplicados](
	[idRptCriterio] [int] IDENTITY(1,1) NOT NULL,
	[idRptOrigen] [int] NOT NULL,
	[idRptDuplicado] [int] NOT NULL,
	[idRptJoined] [int] NULL,
	[idEstadoRpt] [int] NOT NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[usuarioCreacion] [nvarchar](50) NOT NULL,
	[fechaModificacion] [datetime2](0) NULL,
	[usuarioModificacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_reporteCriterios] PRIMARY KEY CLUSTERED 
(
	[idRptCriterio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FV].[archivosAdjuntosReporte]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[archivosAdjuntosReporte](
	[idArchivoAdjunto] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[urlArchivo] [text] NULL,
	[tipoArchivo] [text] NULL,
	[nombreArchivo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[idArchivoAdjunto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[camposObservados]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[camposObservados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[nombreCampo] [varchar](50) NOT NULL,
	[descripcion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[concomitantes]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[concomitantes](
	[idConcomitante] [int] NOT NULL,
	[idPrincioActivo] [varchar](50) NULL,
	[nombrePrincipioActivo] [text] NULL,
	[dosis] [text] NULL,
	[presentacion] [text] NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioCreacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](7) NULL,
	[idUsuairoModifica] [varchar](50) NULL,
	[idHistClinico] [int] NOT NULL,
	[lote] [varchar](200) NULL,
	[viaAdministracion] [varchar](200) NULL,
	[sitioAnatomico] [varchar](200) NULL,
	[fechaVencimiento] [varchar](50) NULL,
	[temperatura] [varchar](50) NULL,
	[laboratorioProductor] [varchar](200) NULL,
 CONSTRAINT [PK_concomitantes] PRIMARY KEY CLUSTERED 
(
	[idConcomitante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[detalleHojaEsavi]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[detalleHojaEsavi](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idHoja] [bigint] NOT NULL,
	[idCriterio] [int] NOT NULL,
	[valor] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [FV].[detalleReporteNaranjo]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[detalleReporteNaranjo](
	[idHoja] [int] NOT NULL,
	[idCriterio] [int] NOT NULL,
	[valor] [smallint] NULL,
	[columnaMarcada] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [FV].[documentosReporte]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[documentosReporte](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[documentoUrl] [text] NOT NULL,
	[documentoNombre] [text] NOT NULL,
	[documentoTipo] [varchar](100) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[examenesLaboratorio]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[examenesLaboratorio](
	[correlativoExamen] [int] NOT NULL,
	[idReporte] [int] NOT NULL,
	[fechaMuestra] [date] NOT NULL,
	[idTipoAnalisis] [int] NOT NULL,
	[fechaResultados] [date] NOT NULL,
	[resultado] [text] NOT NULL,
	[idHistClinico] [int] NOT NULL,
 CONSTRAINT [PK_examenesLaboratorio] PRIMARY KEY CLUSTERED 
(
	[correlativoExamen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[historialClinico]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[historialClinico](
	[idHistClinico] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[numeroExpediente] [varchar](50) NULL,
	[fechaDeteccion] [date] NULL,
	[fechaIngresoDeteccion] [date] NULL,
	[diagnosticoClinico] [text] NULL,
	[reaccionEvento] [text] NULL,
	[descripcionCuadroRAM] [text] NULL,
	[fechaInicioReaccion] [date] NULL,
	[horarInicioReaccion] [time](0) NULL,
	[intervaloTiempoReaccion] [text] NULL,
	[accionTomada] [text] NULL,
	[idResultado] [int] NULL,
	[fechaResolucionEvento] [date] NULL,
	[tiempoDuracion] [text] NULL,
	[antecedentesMedicos] [text] NULL,
	[reaccionOtroMedicamento] [char](1) NULL,
	[nombreReacciones] [text] NULL,
	[otrosProcRealizados] [text] NULL,
	[fechaAltaPaciente] [date] NULL,
	[fechaMuertePaciente] [date] NULL,
	[causaMuertePaciente] [text] NULL,
	[autopsiaPaciente] [char](1) NULL,
	[resultadoAutopsia] [text] NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioCrea] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](50) NULL,
	[informacionAdicional] [text] NULL,
	[codigoLlt] [nvarchar](20) NULL,
 CONSTRAINT [PK_historialClinico] PRIMARY KEY CLUSTERED 
(
	[idHistClinico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[hojaEsavi]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[hojaEsavi](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[medicamento] [varchar](250) NOT NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[usuarioCreacion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [FV].[InformeDeSeguridad]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[InformeDeSeguridad](
	[idInforme] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[tipoPersonaPresentaEvento] [text] NULL,
	[edadPersonaPresentaEvento] [int] NULL,
	[diagnosticoClinico] [text] NULL,
	[regimenDosificacion] [text] NULL,
	[nombreComercial] [text] NULL,
	[laboratorioFabricante] [text] NULL,
	[grupoFarmaceutico] [text] NULL,
	[codigoAtc] [text] NULL,
	[estatusRegistroSanitario] [varchar](10) NULL,
	[obsEstatusRegistroSanitario] [text] NULL,
	[indicacionesTerapeuticasAprobadasEnDnm] [text] NULL,
	[indicacionesOfLabelAprobadasPorLaDnm] [text] NULL,
	[FarmacocineticaFarmacodinamica] [text] NULL,
	[viaAdmon] [text] NULL,
	[obsViaAdmon] [text] NULL,
	[contraindicaciones] [text] NULL,
	[interacciones] [text] NULL,
	[advertenciasPrecauciones] [text] NULL,
	[temperatura] [text] NULL,
	[humedad] [text] NULL,
	[notificacionesMismoPA] [text] NULL,
	[ensallosClinicos] [text] NULL,
	[industriaFarmaceuticaNacional] [text] NULL,
	[famacovigilanciaActiva] [text] NULL,
	[descripcionCasos] [text] NULL,
	[AgenciasDeReferencia] [text] NULL,
	[estudiosClinicos] [text] NULL,
	[deVigilize] [text] NULL,
	[industriaFarmaceuticaInternacional] [text] NULL,
	[bibliografiaDeReferencia] [text] NULL,
	[recomendacionesEvaluador] [text] NULL,
	[conclusiones] [text] NULL,
	[infoPrioritaria] [varchar](2) NULL,
	[dictamen] [int] NULL,
	[clasificacionRam] [int] NULL,
	[intervaloTiempoReaccionAnnios] [int] NULL,
	[intervaloTiempoReaccionMes] [int] NULL,
	[intervaloTiempoReaccionDia] [int] NULL,
	[intervaloTiempoReaccionHora] [int] NULL,
	[titularProducto] [varchar](250) NULL,
	[fechaRegistroVacuna] [date] NULL,
	[fechaLiberacionLoteVacuna] [date] NULL,
	[numeroDosisLiberada] [int] NULL,
	[composicionCuantitativa] [text] NULL,
	[composicionCualitativa] [text] NULL,
	[reaccionesAdversas] [text] NULL,
	[descripcionHallazgosRelevantes] [text] NULL,
	[otrasFuentesInformacion] [text] NULL,
	[idCodigoAtc] [int] NULL,
	[usuarioCreacion] [int] NULL,
	[fechaCreacion] [datetime2](0) NULL,
 CONSTRAINT [PK__tmp_ms_x__8BC324EA6F1152B4] PRIMARY KEY CLUSTERED 
(
	[idInforme] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[medicamentos]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[medicamentos](
	[idMedicamento] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[indicacionesMedicamento] [text] NULL,
	[nombrePrincipioActivo] [text] NULL,
	[idPrincipioActivo] [varchar](50) NULL,
	[concentracionPA] [varchar](50) NULL,
	[unidadConcentracionPA] [varchar](20) NULL,
	[registroMedicamento] [varchar](20) NULL,
	[nombreRegistro] [text] NULL,
	[principiosActivosMedicamento] [text] NULL,
	[laboratorioRegistro] [text] NULL,
	[formaFarmaceuticaReg] [varchar](50) NULL,
	[presentacionRegistro] [text] NULL,
	[numeroLoteRegistro] [varchar](300) NULL,
	[fechaExpRegistro] [varchar](50) NULL,
	[regimenDosificacion] [text] NULL,
	[idViaAdmon] [varchar](50) NULL,
	[fechaInicioAdmon] [varchar](50) NULL,
	[fechaFinAdmon] [varchar](50) NULL,
	[duracionAdmon] [varchar](100) NULL,
	[horaInicioAdmon] [time](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[registroXML]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[registroXML](
	[idRegistroXLM] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NULL,
	[idUsuario] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRegistroXLM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FV].[reporteFarmaco]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[reporteFarmaco](
	[idReporte] [int] IDENTITY(1,1) NOT NULL,
	[numeroReporte] [varchar](12) NULL,
	[passwordReporte] [varchar](8) NULL,
	[fechaReporte] [datetime2](0) NULL,
	[tituloReporte_1] [text] NULL,
	[idTipoNotificacion_1] [int] NULL,
	[idEvento_1] [int] NULL,
	[fechaNotificacion_1] [varchar](50) NULL,
	[eventoSerio_1] [char](1) NULL,
	[idSeriedad_1] [int] NULL,
	[profesion_2] [varchar](10) NULL,
	[jvp_2] [varchar](max) NULL,
	[telefonoJVP_2] [varchar](100) NULL,
	[emailJVP_2] [text] NULL,
	[idNotificador_2] [int] NULL,
	[idEfectora_2] [int] NULL,
	[idInstitucion_2] [int] NULL,
	[iniciales_3] [varchar](30) NULL,
	[paisResidencia_3] [int] NULL,
	[departamentoResidencia_3] [int] NULL,
	[municipioResidencia_3] [int] NULL,
	[genero_3] [char](1) NULL,
	[fechaNacimiento_3] [varchar](50) NULL,
	[edadAnios_3] [int] NULL,
	[edadMeses_3] [int] NULL,
	[edadSemanas_3] [int] NULL,
	[edadDias_3] [int] NULL,
	[edadHoras_3] [int] NULL,
	[edadMinutos_3] [int] NULL,
	[peso_3] [numeric](18, 2) NULL,
	[pesoMedida_3] [varchar](25) NULL,
	[altura_3] [numeric](18, 2) NULL,
	[alturaMedida_3] [varchar](25) NULL,
	[embarazo_3] [char](1) NULL,
	[gestacionalMeses_3] [int] NULL,
	[gestacionalSemanas_3] [int] NULL,
	[gestacionalDias_3] [int] NULL,
	[gestacionalTrimestre_3] [int] NULL,
	[detallesEmbarazo_3] [text] NULL,
	[pesoNacimiento_3] [numeric](18, 2) NULL,
	[numeroExpediente_4] [varchar](50) NULL,
	[fechaDeteccion_4] [varchar](50) NULL,
	[fechaIngresoDeteccion_4] [varchar](50) NULL,
	[diagnosticoClinico_4] [text] NULL,
	[reaccionEvento_4] [text] NULL,
	[descripcionCuadroRAM_4] [text] NULL,
	[fechaInicioReaccion_4] [varchar](50) NULL,
	[intervaloTiempoReaccion_4] [varchar](100) NULL,
	[idAccionTomada_4] [int] NULL,
	[idResultado_4] [int] NULL,
	[fechaResolucionEvento_4] [varchar](50) NULL,
	[tiempoDuracion_4] [varchar](100) NULL,
	[antecedentesMedicos_4] [text] NULL,
	[reaccionOtroMedicamento_4] [char](1) NULL,
	[nombreReacciones_4] [text] NULL,
	[otrosProcMedicos_4] [text] NULL,
	[fechaAltaPaciente_4] [date] NULL,
	[fechaMuertePaciente_4] [date] NULL,
	[causaMuerte_4] [text] NULL,
	[autopsiaPaciente_4] [char](1) NULL,
	[resultadoAutopsia_4] [text] NULL,
	[indicacionesMedicamento_5] [text] NULL,
	[nombrePrincipioActivo_5] [text] NULL,
	[idPrincipoActivo_5] [varchar](50) NULL,
	[concentracionPA_5] [varchar](50) NULL,
	[unidadConcentracionPA_5] [varchar](20) NULL,
	[registroMedicamento_5] [varchar](20) NULL,
	[nombreRegistro_5] [text] NULL,
	[principiosAcivosMedicamento_5] [text] NULL,
	[laboratorioRegistro_5] [text] NULL,
	[formaFarmaceuticaReg_5] [varchar](50) NULL,
	[presentacionRegistro_5] [text] NULL,
	[numeroLoteRegistro_5] [varchar](300) NULL,
	[fechaExpRegistro_5] [varchar](50) NULL,
	[regimenDosificacion] [text] NULL,
	[idViaAdmon_5] [varchar](50) NULL,
	[fechaInicioAdmon_5] [varchar](50) NULL,
	[fechaFinAdmon_5] [varchar](50) NULL,
	[duracionAdmon_5] [varchar](100) NULL,
	[esVacuna_6] [char](1) NULL,
	[numeroDosis_6] [int] NULL,
	[idSitioAdmon_6] [int] NULL,
	[dosisVacuna_6] [text] NULL,
	[temperaturaVacuna_6] [varchar](25) NULL,
	[idLugarVacuna_6] [int] NULL,
	[idMarcoApp_6] [int] NULL,
	[nombre_2] [varchar](100) NULL,
	[nombre_referente] [varchar](100) NULL,
	[profesion_referente] [varchar](10) NULL,
	[jvp_referente] [varchar](10) NULL,
	[telefonoJVP_referente] [varchar](100) NULL,
	[emailJVP_referente] [text] NULL,
	[nombre_3] [varchar](50) NULL,
	[apellido_3] [varchar](50) NULL,
	[idEstado] [int] NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioCrea] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](50) NULL,
	[observacion] [text] NULL,
	[comentarioMedicamento_5] [text] NULL,
	[idLugarVacuna_7] [int] NULL,
	[idEventoAnalista] [int] NULL,
	[seriedadEventoAnalista] [char](1) NULL,
	[edadDesconocida] [tinyint] NOT NULL,
	[idClasificacionFinalEsavi] [int] NULL,
	[origenNotificacion] [tinyint] NULL,
 CONSTRAINT [PK_reporteFarmaco] PRIMARY KEY CLUSTERED 
(
	[idReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[reporteFarmaco2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[reporteFarmaco2](
	[idReporte] [int] IDENTITY(1,1) NOT NULL,
	[numeroReporte] [varchar](12) NULL,
	[passwordReporte] [varchar](8) NULL,
	[fechaReporte] [datetime2](0) NULL,
	[tituloReporte_1] [text] NULL,
	[idTipoNotificacion_1] [int] NULL,
	[idEvento_1] [int] NULL,
	[fechaNotificacion_1] [varchar](50) NULL,
	[eventoSerio_1] [char](1) NULL,
	[idSeriedad_1] [int] NULL,
	[profesion_2] [varchar](10) NULL,
	[jvp_2] [varchar](max) NULL,
	[telefonoJVP_2] [varchar](100) NULL,
	[emailJVP_2] [text] NULL,
	[idNotificador_2] [int] NULL,
	[idEfectora_2] [int] NULL,
	[idInstitucion_2] [int] NULL,
	[iniciales_3] [varchar](30) NULL,
	[paisResidencia_3] [int] NULL,
	[departamentoResidencia_3] [int] NULL,
	[municipioResidencia_3] [int] NULL,
	[genero_3] [char](1) NULL,
	[fechaNacimiento_3] [varchar](50) NULL,
	[edadAnios_3] [int] NULL,
	[edadMeses_3] [int] NULL,
	[edadSemanas_3] [int] NULL,
	[edadDias_3] [int] NULL,
	[edadHoras_3] [int] NULL,
	[edadMinutos_3] [int] NULL,
	[peso_3] [numeric](18, 2) NULL,
	[pesoMedida_3] [varchar](25) NULL,
	[altura_3] [numeric](18, 2) NULL,
	[alturaMedida_3] [varchar](25) NULL,
	[embarazo_3] [char](1) NULL,
	[gestacionalMeses_3] [int] NULL,
	[gestacionalSemanas_3] [int] NULL,
	[gestacionalDias_3] [int] NULL,
	[gestacionalTrimestre_3] [int] NULL,
	[detallesEmbarazo_3] [text] NULL,
	[pesoNacimiento_3] [numeric](18, 2) NULL,
	[numeroExpediente_4] [varchar](50) NULL,
	[fechaDeteccion_4] [varchar](50) NULL,
	[fechaIngresoDeteccion_4] [varchar](50) NULL,
	[diagnosticoClinico_4] [text] NULL,
	[reaccionEvento_4] [text] NULL,
	[descripcionCuadroRAM_4] [text] NULL,
	[fechaInicioReaccion_4] [varchar](50) NULL,
	[intervaloTiempoReaccion_4] [varchar](100) NULL,
	[idAccionTomada_4] [int] NULL,
	[idResultado_4] [int] NULL,
	[fechaResolucionEvento_4] [varchar](50) NULL,
	[tiempoDuracion_4] [varchar](100) NULL,
	[antecedentesMedicos_4] [text] NULL,
	[reaccionOtroMedicamento_4] [char](1) NULL,
	[nombreReacciones_4] [text] NULL,
	[otrosProcMedicos_4] [text] NULL,
	[fechaAltaPaciente_4] [date] NULL,
	[fechaMuertePaciente_4] [date] NULL,
	[causaMuerte_4] [text] NULL,
	[autopsiaPaciente_4] [char](1) NULL,
	[resultadoAutopsia_4] [text] NULL,
	[indicacionesMedicamento_5] [text] NULL,
	[nombrePrincipioActivo_5] [text] NULL,
	[idPrincipoActivo_5] [varchar](50) NULL,
	[concentracionPA_5] [varchar](50) NULL,
	[unidadConcentracionPA_5] [varchar](20) NULL,
	[registroMedicamento_5] [varchar](20) NULL,
	[nombreRegistro_5] [text] NULL,
	[principiosAcivosMedicamento_5] [text] NULL,
	[laboratorioRegistro_5] [text] NULL,
	[formaFarmaceuticaReg_5] [varchar](50) NULL,
	[presentacionRegistro_5] [text] NULL,
	[numeroLoteRegistro_5] [varchar](300) NULL,
	[fechaExpRegistro_5] [varchar](50) NULL,
	[regimenDosificacion] [text] NULL,
	[idViaAdmon_5] [varchar](50) NULL,
	[fechaInicioAdmon_5] [varchar](50) NULL,
	[fechaFinAdmon_5] [varchar](50) NULL,
	[duracionAdmon_5] [varchar](100) NULL,
	[esVacuna_6] [char](1) NULL,
	[numeroDosis_6] [int] NULL,
	[idSitioAdmon_6] [int] NULL,
	[dosisVacuna_6] [text] NULL,
	[temperaturaVacuna_6] [varchar](25) NULL,
	[idLugarVacuna_6] [int] NULL,
	[idMarcoApp_6] [int] NULL,
	[nombre_2] [varchar](100) NULL,
	[nombre_referente] [varchar](100) NULL,
	[profesion_referente] [varchar](10) NULL,
	[jvp_referente] [varchar](10) NULL,
	[telefonoJVP_referente] [varchar](100) NULL,
	[emailJVP_referente] [text] NULL,
	[nombre_3] [varchar](50) NULL,
	[apellido_3] [varchar](50) NULL,
	[idEstado] [int] NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioCrea] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](50) NULL,
	[observacion] [text] NULL,
	[comentarioMedicamento_5] [text] NULL,
	[idLugarVacuna_7] [int] NULL,
	[idEventoAnalista] [int] NULL,
	[seriedadEventoAnalista] [char](1) NULL,
	[edadDesconocida] [tinyint] NOT NULL,
	[idClasificacionFinalEsavi] [int] NULL,
	[origenNotificacion] [tinyint] NULL,
 CONSTRAINT [PK_reporteFarmaco2] PRIMARY KEY CLUSTERED 
(
	[idReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [FV].[reporteNaranjo]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FV].[reporteNaranjo](
	[idHoja] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[medicamento] [varchar](100) NULL,
	[puntaje] [smallint] NULL,
	[idClasificacion] [int] NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[anexos]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[anexos](
	[idAnexo] [int] IDENTITY(1,1) NOT NULL,
	[idSolicitud] [int] NOT NULL,
	[url] [text] NULL,
	[nombre] [text] NULL,
	[tipo] [varchar](50) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAnexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[aspectos1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[aspectos1](
	[idAspecto1] [int] IDENTITY(1,1) NOT NULL,
	[nombreAspecto1] [nvarchar](max) NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__aspectos__220763F0353108C7] PRIMARY KEY CLUSTERED 
(
	[idAspecto1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[aspectos2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[aspectos2](
	[idAspecto2] [int] IDENTITY(1,1) NOT NULL,
	[nombreAspecto2] [text] NULL,
	[criterio] [text] NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__aspectos__220763F1806AF357] PRIMARY KEY CLUSTERED 
(
	[idAspecto2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[conclusion]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[conclusion](
	[idConclusion] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[resultado] [int] NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idConclusion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[estadoEvalSolicitud]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[estadoEvalSolicitud](
	[idEstadoEval] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstadoEval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[estadoSolicitud]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[estadoSolicitud](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[evalSolicitud]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[evalSolicitud](
	[idEval] [int] IDENTITY(1,1) NOT NULL,
	[idSolicitud] [int] NOT NULL,
	[idSeccion] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[evalSolItem1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[evalSolItem1](
	[idESolItem1] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[idItem1] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idESolItem1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[evalSolItem2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[evalSolItem2](
	[idESolItem2] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[idItem2] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idESolItem2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[infoMedica]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[infoMedica](
	[idInfoMed] [int] IDENTITY(1,1) NOT NULL,
	[idSolicitud] [int] NOT NULL,
	[nombreComercial] [text] NULL,
	[principioActivo] [text] NULL,
	[codigoATC] [text] NULL,
	[formaFarmaceutica] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
	[presentacion] [text] NULL,
 CONSTRAINT [PK__infoMedi__8ECCD5B80B57C8F8] PRIMARY KEY CLUSTERED 
(
	[idInfoMed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[item1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[item1](
	[idItem1] [int] IDENTITY(1,1) NOT NULL,
	[nombreItems1] [varchar](100) NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItem1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[item1Aspectos1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[item1Aspectos1](
	[idItemAsp1] [int] IDENTITY(1,1) NOT NULL,
	[idItem1] [int] NOT NULL,
	[idAspecto1] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItemAsp1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[item2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[item2](
	[idItem2] [int] IDENTITY(1,1) NOT NULL,
	[nombreItems2] [varchar](100) NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItem2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[item2Aspectos2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[item2Aspectos2](
	[idItemAsp2] [int] IDENTITY(1,1) NOT NULL,
	[idItem2] [int] NOT NULL,
	[idAspecto2] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItemAsp2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[motivosIPS]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[motivosIPS](
	[idMotivoIPS] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMotivoIPS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[observacion]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[observacion](
	[idObservacion] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[resultado] [int] NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idObservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[recomendaciones]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[recomendaciones](
	[idRecomendacion] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[recomendacion] [text] NULL,
	[justificacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRecomendacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[resultadoItem1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[resultadoItem1](
	[idResultItem1] [int] IDENTITY(1,1) NOT NULL,
	[idESolItem1] [int] NOT NULL,
	[idAspecto1] [int] NOT NULL,
	[resultado] [int] NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idResultItem1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[resultadoItem2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[resultadoItem2](
	[idResultItem2] [int] IDENTITY(1,1) NOT NULL,
	[idESolItem2] [int] NOT NULL,
	[idAspecto2] [int] NOT NULL,
	[resultado] [int] NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idResultItem2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IPS].[revision]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[revision](
	[idRevision] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRevision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[secciones]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[secciones](
	[idSeccion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IPS].[solicitudes]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IPS].[solicitudes](
	[idSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[idIPS] [nchar](20) NULL,
	[nombreTitular] [varchar](250) NULL,
	[domicilioTitular] [varchar](300) NULL,
	[telTitular] [varchar](50) NULL,
	[nombreResponsable] [varchar](100) NULL,
	[telResponsable] [varchar](50) NULL,
	[direccionResponsable] [varchar](250) NULL,
	[periodoIPS] [varchar](75) NULL,
	[noIPS] [varchar](100) NULL,
	[noIdentificador] [varchar](100) NULL,
	[ipsAnterior] [varchar](100) NULL,
	[idMotivoIPS] [int] NOT NULL,
	[idRevision] [int] NOT NULL,
	[seccionEspecifique] [text] NULL,
	[idUsuario] [int] NOT NULL,
	[idEstado] [int] NULL,
	[fechaEvaluacion] [date] NULL,
	[fechaAprobo] [date] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[hlgt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[hlgt](
	[hlgtCode] [nvarchar](20) NOT NULL,
	[hlgtName] [text] NOT NULL,
 CONSTRAINT [PK_hlgt] PRIMARY KEY CLUSTERED 
(
	[hlgtCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[hlgt_hlt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[hlgt_hlt](
	[hlgtCode] [nvarchar](20) NOT NULL,
	[hltCode] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[hlt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[hlt](
	[hltCode] [nvarchar](20) NOT NULL,
	[hltName] [text] NOT NULL,
 CONSTRAINT [PK_hlt] PRIMARY KEY CLUSTERED 
(
	[hltCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[hlt_pt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[hlt_pt](
	[hltCode] [nvarchar](20) NOT NULL,
	[ptCode] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[llt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[llt](
	[lltCode] [nvarchar](20) NOT NULL,
	[lltName] [text] NOT NULL,
	[ptCode] [nvarchar](20) NOT NULL,
	[lltCurrency] [char](1) NOT NULL,
 CONSTRAINT [PK_llt] PRIMARY KEY CLUSTERED 
(
	[lltCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[pt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[pt](
	[ptCode] [nvarchar](20) NOT NULL,
	[ptName] [text] NOT NULL,
	[ptSocCode] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_pt] PRIMARY KEY CLUSTERED 
(
	[ptCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[soc]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[soc](
	[socCode] [nvarchar](20) NOT NULL,
	[socName] [text] NOT NULL,
 CONSTRAINT [PK_soc] PRIMARY KEY CLUSTERED 
(
	[socCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[soc_hlgt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[soc_hlgt](
	[socCode] [nvarchar](20) NOT NULL,
	[hlgtCode] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [MDRA].[staging_llt]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MDRA].[staging_llt](
	[Column 0] [varchar](20) NULL,
	[Column 1] [text] NULL,
	[Column 2] [varchar](20) NULL,
	[Column 3] [nchar](1) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[anexos]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[anexos](
	[idAnexo] [int] IDENTITY(1,1) NOT NULL,
	[idSolicitud] [int] NOT NULL,
	[url] [text] NULL,
	[nombre] [text] NULL,
	[tipo] [varchar](250) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idAnexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[aspectos1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[aspectos1](
	[idAspecto1] [int] IDENTITY(1,1) NOT NULL,
	[nombreAspecto1] [text] NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__aspectos__220763F04282B147] PRIMARY KEY CLUSTERED 
(
	[idAspecto1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[aspectos2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[aspectos2](
	[idAspecto2] [int] IDENTITY(1,1) NOT NULL,
	[nombreAspecto2] [text] NULL,
	[criterio] [text] NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__aspectos__220763F18848C489] PRIMARY KEY CLUSTERED 
(
	[idAspecto2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[estadoEvalSolicitud]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[estadoEvalSolicitud](
	[idEstadoEval] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstadoEval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[estadoSolicitud]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[estadoSolicitud](
	[idEstado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[evaActividades]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[evaActividades](
	[idEvaAct] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[problemaSeguridad] [text] NULL,
	[actividadFV] [text] NULL,
	[actividadRiesgo] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEvaAct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[evalConclusion]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[evalConclusion](
	[idEvalCon] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[resultado] [int] NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEvalCon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[evalRecomendacion]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[evalRecomendacion](
	[idEvalRec] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEvalRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[evalSolicitud]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[evalSolicitud](
	[idEval] [int] IDENTITY(1,1) NOT NULL,
	[idSolicitud] [int] NOT NULL,
	[idSeccion] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idEval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[evalSolItem1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[evalSolItem1](
	[idESolItem1] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[idItem1] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idESolItem1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[evalSolItem2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[evalSolItem2](
	[idESolItem2] [int] IDENTITY(1,1) NOT NULL,
	[idEval] [int] NOT NULL,
	[idItem2] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idESolItem2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[infoMedica]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[infoMedica](
	[idInfoMed] [int] IDENTITY(1,1) NOT NULL,
	[idSolicitud] [int] NOT NULL,
	[nombreComercial] [varchar](max) NULL,
	[principioActivo] [varchar](max) NULL,
	[codigoATC] [int] NULL,
	[mecanimosPrincipio] [text] NULL,
	[fechaPaisPrimera] [text] NULL,
	[fechaPaisInicio] [text] NULL,
	[productosAplicaPGR] [text] NULL,
	[formaFarmaceutica] [text] NULL,
	[presentacion] [text] NULL,
	[indicacionesAprobadas] [text] NULL,
	[idMotivoPGR] [int] NOT NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](7) NULL,
	[usuarioModificacion] [nchar](10) NULL,
	[fechaModificacion] [datetime2](7) NULL,
 CONSTRAINT [PK__infoMedi__8ECCD5B8BE1C30F3] PRIMARY KEY CLUSTERED 
(
	[idInfoMed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[item1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[item1](
	[idItem1] [int] IDENTITY(1,1) NOT NULL,
	[nombreItems1] [varchar](100) NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItem1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[item1Aspectos1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[item1Aspectos1](
	[idItemAsp1] [int] IDENTITY(1,1) NOT NULL,
	[idItem1] [int] NOT NULL,
	[idAspecto1] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItemAsp1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[item2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[item2](
	[idItem2] [int] IDENTITY(1,1) NOT NULL,
	[nombreItems2] [varchar](100) NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItem2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[item2Aspectos2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[item2Aspectos2](
	[idItemAsp2] [int] IDENTITY(1,1) NOT NULL,
	[idItem2] [int] NOT NULL,
	[idAspecto2] [int] NOT NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idItemAsp2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[motivosPGR]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[motivosPGR](
	[idMotivo] [int] IDENTITY(1,1) NOT NULL,
	[nombreMotivo] [varchar](50) NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[resultadoItem1]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[resultadoItem1](
	[idResultItem1] [int] IDENTITY(1,1) NOT NULL,
	[idESolItem1] [int] NOT NULL,
	[idAspecto1] [int] NOT NULL,
	[resultado] [int] NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idResultItem1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[resultadoItem2]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[resultadoItem2](
	[idResultItem2] [int] IDENTITY(1,1) NOT NULL,
	[idESolItem2] [int] NOT NULL,
	[idAspecto2] [int] NOT NULL,
	[resultado] [int] NULL,
	[observacion] [text] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idResultItem2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PGR].[secciones]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[secciones](
	[idSeccion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[estado] [int] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PGR].[solicitudes]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PGR].[solicitudes](
	[idSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[nombreTitular] [varchar](250) NULL,
	[domicilioTitular] [varchar](300) NULL,
	[telTitular] [varchar](50) NULL,
	[nombreReferente] [varchar](100) NULL,
	[telReferente] [varchar](50) NULL,
	[correoReferente] [varchar](250) NULL,
	[fechaPGR] [date] NULL,
	[versionNo] [varchar](250) NULL,
	[noIdentificador] [varchar](20) NULL,
	[ultimoPGR] [varchar](250) NULL,
	[idUsuario] [int] NOT NULL,
	[idEstado] [int] NULL,
	[fechaEvaluacion] [date] NULL,
	[fechaAprobo] [date] NULL,
	[usuarioCreacion] [varchar](50) NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [varchar](50) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__solicitu__D801DDB8E646C09B] PRIMARY KEY CLUSTERED 
(
	[idSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[categoriaGravedad]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[categoriaGravedad](
	[idCatGravedad] [int] IDENTITY(1,1) NOT NULL,
	[nomCatGravedad] [nchar](120) NOT NULL,
	[idTopCat] [int] NULL,
 CONSTRAINT [PK_categoriaGravedad_1] PRIMARY KEY CLUSTERED 
(
	[idCatGravedad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[catNivelRiesgo]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[catNivelRiesgo](
	[idRiesgo] [int] NOT NULL,
	[nombreRiesgo] [nvarchar](50) NOT NULL,
	[colorNivel] [nchar](7) NOT NULL,
 CONSTRAINT [PK_nivelRiesgo] PRIMARY KEY CLUSTERED 
(
	[idRiesgo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[detalleHojaFallaTerapeutica]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[detalleHojaFallaTerapeutica](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[idHoja] [int] NOT NULL,
	[idCriterio] [int] NOT NULL,
	[valor] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[estadoBasal]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[estadoBasal](
	[idEstadoBasal] [int] IDENTITY(1,1) NOT NULL,
	[estadoBasal] [varchar](45) NOT NULL,
 CONSTRAINT [PK_estadoBasal_1] PRIMARY KEY CLUSTERED 
(
	[idEstadoBasal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[evaluacionPrm]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[evaluacionPrm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[medicamentoCineticaCompleja] [varchar](max) NULL,
	[cineticaOrdenCero] [text] NULL,
	[rangoTerapeutico] [text] NULL,
	[circulacionEnterohepatica] [text] NULL,
	[otrasFarmacocineticas] [text] NULL,
	[PacienteCondicionesClinicas] [text] NULL,
	[pacienteAlteraciones] [text] NULL,
	[pacienteAdme] [text] NULL,
	[medicamentoAdecuado] [text] NULL,
	[medicamentoIndicaciones] [text] NULL,
	[medicamentoUso] [text] NULL,
	[medicamentoRecomendacion] [text] NULL,
	[medicamentoAdherencia] [text] NULL,
	[medicamentoEntrenamiento] [text] NULL,
	[medicamentoIntervencion] [text] NULL,
	[interaccionesPotenciales] [text] NULL,
	[interaccionFarmacocinetica] [text] NULL,
	[incompatibilidadFisioquimica] [text] NULL,
	[interaccionesFarmaco] [text] NULL,
	[notificacionFt] [text] NULL,
	[informacionAdicional] [text] NULL,
	[problemaBiofarmaceutico] [text] NULL,
	[medicamentoValoracion] [text] NULL,
	[preguntasFalsificacion] [text] NULL,
	[deficienciasAlmacenamiento] [text] NULL,
	[condicionesNoCumplidas] [text] NULL,
	[otrosFactores] [text] NULL,
	[medicamentoOtro] [text] NULL,
	[resistenciaCelular] [text] NULL,
	[informacionCalidadDatos] [text] NULL,
	[evaluacionId] [int] NULL,
	[opinionQuimicaMedica] [text] NULL,
	[medidaInicial] [text] NULL,
	[resultados] [text] NULL,
	[medidaFinal] [text] NULL,
	[usuarioCreacion] [int] NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[usuarioModificacion] [int] NULL,
	[fechaModificacion] [datetime2](0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PRM].[gravConsecuencias]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[gravConsecuencias](
	[idConsecuencia] [int] NOT NULL,
	[nombreConsecuencia] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[hojaFallaTerapeutica]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[hojaFallaTerapeutica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idReporte] [int] NOT NULL,
	[medicamento] [varchar](250) NOT NULL,
	[causalidadId] [int] NOT NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[usuarioCreacion] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[informeSeguridad]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[informeSeguridad](
	[idInfoSegP] [int] IDENTITY(1,1) NOT NULL,
	[unidadEfectora] [varchar](150) NOT NULL,
	[idReporte] [int] NOT NULL,
	[nomPaciente] [varchar](60) NOT NULL,
	[edad] [varchar](30) NOT NULL,
	[genero] [char](1) NOT NULL,
	[idEstadoBasal] [int] NOT NULL,
	[fechaDesconocida] [tinyint] NOT NULL,
	[fechaError] [date] NULL,
	[diaSemana] [varchar](25) NOT NULL,
	[horaDesconocida] [tinyint] NOT NULL,
	[horaError] [time](0) NULL,
	[idOrigen] [int] NOT NULL,
	[idPersOError] [int] NOT NULL,
	[descripcionError] [text] NOT NULL,
	[idMetDeteccion] [int] NOT NULL,
	[idCatGravedad] [int] NOT NULL,
	[idRecurrencia] [int] NOT NULL,
	[idConsecuencia] [int] NOT NULL,
	[nivelRiesgo] [int] NOT NULL,
	[conclusionFinal] [text] NOT NULL,
	[estadoReporte] [int] NOT NULL,
	[usuarioCreacion] [int] NOT NULL,
	[fechaCreacion] [datetime2](0) NOT NULL,
	[usuarioModificacion] [int] NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK_informeSeguridad] PRIMARY KEY CLUSTERED 
(
	[idInfoSegP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [PRM].[matrizRiesgo]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[matrizRiesgo](
	[idNivel] [int] NOT NULL,
	[idRiesgo] [int] NOT NULL,
 CONSTRAINT [PK_matrizRiesgo] PRIMARY KEY CLUSTERED 
(
	[idNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[metodoDeteccion]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[metodoDeteccion](
	[idMetDeteccion] [int] IDENTITY(1,1) NOT NULL,
	[nomMetodoDet] [nchar](50) NOT NULL,
 CONSTRAINT [PK_metodoDeteccion_1] PRIMARY KEY CLUSTERED 
(
	[idMetDeteccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[origenError]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[origenError](
	[idOrigen] [int] NOT NULL,
	[nombreOrigen] [nvarchar](250) NOT NULL,
	[idTopOrigien] [int] NULL,
 CONSTRAINT [PK_origenError] PRIMARY KEY CLUSTERED 
(
	[idOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[personaOriginaError]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[personaOriginaError](
	[idPersOError] [int] IDENTITY(1,1) NOT NULL,
	[personaOrigina] [nchar](35) NOT NULL,
	[idTopPers] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[idPersOError] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[probRecurrencia]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[probRecurrencia](
	[idRecurrencia] [int] NOT NULL,
	[nombreRecurrencia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_probRecurrencia] PRIMARY KEY CLUSTERED 
(
	[idRecurrencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRM].[tipoError]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRM].[tipoError](
	[idTipoErr] [int] NOT NULL,
	[nombreError] [nvarchar](250) NOT NULL,
	[idTop] [int] NULL,
 CONSTRAINT [PK_tipoError] PRIMARY KEY CLUSTERED 
(
	[idTipoErr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwEsavi]    Script Date: 18/6/2021 07:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwEsavi]
as 
SELECT 
	rpt.numeroReporte,
	rpt.tituloReporte_1,
	ntf.nombreNotificacion,
	evt.nombreEvento,
	rpt.fechaNotificacion_1,
	CASE
		WHEN rpt.eventoSerio_1 = N'S' THEN N'SI'
		ELSE N'NO'
	END as eventoSerio,
	ISNULL(ser.nombreSeriedad,N'N/A') as razonSeriedad,
	prof.id_profesional as jvpm_notificador,
	(prof.nombres+' '+prof.apellidos) as Notificador,
	rpt.telefonoJVP_2 as telefonoNotificador,
	rpt.emailJVP_2 as emailNotificador,
	tntf.nombreNotificador as clasificacionNotificador,
	uefec.nombreEfectora as unidadEfectora,
	estsalud.nombreInstitucion,
	rpt.iniciales_3 as inicialesPaciente,
	rpt.nombre_3 as nombresPaciente,
	rpt.apellido_3 as apellidosPaciente,
	CASE WHEN rpt.genero_3 = N'F' THEN N'Femenino' ELSE N'Masculino' END as sexoPaciente,
	pais.nombre as paisResidencia,
	dept.nombreDepartamento as departamentoResidencia,
	mun.nombreMunicipio as municipioResidencia,
	rpt.fechaNacimiento_3 as fechaNacimiento,
	rpt.edadAnios_3 as edadAnnios,
	rpt.edadMeses_3 as edadMeses,
	rpt.edadSemanas_3 as edadSemanas,
	rpt.edadDias_3 as edadDias,
	rpt.edadHoras_3 as edadHoras,
	(cast(rpt.peso_3 as varchar(max)) + ' '+ rpt.pesoMedida_3) as pesoPaciente,
	(cast(rpt.altura_3 as varchar(max)) + ' '+rpt.alturaMedida_3) as alturaPaciente,	
	hist.fechaDeteccion as fechaDeteccionCaso,
	hist.fechaIngresoDeteccion as fechaIngresoPaciente,
	hist.reaccionEvento,
	(cast(hist.fechaInicioReaccion as varchar(max)) + ' '+ cast(hist.horarInicioReaccion as varchar(max)) ) as fechaInicioReaccion,
	rstHist.condicionPaciente,
	hist.diagnosticoClinico,
	hist.numeroExpediente,
	hist.descripcionCuadroRAM,
	hist.accionTomada,
	hist.informacionAdicional,
	hist.fechaResolucionEvento,
	hist.antecedentesMedicos,
	CASE WHEN hist.reaccionOtroMedicamento = 'N' THEN 'No' ELSE 'Si' END as reaccionOtrosMedicamentos,
	hist.nombreReacciones as otrasReacciones,
	hist.otrosProcRealizados,
	hist.fechaAltaPaciente,
	hist.fechaMuertePaciente,	
	CASE WHEN rpt.esVacuna_6 = 'S' THEN 'SI' ELSE 'NO' END as esVacuna,
	numdos.descripcionNumeroDosis,
	sitioana.nombreSitioAnatomico,
	rpt.dosisVacuna_6 as dosisVacuna,
	rpt.temperaturaVacuna_6,
	est2.nombreInstitucion as lugarAplicacion,
	marcoapp.marcoAplicacion,
	med.registroMedicamento,
	med.nombreRegistro,
	med.indicacionesMedicamento,
	med.nombrePrincipioActivo,
	med.regimenDosificacion,
	med.idViaAdmon,
	(cast(med.fechaInicioAdmon as varchar(max)) + ' ' + cast(med.horaInicioAdmon as varchar(max))) as fechaInicioAdmin,
	rpt.comentarioMedicamento_5 as comentariosMedicamento,
	med.principiosActivosMedicamento,	
	med.formaFarmaceuticaReg,
	med.laboratorioRegistro,
	med.presentacionRegistro,
	med.numeroLoteRegistro,
	med.fechaExpRegistro,
	med.fechaFinAdmon
  FROM [dnm_fv_si].[FV].[reporteFarmaco] rpt
  INNER JOIN dnm_fv_si.CAT.tipoEvento evt on evt.idEvento = rpt.idEvento_1
  INNER JOIN dnm_fv_si.CAT.tipoNotificacion ntf on ntf.idTipoNotificacion = rpt.idTipoNotificacion_1
  LEFT JOIN dnm_fv_si.CAT.tipoNotificador tntf on tntf.idNotificador = rpt.idNotificador_2
  LEFT JOIN dnm_fv_si.CAT.unidadEfectora uefec on uefec.idEfectora = rpt.idEfectora_2
  LEFT JOIN dnm_fv_si.CAT.establecimientosSalud estsalud on estsalud.idInstitucion = rpt.idInstitucion_2
  LEFT JOIN dnm_fv_si.FV.historialClinico hist on hist.idReporte = rpt.idReporte
  LEFT JOIN dnm_fv_si.CAT.razonSeriedad ser on ser.idSeriedad = rpt.idSeriedad_1
  LEFT JOIN (Select * from openquery(PROD_1015,'Select * from cssp.cssp_profesionales')) as prof on prof.id_profesional = (rpt.profesion_2+rpt.jvp_2)
  LEFT JOIN dnm_catalogos.cat.paises pais on pais.codigoId = rpt.paisResidencia_3
  LEFT JOIN dnm_catalogos.cat.departamento dept on dept.idDepartamento = rpt.departamentoResidencia_3
  LEFT JOIN dnm_catalogos.cat.municipios mun on mun.idMunicipio = rpt.municipioResidencia_3
  LEFT JOIN dnm_fv_si.CAT.resultadoPaciente rstHist on rstHist.idCondicion = hist.idResultado
  LEFT JOIN dnm_fv_si.CAT.numeroDosis numdos on numdos.idNumeroDosis = rpt.numeroDosis_6
  LEFT JOIN dnm_fv_si.CAT.sitioAnatomico sitioana on sitioana.idSitioAdmon = rpt.idSitioAdmon_6
  LEFT JOIN dnm_fv_si.cat.establecimientosSalud est2 on est2.idInstitucion = rpt.idLugarVacuna_7
  LEFT JOIN dnm_fv_si.cat.marcoAppVacuna as marcoapp on marcoapp.idMarcoApp = rpt.idMarcoApp_6
  LEFT JOIN dnm_fv_si.FV.medicamentos med on med.idReporte = rpt.idReporte
WHERE rpt.idEvento_1 = 2
GO
ALTER TABLE [ADM].[opcionesFarmaco] ADD  CONSTRAINT [DF_opcionesUsuarios_estado]  DEFAULT ((0)) FOR [estado]
GO
ALTER TABLE [ADM].[opcionesReferentes] ADD  CONSTRAINT [DF_opcionesReferentes_privilegio]  DEFAULT (N'R') FOR [privilegio]
GO
ALTER TABLE [ADM].[perfilReferentes] ADD  CONSTRAINT [DF_perfilReferentes_tipoPerfil]  DEFAULT ('REF') FOR [tipoPerfil]
GO
ALTER TABLE [ADM].[rolesReferentes] ADD  CONSTRAINT [DF_rolesRefentes_fechaCreacion]  DEFAULT (getdate()) FOR [fechaCreacion]
GO
ALTER TABLE [ADM].[rolesReferentes] ADD  CONSTRAINT [DF_rolesRefentes_idUsuarioCreacion]  DEFAULT ('SYSTEM') FOR [idUsuarioCreacion]
GO
ALTER TABLE [ADM].[usuariosFarmaco] ADD  CONSTRAINT [DF_usuariosFarmaco_chgPassword]  DEFAULT ('S') FOR [chgPassword]
GO
ALTER TABLE [ADM].[usuariosFarmaco] ADD  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [ADM].[usuariosReferentes] ADD  CONSTRAINT [DF_usuariosReferentes_estadoUsuario]  DEFAULT ('A') FOR [estadoUsuario]
GO
ALTER TABLE [ADM].[usuariosReferentes] ADD  CONSTRAINT [DF_usuariosReferentes_chgPassswd]  DEFAULT ('S') FOR [chgPassswd]
GO
ALTER TABLE [CAT].[causalidadPrm] ADD  CONSTRAINT [DF_causalidadPrm_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [CAT].[criteriosEsavi] ADD  CONSTRAINT [DF_criteriosEsavi_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [CAT].[criteriosFalloTerapeutico] ADD  CONSTRAINT [DF_criteriosFalloTerapeutico_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [CAT].[edades] ADD  CONSTRAINT [DF_edades_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [CAT].[establecimientosSalud] ADD  CONSTRAINT [DF_establecimientosSalud_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [CAT].[semanasEpidemiologicas] ADD  CONSTRAINT [DF__semanasEp__idUsu__220B0B18]  DEFAULT (N'SYSTEM') FOR [idUsuarioCreacion]
GO
ALTER TABLE [CAT].[semanasEpidemiologicas] ADD  CONSTRAINT [DF__semanasEp__fecha__2116E6DF]  DEFAULT (getdate()) FOR [fechaCreacion]
GO
ALTER TABLE [CAT].[tipoEvento] ADD  CONSTRAINT [DF_tipoEvento_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [CAT].[tipoNotificacion] ADD  CONSTRAINT [DF_tipoNotificacion_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [CAT].[tipoPrm] ADD  CONSTRAINT [DF_tipoPrm_estado]  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [FV].[detalleHojaEsavi] ADD  CONSTRAINT [DF_detalleHojaEsavi_valor]  DEFAULT ((0)) FOR [valor]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_reporteFarmaco_eventoSerio]  DEFAULT ('NO') FOR [eventoSerio_1]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_Table_1_pesoTipoPaciente]  DEFAULT ('Libras') FOR [pesoMedida_3]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_reporteFarmaco_alturaMedida]  DEFAULT ('mts') FOR [alturaMedida_3]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_reporteFarmaco_embarazoPaciente]  DEFAULT ('N') FOR [embarazo_3]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_reporteFarmaco_reaccionOtroMedicamento]  DEFAULT ('N') FOR [reaccionOtroMedicamento_4]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_reporteFarmaco_autopsiaPaciente]  DEFAULT ('N') FOR [autopsiaPaciente_4]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF__reporteFa__idEst__5535A963]  DEFAULT ((1)) FOR [idEstado]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_reporteFarmaco_edadDesconocida]  DEFAULT ((0)) FOR [edadDesconocida]
GO
ALTER TABLE [FV].[reporteFarmaco] ADD  CONSTRAINT [DF_reporteFarmaco_origenNotificacion]  DEFAULT ((1)) FOR [origenNotificacion]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ('NO') FOR [eventoSerio_1]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ('Libras') FOR [pesoMedida_3]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ('mts') FOR [alturaMedida_3]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ('N') FOR [embarazo_3]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ('N') FOR [reaccionOtroMedicamento_4]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ('N') FOR [autopsiaPaciente_4]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ((1)) FOR [idEstado]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ((0)) FOR [edadDesconocida]
GO
ALTER TABLE [FV].[reporteFarmaco2] ADD  DEFAULT ((1)) FOR [origenNotificacion]
GO
ALTER TABLE [PRM].[catNivelRiesgo] ADD  CONSTRAINT [DF_catNivelRiesgo_colorNivel]  DEFAULT (N'#FFFFFF') FOR [colorNivel]
GO
ALTER TABLE [PRM].[informeSeguridad] ADD  CONSTRAINT [DF_informeSeguridad_fechaDesconocida]  DEFAULT ((1)) FOR [fechaDesconocida]
GO
ALTER TABLE [PRM].[informeSeguridad] ADD  CONSTRAINT [DF_informeSeguridad_horaDesconocida]  DEFAULT ((1)) FOR [horaDesconocida]
GO
ALTER TABLE [ADM].[rolesReferentes]  WITH CHECK ADD  CONSTRAINT [fk_perfilReferente] FOREIGN KEY([idPerfil])
REFERENCES [ADM].[perfilReferentes] ([idPerfil])
GO
ALTER TABLE [ADM].[rolesReferentes] CHECK CONSTRAINT [fk_perfilReferente]
GO
ALTER TABLE [ADM].[rolesReferentes]  WITH CHECK ADD  CONSTRAINT [fk_usuarios] FOREIGN KEY([idUsuario])
REFERENCES [ADM].[usuariosReferentes] ([idUsuario])
GO
ALTER TABLE [ADM].[rolesReferentes] CHECK CONSTRAINT [fk_usuarios]
GO
ALTER TABLE [DPX].[reportesDuplicados]  WITH CHECK ADD  CONSTRAINT [FK_reporteCriterios_reporteDuplicado] FOREIGN KEY([idRptDuplicado])
REFERENCES [FV].[reporteFarmaco] ([idReporte])
GO
ALTER TABLE [DPX].[reportesDuplicados] CHECK CONSTRAINT [FK_reporteCriterios_reporteDuplicado]
GO
ALTER TABLE [DPX].[reportesDuplicados]  WITH CHECK ADD  CONSTRAINT [FK_reporteCriterios_reporteJoined] FOREIGN KEY([idRptDuplicado])
REFERENCES [FV].[reporteFarmaco] ([idReporte])
GO
ALTER TABLE [DPX].[reportesDuplicados] CHECK CONSTRAINT [FK_reporteCriterios_reporteJoined]
GO
ALTER TABLE [DPX].[reportesDuplicados]  WITH CHECK ADD  CONSTRAINT [FK_reporteCriterios_reporteOrigen] FOREIGN KEY([idRptOrigen])
REFERENCES [FV].[reporteFarmaco] ([idReporte])
GO
ALTER TABLE [DPX].[reportesDuplicados] CHECK CONSTRAINT [FK_reporteCriterios_reporteOrigen]
GO
ALTER TABLE [FV].[concomitantes]  WITH CHECK ADD  CONSTRAINT [FK_HISTORIAL_CLINICO] FOREIGN KEY([idHistClinico])
REFERENCES [FV].[historialClinico] ([idHistClinico])
GO
ALTER TABLE [FV].[concomitantes] CHECK CONSTRAINT [FK_HISTORIAL_CLINICO]
GO
ALTER TABLE [FV].[detalleReporteNaranjo]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_HOJANARANJO] FOREIGN KEY([idHoja])
REFERENCES [FV].[reporteNaranjo] ([idHoja])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [FV].[detalleReporteNaranjo] CHECK CONSTRAINT [FK_DETALLE_HOJANARANJO]
GO
ALTER TABLE [FV].[examenesLaboratorio]  WITH CHECK ADD  CONSTRAINT [FK_examenesLaboratorio_reporteFarmaco] FOREIGN KEY([idReporte])
REFERENCES [FV].[reporteFarmaco] ([idReporte])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [FV].[examenesLaboratorio] CHECK CONSTRAINT [FK_examenesLaboratorio_reporteFarmaco]
GO
ALTER TABLE [FV].[examenesLaboratorio]  WITH CHECK ADD  CONSTRAINT [FK_HISTORIAL_EXAMEN] FOREIGN KEY([idHistClinico])
REFERENCES [FV].[historialClinico] ([idHistClinico])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [FV].[examenesLaboratorio] CHECK CONSTRAINT [FK_HISTORIAL_EXAMEN]
GO
ALTER TABLE [FV].[medicamentos]  WITH CHECK ADD  CONSTRAINT [FK_ID_REPORTE] FOREIGN KEY([idReporte])
REFERENCES [FV].[reporteFarmaco] ([idReporte])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [FV].[medicamentos] CHECK CONSTRAINT [FK_ID_REPORTE]
GO
ALTER TABLE [FV].[reporteNaranjo]  WITH CHECK ADD  CONSTRAINT [FK_HOJANARANJO_CLASIFICACION] FOREIGN KEY([idClasificacion])
REFERENCES [CAT].[clasificacionNaranjo] ([idClasificacion])
GO
ALTER TABLE [FV].[reporteNaranjo] CHECK CONSTRAINT [FK_HOJANARANJO_CLASIFICACION]
GO
ALTER TABLE [FV].[reporteNaranjo]  WITH CHECK ADD  CONSTRAINT [FK_HOJANARANJO_REPORTE] FOREIGN KEY([idReporte])
REFERENCES [FV].[reporteFarmaco] ([idReporte])
GO
ALTER TABLE [FV].[reporteNaranjo] CHECK CONSTRAINT [FK_HOJANARANJO_REPORTE]
GO
ALTER TABLE [IPS].[anexos]  WITH CHECK ADD  CONSTRAINT [FK_idSolicitud_anexoIPS] FOREIGN KEY([idSolicitud])
REFERENCES [IPS].[solicitudes] ([idSolicitud])
GO
ALTER TABLE [IPS].[anexos] CHECK CONSTRAINT [FK_idSolicitud_anexoIPS]
GO
ALTER TABLE [IPS].[conclusion]  WITH CHECK ADD  CONSTRAINT [FK_idEval_evaConclu] FOREIGN KEY([idEval])
REFERENCES [IPS].[evalSolicitud] ([idEval])
GO
ALTER TABLE [IPS].[conclusion] CHECK CONSTRAINT [FK_idEval_evaConclu]
GO
ALTER TABLE [IPS].[evalSolicitud]  WITH CHECK ADD  CONSTRAINT [FKIPS_idestado_evalSoli] FOREIGN KEY([idEstado])
REFERENCES [IPS].[estadoEvalSolicitud] ([idEstadoEval])
GO
ALTER TABLE [IPS].[evalSolicitud] CHECK CONSTRAINT [FKIPS_idestado_evalSoli]
GO
ALTER TABLE [IPS].[evalSolicitud]  WITH CHECK ADD  CONSTRAINT [FKIPS_idSeccion_evalSoli] FOREIGN KEY([idSeccion])
REFERENCES [IPS].[secciones] ([idSeccion])
GO
ALTER TABLE [IPS].[evalSolicitud] CHECK CONSTRAINT [FKIPS_idSeccion_evalSoli]
GO
ALTER TABLE [IPS].[evalSolicitud]  WITH CHECK ADD  CONSTRAINT [FKIPS_idSolicitud_evalSoli] FOREIGN KEY([idSolicitud])
REFERENCES [IPS].[solicitudes] ([idSolicitud])
GO
ALTER TABLE [IPS].[evalSolicitud] CHECK CONSTRAINT [FKIPS_idSolicitud_evalSoli]
GO
ALTER TABLE [IPS].[evalSolItem1]  WITH CHECK ADD  CONSTRAINT [FK_idEval_evalSolIPS] FOREIGN KEY([idEval])
REFERENCES [IPS].[evalSolicitud] ([idEval])
GO
ALTER TABLE [IPS].[evalSolItem1] CHECK CONSTRAINT [FK_idEval_evalSolIPS]
GO
ALTER TABLE [IPS].[evalSolItem1]  WITH CHECK ADD  CONSTRAINT [FK_iditem1_evalSolIPS] FOREIGN KEY([idItem1])
REFERENCES [IPS].[item1] ([idItem1])
GO
ALTER TABLE [IPS].[evalSolItem1] CHECK CONSTRAINT [FK_iditem1_evalSolIPS]
GO
ALTER TABLE [IPS].[evalSolItem2]  WITH CHECK ADD  CONSTRAINT [FK_idEval2_evalSolIPS] FOREIGN KEY([idEval])
REFERENCES [IPS].[evalSolicitud] ([idEval])
GO
ALTER TABLE [IPS].[evalSolItem2] CHECK CONSTRAINT [FK_idEval2_evalSolIPS]
GO
ALTER TABLE [IPS].[evalSolItem2]  WITH CHECK ADD  CONSTRAINT [FK_iditem2_evalSolIPS] FOREIGN KEY([idItem2])
REFERENCES [IPS].[item2] ([idItem2])
GO
ALTER TABLE [IPS].[evalSolItem2] CHECK CONSTRAINT [FK_iditem2_evalSolIPS]
GO
ALTER TABLE [IPS].[infoMedica]  WITH CHECK ADD  CONSTRAINT [FK_idsol_infoMedicaips] FOREIGN KEY([idSolicitud])
REFERENCES [IPS].[solicitudes] ([idSolicitud])
GO
ALTER TABLE [IPS].[infoMedica] CHECK CONSTRAINT [FK_idsol_infoMedicaips]
GO
ALTER TABLE [IPS].[item1Aspectos1]  WITH CHECK ADD  CONSTRAINT [FK_idAspect1_itemAspIPS] FOREIGN KEY([idAspecto1])
REFERENCES [IPS].[aspectos1] ([idAspecto1])
GO
ALTER TABLE [IPS].[item1Aspectos1] CHECK CONSTRAINT [FK_idAspect1_itemAspIPS]
GO
ALTER TABLE [IPS].[item1Aspectos1]  WITH CHECK ADD  CONSTRAINT [FK_iditem1_itemAspIPS] FOREIGN KEY([idItem1])
REFERENCES [IPS].[item1] ([idItem1])
GO
ALTER TABLE [IPS].[item1Aspectos1] CHECK CONSTRAINT [FK_iditem1_itemAspIPS]
GO
ALTER TABLE [IPS].[item2Aspectos2]  WITH CHECK ADD  CONSTRAINT [FK_idAspect2_itemAspIPS] FOREIGN KEY([idAspecto2])
REFERENCES [IPS].[aspectos2] ([idAspecto2])
GO
ALTER TABLE [IPS].[item2Aspectos2] CHECK CONSTRAINT [FK_idAspect2_itemAspIPS]
GO
ALTER TABLE [IPS].[item2Aspectos2]  WITH CHECK ADD  CONSTRAINT [FK_iditem2_itemAspIPS] FOREIGN KEY([idItem2])
REFERENCES [IPS].[item2] ([idItem2])
GO
ALTER TABLE [IPS].[item2Aspectos2] CHECK CONSTRAINT [FK_iditem2_itemAspIPS]
GO
ALTER TABLE [IPS].[observacion]  WITH CHECK ADD  CONSTRAINT [FK_idEval_evaObsIPS] FOREIGN KEY([idEval])
REFERENCES [IPS].[evalSolicitud] ([idEval])
GO
ALTER TABLE [IPS].[observacion] CHECK CONSTRAINT [FK_idEval_evaObsIPS]
GO
ALTER TABLE [IPS].[recomendaciones]  WITH CHECK ADD  CONSTRAINT [FK_idEval2_evaActivIPS] FOREIGN KEY([idEval])
REFERENCES [IPS].[evalSolicitud] ([idEval])
GO
ALTER TABLE [IPS].[recomendaciones] CHECK CONSTRAINT [FK_idEval2_evaActivIPS]
GO
ALTER TABLE [IPS].[resultadoItem1]  WITH CHECK ADD  CONSTRAINT [FK_idAspecto1_resultIPS] FOREIGN KEY([idAspecto1])
REFERENCES [IPS].[aspectos1] ([idAspecto1])
GO
ALTER TABLE [IPS].[resultadoItem1] CHECK CONSTRAINT [FK_idAspecto1_resultIPS]
GO
ALTER TABLE [IPS].[resultadoItem1]  WITH CHECK ADD  CONSTRAINT [FK_idESolItem1_resultIPS] FOREIGN KEY([idESolItem1])
REFERENCES [IPS].[evalSolItem1] ([idESolItem1])
GO
ALTER TABLE [IPS].[resultadoItem1] CHECK CONSTRAINT [FK_idESolItem1_resultIPS]
GO
ALTER TABLE [IPS].[resultadoItem2]  WITH CHECK ADD  CONSTRAINT [FK_idAspecto2_resultIPS] FOREIGN KEY([idAspecto2])
REFERENCES [IPS].[aspectos2] ([idAspecto2])
GO
ALTER TABLE [IPS].[resultadoItem2] CHECK CONSTRAINT [FK_idAspecto2_resultIPS]
GO
ALTER TABLE [IPS].[resultadoItem2]  WITH CHECK ADD  CONSTRAINT [FK_idESolItem2_resultIPS] FOREIGN KEY([idESolItem2])
REFERENCES [IPS].[evalSolItem2] ([idESolItem2])
GO
ALTER TABLE [IPS].[resultadoItem2] CHECK CONSTRAINT [FK_idESolItem2_resultIPS]
GO
ALTER TABLE [IPS].[solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_idEstado_Soli] FOREIGN KEY([idEstado])
REFERENCES [IPS].[estadoSolicitud] ([idEstado])
GO
ALTER TABLE [IPS].[solicitudes] CHECK CONSTRAINT [FK_idEstado_Soli]
GO
ALTER TABLE [IPS].[solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_idMotivoIPS_Soli] FOREIGN KEY([idMotivoIPS])
REFERENCES [IPS].[motivosIPS] ([idMotivoIPS])
GO
ALTER TABLE [IPS].[solicitudes] CHECK CONSTRAINT [FK_idMotivoIPS_Soli]
GO
ALTER TABLE [IPS].[solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_idRevision_Soli] FOREIGN KEY([idRevision])
REFERENCES [IPS].[revision] ([idRevision])
GO
ALTER TABLE [IPS].[solicitudes] CHECK CONSTRAINT [FK_idRevision_Soli]
GO
ALTER TABLE [PGR].[anexos]  WITH CHECK ADD  CONSTRAINT [FK_idSolicitud_anexo] FOREIGN KEY([idSolicitud])
REFERENCES [PGR].[solicitudes] ([idSolicitud])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[anexos] CHECK CONSTRAINT [FK_idSolicitud_anexo]
GO
ALTER TABLE [PGR].[evaActividades]  WITH CHECK ADD  CONSTRAINT [FK_idEval2_evaActiv] FOREIGN KEY([idEval])
REFERENCES [PGR].[evalSolicitud] ([idEval])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[evaActividades] CHECK CONSTRAINT [FK_idEval2_evaActiv]
GO
ALTER TABLE [PGR].[evalConclusion]  WITH CHECK ADD  CONSTRAINT [FK_idEval_evaConclu] FOREIGN KEY([idEval])
REFERENCES [PGR].[evalSolicitud] ([idEval])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[evalConclusion] CHECK CONSTRAINT [FK_idEval_evaConclu]
GO
ALTER TABLE [PGR].[evalRecomendacion]  WITH CHECK ADD  CONSTRAINT [FK_idEval_evaRecom] FOREIGN KEY([idEval])
REFERENCES [PGR].[evalSolicitud] ([idEval])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[evalRecomendacion] CHECK CONSTRAINT [FK_idEval_evaRecom]
GO
ALTER TABLE [PGR].[evalSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_idestado_evalSoli] FOREIGN KEY([idEstado])
REFERENCES [PGR].[estadoEvalSolicitud] ([idEstadoEval])
GO
ALTER TABLE [PGR].[evalSolicitud] CHECK CONSTRAINT [FK_idestado_evalSoli]
GO
ALTER TABLE [PGR].[evalSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_idSeccion_evalSoli] FOREIGN KEY([idSeccion])
REFERENCES [PGR].[secciones] ([idSeccion])
GO
ALTER TABLE [PGR].[evalSolicitud] CHECK CONSTRAINT [FK_idSeccion_evalSoli]
GO
ALTER TABLE [PGR].[evalSolicitud]  WITH CHECK ADD  CONSTRAINT [FK_idSolicitud_evalSoli] FOREIGN KEY([idSolicitud])
REFERENCES [PGR].[solicitudes] ([idSolicitud])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[evalSolicitud] CHECK CONSTRAINT [FK_idSolicitud_evalSoli]
GO
ALTER TABLE [PGR].[evalSolItem1]  WITH CHECK ADD  CONSTRAINT [FK_idEval_evalSol] FOREIGN KEY([idEval])
REFERENCES [PGR].[evalSolicitud] ([idEval])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[evalSolItem1] CHECK CONSTRAINT [FK_idEval_evalSol]
GO
ALTER TABLE [PGR].[evalSolItem1]  WITH CHECK ADD  CONSTRAINT [FK_iditem1_evalSol] FOREIGN KEY([idItem1])
REFERENCES [PGR].[item1] ([idItem1])
GO
ALTER TABLE [PGR].[evalSolItem1] CHECK CONSTRAINT [FK_iditem1_evalSol]
GO
ALTER TABLE [PGR].[evalSolItem2]  WITH CHECK ADD  CONSTRAINT [FK_idEval2_evalSol] FOREIGN KEY([idEval])
REFERENCES [PGR].[evalSolicitud] ([idEval])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[evalSolItem2] CHECK CONSTRAINT [FK_idEval2_evalSol]
GO
ALTER TABLE [PGR].[evalSolItem2]  WITH CHECK ADD  CONSTRAINT [FK_iditem2_evalSol] FOREIGN KEY([idItem2])
REFERENCES [PGR].[item2] ([idItem2])
GO
ALTER TABLE [PGR].[evalSolItem2] CHECK CONSTRAINT [FK_iditem2_evalSol]
GO
ALTER TABLE [PGR].[item1Aspectos1]  WITH CHECK ADD  CONSTRAINT [FK_idAspect1_itemAsp] FOREIGN KEY([idAspecto1])
REFERENCES [PGR].[aspectos1] ([idAspecto1])
GO
ALTER TABLE [PGR].[item1Aspectos1] CHECK CONSTRAINT [FK_idAspect1_itemAsp]
GO
ALTER TABLE [PGR].[item1Aspectos1]  WITH CHECK ADD  CONSTRAINT [FK_iditem1_itemAsp] FOREIGN KEY([idItem1])
REFERENCES [PGR].[item1] ([idItem1])
GO
ALTER TABLE [PGR].[item1Aspectos1] CHECK CONSTRAINT [FK_iditem1_itemAsp]
GO
ALTER TABLE [PGR].[item2Aspectos2]  WITH CHECK ADD  CONSTRAINT [FK_idAspect2_itemAsp] FOREIGN KEY([idAspecto2])
REFERENCES [PGR].[aspectos2] ([idAspecto2])
GO
ALTER TABLE [PGR].[item2Aspectos2] CHECK CONSTRAINT [FK_idAspect2_itemAsp]
GO
ALTER TABLE [PGR].[item2Aspectos2]  WITH CHECK ADD  CONSTRAINT [FK_iditem2_itemAsp] FOREIGN KEY([idItem2])
REFERENCES [PGR].[item2] ([idItem2])
GO
ALTER TABLE [PGR].[item2Aspectos2] CHECK CONSTRAINT [FK_iditem2_itemAsp]
GO
ALTER TABLE [PGR].[resultadoItem1]  WITH CHECK ADD  CONSTRAINT [FK_idAspecto1_result] FOREIGN KEY([idAspecto1])
REFERENCES [PGR].[aspectos1] ([idAspecto1])
GO
ALTER TABLE [PGR].[resultadoItem1] CHECK CONSTRAINT [FK_idAspecto1_result]
GO
ALTER TABLE [PGR].[resultadoItem1]  WITH CHECK ADD  CONSTRAINT [FK_idESolItem1_result] FOREIGN KEY([idESolItem1])
REFERENCES [PGR].[evalSolItem1] ([idESolItem1])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[resultadoItem1] CHECK CONSTRAINT [FK_idESolItem1_result]
GO
ALTER TABLE [PGR].[resultadoItem2]  WITH CHECK ADD  CONSTRAINT [FK_idAspecto2_result] FOREIGN KEY([idAspecto2])
REFERENCES [PGR].[aspectos2] ([idAspecto2])
GO
ALTER TABLE [PGR].[resultadoItem2] CHECK CONSTRAINT [FK_idAspecto2_result]
GO
ALTER TABLE [PGR].[resultadoItem2]  WITH CHECK ADD  CONSTRAINT [FK_idESolItem2_result] FOREIGN KEY([idESolItem2])
REFERENCES [PGR].[evalSolItem2] ([idESolItem2])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PGR].[resultadoItem2] CHECK CONSTRAINT [FK_idESolItem2_result]
GO
ALTER TABLE [PGR].[solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_idEstado_Soli] FOREIGN KEY([idEstado])
REFERENCES [PGR].[estadoSolicitud] ([idEstado])
GO
ALTER TABLE [PGR].[solicitudes] CHECK CONSTRAINT [FK_idEstado_Soli]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_categoriaGravedad] FOREIGN KEY([idCatGravedad])
REFERENCES [PRM].[categoriaGravedad] ([idCatGravedad])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_categoriaGravedad]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_catNivelRiesgo] FOREIGN KEY([nivelRiesgo])
REFERENCES [PRM].[catNivelRiesgo] ([idRiesgo])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_catNivelRiesgo]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_estadoBasal] FOREIGN KEY([idEstadoBasal])
REFERENCES [PRM].[estadoBasal] ([idEstadoBasal])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_estadoBasal]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_estadoBasal1] FOREIGN KEY([idEstadoBasal])
REFERENCES [PRM].[estadoBasal] ([idEstadoBasal])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_estadoBasal1]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_estadoReporte] FOREIGN KEY([estadoReporte])
REFERENCES [CAT].[estadoReporte] ([idEstado])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_estadoReporte]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_metodoDeteccion] FOREIGN KEY([idMetDeteccion])
REFERENCES [PRM].[metodoDeteccion] ([idMetDeteccion])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_metodoDeteccion]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_origenError] FOREIGN KEY([idOrigen])
REFERENCES [PRM].[origenError] ([idOrigen])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_origenError]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_personaOriginaError] FOREIGN KEY([idPersOError])
REFERENCES [PRM].[personaOriginaError] ([idPersOError])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_personaOriginaError]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_probRecurrencia] FOREIGN KEY([idRecurrencia])
REFERENCES [PRM].[probRecurrencia] ([idRecurrencia])
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_probRecurrencia]
GO
ALTER TABLE [PRM].[informeSeguridad]  WITH CHECK ADD  CONSTRAINT [FK_informeSeguridad_reporteFarmaco] FOREIGN KEY([idReporte])
REFERENCES [FV].[reporteFarmaco] ([idReporte])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [PRM].[informeSeguridad] CHECK CONSTRAINT [FK_informeSeguridad_reporteFarmaco]
GO
ALTER TABLE [PRM].[matrizRiesgo]  WITH CHECK ADD  CONSTRAINT [FK_idRiesgo_matriz] FOREIGN KEY([idRiesgo])
REFERENCES [PRM].[catNivelRiesgo] ([idRiesgo])
GO
ALTER TABLE [PRM].[matrizRiesgo] CHECK CONSTRAINT [FK_idRiesgo_matriz]
GO
ALTER TABLE [PRM].[origenError]  WITH CHECK ADD  CONSTRAINT [FK_origenError_top] FOREIGN KEY([idTopOrigien])
REFERENCES [PRM].[origenError] ([idOrigen])
GO
ALTER TABLE [PRM].[origenError] CHECK CONSTRAINT [FK_origenError_top]
GO
ALTER TABLE [PRM].[tipoError]  WITH CHECK ADD  CONSTRAINT [FK_tipoError_top] FOREIGN KEY([idTop])
REFERENCES [PRM].[tipoError] ([idTipoErr])
GO
ALTER TABLE [PRM].[tipoError] CHECK CONSTRAINT [FK_tipoError_top]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=Opción Inactiva; 1=Opción Activa' , @level0type=N'SCHEMA',@level0name=N'ADM', @level1type=N'TABLE',@level1name=N'opcionesFarmaco', @level2type=N'COLUMN',@level2name=N'estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla de privilegios para el sistema de notificaciones de fármaco vigilancia. Estos privilegios serán asignados a las credenciales del usuario' , @level0type=N'SCHEMA',@level0name=N'ADM', @level1type=N'TABLE',@level1name=N'opcionesReferentes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dato de referencia acerca de la unidad efectora a la que pertenece el usuario' , @level0type=N'SCHEMA',@level0name=N'ADM', @level1type=N'TABLE',@level1name=N'usuariosReferentes', @level2type=N'COLUMN',@level2name=N'idEfectora'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dato de referencia respecto a si pertenece en especifico a un establecimiento de salud' , @level0type=N'SCHEMA',@level0name=N'ADM', @level1type=N'TABLE',@level1name=N'usuariosReferentes', @level2type=N'COLUMN',@level2name=N'idEstablecimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo de ID autoincrementable' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'codigosAtc', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que almacena el código ATC' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'codigosAtc', @level2type=N'COLUMN',@level2name=N'codigoAtc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que almacena el nombre del código ATC' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'codigosAtc', @level2type=N'COLUMN',@level2name=N'nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que almacena el comentario del código ATC' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'codigosAtc', @level2type=N'COLUMN',@level2name=N'comentario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que almacena el código padre' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'codigosAtc', @level2type=N'COLUMN',@level2name=N'parentAtc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que almacena el nivel del código ATC' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'codigosAtc', @level2type=N'COLUMN',@level2name=N'nivelAtc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del criterio de ESAVI' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'criteriosEsavi', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'campo que describe el estado de la edad 1= activo, 0=inactivo' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'edades', @level2type=N'COLUMN',@level2name=N'estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=active, 0 = inactive' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'establecimientosSalud', @level2type=N'COLUMN',@level2name=N'estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que representa el estado del evento 1=activo, 0=inactivo' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'tipoEvento', @level2type=N'COLUMN',@level2name=N'estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que representa el estado del tipo de notificación' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'tipoNotificacion', @level2type=N'COLUMN',@level2name=N'estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que representa el nombre del tipo PRM' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'tipoPrm', @level2type=N'COLUMN',@level2name=N'nombreTipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1= activo, 0 = inactivo' , @level0type=N'SCHEMA',@level0name=N'CAT', @level1type=N'TABLE',@level1name=N'tipoPrm', @level2type=N'COLUMN',@level2name=N'estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=no, 1= si' , @level0type=N'SCHEMA',@level0name=N'FV', @level1type=N'TABLE',@level1name=N'detalleHojaEsavi', @level2type=N'COLUMN',@level2name=N'valor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del documento' , @level0type=N'SCHEMA',@level0name=N'FV', @level1type=N'TABLE',@level1name=N'documentosReporte', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=no, 1=si' , @level0type=N'SCHEMA',@level0name=N'FV', @level1type=N'TABLE',@level1name=N'reporteFarmaco', @level2type=N'COLUMN',@level2name=N'edadDesconocida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=Profesional de la salud, 2 = ciudadana, 3 = industria' , @level0type=N'SCHEMA',@level0name=N'FV', @level1type=N'TABLE',@level1name=N'reporteFarmaco', @level2type=N'COLUMN',@level2name=N'origenNotificacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'High Level Group Term' , @level0type=N'SCHEMA',@level0name=N'MDRA', @level1type=N'TABLE',@level1name=N'hlgt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'High Level Term' , @level0type=N'SCHEMA',@level0name=N'MDRA', @level1type=N'TABLE',@level1name=N'hlt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Low Level Term' , @level0type=N'SCHEMA',@level0name=N'MDRA', @level1type=N'TABLE',@level1name=N'llt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Preferred Term' , @level0type=N'SCHEMA',@level0name=N'MDRA', @level1type=N'TABLE',@level1name=N'pt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'System Organ Class' , @level0type=N'SCHEMA',@level0name=N'MDRA', @level1type=N'TABLE',@level1name=N'soc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Medidas de Gestión a Tomar, tomado de Catalogo de Gestión de Riesgo de RAM y ESAVI: CatEstadosReporte::whereIn(''idEstado'',[7,8,9,10,11,14,15,16,17])' , @level0type=N'SCHEMA',@level0name=N'PRM', @level1type=N'TABLE',@level1name=N'informeSeguridad', @level2type=N'COLUMN',@level2name=N'estadoReporte'
GO
USE [master]
GO
ALTER DATABASE [dnm_fv_si] SET  READ_WRITE 
GO
