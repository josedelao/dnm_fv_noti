USE [master]
GO
/****** Object:  Database [dnm_catalogos]    Script Date: 18/6/2021 07:23:51 ******/
CREATE DATABASE [dnm_catalogos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dnm_catalogos.si', FILENAME = N'G:\DATASQL\dnm_catalogos.si.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dnm_catalogos.si_log', FILENAME = N'G:\DATASQL\dnm_catalogos.si_log.ldf' , SIZE = 2304KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dnm_catalogos] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dnm_catalogos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dnm_catalogos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dnm_catalogos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dnm_catalogos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dnm_catalogos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dnm_catalogos] SET ARITHABORT OFF 
GO
ALTER DATABASE [dnm_catalogos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dnm_catalogos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dnm_catalogos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dnm_catalogos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dnm_catalogos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dnm_catalogos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dnm_catalogos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dnm_catalogos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dnm_catalogos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dnm_catalogos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dnm_catalogos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dnm_catalogos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dnm_catalogos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dnm_catalogos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dnm_catalogos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dnm_catalogos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dnm_catalogos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dnm_catalogos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dnm_catalogos] SET  MULTI_USER 
GO
ALTER DATABASE [dnm_catalogos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dnm_catalogos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dnm_catalogos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dnm_catalogos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dnm_catalogos] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dnm_catalogos', N'ON'
GO
USE [dnm_catalogos]
GO
/****** Object:  User [MEDICAMENTOS\ana.orellana]    Script Date: 18/6/2021 07:23:52 ******/
CREATE USER [MEDICAMENTOS\ana.orellana] FOR LOGIN [MEDICAMENTOS\ana.orellana] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MEDICAMENTOS\bcksql]    Script Date: 18/6/2021 07:23:52 ******/
CREATE USER [MEDICAMENTOS\bcksql] FOR LOGIN [MEDICAMENTOS\bcksql] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [MEDICAMENTOS\Desarrollo]    Script Date: 18/6/2021 07:23:52 ******/
CREATE USER [MEDICAMENTOS\Desarrollo] FOR LOGIN [MEDICAMENTOS\Desarrollo]
GO
/****** Object:  User [MEDICAMENTOS\luis.rivera]    Script Date: 18/6/2021 07:23:52 ******/
CREATE USER [MEDICAMENTOS\luis.rivera] FOR LOGIN [MEDICAMENTOS\luis.rivera] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [prueba]    Script Date: 18/6/2021 07:23:52 ******/
CREATE USER [prueba] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [MEDICAMENTOS\ana.orellana]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [MEDICAMENTOS\bcksql]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MEDICAMENTOS\Desarrollo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MEDICAMENTOS\luis.rivera]
GO
ALTER ROLE [db_datareader] ADD MEMBER [prueba]
GO
/****** Object:  Schema [cat]    Script Date: 18/6/2021 07:23:53 ******/
CREATE SCHEMA [cat]
GO
/****** Object:  UserDefinedFunction [cat].[dias_habiles]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Función de dias hábiles
	-- 1. Se eliminan fines de semana y días feriados de un rango entre 2 fechas

CREATE FUNCTION [cat].[dias_habiles] (
	@inicio DATE, 
	@fin DATE)
RETURNS int
AS
BEGIN
	DECLARE @fechaInicio AS DATE;
	DECLARE @fechaFin AS DATE;
	DECLARE @fechaTemp AS DATE;
	DECLARE @diasFeriados table(
		diaFeriado DATE
	);
	DECLARE @diasHabiles AS INT = 0;

	IF (@inicio < @fin)
		BEGIN
			SET @fechaInicio = @inicio
			SET @fechaFin = @fin
		END
	ELSE
		BEGIN
			SET @fechaInicio = @fin
			SET @fechaFin = @inicio
		END

	SET @fechaTemp = @fechaInicio;
	INSERT INTO @diasFeriados
	SELECT fecha FROM dnm_catalogos.cat.diasFeriados WHERE fecha >= @fechaInicio and fecha <= @fin;

	WHILE @fechaTemp <= @fechaFin
	BEGIN
		IF DATEPART(DW, @fechaTemp) NOT IN (6, 7) AND @fechaTemp NOT IN (SELECT diaFeriado FROM @diasFeriados)
			SET @diasHabiles = @diasHabiles + 1;
		SET @fechaTemp = DATEADD(DAY, 1, @fechaTemp);
	END;
	RETURN @diasHabiles
END
GO
/****** Object:  Table [cat].[departamento]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[departamento](
	[idDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[nombreDepartamento] [nvarchar](50) NOT NULL,
	[estado] [varchar](1) NULL,
	[idPais] [int] NOT NULL,
	[idUsuarioCrea] [varchar](30) NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](30) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__departam__C225F98D29FD5572] PRIMARY KEY CLUSTERED 
(
	[idDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cat].[dias_feriados]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[dias_feriados](
	[idDia] [int] IDENTITY(1,1) NOT NULL,
	[ano] [char](4) NOT NULL,
	[nombre] [char](20) NOT NULL,
	[dia] [varchar](100) NOT NULL,
	[idUsuarioCreacion] [varchar](30) NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](30) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK_dias_feriados] PRIMARY KEY CLUSTERED 
(
	[idDia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cat].[diasFeriados]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[diasFeriados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[motivo] [char](200) NULL,
	[fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cat].[meses]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[meses](
	[idMes] [int] IDENTITY(1,1) NOT NULL,
	[nombreMes] [varchar](45) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[idUsuarioCrea] [varchar](30) NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](30) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK_meses] PRIMARY KEY CLUSTERED 
(
	[idMes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cat].[municipios]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[municipios](
	[idMunicipio] [int] IDENTITY(1,1) NOT NULL,
	[nombreMunicipio] [varchar](255) NOT NULL,
	[estado] [varchar](1) NULL,
	[idDepartamento] [int] NOT NULL,
	[idUsuarioCrea] [varchar](30) NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](30) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__municipi__FD10E4001F3D91B7] PRIMARY KEY CLUSTERED 
(
	[idMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cat].[paises]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[paises](
	[idPais] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[idAduana] [varchar](3) NULL,
	[activo] [varchar](1) NULL,
	[codigoId] [int] NOT NULL,
	[codigoPais] [varchar](2) NULL,
	[idUsuarioCrea] [varchar](30) NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](30) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK__paises__BD2285E32880E6E1] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [cat].[tratamiento]    Script Date: 18/6/2021 07:23:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cat].[tratamiento](
	[idTipoTratamiento] [int] IDENTITY(1,1) NOT NULL,
	[nombreTratamiento] [nvarchar](50) NOT NULL,
	[abreviaturaTratamiento] [nvarchar](50) NOT NULL,
	[idUsuarioCrea] [varchar](30) NOT NULL,
	[fechaCreacion] [datetime2](0) NULL,
	[idUsuarioModifica] [varchar](30) NULL,
	[fechaModificacion] [datetime2](0) NULL,
 CONSTRAINT [PK_tratamiento] PRIMARY KEY CLUSTERED 
(
	[idTipoTratamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_departamento]    Script Date: 18/6/2021 07:23:53 ******/
CREATE NONCLUSTERED INDEX [IX_departamento] ON [cat].[departamento]
(
	[nombreDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_departamento_1]    Script Date: 18/6/2021 07:23:53 ******/
CREATE NONCLUSTERED INDEX [IX_departamento_1] ON [cat].[departamento]
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [cat].[departamento] ADD  CONSTRAINT [DF__departame__estad__239E4DCF]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [cat].[meses] ADD  CONSTRAINT [DF_meses_estado]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [cat].[municipios] ADD  CONSTRAINT [DF__municipio__estad__2A4B4B5E]  DEFAULT ('A') FOR [estado]
GO
ALTER TABLE [cat].[paises] ADD  CONSTRAINT [DF__paises__activo__20C1E124]  DEFAULT ('A') FOR [activo]
GO
ALTER TABLE [cat].[departamento]  WITH NOCHECK ADD  CONSTRAINT [fk_idPais] FOREIGN KEY([idPais])
REFERENCES [cat].[paises] ([idPais])
GO
ALTER TABLE [cat].[departamento] CHECK CONSTRAINT [fk_idPais]
GO
ALTER TABLE [cat].[municipios]  WITH CHECK ADD  CONSTRAINT [fk_idDepartamento] FOREIGN KEY([idDepartamento])
REFERENCES [cat].[departamento] ([idDepartamento])
GO
ALTER TABLE [cat].[municipios] CHECK CONSTRAINT [fk_idDepartamento]
GO
USE [master]
GO
ALTER DATABASE [dnm_catalogos] SET  READ_WRITE 
GO
