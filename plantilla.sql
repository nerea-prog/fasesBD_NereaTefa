/* *****************************************************
  INSTITUT TIC de Barcelona
    CFGS Desenvolupament d'Aplicacions Multiplataforma
    Mòdul: 0484 Bases de dades. 
    AUTORS: Nerea Narváez y Estefania Rubiano
    DATA: 26/3/25
****************************************************** */

-- Pregunta 1
SELECT a.ciutat AS ciutat, COUNT(v.codi) AS total_vols -- COUNT(v.codi) se calcula para cada ciudad x separado
FROM vol v
JOIN aeroport a ON v.aeroport_desti = a.codi
WHERE YEAR(v.data) = 2023 -- filtra los vuelos que han llegado en el 2023
GROUP BY a.ciutat -- agrupa los vuelos segun la ciudad destino 
HAVING total_vols >= 800 -- se filtran los grupos (de ciudades) para q se vean solo las q  han tenido x lo menos 800 vuelos
ORDER BY total_vols DESC; -- ordena los resultados x numero de vuelos total


-- 2 resultados


-- Pregunta 2
SELECT c.nom, COUNT(v.codi) AS total_vols, AVG(v.durada) AS vol_promig, MAX(v.data	) AS last_vol
FROM companyia c
LEFT JOIN avio a ON c.nom = a.companyia
LEFT JOIN vol v ON a.num_serie = v.avio 
WHERE c.pais LIKE '%Spain%'
GROUP BY c.nom
ORDER BY c.nom;

-- 4 resultados

-- Pregunta 3
select 'No ho sé';

-- 27 resultados
-- Pregunta 4
select 'No ho sé';


-- 1 resultado
-- Pregunta 5
select 'No ho sé';


-- 3 resultados

