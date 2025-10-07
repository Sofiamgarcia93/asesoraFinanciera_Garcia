# Proyecto: Base de Datos Asesora Financiera

Este proyecto contiene el script SQL para crear la base de datos **`asesora_financiera`**, diseñada para gestionar la información de asesoras comerciales, comercios adheridos, planes financieros, visitas, bonificaciones, facturación y cobros.

---

## 📁 Contenido

**Archivo principal:**

* `asesorafinanciera_garcia.sql` → Script con la creación completa de la base de datos y todas sus tablas.

**Estructura de tablas:**

1. `asesora` → Datos de las asesoras comerciales.
2. `planes` → Información de planes de financiación.
3. `comercios` → Comercios adheridos, vinculados a asesoras y planes.
4. `visitas` → Registro de visitas a comercios.
5. `bonificaciones` → Bonificaciones aplicadas a comercios.
6. `facturacion` → Monto facturado mensual.
7. `cobros` → Cobros efectuados por periodo.

---

## ⚙️ Instrucciones de uso

1. Guardar el archivo `.sql` en tu equipo.
2. Abrir **MySQL Workbench** o una consola MySQL.
3. Ejecutar el script completo:

   ```sql
   SOURCE ruta/al/archivo/asesorafinanciera_garcia.sql;
   ```
4. Verificar la creación de la base:

   ```sql
   SHOW DATABASES;
   USE asesora_financiera;
   SHOW TABLES;
   ```

---

## 🧱 Requisitos

* **MySQL Server 8.0** o superior
* **Workbench** (opcional, para entorno visual)

---

## 🧩 Autoría

Creado por **Sofía García** como parte de un ejercicio de modelado y creación de base de datos en MySQL.

---

## 🪪 Licencia

Este proyecto se distribuye bajo licencia **MIT**, permitiendo su uso y modificación con fines educativos o de práctica.
