﻿SELECT
	sno_hsalida.codper,
	RTRIM(sno_personal.nomper)||' '||RTRIM(sno_personal.apeper) AS Nombres,
	sno_hsalida.codconc,
	sno_hconcepto.nomcon,
	sno_hsalida.codnom,
	sno_hsalida.tipsal,
	SUM(sno_hsalida.valsal)
FROM
	sno_personal,
	sno_personalnomina,
	sno_hconcepto,
	sno_hsalida
WHERE
	sno_personal.codper=sno_personalnomina.codper AND
	sno_personalnomina.staper IN('1','2') AND

	sno_hsalida.codper=sno_personalnomina.codper AND
	sno_hsalida.codnom=sno_personalnomina.codnom AND

	sno_hsalida.codnom=sno_hconcepto.codnom AND
	sno_hsalida.codconc=sno_hconcepto.codconc AND
	sno_hsalida.codperi=sno_hconcepto.codperi AND
	sno_hsalida.valsal <>0 AND
	sno_hsalida.codnom IN('0005','0006','0007','0008','0010') AND
	sno_hsalida.codperi BETWEEN '0' AND '057' AND
	sno_hsalida.tipsal <>'R'
GROUP BY
	sno_hsalida.codper,
	RTRIM(sno_personal.nomper)||' '||RTRIM(sno_personal.apeper),
	sno_hsalida.codconc,
	sno_hconcepto.nomcon,
	sno_hsalida.codnom,
	sno_hsalida.tipsal
ORDER BY
	sno_hsalida.codper