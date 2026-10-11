-- Ingreso tabla Estudiante
CREATE TABLE estudiante (
    id NUMBER,
    nombre VARCHAR2(50),
    apellido VARCHAR2(50),
    edad NUMBER,
    carrera VARCHAR2(50),
    PRIMARY KEY(id)
);

-- Ingreso de Inserts , el primero con mi nombre
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (1, 'Marcos', 'Martínez', 34, 'Informática');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (2, 'María', 'González', 22, 'Diseño Gráfico');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (3, 'Pedro', 'López', 19, 'Ciberseguridad');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (4, 'Ana', 'Martínez', 21, 'Informática');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (5, 'Luis', 'Rodríguez', 23, 'Diseño Web');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (6, 'Lucía', 'Hernández', 20, 'Ciberseguridad');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (7, 'Carlos', 'García', 24, 'Informática');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (8, 'Sofía', 'Sánchez', 22, 'Diseño Industrial');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (9, 'Javier', 'Vásquez', 21, 'Ciberseguridad');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (10, 'Valentina', 'Jiménez', 19, 'Informática');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (11, 'Juan', 'Pérez', 20, 'Informática');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (12, 'Mario', 'Rodriguez', 20, 'Ciberseguridad');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (13, 'Joaquin', 'Saravia', 20, 'Diseño Gráfico');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (14, 'Reina', 'Cabello', 20, 'Ciberseguridad');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (15, 'Macarena', 'Andrade', 20, 'Diseño Gráfico');
INSERT INTO estudiante (id, nombre, apellido, edad, carrera) VALUES (16, 'Elizabeth', 'Amestica', 20, 'Ciberseguridad');

-- Select tabla estudiante para verificar Datos
SELECT * from estudiante;

-- Creación de Usuarios

-- Jefe Morales
CREATE USER c##jefe_morales identified by jefe1313;
GRANT ALL PRIVILEGES TO c##jefe_morales;

-- Vendedor Jorquera
CREATE USER c##vendedor_jorquera identified by vende1212;
GRANT CREATE SESSION to c##vendedor_jorquera;
GRANT INSERT,SELECT,UPDATE ON SYSTEM.estudiante to c##vendedor_jorquera;

-- Cliente Ortega
CREATE USER c##cliente_ortega identified by cliente1;
GRANT CREATE SESSION to c##cliente_ortega;
GRANT SELECT ON SYSTEM.estudiante to c##cliente_ortega;


-- PARTE 2
-- SELECT
-- 1. Consulta todos los estudiantes.
SELECT * FROM estudiante;
-- 2. Selecciona los estudiantes que cursan 'Informática'. 
SELECT * from estudiante where carrera = 'Informática';
-- 3. Muestra estudiantes con edad mayor a 21 años. 
SELECT * from estudiante where edad > 21;
-- 4. Selecciona el estudiante con id = 5. 
SELECT * from estudiante where id = 5;
-- 5. Muestra todos los estudiantes ordenados por apellido.
-- NO ESPECFICA ORDEN ASC O DESC
SELECT * from estudiante order by apellido ASC;
-- 6. Selecciona estudiantes cuyo nombre comienza con 'L'.
SELECT * FROM estudiante where nombre like 'L%'
-- 7. Muestra cuántos estudiantes hay en total.
SELECT count (*) from estudiante;
-- 8. Selecciona los estudiantes que cursan 'Ciberseguridad'.
SELECT * from estudiante where carrera = 'Ciberseguridad';
-- 9. Muestra los nombres y apellidos de todos los estudiantes. 
SELECT nombre,apellido from estudiante;
-- 10. Selecciona estudiantes con edad entre 20 y 22 años. 
SELECT * from estudiante where edad between 20 and 22;

-- UPDATE
-- 1. Actualiza la edad del estudiante con id = 1 a 21 años.
UPDATE estudiante set edad = 21 where id = 1;
-- 2. Cambia la carrera del estudiante con id = 3 a 'Desarrollo Web'. 
UPDATE estudiante set carrera = 'Desarrollo Web' where id = 3;
-- 3. Modifica el apellido del estudiante con id = 2 a 'Fernández'. 
UPDATE estudiante set apellido = 'Fernández' where id = 2;
-- 4. Aumenta la edad del estudiante con id = 4 en 1 año. Use un acumulador, funciona 
UPDATE estudiante set edad = edad + 1 where id = 4;
-- 5. Cambia la carrera del estudiante con id = 5 a 'Ciberseguridad'. 
UPDATE estudiante set carrera = 'Ciberseguridad' where id = 5;
-- 6. Actualiza el nombre del estudiante con id = 6 a 'Luciana'. 
UPDATE estudiante set nombre = 'Luciana' where id = 6;
-- 7. Modifica la edad del estudiante con id = 7 a 25 años.
UPDATE estudiante set edad = 25 where id = 7;
-- 8. Cambia la carrera del estudiante con id = 8 a 'Diseño Gráfico'. 
UPDATE estudiante set carrera = 'Diseño Gráfico' where id = 8;
-- 9. Actualiza el apellido del estudiante con id = 9 a 'Vargas'. 
UPDATE estudiante set apellido = 'Vargas' where id = 9;
-- 10. Modifica la carrera del estudiante con id = 10 a 'Ingeniería de Sistemas'. 
UPDATE estudiante set carrera = 'Ingeniería de Sistemas' where id = 10;
SELECT * from estudiante;

-- DELETE 
-- 1. Elimina el estudiante cuyo nombre es 'Juan Pérez'. 
DELETE from estudiante where nombre ='Juan' and apellido = 'Pérez';
-- 2. Elimina el estudiante con la carrera 'Ciberseguridad' y id = 3. 
DELETE from estudiante where carrera ='Ciberseguridad' and id = 3;
-- 3.  Elimina todos los estudiantes con edad menor a 20 años.
DELETE from estudiante where edad < 20 ;
-- 4. Elimina el estudiante con apellido 'González'. 
DELETE from estudiante where apellido = 'González';
-- 5. Elimina todos los estudiantes que cursan 'Diseño Gráfico'.
DELETE from estudiante where carrera = 'Diseño Gráfico';
-- 6. Elimina el estudiante con id = 7. 
DELETE from estudiante where id = 7;
-- 7. Elimina el estudiante cuyo nombre empieza con 'L'. 
DELETE from estudiante where nombre LIKE 'L%';
-- 8. Elimina todos los estudiantes cuyo apellido es 'Vásquez'. 
DELETE from estudiante where apellido = 'Vásquez';
-- 9. Elimina el estudiante con id = 15. 
DELETE from estudiante where id = 15;
-- 10. Elimina todos los estudiantes con edad igual a 22 años. 
DELETE from estudiante where edad = 22;

-- PARTE 3
-- PROCEDIMIENTOS
-- 1 INSERT
CREATE OR REPLACE PROCEDURE RegistrarEstudiante(
    id_r in number,
    nom_r in varchar2,
    ape_r in varchar2,
    eda_r in number,
    car_e in varchar2) 
AS
BEGIN INSERT INTO estudiante VALUES(
    id_r,
    nom_r,
    ape_r,
    eda_r,
    car_e
);
COMMIT;
END RegistrarEstudiante;
/
-- TEST Procedimiento
EXEC RegistrarEstudiante(18,'Ricardo','Martínez',36,'Boxeador');
SELECT * from estudiante;

-- PROCEDIMIENTOS SELECT
-- 1° Seleccionar todos los estudiantes en una carrera ingresada
CREATE OR REPLACE PROCEDURE EstuCarreraINGR (bus_car IN VARCHAR2)
AS BEGIN
    FOR estudiante in(
    SELECT * 
    from estudiante 
    where carrera = bus_car
    )LOOP 
    DBMS_OUTPUT.PUT_LINE(
        'ID: ' || estudiante.id ||
        ', Nombre: ' || estudiante.nombre ||
        ', Apellido: ' || estudiante.apellido ||
        ', Edad: ' || estudiante.edad ||
        ', Carrera: ' || estudiante.carrera
    );
END LOOP;
END EstuCarreraINGR;
/
SET SERVEROUTPUT ON;
EXEC EstuCarreraINGR('Ciberseguridad');
EXEC EstuCarreraINGR('Informática');

-- 2° Seleccionar todos los estudiantes de una edad ingresada
CREATE OR REPLACE PROCEDURE EstuEdadINGR (bus_car IN NUMBER)
AS BEGIN
    FOR estudiante in(
    SELECT * 
    from estudiante 
    where edad = bus_car
    )LOOP 
    DBMS_OUTPUT.PUT_LINE(
        'ID: ' || estudiante.id ||
        ', Nombre: ' || estudiante.nombre ||
        ', Apellido: ' || estudiante.apellido ||
        ', Edad: ' || estudiante.edad ||
        ', Carrera: ' || estudiante.carrera
    );
END LOOP;
END EstuEdadINGR;
/
SElECT * FROM estudiante;
SET SERVEROUTPUT ON;
EXEC EstuEdadINGR (20);
EXEC EstuEdadINGR (21);

-- UPDATE
-- 1° Modificar edad de estudiante segun ID
CREATE OR REPLACE PROCEDURE CambiarEdadsegunID(
ID_EST IN NUMBER,
EDA_EST IN NUMBER
) AS BEGIN
UPDATE estudiante SET edad = EDA_EST
WHERE id = ID_EST;
COMMIT;
END CambiarEdadsegunID;
/
SELECT * from estudiante;
EXEC CambiarEdadsegunID(1,50);
EXEC CambiarEdadsegunID(4,26);
-- 2° Modificar carrera de estudiante segun ID
CREATE OR REPLACE PROCEDURE CambiarCARsegunID(
ID_EST IN NUMBER,
CAR_EST IN VARCHAR2
) AS BEGIN
UPDATE estudiante SET carrera = CAR_EST
WHERE id = ID_EST;
COMMIT;
END CambiarCARsegunID;
/
SELECT * from estudiante;
EXEC CambiarCARsegunID(1,'Ciberseguridad');
EXEC CambiarCARsegunID(4,'Diseño Web');

-- Procedimiento Delete
-- 1° Eliminar estudiantes con un ID ingresado
CREATE OR REPLACE PROCEDURE EliminarEstudianteporID(
ID_EST IN NUMBER
) AS BEGIN
DELETE from estudiante
WHERE id = ID_EST;
COMMIT;
END EliminarEstudianteporID;
/
SELECT * from estudiante;
EXEC EliminarEstudianteporID(4);
-- 2° Eliminar estudiantes con una edad ingresada
CREATE OR REPLACE PROCEDURE EliminarEstuporEDAD(
EDA_EST IN NUMBER
) AS BEGIN
DELETE FROM estudiante 
WHERE edad = EDA_EST;
COMMIT;
END EliminarEstuporEDAD;
/
SELECT * from estudiante;
EXEC EliminarEstuporEDAD(20);

