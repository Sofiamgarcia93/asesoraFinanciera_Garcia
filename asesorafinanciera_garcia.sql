-- CREACIÓN DE LA BASE DE DATOS
DROP DATABASE IF EXISTS asesora_financiera;
CREATE DATABASE asesora_financiera;
USE asesora_financiera;

-- TABLA: ASESORA
CREATE TABLE asesora (
    id_asesora INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    legajo VARCHAR(20) NOT NULL UNIQUE,
    zona VARCHAR(100)
);

-- TABLA: PLANES
CREATE TABLE planes (
    id_plan INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cuotas INT NOT NULL,
    tasa_interes DECIMAL(5,2) NOT NULL  -- Porcentaje anual
);

-- TABLA: COMERCIOS
CREATE TABLE comercios (
    id_comercio INT AUTO_INCREMENT PRIMARY KEY,
    cuit VARCHAR(11) NOT NULL UNIQUE,
    razon_social VARCHAR(100) NOT NULL,
    rubro VARCHAR(50),
    id_asesora INT,
    id_plan INT,
    FOREIGN KEY (id_asesora) REFERENCES asesora(id_asesora),
    FOREIGN KEY (id_plan) REFERENCES planes(id_plan)
);

-- TABLA: VISITAS
CREATE TABLE visitas (
    id_visita INT AUTO_INCREMENT PRIMARY KEY,
    id_comercio INT NOT NULL,
    fecha_visita DATE NOT NULL,
    observaciones TEXT,
    FOREIGN KEY (id_comercio) REFERENCES comercios(id_comercio)
);

-- TABLA: BONIFICACIONES
CREATE TABLE bonificaciones (
    id_bonificacion INT AUTO_INCREMENT PRIMARY KEY,
    id_comercio INT NOT NULL,
    tipo VARCHAR(20) NOT NULL,  -- ejemplo: 'porcentaje', 'monto'
    valor DECIMAL(10,2) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    FOREIGN KEY (id_comercio) REFERENCES comercios(id_comercio)
);

-- TABLA: FACTURACION
CREATE TABLE facturacion (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    id_comercio INT NOT NULL,
    periodo VARCHAR(7) NOT NULL, -- formato: YYYY-MM
    monto DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (id_comercio) REFERENCES comercios(id_comercio)
);

-- TABLA: COBROS
CREATE TABLE cobros (
    id_cobro INT AUTO_INCREMENT PRIMARY KEY,
    id_comercio INT NOT NULL,
    fecha_cobro DATE NOT NULL,
    monto DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (id_comercio) REFERENCES comercios(id_comercio)
);

-- ÍNDICES SUGERIDOS
CREATE INDEX idx_fecha_visita ON visitas(fecha_visita);
CREATE INDEX idx_periodo_facturacion ON facturacion(periodo);
CREATE INDEX idx_fecha_cobro ON cobros(fecha_cobro);
