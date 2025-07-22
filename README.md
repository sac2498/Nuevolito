# Control Total - Aplicación de Finanzas Personales y Productividad

Esta es una aplicación web full-stack que te ayuda a gestionar tus finanzas personales y organizar tus tareas diarias.

## Características

-   Gestión de cuentas bancarias
-   Registro de transacciones (ingresos y gastos)
-   Dashboard financiero con KPIs y gráficos
-   Calendario para planificar gastos futuros
-   Gestor de tareas estilo Kanban

## Tecnologías Utilizadas

-   **Frontend:** React, Vite
--   **Backend:** Node.js, Express
-   **Base de Datos:** PostgreSQL

## Instalación y Ejecución

Sigue estos pasos para configurar y ejecutar el proyecto en tu entorno local.

### Prerrequisitos

-   Node.js (v14 o superior)
-   npm (v6 o superior)
-   PostgreSQL

### 1. Clona el Repositorio

```bash
git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_PROYECTO>
```

### 2. Configura la Base de Datos

1.  Asegúrate de que PostgreSQL esté instalado y en ejecución.
2.  Crea una nueva base de datos. Puedes usar un cliente de PostgreSQL como `psql` o una herramienta gráfica como DBeaver o pgAdmin.
3.  Ejecuta el script `server/schema.sql` para crear las tablas necesarias.

### 3. Instala las Dependencias

Ejecuta los siguientes comandos para instalar las dependencias del frontend y del backend:

```bash
# Instalar dependencias del backend
cd server
npm install

# Instalar dependencias del frontend
cd ../client
npm install
```

### 4. Configura las Variables de Entorno

Crea un archivo `.env` en la carpeta `server` y añade las siguientes variables de entorno para conectar con tu base de datos:

```
DB_USER=tu_usuario_de_postgres
DB_HOST=localhost
DB_DATABASE=tu_nombre_de_base_de_datos
DB_PASSWORD=tu_contraseña_de_postgres
DB_PORT=5432
```

### 5. Ejecuta la Aplicación

Puedes ejecutar el backend y el frontend en terminales separadas.

```bash
# Ejecutar el backend (desde la carpeta raíz)
cd server
npm start
```

```bash
# Ejecutar el frontend (desde la carpeta raíz)
cd client
npm run dev
```

La aplicación debería estar disponible en `http://localhost:5173`.
