﻿SELECT
	sno_fideiperiodointereses.codper,
	RTRIM(sno_personal.nomper)||' '||RTRIM(sno_personal.apeper) AS nombres,
	sno_personalnomina.fecingper,
	sno_personalnomina.sueper,
	sno_nomina.desnom,
	sno_asignacioncargo.denasicar,
	srh_gerencia.denger,
	scb_banco.nomban,
	CASE sno_personalnomina.tipcuebanper
	    WHEN 'A' THEN 'Cuenta Ahorro'
	    WHEN 'C' THEN 'Cuenta Corriente'
	    WHEN 'L' THEN 'Cuenta de Activos Liquidos'
	END tipocuenta,
	sno_personalnomina.codcueban,
	(SELECT
	    max(sno_fideiperiodointereses_01.moncap)
	FROM
	    sno_fideiperiodointereses AS sno_fideiperiodointereses_01
	WHERE
	    sno_fideiperiodointereses_01.codper=sno_fideiperiodointereses.codper AND
	    sno_fideiperiodointereses_01.mescurper=12 AND
	    sno_fideiperiodointereses_01.anocurper::INTEGER=2014-1) AS antiguedaanterior,
	CASE sno_fideiperiodointereses.mescurper
	WHEN 1 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 1 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 2 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 2 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 3 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 3 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 4 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 4 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 5 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 5 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 6 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 6 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 7 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 7 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 8 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 8 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 9 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 9 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 10 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 10 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 11 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 11 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	WHEN 12 THEN (	SELECT
				sno_anticipoprestaciones.monant
			FROM
				sno_anticipoprestaciones
			WHERE
				sno_anticipoprestaciones.codper=sno_fideiperiodointereses.codper AND
				EXTRACT(MONTH FROM(sno_anticipoprestaciones.fecant))= 12 AND 
				EXTRACT(YEAR  FROM(sno_anticipoprestaciones.fecant))= 2014)
	END AS Anticipos,
	sno_fideiperiodointereses.anocurper,
	CASE sno_fideiperiodointereses.mescurper
	    WHEN 1 THEN 'Enero'
	    WHEN 2 THEN 'Febrero'
	    WHEN 3 THEN 'Marzo'
	    WHEN 4 THEN 'Abril'
	    WHEN 5 THEN 'Mayo'
	    WHEN 6 THEN 'Junio'
	    WHEN 7 THEN 'Julio'
	    WHEN 8 THEN 'Agosto'
	    WHEN 9 THEN 'Septiembre'
	    WHEN 10 THEN 'Octubre'
	    WHEN 11 THEN 'Noviembre'
	    WHEN 12 THEN 'Diciembre'
	END AS mescurper,
	(sno_fideiperiodo.sueintper+
	sno_fideiperiodo.bonextper+
	sno_fideiperiodo.bonfinper+
	sno_fideiperiodo.bonvacper) 				AS sueldo_integral,	
	(sno_fideiperiodo.diafid + sno_fideiperiodo.diaadi) 	AS Dias,
	sno_fideiperiodo.apoper 				AS aportes_mes,
	sno_fideiperiodointereses.monantacu 			AS acumulada_mes,
	sno_fideiperiodointereses.porint*100 			AS tasa_interes,
	sno_fideiperiodointereses.monint 			AS monto_interes
FROM
	sno_fideiperiodo INNER JOIN sno_personal ON (sno_fideiperiodo.codper=sno_personal.codper)
	LEFT JOIN sno_personalnomina ON (sno_fideiperiodo.codper=sno_personalnomina.codper AND
	sno_fideiperiodo.codnom=sno_personalnomina.codnom)
	INNER JOIN sno_nomina ON (sno_fideiperiodo.codnom=sno_nomina.codnom)
	INNER JOIN sno_fideiperiodointereses ON (sno_fideiperiodo.codper=sno_fideiperiodointereses.codper AND
	sno_fideiperiodo.anocurper=sno_fideiperiodointereses.anocurper AND
	sno_fideiperiodo.mescurper=sno_fideiperiodointereses.mescurper) AND
	sno_fideiperiodointereses.codper=sno_personal.codper
	LEFT JOIN sno_asignacioncargo on (sno_fideiperiodo.codnom=sno_asignacioncargo.codnom AND
	sno_personalnomina.codnom=sno_asignacioncargo.codnom AND
	sno_personalnomina.codasicar=sno_asignacioncargo.codasicar)
	INNER JOIN srh_gerencia ON (sno_personal.codger=srh_gerencia.codger)
	LEFT JOIN scb_banco ON (sno_personalnomina.codban=scb_banco.codban)

	--sno_personal,
	--sno_fideiperiodo,
	--sno_fideiperiodointereses
	--sno_personalnomina
	--sno_nomina,
	--sno_asignacioncargo
	--srh_gerencia,
	--scb_banco
WHERE
	--sno_fideiperiodo.codper=sno_personal.codper AND
	--sno_fideiperiodo.codper=sno_personalnomina.codper AND
	--sno_fideiperiodo.codnom=sno_personalnomina.codnom AND
	--sno_fideiperiodo.codnom=sno_nomina.codnom AND
	--sno_fideiperiodo.codnom=sno_asignacioncargo.codnom AND
	--sno_personalnomina.codnom=sno_asignacioncargo.codnom AND
	--sno_personalnomina.codasicar=sno_asignacioncargo.codasicar AND
	--sno_personalnomina.codban=scb_banco.codban AND
	--sno_personal.codger=srh_gerencia.codger AND
	--sno_fideiperiodointereses.codper=sno_personal.codper AND
	--sno_fideiperiodo.codper=sno_fideiperiodointereses.codper AND
	--sno_fideiperiodo.anocurper=sno_fideiperiodointereses.anocurper AND
	--sno_fideiperiodo.mescurper=sno_fideiperiodointereses.mescurper AND

	sno_fideiperiodo.anocurper='2014' AND
	sno_fideiperiodo.mescurper BETWEEN 1 AND 12 AND
	sno_fideiperiodointereses.codnom BETWEEN '0000' AND '0010' AND
	sno_personal.codper BETWEEN '0006880620' AND '0006880620' 
ORDER BY
	sno_personal.codper,
	sno_fideiperiodointereses.anocurper,
	sno_fideiperiodointereses.mescurper
