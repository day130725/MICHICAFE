# ☕ MICHI CAFE - Sistema de Gestión de Ventas y Almacén

Este es un sistema de escritorio desarrollado en **Java** bajo la arquitectura **MVC (Modelo-Vista-Controlador)** y conectado a una base de datos relacional en **MySQL**. El software está diseñado para optimizar el flujo comercial de la empresa, controlando el inventario físico, gestionando los roles de los trabajadores (Administrador y Empleado) y asegurando transacciones precisas en caja.

---

## 🚀 Características Principales

* **Autenticación y Seguridad:** Control de acceso por niveles. Restringe módulos críticos (como reportes o gestión de personal) según el rol asignado.
* **Módulo de Ventas Automatizado:** Cesta de compras interactiva que acumula productos repetidos, recalcula subtotales en tiempo real y valida el stock disponible antes de procesar la transacción.
* **Control de Inventario:** Descuento automático de stock en MySQL al completar una venta mediante lógica transaccional.
* **Arquitectura Limpia:** Separación total de responsabilidades utilizando el patrón de diseño MVC y DAOs para la persistencia de datos.

---

## 🛠️ Tecnologías Utilizadas

* **Lenguaje:** Java SE (JDK 11 o superior)
* **Interfaz Gráfica:** Java Swing
* **Base de Datos:** MySQL (Gestionado a través de XAMPP)
* **Conector:** MySQL Connector/J (`mysql-connector-java.jar`)
* **Gestor de Versiones:** Git & GitHub

---

## 📋 Requisitos para la Instalación

Para levantar el entorno de desarrollo en otra computadora, se requiere contar con el siguiente software instalado:

1.  **NetBeans IDE** (O cualquier entorno compatible con proyectos Java Ant).
2.  **XAMPP Panel** (Para activar los servicios locales de Apache y MySQL).
3.  **Base de Datos:** Importar el archivo `Backup_MichiCafe.sql` provisto en el repositorio dentro de una base de datos local llamada obligatoriamente `michi_cafe_db`.

---

## 👥 Integrantes del Proyecto


* [Nombre de tu Compañero 1] - *Documentación y Pruebas*
* [Nombre de tu Compañero 2] - *Analista de Requerimientos*

---

## 📝 Licencia

Este proyecto fue desarrollado con fines estrictamente académicos para el curso de Técnicas de Programación Orientada a Objetos (POO).
