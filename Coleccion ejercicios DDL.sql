
CREATE DATABASE ejemplo;
#####################################################################################
################################     EJERCICIO 1    #################################
#####################################################################################
/*
A. Supongamos que queremos crear una base de datos que almacene información sobre
productos. Para ello, podemos crear una tabla llamada "productos" con las siguientes
columnas:
● id: identificador único del producto (tipo INT)
● nombre: nombre del producto (tipo VARCHAR)
● precio: precio del producto (tipo FLOAT)
● descripcion: descripción del producto (tipo TEXT)
*/

CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    precio FLOAT,
    descripcion TEXT
);

/*
B. Una vez creada la tabla, podemos agregar nuevos productos utilizando el comando
INSERT. Agrega 3 nuevos productos.
*/

insert into productos (id, nombre, precio, descripcion) 
VALUES (1, 'producto 1', 10.99, 'Descripcion del producto 1');

insert into productos (id, nombre, precio, descripcion) 
VALUES (2, 'producto 2', 20.99, 'Descripcion del producto 2');

insert into productos (id, nombre, precio, descripcion) 
VALUES (3, 'producto 3', 30.99, 'Descripcion del producto 3');

/*
C. Si en algún momento queremos modificar la estructura de la tabla, podemos utilizar el
comando ALTER TABLE. Agrega una nueva columna "stock" de tiempo INT a la tabla
"productos".
*/

ALTER TABLE productos ADD COLUMN stock INT; # <-- Agregar una nueva columna

/*
D. Finalmente, elimina la tabla "productos" de la base de datos.
*/

DROP TABLE productos;  #<-- eliminar la tabla productos

#####################################################################################
################################     EJERCICIO 2    #################################
#####################################################################################
/*
A. Supongamos que queremos crear una nueva tabla llamada "clientes" para almacenar
información sobre nuestros clientes. La tabla tendrá las siguientes columnas:
● id: identificador único del cliente (tipo INT)
● nombre: nombre del cliente (tipo VARCHAR)
● correo: dirección de correo electrónico del cliente (tipo VARCHAR)
● telefono: número de teléfono del cliente (tipo VARCHAR)
*/

CREATE TABLE clientes (
	id INT PRIMARY KEY,
    nombre VARCHAR(20),
    correo VARCHAR(100),
    telefono VARCHAR(12)
    );

/*
B. Añade a la tabla dos clientes nuevos.
*/

INSERT INTO clientes (id, nombre, correo, telefono)
VALUES (1, 'Sergio', 'seceji@gmail.com', 644031509);

INSERT INTO clientes (id, nombre, correo, telefono)
VALUES (2, 'Nahiara', 'nahi@gmail.com', 604853633);

/*
C. Agrega una nueva columna "direccion" a la tabla "clientes" de tipo varchar(100)
*/

ALTER TABLE clientes ADD (
	direccion VARCHAR(100)
    );

/*
D. Modifica el tipo de datos de una columna existente: cambia el tipo de datos de la
columna "telefono" de VARCHAR a INT
*/

TRUNCATE TABLE clientes; # <-- VACIA LA TABLA 'CLIENTES' ENTERA

ALTER TABLE clientes  # <-- MODIFICA LA COLUMNA TELEFONO DE LA TABLA CLIENTE 
MODIFY telefono int;  # <-- PASANDOLA DE VARCHAR A INT

/*
E. Finalmente, elimina la tabla "clientes" de la base de datos
*/

DROP TABLE clientes;

#####################################################################################
################################     EJERCICIO 3    #################################
#####################################################################################
/*
A. Supongamos que queremos crear una nueva tabla llamada "ventas" para almacenar
información sobre las ventas de nuestros productos. La tabla tendrá las siguientes
columnas:
● id: identificador único de la venta (tipo INT)
● fecha: fecha de la venta (tipo DATE)
● producto_id: identificador único del producto vendido (tipo INT)
● cantidad: cantidad de productos vendidos (tipo INT)
● total: total de la venta (tipo FLOAT)

B. Incluye una clave foránea (FOREIGN KEY) para establecer una relación entre la columna
"producto_id" de la tabla "ventas" y la columna "id" de la tabla "productos". De esta manera,
podemos asegurarnos de que los productos vendidos existen en la tabla "productos".
*/
CREATE TABLE ventas (
	id INT PRIMARY KEY,
    fecha DATE,
    producto_id INT,
    cantidad INT,
    total FLOAT,
    FOREIGN KEY (producto_id) REFERENCES productos(id)
    );
    
/*
C. Una vez creada la tabla, agrega 2 nuevas ventas utilizando el comando INSERT.
*/

INSERT INTO ventas (id, fecha, producto_id, cantidad, total)
VALUES (01, '2000/10/10', 1, 23, 50);

INSERT INTO ventas (id, fecha, producto_id, cantidad, total)
VALUES (02, '2000/10/11', 2, 24, 70);

/*
D. Agrega una nueva columna "cliente_id" de tipo entero a la tabla "ventas" para registrar el
cliente que realizó la compra.
*/

ALTER TABLE ventas ADD (
		cliente_id int 
	);
    
/*
E. Eliminar la columna "total" de la tabla "ventas".
*/

ALTER TABLE ventas DROP COLUMN total;

/*
F. Eliminar la tabla "ventas" de la base de datos
*/
DROP TABLE ventas;

#####################################################################################
################################     EJERCICIO 4    #################################
#####################################################################################

/*
A. Supongamos que queremos crear una nueva tabla llamada "empleados" para almacenar
información sobre nuestros empleados. La tabla tendrá las siguientes columnas:
*/

CREATE TABLE empleados (
		id INT PRIMARY KEY,
        nombre VARCHAR (20),
		apellido VARCHAR (50),
        fecha_nacimiento DATE,
        salario FLOAT        
	);
    
/*
B. Agregar 2 nuevos empleados.
*/

INSERT INTO empleados(id, nombre, apellido, fecha_nacimiento, salario)
VALUES (1, 'Sergio', 'Cervera', '2002-10-21', 1500.0 );

INSERT INTO empleados(id, nombre, apellido, fecha_nacimiento, salario)
VALUES (2, 'Nahiara', 'Zarco', '2003-04-02', 1800.0 );

/*
C. Cambia el nombre de la columna "apellido" a "apellido_paterno”.
*/

ALTER TABLE empleados CHANGE apellido apellido_paterno VARCHAR(50);

/*
D. Cambia el nombre de la tabla "empleados" a "trabajadores"
*/

ALTER TABLE empleados RENAME TO trabajadores;

/*
E. Elimina la tabla "trabajadores" de la base de datos
*/

DROP TABLE trabajadores;

#####################################################################################
################################     EJERCICIO 5    #################################
#####################################################################################
/*
A. Supongamos que queremos crear una nueva tabla llamada "libros" para almacenar
información sobre los libros de una biblioteca. La tabla tendrá las siguientes columnas:
*/

CREATE TABLE libros (
		id INT PRIMARY KEY,
		titulo VARCHAR(50),
        autor VARCHAR(50),
        editorial VARCHAR(20),
        año_publicacion INT,
        estado VARCHAR(10)
	);
    
/*
B. Agregar 2 nuevos libros.
*/

INSERT INTO libros (id, titulo, autor, editorial, año_publicacion, estado)
VALUES (1, 'La bella', 'Sergio Cervera', 'zambomba', 2010, 'BUENO');
    
INSERT INTO libros (id, titulo, autor, editorial, año_publicacion, estado)
VALUES (2, 'El secreto de españa', 'Penelope Cruz', 'Anaya', 1783, 'ACEPTABLE');
		
/*
C. Agrega una nueva columna "número_edición" de tipo entero a la tabla "libros" para
registrar la edición del libro.
*/

ALTER TABLE libros ADD numero_edicion INT;

/*
D. Cambia el tipo de datos de la columna "año_publicación" de INT a VARCHAR.
*/

TRUNCATE TABLE libros;  # <-- VACIA LA TABLA 'LIBROS' ENTERA

ALTER TABLE libros          		# <-- MODIFICA LA COLUMNA TELEOFONO DE LA TABLA CLIENTE
MODIFY año_publicacion VARCHAR(10);  # <-- PASANDOLA DE INT A VARCHAR  

/*
E. Elimina la tabla "libros" de la base de datos.
*/

DROP TABLE libros;


#####################################################################################
################################     EJERCICIO 6    #################################
#####################################################################################
/*
1. Crea una nueva base de datos llamada "ejemplo2".
*/

CREATE DATABASE ejemplo2;

/*
2. Crea una tabla llamada "articulos" con los siguientes campos:
"id" (entero, clave primaria)
"nombre_articulo" (cadena de texto de longitud máxima 50)
"descripcion" (cadena de texto de longitud máxima 100)
"precio" (decimal con precisión de dos decimales)
*/

CREATE TABLE articulos (
		id INT PRIMARY KEY,
        nombre_articulo VARCHAR(50),
        descripcion VARCHAR(100),
        precio DOUBLE
	);

/*
3. Crea una tabla llamada "pedidos" con los siguientes campos:
"id" (entero, clave primaria)
"fecha" (fecha)
"id_producto" (entero, clave foránea referenciando el campo "id" de la tabla "productos")
"cantidad" (entero)
*/

CREATE TABLE pedidos (
		id INT PRIMARY KEY,
        fecha DATE,
        id_producto INT,
        cantidad INT,
        FOREIGN KEY (id_producto) REFERENCES productos(id)
	);

/*
4. Modifica la tabla "articulos" para agregar un nuevo campo llamado "existencias" (entero)
*/

ALTER TABLE articulos ADD existencias INT;

/*
5. Modifica la tabla "pedidos" para agregar un nuevo campo llamado "total" (decimal con
precisión de dos decimales).
*/

ALTER TABLE pedidos ADD total DOUBLE;

/*
6. Elimina el campo "descripcion" de la tabla "articulos"
*/

ALTER TABLE articulos DROP COLUMN descripcion;

/*
7. Elimina la tabla "pedidos".
*/

DROP TABLE pedidos;

/*
8. Elimina la base de datos "ejemplo2".
*/

DROP DATABASE ejemplo2;

#####################################################################################
################################     EJERCICIO 7    #################################
#####################################################################################
/*
Crea una nueva base de datos llamada “ejemplo”.
*/

CREATE DATABASE ejemplo;

/*
1. Crea una tabla llamada estudiantes con las siguientes columnas:
id: un número entero que actúa como clave primaria.
nombre: una cadena de caracteres de hasta 50 caracteres.
edad: un número entero.
carrera: una cadena de caracteres de hasta 100 caracteres.
*/

CREATE TABLE estudiantes (
		id INT PRIMARY KEY,
        nombre VARCHAR(50),
        edad INT,
        carrera VARCHAR(100)
	);
    
/*
2. Crea una tabla llamada profesores con las siguientes columnas:
id: un número entero que actúa como clave primaria.
nombre: una cadena de caracteres de hasta 50 caracteres.
edad: un número entero.
especialidad: una cadena de caracteres de hasta 100 caracteres.
*/

CREATE TABLE profesores (
		id INT PRIMARY KEY,
        nombre VARCHAR(50),
        edad INT,
        especialidad VARCHAR(100)
	);
    
/*
3. Crea una tabla llamada cursos con las siguientes columnas:
id: un número entero que actúa como clave primaria.
nombre: una cadena de caracteres de hasta 100 caracteres.
profesor_id: un número entero que actúa como clave foránea para la tabla profesores.
*/

CREATE TABLE cursos (
		id INT PRIMARY KEY,
        nombre VARCHAR(100),
        profesor_id INT,
        FOREIGN KEY (profesor_id) REFERENCES profesores(id)
	);
    
/*
4. Crea una tabla llamada inscripciones con las siguientes columnas:
id: un número entero que actúa como clave primaria.
estudiante_id: un número entero que actúa como clave foránea para la tabla estudiantes.
curso_id: un número entero que actúa como clave foránea para la tabla cursos.
fecha: una marca de tiempo que se actualiza automáticamente cada vez que se inserta una
nueva fila en la tabla.
*/

CREATE TABLE inscripciones (
		id INT PRIMARY KEY,
        estudiante_id INT,
			FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
        curso_id INT,
			FOREIGN KEY (curso_id) REFERENCES cursos(id),
        fecha TIMESTAMP
	);

/*
5. Crea una tabla llamada asistencias con las siguientes columnas:
id: un número entero que actúa como clave primaria.
inscripcion_id: un número entero que actúa como clave foránea para la tabla inscripciones.
fecha: una marca de tiempo que indica la fecha y hora de la asistencia.
*/

CREATE TABLE asistencias (
		id INT PRIMARY KEY,
        inscripcion_id INT,
			FOREIGN KEY (inscripcion_id) REFERENCES inscripciones(id), 
        fecha TIMESTAMP
	);

#####################################################################################
################################     EJERCICIO 8    #################################
#####################################################################################
/*
1.Crear una tabla llamada productos con los siguientes campos:
id: entero, clave primaria.
nombre: cadena de caracteres con longitud máxima de 50 caracteres.
precio: decimal con 2 decimales.
stock: entero.
*/

CREATE TABLE productos (
		id INT PRIMARY KEY,
        nombre VARCHAR(50),
        precio DOUBLE,
        stock INT
	);
    
/*
2.Crear una tabla llamada clientes con los siguientes campos:
id: entero, clave primaria.
nombre: cadena de caracteres con longitud máxima de 50 caracteres.
apellido: cadena de caracteres con longitud máxima de 50 caracteres.
telefono: cadena de caracteres con longitud máxima de 20 caracteres.
*/

CREATE TABLE clientes (
		id INT PRIMARY KEY,
        nombre VARCHAR(50),
        apellido VARCHAR(50),
        telefono VARCHAR(20)
	);
    
/*
3.Crear una tabla llamada ventas con los siguientes campos:
id: entero, clave primaria.
cliente_id: entero, clave foránea que hace referencia al campo id de la tabla clientes.
fecha: fecha y hora de la venta.
total: decimal con 2 decimales.
*/

CREATE TABLE ventas (
		id INT PRIMARY KEY,
        cliente_id INT,
			FOREIGN KEY(cliente_id) REFERENCES clientes(id),
		fecha DATETIME,
        total DOUBLE
	);
    
/*
4.Crear una tabla llamada empleados con los siguientes campos:
id: entero, clave primaria.
nombre: cadena de caracteres con longitud máxima de 50 caracteres.
apellido: cadena de caracteres con longitud máxima de 50 caracteres.
fecha_nacimiento: fecha de nacimiento.
fecha_contratacion: fecha de contratación.
salario: decimal con 2 decimales.
*/

CREATE TABLE empleados (
		id INT PRIMARY KEY,
        nombre VARCHAR(50),
        apellido VARCHAR(50),
        fecha_nacimiento DATE,
        fecha_contratacion DATE,
        salario DOUBLE
	);
    
/*
5.Crear una tabla llamada departamentos con los siguientes campos:
id: entero, clave primaria.
nombre: cadena de caracteres con longitud máxima de 50 caracteres.
*/

CREATE TABLE departamentos (
		id INT PRIMARY KEY,
        nombre VARCHAR(50)
	);
    
/*
6.Crear una tabla llamada puestos con los siguientes campos:
id: entero, clave primaria.
nombre: cadena de caracteres con longitud máxima de 50 caracteres
*/

CREATE TABLE puestos (
		id INT PRIMARY KEY,
        nombre VARCHAR(50)
	);
    
/*
7.Crear una tabla llamada empleados_departamentos con los siguientes campos:
id: entero, clave primaria.
empleado_id: entero, clave foránea que hace referencia al campo id de la tabla empleados.
departamento_id: entero, clave foránea que hace referencia al campo id de la tabla
departamentos.
*/

CREATE TABLE empleados_departamento (
		id INT PRIMARY KEY,
        empleado_id INT,
			FOREIGN KEY (empleado_id) REFERENCES empleados(id),
		departamento_id INT,
			FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
	);
    
/*
8.Crear una tabla llamada empleados_puestos con los siguientes campos:
id: entero, clave primaria.
empleado_id: entero, clave foránea que hace referencia al campo id de la tabla empleados.
puesto_id: entero, clave foránea que hace referencia al campo id de la tabla puestos.
*/

CREATE TABLE empleados_puestos (
		id INT PRIMARY KEY,
        empleado_id INT,
			FOREIGN KEY (empleado_id) REFERENCES empleados(id),
		puesto_id INT,
			FOREIGN KEY (puesto_id) REFERENCES puestos(id)
	);
    
    
/************************************************************************************************************************************/
/************************************************************************************************************************************/
/************************************************************************************************************************************/
						## PARA ELIMINAR LA BASE DE DATOS CREADA CON TODAS LAS TABLAS EJECUTAMOS LO SIGUIENTE ##
													DROP DATABASE ejemplo;
/************************************************************************************************************************************/
/************************************************************************************************************************************/
/************************************************************************************************************************************/
    

    
    




