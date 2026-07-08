MICHI CAFÉ 

1. Descripción

**Michi Café** es un sistema de escritorio desarrollado en **Java** que permite administrar las principales operaciones de una cafetería, facilitando el control de ventas, clientes, empleados, productos e inventario. El sistema busca mejorar la organización de la información y agilizar las tareas diarias mediante una interfaz sencilla y una base de datos en **MySQL**.

El proyecto fue desarrollado siguiendo el patrón de arquitectura **Modelo - Vista - Controlador (MVC)**, lo que permite mantener una mejor organización del código y facilita su mantenimiento.

2. Funcionalidades

El sistema cuenta con los siguientes módulos:

- Inicio de sesión con control de acceso por roles (Administrador y Empleado).
	-Registro, modificación, eliminación y consulta de clientes.
	-Gestión de productos y categorías.
	-Administración de empleados.
	-Registro de ventas.
	-Carrito de compras con actualización automática de cantidades y 	subtotales.
	-Validación del stock antes de realizar una venta.
	-Descuento automático del inventario al finalizar una compra.
	-Consulta del historial de ventas.
	-Generación de reportes para el administrador.

3. Tecnologías Utilizadas

	-Lenguaje de programación:Java SE
	-Interfaz gráfica:Java Swing
	-Arquitectura:MVC (Modelo - Vista - Controlador)
	-Base de datos:MySQL
	-Servidor local:XAMPP
	-Conector:MySQL Connector/J
	-IDE: Apache NetBeans
	-Control de versiones:Git y GitHub

4. Requisitos

Antes de ejecutar el proyecto es necesario contar con:

	-Java JDK 11 o una versión superior.
	-Apache NetBeans (o cualquier IDE compatible con proyectos 		 Java).
	-XAMPP instalado.
	-MySQL en ejecución.
	-Biblioteca mysql-connector-java.jar

5. Instalación

1. Clonar o descargar el repositorio.
2. Abrir el proyecto en NetBeans.
3. Iniciar Apache y MySQL desde XAMPP.
4. Crear una base de datos con el nombre: michi_cafe_db

5. Importar el archivo:

Backup_MichiCafe.sql

6. Verificar que los datos de conexión en el proyecto coincidan con la configuración local de MySQL.

7. Ejecutar el proyecto desde NetBeans.

El proyecto está organizado siguiendo la arquitectura MVC.

1. Base de Datos

El sistema utiliza MySQL para almacenar toda la información relacionada con:

	-Usuarios
	-Empleados
	-Clientes
	-Productos
	-Categorías
	-Ventas
	-Detalle de ventas
	-Inventario

Cada venta realizada actualiza automáticamente el stock disponible en la base de datos.

- Integrantes

ROJAS DONATO DAYANA YANELI 
SANCHEZ PEREZ LUZ MARITA 
ALAYA OCAS JHERSON EDINSON 
CÓRDOVA CACHO GABRIELA CRISTINA 

- Observaciones
  
Este proyecto fue desarrollado con fines estrictamente académicos para el curso de Técnicas de Programación Orientada a Objetos (POO).

- Licencia

Proyecto desarrollado únicamente con fines académicos.
