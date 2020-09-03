USE seminariodos201602975;

CREATE TABLE PIVOTE(
	Fecha varchar(15),
	CodProveedor varchar(15),
	NombreProveedor varchar(150),
	DireccionProveedor varchar(250),
	NumeroProveedor varchar(15),
	WebProveedor varchar(1),
	CodProducto varchar(15),
	NombreProducto varchar(150),
	GrupoProducto varchar(50),
	TipoProducto varchar(50),
	CodSucursal varchar(15),
	NombreSucursal varchar(150),
	DireccionSucursal varchar(250),
	Region varchar(25),
	Departamento varchar(25),
	Zona varchar(10),
	Unidades varchar(15),
	CodigoCliente varchar(15),
	NombreCliente varchar(150),
	TipoCliente varchar(15),
	DireccionCliente varchar(250),
	NumeroCliente varchar(25),
	CodVendedor varchar(15),
	NombreVendedor varchar(150),
	PrecioUnitario varchar(15)
);

CREATE TABLE CLIENTE(
	IdCliente int IDENTITY(1,1) primary key,
	CodCliente varchar(50) NOT NULL,
	NombreCliente varchar(150) NOT NULL,
	TipoCliente varchar(15) NOT NULL,
	DireccionCliente varchar(250) NOT NULL,
	NumeroCliente int NOT NULL
);

CREATE TABLE VENDEDOR(
	IdVendedor int IDENTITY(1,1) primary key,
	CodVendedor varchar(15) NOT NULL,
	NombreVendedor varchar(150) NOT NULL
);

CREATE TABLE PRODUCTO(
	IdProducto int IDENTITY(1,1) primary key,
	CodProducto varchar(15) NOT NULL,
	NombreProducto varchar(150) NOT NULL,
	GrupoProducto varchar(50) NOT NULL,
	TipoProducto varchar(50) NOT NULL,
	Precio decimal(5,2) NOT NULL
);

CREATE TABLE SUCURSAL(
	IdSucursal int IDENTITY(1,1) primary key,
	CodSucursal varchar(15) NOT NULL,
	NombreSucursal varchar(150) NOT NULL,
	DireccionSucursal varchar(250) NOT NULL
);

CREATE TABLE FECHA(
	IdFecha int IDENTITY(1,1) primary key,
	CodFecha date NOT NULL,
	Dia int NOT NULL,
	Mes int Not NULL,
	Año int NOT NULL
);

CREATE TABLE REGION(
	IdRegion int IDENTITY(1,1) primary key,
	Region varchar(25) NOT NULL,
	Departamento varchar(25) NOT NULL,
	Zona int NOT NULL
);

CREATE TABLE PROVEEDOR(
	IdProveedor int IDENTITY(1,1) primary key,
	CodProveedor varchar(15) NOT NULL,
	NombreProveedor varchar(150) NOT NULL,
	DireccionProveedor varchar(250) NOT NULL,
	NumeroProveedor int NOT NULL,
	WebProveedor varchar(1) NOT NULL
);

CREATE TABLE VENTA(
	CodVenta int IDENTITY(1,1) primary key,
	FK_Cliente int FOREIGN KEY REFERENCES CLIENTE(IdCliente),
	FK_Producto int FOREIGN KEY REFERENCES PRODUCTO(IdProducto),
	FK_Sucursal int FOREIGN KEY REFERENCES SUCURSAL(IdSucursal),
	FK_Vendedor int FOREIGN KEY REFERENCES VENDEDOR(IdVendedor),
	FK_Fecha int FOREIGN KEY REFERENCES FECHA(IdFecha),
	FK_Region int FOREIGN KEY REFERENCES REGION(IdRegion),
	Unidades int NOT NULL
);

CREATE TABLE COMPRA(
	CodCompra int IDENTITY(1,1) primary key,
	FK_Proveedor int FOREIGN KEY REFERENCES PROVEEDOR(IdProveedor),
	FK_Producto int FOREIGN KEY REFERENCES PRODUCTO(IdProducto),
	FK_Sucursal int FOREIGN KEY REFERENCES SUCURSAL(IdSucursal),
	FK_Fecha int FOREIGN KEY REFERENCES FECHA(IdFecha),
	FK_Region int FOREIGN KEY REFERENCES REGION(IdRegion),
	Unidades int NOT NULL
);

SELECT * FROM Pivote;
SELECT * FROM PRODUCTO;
SELECT * FROM PROVEEDOR;
SELECT * FROM SUCURSAL;
SELECT * FROM CLIENTE;
SELECT * FROM VENDEDOR;
SELECT * FROM FECHA;
SELECT * FROM REGION;
SELECT * FROM VENTA;
SELECT * FROM COMPRA;

DROP TABLE VENTA;
DROP TABLE COMPRA;
DROP TABLE PRODUCTO;
DROP TABLE PROVEEDOR;
DROP TABLE SUCURSAL;
DROP TABLE CLIENTE;
DROP TABLE VENDEDOR;
DROP TABLE FECHA;
DROP TABLE REGION;

DELETE FROM PIVOTE;
DELETE FROM VENTA;
DELETE FROM COMPRA;
DELETE FROM PRODUCTO;
DELETE FROM PROVEEDOR;
DELETE FROM SUCURSAL;
DELETE FROM CLIENTE;
DELETE FROM VENDEDOR;
DELETE FROM FECHA;
DELETE FROM REGION;

SELECT COUNT(*) FROM PROVEEDOR;
SELECT COUNT(*) FROM PRODUCTO;
SELECT COUNT(*) FROM SUCURSAL;
SELECT COUNT(*) FROM FECHA;
SELECT COUNT(*) FROM REGION;
SELECT COUNT(*) FROM COMPRA;
