-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- SELECT nombre, lenguaje FROM usuarios_lenguajes


-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- SELECT COUNT(*) FROM usuarios_lenguajes;


-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- SELECT * FROM usuarios_lenguajes WHERE edad > 30;


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE 'JavaScript'


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- SELECT * FROM usuarios_lenguajes WHERE edad LIKE '28'


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- SELECT * FROM usuarios_lenguajes WHERE email LIKE 'juan.gomez@example.com'Tu respuesta aquí


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;
-- SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java' OR edad < 25;

-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- SELECT COUNT(DISTINCT edad) AS edades_diferentes FROM usuarios_lenguajes WHERE lenguaje = 'Java';


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- SELECT * FROM usuarios_lenguajes WHERE lenguaje = '';


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- SELECT nombre, edad FROM usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM usuarios_lenguajes);


-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- SELECT * FROM usuarios_lenguajes ORDER BY edad DESC;

-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE edad > 28;


-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- SELECT *  FROM usuarios_lenguajes WHERE apellido LIKE '%a%';


-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- SELECT lenguaje, COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY total_usuarios DESC LIMIT 1;


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- SELECT * FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- SELECT COUNT(DISTINCT lenguaje) AS lenguaje_python FROM usuarios_lenguajes WHERE lenguaje = 'Python';
-- SELECT COUNT(DISTINCT lenguaje) AS lenguaje_python FROM usuarios_lenguajes WHERE lenguaje LIKE 'Python';


-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY nombre;
-- SELECT nombre, lenguaje FROM usuarios_lenguajes;


-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';
-- SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example.com';


-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- SELECT DISTINCT nombre, apellido, edad FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35;
-- SELECT nombre, apellido, edad FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 GROUP BY nombre, apellido, edad HAVING COUNT(lenguaje) > 0;


-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
--  SELECT COUNT(*) AS total_css FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- SELECT nombre, apellido, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes GROUP BY nombre, apellido HAVING COUNT(lenguaje) > 0;


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- SELECT lenguaje FROM usuarios_lenguajes ORDER BY LENGTH(lenguaje) DESC LIMIT 1;


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM usuarios_lenguajes;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- SELECT COUNT(DISTINCT lenguaje) AS total_lenguajes FROM usuarios_lenguajes WHERE edad > 25;


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- SELECT nombre, apellido, edad FROM usuarios_lenguajes WHERE edad IN (
    -- SELECT edad FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1
    -- ) ORDER BY edad ASC;



-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí


-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí

