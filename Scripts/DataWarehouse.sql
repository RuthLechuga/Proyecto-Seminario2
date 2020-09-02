use seminariodos201602975;

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
	CodCliente varchar(15) primary key,
	NombreCliente varchar(150) NOT NULL,
	TipoCliente varchar(15) NOT NULL,
	DireccionCliente varchar(250) NOT NULL,
	NumeroCliente int NOT NULL
);

CREATE TABLE VENDEDOR(
	CodVendedor varchar(15) primary key,
	NombreVendedor varchar(150) NOT NULL
);

CREATE TABLE PRODUCTO(
	CodProducto varchar(15) primary key,
	NombreProducto varchar(150) NOT NULL,
	GrupoProducto varchar(50) NOT NULL,
	TipoProducto varchar(50) NOT NULL,
	Precio decimal(5,2) NOT NULL
);

CREATE TABLE SUCURSAL(
	CodSucursal varchar(15) primary key,
	NombreSucursal varchar(150) NOT NULL,
	DireccionSucursal varchar(250) NOT NULL,
	Region varchar(25) NOT NULL,
	Departamento varchar(25) NOT NULL,
	Zona int NOT NULL
);

CREATE TABLE FECHA(
	CodFecha varchar(10) primary key,
	Dia int NOT NULL,
	Mes int Not NULL,
	Año int NOT NULL,
);

CREATE TABLE PROVEEDOR(
	CodProveedor varchar(15) primary key,
	NombreProveedor varchar(150) NOT NULL,
	DireccionProveedor varchar(250) NOT NULL,
	NumeroProveedor int NOT NULL,
	WebProveedor varchar(1) NOT NULL
);

CREATE TABLE VENTA(
	CodVenta int IDENTITY(1,1) primary key,
	FK_Cliente varchar(15) FOREIGN KEY REFERENCES CLIENTE(CodCliente),
	FK_Producto varchar(15) FOREIGN KEY REFERENCES PRODUCTO(CodProducto),
	FK_Sucursal varchar(15) FOREIGN KEY REFERENCES SUCURSAL(CodSucursal),
	FK_Vendedor varchar(15) FOREIGN KEY REFERENCES VENDEDOR(CodVendedor),
	FK_Fecha varchar(10) FOREIGN KEY REFERENCES FECHA(CodFecha),
	Unidades int NOT NULL
);

CREATE TABLE COMPRA(
	CodCompra int IDENTITY(1,1) primary key,
	FK_Proveedor varchar(15) FOREIGN KEY REFERENCES PROVEEDOR(CodProveedor),
	FK_Producto varchar(15) FOREIGN KEY REFERENCES PRODUCTO(CodProducto),
	FK_Sucursal varchar(15) FOREIGN KEY REFERENCES SUCURSAL(CodSucursal),
	FK_Fecha varchar(10) FOREIGN KEY REFERENCES FECHA(CodFecha),
	Unidades int NOT NULL
);

SELECT * FROM Pivote;