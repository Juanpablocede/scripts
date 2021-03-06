﻿-- Function: actualiza_tabulador_sueldo()

--DROP FUNCTION actualiza_tabulador_sueldo();

CREATE OR REPLACE FUNCTION actualiza_tabulador_sueldo(OUT codper character, OUT codnom character, OUT codtab character, OUT codgra character, OUT codpaso character)
  RETURNS SETOF record AS
$BODY$

DECLARE
  mcodper 	ALIAS FOR $1;
  mcodnom	ALIAS FOR $2;
  mcodtab	ALIAS FOR $3;
  mcodgra	ALIAS FOR $4;
  mcodpas	ALIAS FOR $5;
  msueldo	DOUBLE PRECISION;
  existen_datos BOOLEAN;
  
cu01 CURSOR FOR 

SELECT
	sno_personalnomina.codper,
	sno_personalnomina.codnom,
	sno_personalnomina.codtab,
	sno_personalnomina.codgra,
	(sno_personalnomina.codpas::integer+1)::CHARACTER(15) AS codpas
FROM
	sno_personalnomina
WHERE
	sno_personalnomina.codnom='0001' AND
	sno_personalnomina.staper IN('1','2','4') AND
	EXTRACT(MONTH FROM(sno_personalnomina.fecingper))=10 AND
	(EXTRACT(DAY FROM(sno_personalnomina.fecingper))>=16 AND
	EXTRACT(DAY FROM(sno_personalnomina.fecingper))<=31) 
	
ORDER BY
	sno_personalnomina.codper;
BEGIN
 existen_datos = FALSE;

OPEN cu01;
<<buscar_datos>>
 LOOP
   BEGIN
     FETCH cu01 INTO
	  mcodper,
	  mcodnom,
	  mcodtab,
	  mcodgra,
	  mcodpas;
	  IF NOT FOUND THEN
             EXIT buscar_datos;
          END IF;

	  msueldo:=0;

	  msueldo:=COALESCE((	SELECT 
					sno_grado.monsalgra 
				FROM 
					sno_grado 
				WHERE 
					sno_grado.codtab=mcodtab AND
					sno_grado.codgra=mcodgra AND
					sno_grado.codpas=mcodpas AND
					sno_grado.codnom=mcodnom),0);	  

	  RAISE NOTICE 'valor  %',msueldo;

	  IF msueldo>0 THEN
		UPDATE sno_personalnomina SET
		sueper=msueldo,
		codpas=mcodpas
		WHERE 
			sno_personalnomina.codper=mcodper AND 
			sno_personalnomina.codtab=mcodtab AND 
			sno_personalnomina.codnom=mcodnom;
	  END IF;


     RETURN NEXT;
   END;
 END LOOP;
 CLOSE cu01;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;
ALTER FUNCTION actualiza_tabulador_sueldo() OWNER TO postgres;

