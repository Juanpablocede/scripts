SELECT
    sno_personal.codper,
    sno_personal.nomper,
    sno_personal.apeper,
    sno_familiar.cedfam,
    sno_familiar.nomfam,
    sno_familiar.apefam,
    sno_familiar.sexfam,
    sno_familiar.fecnacfam,
    sno_familiar.nexfam,
    --select extract(year from fecha_registro) from personas;
    --2012-EXTRACT(YEAR FROM sno_familiar.fecnacfam),
    (current_date-sno_familiar.fecnacfam)/365 as años,
FROM
    sno_familiar,
    sno_personal
WHERE
    sno_personal.codper=sno_familiar.codper
ORDER BY
    sno_personal.codper

