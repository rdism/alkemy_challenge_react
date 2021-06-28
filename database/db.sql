CREATE DATABASE balance_actual;

USE balance_actual;

CREATE TABLE usuario (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(16) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE registro (
    id INT NOT NULL AUTO_INCREMENT,
    concepto VARCHAR(255) NOT NULL,
    monto INT NOT NULL,
    tipo TINYINT NOT NULL,
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY (usuario_id)
        REFERENCES usuario (id),
    PRIMARY KEY (id)
);