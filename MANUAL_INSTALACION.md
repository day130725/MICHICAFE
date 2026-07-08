🛠️ Manual de Instalación y Configuración del Sistema
Este manual describe el procedimiento paso a paso para instalar las herramientas necesarias, configurar la base de datos y desplegar el código fuente del sistema de gestión comercial en una nueva computadora.

REQUISITOS PREVIOS DEL SISTEMA
Sistema Operativo: Windows 10 o superior (64 bits).

Java Development Kit (JDK): Versión 11 o superior instalada.

Entorno de Desarrollo: NetBeans IDE (Versión 12 o superior recomendada).

PASO 1: INSTALACIÓN Y CONFIGURACIÓN DE XAMPP
Descargar el instalador: Ingrese a apachefriends.org y descargue la versión de XAMPP para Windows.

Proceso de instalación: Ejecute el instalador .exe descargado. Mantenga la ruta de instalación por defecto (C:\xampp) y complete el asistente haciendo clic en Next.

Iniciar los servicios: Abra el panel de control de XAMPP (XAMPP Control Panel) desde el menú de inicio y haga clic en el botón Start al lado de los módulos Apache y MySQL. Ambos deben marcarse en color verde.

PASO 2: IMPORTACIÓN DE LA BASE DE DATOS
Acceder al Administrador: Abra su navegador web e ingrese a la dirección: http://localhost/phpmyadmin/.

Crear la Base de Datos:

Haga clic en la opción Nueva (New) en la barra lateral izquierda.

En el campo "Nombre de la base de datos", escriba exactamente: michi_cafe_db.

Haga clic en el botón Crear.

Cargar el Respaldo (Backup):

Seleccione la base de datos michi_cafe_db que acaba de crear.

Diríjase a la pestaña Importar (Import) en el menú superior.

Haga clic en Seleccionar archivo y busque el archivo Backup_Final_MichiCafe.sql proporcionado en la entrega.

Desplace la página hacia abajo y haga clic en el botón Importar (o Continuar). Al finalizar, se notificará que todas las tablas y registros iniciales se crearon con éxito.

PASO 3: APERTURA Y VINCULACIÓN EN NETBEANS
Abrir el Proyecto: Abra NetBeans IDE, vaya a File -> Open Project, busque la carpeta raíz del proyecto clonado (MICHICAFE) y ábrala.

Resolver la Librería Faltante (Conector MySQL):

En la barra lateral de proyectos, expanda la estructura del sistema y localice la carpeta Libraries.

Si el conector muestra un icono de alerta o error, haga clic derecho sobre él y seleccione Remove.

Haga clic derecho sobre la carpeta Libraries y seleccione Add JAR/Folder.

Navegue hasta la carpeta raíz del proyecto, abra la subcarpeta interna llamada lib (donde se aloja el conector provisto), seleccione el archivo mysql-connector-java.jar y haga clic en Open.

PASO 4: EJECUCIÓN DEL SISTEMA
Compilar: Haga clic derecho sobre el nombre principal del proyecto en NetBeans y seleccione Clean and Build para compilar todos los módulos limpiamente.

Correr: Presione la tecla F6 o haga clic en el botón de reproducción (icono verde de Play) en la barra superior.

Acceso Inicial: El sistema desplegará la pantalla de Login. Ingrese con las credenciales por defecto configuradas para el Administrador para validar que la conexión a la base de datos es exitosa.