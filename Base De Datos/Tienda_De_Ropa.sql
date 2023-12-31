USE [master]
GO
/****** Object:  Database [Tienda_De_Ropa]    Script Date: 21/11/2023 18:50:06 ******/
CREATE DATABASE [Tienda_De_Ropa]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tienda_De_Ropa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Tienda_De_Ropa.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tienda_De_Ropa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Tienda_De_Ropa_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Tienda_De_Ropa] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tienda_De_Ropa].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tienda_De_Ropa] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tienda_De_Ropa] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tienda_De_Ropa] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tienda_De_Ropa] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tienda_De_Ropa] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET RECOVERY FULL 
GO
ALTER DATABASE [Tienda_De_Ropa] SET  MULTI_USER 
GO
ALTER DATABASE [Tienda_De_Ropa] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tienda_De_Ropa] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tienda_De_Ropa] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tienda_De_Ropa] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tienda_De_Ropa] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tienda_De_Ropa] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tienda_De_Ropa', N'ON'
GO
ALTER DATABASE [Tienda_De_Ropa] SET QUERY_STORE = ON
GO
ALTER DATABASE [Tienda_De_Ropa] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Tienda_De_Ropa]
GO
/****** Object:  Table [dbo].[Buzos]    Script Date: 21/11/2023 18:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buzos](
	[id_Buzo] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](50) NULL,
	[Talle] [varchar](50) NULL,
	[Modelo] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Estilo] [varchar](50) NULL,
 CONSTRAINT [PK_Buzos] PRIMARY KEY CLUSTERED 
(
	[id_Buzo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pantalones]    Script Date: 21/11/2023 18:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pantalones](
	[id_Pantalon] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](50) NULL,
	[Talle] [int] NULL,
	[Modelo] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Estilo] [varchar](50) NULL,
 CONSTRAINT [PK_Pantalones] PRIMARY KEY CLUSTERED 
(
	[id_Pantalon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remeras]    Script Date: 21/11/2023 18:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remeras](
	[id_Remera] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](50) NULL,
	[Talle] [varchar](50) NULL,
	[Modelo] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Estilo] [varchar](50) NULL,
 CONSTRAINT [PK_Remeras] PRIMARY KEY CLUSTERED 
(
	[id_Remera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zapatillas]    Script Date: 21/11/2023 18:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zapatillas](
	[id_Zapatilla] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](50) NULL,
	[Talle] [int] NULL,
	[Modelo] [varchar](50) NULL,
	[Material] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Estilo] [varchar](50) NULL,
 CONSTRAINT [PK_Zapatillas] PRIMARY KEY CLUSTERED 
(
	[id_Zapatilla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Buzos] ON 

INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (1, N'Nike', N'L', N'Club Fleece', N'Felpa de algodón', N'Gris oscuro', N'Deportivo')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (2, N'Adidas', N'M', N'Essentials 3-Stripes', N'Mezcla de algodón y poliéster', N'Negro con franjas blancas', N'Urbano')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (3, N'Puma', N'XL', N'Amplified Crew Neck', N'Mezcla de algodón y poliéster', N'Azul marino', N'Deportivo')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (4, N'GAP', N'S', N'Logo Hoodie', N'Felpa de algodón', N'Gris jaspeado', N'Casual')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (5, N'Tommy Hilfiger', N'L', N'Icon Hoodie', N'Felpa de algodón', N'Azul con logo blanco', N'Casual')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (6, N'Champion', N'M', N'Reverse Weave', N'Felpa de algodón', N'Negro con logo rojo', N'Retro')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (7, N'The North Face', N'XL', N'Half Dome Hoodie', N'Mezcla de algodón y poliéster', N'Verde oliva', N'Outdoor')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (8, N'Columbia', N'M', N'Steens Mountain', N'Polar de poliéster', N'Azul marino', N'Outdoor')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (9, N'H&M', N'S', N'Zip Hoodie', N'Felpa de algodón', N'Negro', N'Casual')
INSERT [dbo].[Buzos] ([id_Buzo], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (10, N'Levi''s', N'L', N'Graphic Print Sweatshirt', N'Mezcla de algodón y poliéster', N'Gris con diseño gráfico', N'Urbano')
SET IDENTITY_INSERT [dbo].[Buzos] OFF
GO
SET IDENTITY_INSERT [dbo].[Pantalones] ON 

INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (1, N'Levi''s', 32, N'501 Original Fit', N'Denim', N'Azul oscuro', N'Clásico')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (2, N'Zara', 30, N'Slim Fit Chinos', N'Algodón y elastano', N'Beige', N'Casual')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (3, N'H&M', 34, N'Joggers', N'Poliéster y algodón', N'Gris jaspeado', N'Deportivo')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (4, N'Dockers', 36, N'Alpha Khaki', N'Algodón', N'Caqui', N'Formal')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (5, N'Adidas', 31, N'Track Pants', N'Poliéster', N'Negro con rayas blancas', N'Deportivo')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (6, N'Tommy Hilfiger', 33, N'Slim Fit Jeans', N'Denim', N'Azul claro', N'Modern')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (7, N'GAP', 29, N'Original Khakis', N'Algodón', N'Caqui', N'Casual')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (8, N'Ralph Lauren', 35, N'Polo Prepster', N'Algodón y nylon', N'Verde oliva', N'Preppy')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (9, N'Forever 21', 28, N'Culottes', N'Viscosa', N'Negro', N'Elegante')
INSERT [dbo].[Pantalones] ([id_Pantalon], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (10, N'Mango', 32, N'Slim Tailored Trousers', N'Lana', N'Gris oscuro', N'Formal')
SET IDENTITY_INSERT [dbo].[Pantalones] OFF
GO
SET IDENTITY_INSERT [dbo].[Remeras] ON 

INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (1, N'GAP', N'M', N'Basic Crew Neck', N'Algodón', N'Blanco', N'Clásico')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (2, N'Adidas', N'L', N'Trefoil Tee', N'Algodón', N'Negro', N'Deportivo')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (3, N'Zara', N'S', N'V-Neck Shirt', N'Algodón y poliéster', N'Gris melange', N'Casual')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (4, N'Nike', N'XL', N'Sportswear Club Tee', N'Algodón', N'Azul marino', N'Deportivo')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (5, N'H&M', N'XS', N'Basic Round Neck', N'Algodón', N'Rojo', N'Clásico')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (6, N'Puma', N'M', N'Essentials Tee', N'Algodón', N'Azul celeste', N'Deportivo')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (7, N'Tommy Hilfiger', N'L', N'Logo Print Tee', N'Algodón', N'Blanco con logo', N'Casual')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (8, N'Calvin Klein', N'S', N'Slim Fit Crew Neck', N'Algodón', N'Negro', N'Elegante')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (9, N'Forever 21', N'M', N'Crop Top', N'Algodón y spandex', N'Rosa pastel', N'Modern')
INSERT [dbo].[Remeras] ([id_Remera], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (10, N'Levi''s', N'XL', N'Graphic Tee', N'Algodón', N'Gris con diseño gráfico', N'Vintage')
SET IDENTITY_INSERT [dbo].[Remeras] OFF
GO
SET IDENTITY_INSERT [dbo].[Zapatillas] ON 

INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (1, N'Nike', 40, N'Air Max 90', N'Cuero y tela', N'Blanco', N'Deportivo')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (2, N'Adidas', 38, N'Ultraboost', N'Malla y sintético', N'Negro', N'Running')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (3, N'Puma', 41, N'RS-X', N'Cuero y tela', N'Gris y azul', N'Retro')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (4, N'New Balance', 39, N'574', N'Gamuza y malla', N'Azul marino', N'Casual')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (5, N'Reebok', 37, N'Classic Leather', N'Cuero', N'Blanco y rojo', N'Vintage')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (6, N'Vans', 42, N'Old Skool', N'Lona y cuero', N'Negro y blanco', N'Skate')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (7, N'Converse', 36, N'Chuck Taylor All Star', N'Lona', N'Blanco', N'Clásico')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (8, N'Asics', 40, N'Gel-Kayano', N'Malla y sintético', N'Gris y amarillo', N'Running')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (9, N'Under Armour', 39, N'HOVR Phantom', N'Malla y sintético', N'Negro y gris', N'Deportivo')
INSERT [dbo].[Zapatillas] ([id_Zapatilla], [Marca], [Talle], [Modelo], [Material], [Color], [Estilo]) VALUES (10, N'Fila', 38, N'Disruptor II', N'Cuero sintético', N'Blanco', N'Chunky sneaker')
SET IDENTITY_INSERT [dbo].[Zapatillas] OFF
GO
USE [master]
GO
ALTER DATABASE [Tienda_De_Ropa] SET  READ_WRITE 
GO
