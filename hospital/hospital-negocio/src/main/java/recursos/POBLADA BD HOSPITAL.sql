INSERT INTO PAIS (ID_PAIS, NOMBRE) VALUES ('1', 'Colombia');
INSERT INTO PAIS (ID_PAIS, NOMBRE) VALUES ('2', 'Estados Unidos');
INSERT INTO PAIS (ID_PAIS, NOMBRE) VALUES ('3', 'Alemania');
INSERT INTO PAIS (ID_PAIS, NOMBRE) VALUES ('4', 'Espania');

INSERT INTO DEPARTAMENTO (ID_DEPARTAMENTO, NOMBRE, PAIS_ID_PAIS) VALUES ('1', 'Quindio', '1');
INSERT INTO DEPARTAMENTO (ID_DEPARTAMENTO, NOMBRE, PAIS_ID_PAIS) VALUES ('2', 'Valle del cauca', '1');
INSERT INTO DEPARTAMENTO (ID_DEPARTAMENTO, NOMBRE, PAIS_ID_PAIS) VALUES ('3', 'Antioquia', '1');

INSERT INTO CIUDAD (ID_CIUDAD, NOMBRE, DEPARTAMENTO_ID_DEPARTAMENTO) VALUES ('1', 'Armenia', '1');
INSERT INTO CIUDAD (ID_CIUDAD, NOMBRE, DEPARTAMENTO_ID_DEPARTAMENTO) VALUES ('2', 'Calarca', '1');
INSERT INTO CIUDAD (ID_CIUDAD, NOMBRE, DEPARTAMENTO_ID_DEPARTAMENTO) VALUES ('3', 'Circasia', '1');
INSERT INTO CIUDAD (ID_CIUDAD, NOMBRE, DEPARTAMENTO_ID_DEPARTAMENTO) VALUES ('4', 'Cali', '2');
INSERT INTO CIUDAD (ID_CIUDAD, NOMBRE, DEPARTAMENTO_ID_DEPARTAMENTO) VALUES ('5', 'Medellin', '3');

INSERT INTO TIPO_EPS (ID_TIPO_EPS, TIPO_EPS) VALUES ('1', 'Subsidiada');
INSERT INTO TIPO_EPS (ID_TIPO_EPS, TIPO_EPS) VALUES ('2', 'Postpagada');
INSERT INTO TIPO_EPS (ID_TIPO_EPS, TIPO_EPS) VALUES ('3', 'SISBEN');

INSERT INTO EPS (ID_EPS, NOMBRE, DIRECCION, TELEFONO, TIPO_EPS_ID_TIPO_EPS) VALUES ('1', 'Cafesalud', 'Cra 20 #30-10', '7422145', '1');
INSERT INTO EPS (ID_EPS, NOMBRE, DIRECCION, TELEFONO, TIPO_EPS_ID_TIPO_EPS) VALUES ('2', 'EMI', 'Call 10 A # 54-13', '77433164', '2');
INSERT INTO EPS (ID_EPS, NOMBRE, DIRECCION, TELEFONO, TIPO_EPS_ID_TIPO_EPS) VALUES ('3', 'Pasvisalud', 'Cra 25 # 43 -57', '7466159', '3');

------------------------------------------------- MEDICOS -------------------------------------------------------------------

INSERT INTO PERSONA (ID, NUMERO_IDENTIFICACION, TIPO_IDENTIFICACION, NOMBRE, APELLIDO, FECHA_NACIMIENTO, GENERO, CORREO, PASSWORD, TELEFONO, CIUDAD) VALUES ('3', '1000', 'CEDULA_DE_CIUDADANIA', 'Diego', 'Valencia', TO_DATE('1978-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'HOMBRE', 'valencia@gmail.com', 'valencia123', '3214886789', '1');
INSERT INTO MEDICO (ID, ESTADO, TARJETA_PROFESIONAL) VALUES ('3', '1', '123456789');

--------------- ACCESOS DEL ROL -------------------------------

INSERT INTO ACCESO (ID, URL, ROL) VALUES ('1', '/paginas/seguro/paciente.xhtml', '4');

--------------- ROLES NO CAMBIAR ------------------------------

INSERT INTO ROL (ID, NOMBRE) VALUES ('1', 'Administrador');
INSERT INTO ROL (ID, NOMBRE) VALUES ('2', 'Medico');
INSERT INTO ROL (ID, NOMBRE) VALUES ('3', 'Farmaceutico');
INSERT INTO ROL (ID, NOMBRE) VALUES ('4', 'Paciente');

--------------- PAGINAS DE ACCESO -----------------------------

INSERT INTO ACCESO (NOMBRE, URL) VALUES ('Gestionar medicos', '/paginas/seguro/gestion-medicos.xhtml');
INSERT INTO ACCESO (NOMBRE, URL) VALUES ('Gestionar pacientes', '/paginas/seguro/gestion-pacientes.xhtml');
INSERT INTO ACCESO (NOMBRE, URL) VALUES ('Gestionar farmaceuticos', '/paginas/seguro/gestion-farmaceuticos.xhtml');
INSERT INTO ACCESO (NOMBRE, URL) VALUES ('Registro paciente', '/paginas/publico/registro-paciente.xhtml');


--------------- ADMINISTRADOR -------------------------------------

INSERT INTO PERSONA (NUMERO_IDENTIFICACION, TIPO_IDENTIFICACION, NOMBRE, APELLIDO, FECHA_NACIMIENTO, GENERO, CORREO, PASSWORD, TELEFONO, CIUDAD) VALUES ('1', 'CEDULA_DE_CIUDADANIA', 'Carlos', 'Martinez', TO_DATE('1994-05-05 03:26:09', 'YYYY-MM-DD HH24:MI:SS'), 'HOMBRE', 'admin@hospital.com', '123', '3213456789', '1')
INSERT INTO PERSONAROL (PERSONA, ROL) VALUES ('ESPECIFIQUE AQUI EL ID DEL ADMINISTRADOR QUE SE ACABO DE REGISTRAR', '1')

--------------- ASIGNAMOS LOS ACCESOS DEL ADMINISTRADOR (ID = 1) -----------

INSERT INTO ACCESOROL (ROL, ACCESO) VALUES ('1', '1');
INSERT INTO ACCESOROL (ROL, ACCESO) VALUES ('1', '2');
INSERT INTO ACCESOROL (ROL, ACCESO) VALUES ('1', '3');
INSERT INTO ACCESOROL (ROL, ACCESO) VALUES ('1', '4');
INSERT INTO ACCESOROL (ROL, ACCESO) VALUES ('1', '5');