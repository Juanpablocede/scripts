﻿/*Corrida de Prueba 29/05/2018
Hora Inicio: 12:52 pm
Hora Fin:

1.-) Determinar quien dicta los lineamientos en lo que tiene que ver con la parte decimal 
	en el proceso de reconversion
2.-) Es necesario disponer de un dia para correr el proceso de reconversión. jueves 31/05/2018.
3.-) Una concluida la reconversion por parte de sistema cada Jefe de unidad conjuntamente con 
	los usuarios del sistema deben hacer una revisión minuciosa de cada uno de sus procesos
	con la finalidad de valiudar el proceso de reconversión

monto=round((monto::numeric/100000),2)


*/


update comprobante 		set total=	round((total::numeric/100000),2);
update comprobantedetalle 	set monto=	round((monto::numeric/100000),2);
update cxp_dt_solicitudes 	set monto=	round((monto::numeric/100000),2);
update cxp_rd 			set montotdoc=	round((montotdoc::numeric/100000),2);
update cxp_rd 			set mondeddoc=	round((mondeddoc::numeric/100000),2);
update cxp_rd 			set moncardoc=	round((moncardoc::numeric/100000),2);
update cxp_rd 			set montot=	round((montot::numeric/100000),2);
update cxp_rd_amortizacion	set monsal=	round((monsal::numeric/100000),2);
update cxp_rd_amortizacion	set montotamo=	round((montotamo::numeric/100000),2);
update cxp_rd_cargos		set monobjret=	round((monobjret::numeric/100000),2);
update cxp_rd_cargos		set monret=	round((monret::numeric/100000),2);
update cxp_rd_deducciones	set monobjret=	round((monobjret::numeric/100000),2);
update cxp_rd_deducciones	set monret=	round((monret::numeric/100000),2);
update cxp_rd_scg		set monto=	round((monto::numeric/100000),2);
update cxp_rd_spg		set monto=	round((monto::numeric/100000),2);
update cxp_sol_banco		set monto=	round((monto::numeric/100000),2);
update cxp_solicitudes		set monsol=	round((monsol::numeric/100000),2);
update mis_sigesp_banco		set monto=	round((monto::numeric/100000),2);
update mis_sigesp_cxc		set monto=	round((monto::numeric/100000),2);
update scb_conciliacion		set salseglib=	round((salseglib::numeric/100000),2);
update scb_conciliacion		set salsegbco=	round((salsegbco::numeric/100000),2);
update scb_conciliacion		set conciliacion=	round((conciliacion::numeric/100000),2);
update scb_dt_cmp_ret		set totcmp_sin_iva=	round((totcmp_sin_iva::numeric/100000),2);
update scb_dt_cmp_ret		set totcmp_con_iva=	round((totcmp_con_iva::numeric/100000),2);
update scb_dt_cmp_ret		set basimp=	round((basimp::numeric/100000),2);
update scb_dt_cmp_ret		set totimp=	round((totimp::numeric/100000),2);
update scb_dt_cmp_ret		set iva_ret=	round((iva_ret::numeric/100000),2);
update scb_historico_txt	set monto_total=	round((monto_total::numeric/100000),2); 
update scb_historico_txt	set monto=	round((monto::numeric/100000),2);
update scb_movbco		set monto=	round((monto::numeric/100000),2);
update scb_movbco		set monobjret=	round((monobjret::numeric/100000),2);
update scb_movbco_scg		set monto=	round((monto::numeric/100000),2);
update scb_movbco_scg		set monobjret=	round((monobjret::numeric/100000),2);
update scb_movbco_spg		set monto=	round((monto::numeric/100000),2);
update scb_errorconcbco		set monmov=	round((monmov::numeric/100000),2);
update scg_dt_cmp		set monto=	round((monto::numeric/100000),2);
update scg_saldos		set debe_mes=	round((debe_mes::numeric/100000),2);
update scg_saldos		set haber_mes=	round((haber_mes::numeric/100000),2);
update scv_dt_personal		set monpervia=	round((monpervia::numeric/100000),2);
update scv_dt_scg		set monto=	round((monto::numeric/100000),2);
update scv_dt_spg		set monto=	round((monto::numeric/100000),2);
update scv_solicitudviatico	set monsolvia=	round((monsolvia::numeric/100000),2);
update scv_tarifas		set monbol=	round((monbol::numeric/100000),2);
update scv_tarifas		set mondol=	round((mondol::numeric/100000),2);
update scv_tarifas		set monpas=	round((monpas::numeric/100000),2);
update scv_tarifas		set monhos=	round((monhos::numeric/100000),2);
update scv_tarifas		set monali=	round((monali::numeric/100000),2);
update scv_tarifas		set monmov=	round((monmov::numeric/100000),2);
update scv_otrasasignaciones	set tarotrasi=	round((tarotrasi::numeric/100000),2);
update scv_transportes		set tartra=	round((tartra::numeric/100000),2);
update sep_conceptos		set monconsepe=	round((monconsepe::numeric/100000),2);
update sep_cuentagasto		set monto=	round((monto::numeric/100000),2);
update sep_dt_articulos		set monpre=	round((monpre::numeric/100000),2);
update sep_dt_articulos		set monart=	round((monart::numeric/100000),2);
update sep_dt_concepto		set monpre=	round((monpre::numeric/100000),2);
update sep_dt_concepto		set moncon=	round((moncon::numeric/100000),2);
update sep_dt_servicio		set monpre=	round((monpre::numeric/100000),2);
update sep_dt_servicio		set monser=	round((monser::numeric/100000),2);
update sep_dta_cargos		set monbasimp=	round((monbasimp::numeric/100000),2);
update sep_dta_cargos		set monimp=	round((monimp::numeric/100000),2);
update sep_dta_cargos		set monto=	round((monto::numeric/100000),2);
update sep_dtc_cargos		set monbasimp=	round((monbasimp::numeric/100000),2);
update sep_dtc_cargos		set monimp=	round((monimp::numeric/100000),2);
update sep_dtc_cargos		set monto=	round((monto::numeric/100000),2);
update sep_dts_cargos		set monbasimp=	round((monbasimp::numeric/100000),2);
update sep_dts_cargos		set monimp=	round((monimp::numeric/100000),2);
update sep_dts_cargos		set monto=	round((monto::numeric/100000),2);
update sep_scv_dt_personal	set monpervia=	round((monpervia::numeric/100000),2);
update sep_scv_dt_scg		set monto=	round((monto::numeric/100000),2);
update sep_scv_dt_spg		set monto=	round((monto::numeric/100000),2);
update sep_solicitud		set monto=	round((monto::numeric/100000),2);
update sep_solicitud		set monbasinm=	round((monbasinm::numeric/100000),2);
update sep_solicitud		set montotcar=	round((montotcar::numeric/100000),2);
update sep_solicitudcargos	set monobjret=	round((monobjret::numeric/100000),2);
update sep_solicitudcargos	set monret=	round((monret::numeric/100000),2);
update sep_solicitudcargos	set monto=	round((monto::numeric/100000),2);
update sep_solicitudviatico	set monsolvia=	round((monsolvia::numeric/100000),2);
update sigesp_cmp		set total=	round((total::numeric/100000),2);
update sigesp_cmp_md		set total=	round((total::numeric/100000),2);
update sigesp_unidad_tributaria	set valunitri=	round((valunitri::numeric/100000),2);
update siv_articulo		set prearta=	round((prearta::numeric/100000),2);
update siv_articulo		set preartb=	round((preartb::numeric/100000),2);
update siv_articulo		set preartc=	round((preartc::numeric/100000),2);
update siv_articulo		set preartd=	round((preartd::numeric/100000),2); 
update siv_articulo		set ultcosart=	round((ultcosart::numeric/100000),2);
update siv_articulo		set cosproart=	round((cosproart::numeric/100000),2);
update sno_anticipoprestaciones	set monpreant=	round((monpreant::numeric/100000),2);
update sno_anticipoprestaciones	set monintant=	round((monintant::numeric/100000),2);
update sno_anticipoprestaciones	set monantant=	round((monantant::numeric/100000),2);
update sno_anticipoprestaciones	set monantint=	round((monantint::numeric/100000),2);
update sno_anticipoprestaciones	set monant=	round((monant::numeric/100000),2);
update sno_conceptopersonal	set acuemp=	round((acuemp::numeric/100000),2);
update sno_conceptopersonal	set acupat=	round((acupat::numeric/100000),2); 
update sno_dt_scg		set monto=	round((monto::numeric/100000),2);
update sno_dt_spg		set monto=	round((monto::numeric/100000),2);
update sno_grado		set monsalgra=	round((monsalgra::numeric/100000),2);
update sno_hgrado		set monsalgra=	round((monsalgra::numeric/100000),2);
update sno_hperiodo		set totper=	round((totper::numeric/100000),2);
update sno_hpersonalnomina	set sueper=	round((sueper::numeric/100000),2);
update sno_hpersonalnomina	set sueintper=	round((sueintper::numeric/100000),2);
update sno_hpersonalnomina	set sueproper=	round((sueproper::numeric/100000),2);
update sno_hprestamos		set monpre=	round((monpre::numeric/100000),2);
update sno_hprestamos		set monamopre=	round((monamopre::numeric/100000),2);
update sno_hprestamosamortizado	set monamo=	round((monamo::numeric/100000),2);
update sno_hprestamosperiodo	set moncuo=	round((moncuo::numeric/100000),2);
update sno_hresumen		set asires=	round((asires::numeric/100000),2);
update sno_hresumen 		set dedres=	round((dedres::numeric/100000),2);
update sno_hresumen 		set apoempres=	round((apoempres::numeric/100000),2);
update sno_hresumen 		set apopatres=	round((apopatres::numeric/100000),2);
update sno_hresumen 		set priquires=	round((priquires::numeric/100000),2);
update sno_hresumen 		set segquires=	round((segquires::numeric/100000),2);
update sno_hresumen 		set monnetres=	round((monnetres::numeric/100000),2);
update sno_hsalida 		set valsal=	round((valsal::numeric/100000),2);
update sno_hsalida 		set monacusal=	round((monacusal::numeric/100000),2);
update sno_hsalida 		set salsal=	round((salsal::numeric/100000),2);
update sno_hsalida 		set priquisal=	round((priquisal::numeric/100000),2);
update sno_hsalida 		set segquisal=	round((segquisal::numeric/100000),2);
update sno_hvacacpersonal	set sueintbonvac=	round((sueintbonvac::numeric/100000),2);
update sno_periodo		set totper=	round((totper::numeric/100000),2);
update sno_personalnomina	set sueper=	round((sueper::numeric/100000),2);
update sno_personalnomina	set sueintper=	round((sueintper::numeric/100000),2);
update sno_personalnomina	set sueproper=	round((sueproper::numeric/100000),2);
update sno_prestamos		set monpre=	round((monpre::numeric/100000),2);
update sno_prestamos		set monamopre=	round((monamopre::numeric/100000),2);
update sno_prestamosamortizado	set monamo=	round((monamo::numeric/100000),2);
update sno_prestamosperiodo	set moncuo=	round((moncuo::numeric/100000),2);
update sno_rd			set monpagper=	round((monpagper::numeric/100000),2);
update sno_resumen		set asires=	round((asires::numeric/100000),2);
update sno_resumen 		set dedres=	round((dedres::numeric/100000),2);
update sno_resumen 		set apoempres=	round((apoempres::numeric/100000),2);
update sno_resumen 		set apopatres=	round((apopatres::numeric/100000),2);
update sno_resumen 		set priquires=	round((priquires::numeric/100000),2);
update sno_resumen 		set segquires=	round((segquires::numeric/100000),2);
update sno_resumen 		set monnetres=	round((monnetres::numeric/100000),2);
update sno_salida		set valsal=	round((valsal::numeric/100000),2);
update sno_salida 		set monacusal=	round((monacusal::numeric/100000),2);
update sno_salida 		set salsal=	round((salsal::numeric/100000),2);
update sno_salida 		set priquisal=	round((priquisal::numeric/100000),2);
update sno_salida 		set segquisal=	round((segquisal::numeric/100000),2);
update sno_sueldominimo		set monsuemin=	round((monsuemin::numeric/100000),2);
update sno_thgrado		set monsalgra=	round((monsalgra::numeric/100000),2);
update sno_thperiodo		set totper=	round((totper::numeric/100000),2);
update sno_thpersonalnomina	set sueper=	round((sueper::numeric/100000),2);
update sno_thpersonalnomina	set sueintper=	round((sueintper::numeric/100000),2);
update sno_thpersonalnomina	set sueproper=	round((sueproper::numeric/100000),2);
update sno_thprenomina		set valprenom=	round((valprenom::numeric/100000),2);
update sno_thprenomina		set valhis=	round((valhis::numeric/100000),2);
update sno_thprestamos		set monpre=	round((monpre::numeric/100000),2);
update sno_thprestamos		set monamopre=	round((monamopre::numeric/100000),2);
update sno_thprestamosamortizado	set monamo=	round((monamo::numeric/100000),2);
update sno_thprestamosperiodo	set moncuo=	round((moncuo::numeric/100000),2);
update sno_thresumen		set asires=	round((asires::numeric/100000),2);
update sno_thresumen 		set apoempres=	round((apoempres::numeric/100000),2);
update sno_thresumen 		set apopatres=	round((apopatres::numeric/100000),2);
update sno_thresumen 		set priquires=	round((priquires::numeric/100000),2);
update sno_thresumen 		set segquires=	round((segquires::numeric/100000),2);
update sno_thresumen 		set monnetres=	round((monnetres::numeric/100000),2);
update sno_thsalida 		set valsal=	round((valsal::numeric/100000),2);
update sno_thsalida 		set monacusal=	round((monacusal::numeric/100000),2);
update sno_thsalida 		set salsal=	round((salsal::numeric/100000),2);
update sno_thsalida 		set priquisal=	round((priquisal::numeric/100000),2);
update sno_thsalida 		set segquisal=	round((segquisal::numeric/100000),2);
update sno_thvacacpersonal	set sueintbonvac=	round((sueintbonvac::numeric/100000),2);
update sno_trabajoanterior	set ultsuetraant=	round((ultsuetraant::numeric/100000),2);
update sno_vacacpersonal	set sueintbonvac=	round((sueintbonvac::numeric/100000),2);
update sno_deudaanterior	set monpreant=	round((monpreant::numeric/100000),2);
update sno_deudaanterior	set monint=	round((monint::numeric/100000),2);
update sno_deudaanterior	set monant=	round((monant::numeric/100000),2);
update sno_fideiperiodo	set bonvacper=	round((bonvacper::numeric/100000),2);
update sno_fideiperiodo	set bonfinper=	round((bonfinper::numeric/100000),2);
update sno_fideiperiodo	set sueintper=	round((sueintper::numeric/100000),2);
update sno_fideiperiodo	set apoper=	round((apoper::numeric/100000),2);
update sno_fideiperiodo	set bonextper=	round((bonextper::numeric/100000),2);
update sno_fideiperiodointereses	set monantacu=	round((monantacu::numeric/100000),2);
update sno_fideiperiodointereses	set monant=	round((monant::numeric/100000),2);
update sno_fideiperiodointereses	set monint=	round((monint::numeric/100000),2);
update sno_fideiperiodointereses	set moncap=	round((moncap::numeric/100000),2);
update soc_cuentagasto		set monto=	round((monto::numeric/100000),2);
update soc_dt_bienes		set preuniart=	round((preuniart::numeric/100000),2);
update soc_dt_bienes		set monsubart=	round((monsubart::numeric/100000),2);
update soc_dt_bienes		set montotart=	round((montotart::numeric/100000),2);
update soc_dt_servicio		set monuniser=	round((monuniser::numeric/100000),2);
update soc_dt_servicio		set monsubser=	round((monsubser::numeric/100000),2);
update soc_dt_servicio		set montotser=	round((montotser::numeric/100000),2);
update soc_dta_cargos		set monbasimp=	round((monbasimp::numeric/100000),2);
update soc_dta_cargos		set monimp=	round((monimp::numeric/100000),2);
update soc_dta_cargos		set monto=	round((monto::numeric/100000),2);
update soc_dts_cargos		set monbasimp=	round((monbasimp::numeric/100000),2);
update soc_dts_cargos		set monimp=	round((monimp::numeric/100000),2);
update soc_dts_cargos		set monto=	round((monto::numeric/100000),2);
update soc_ordencompra		set monsubtotbie=	round((monsubtotbie::numeric/100000),2);
update soc_ordencompra		set monsubtotser=	round((monsubtotser::numeric/100000),2);
update soc_ordencompra		set monsubtot=	round((monsubtot::numeric/100000),2);
update soc_ordencompra		set monbasimp=	round((monbasimp::numeric/100000),2);
update soc_ordencompra		set monimp=	round((monimp::numeric/100000),2);
update soc_ordencompra		set mondes=	round((mondes::numeric/100000),2);
update soc_ordencompra		set montot=	round((montot::numeric/100000),2);
update soc_solicitudcargos	set monret=	round((monret::numeric/100000),2);
update soc_solicitudcargos	set monobjret=	round((monobjret::numeric/100000),2);
update soc_solicitudcargos	set monto=	round((monto::numeric/100000),2);
update spg_cuentas		set asignado=	round((asignado::numeric/100000),2);
update spg_cuentas		set precomprometido=	round((precomprometido::numeric/100000),2);
update spg_cuentas		set comprometido=	round((comprometido::numeric/100000),2);
update spg_cuentas		set causado=	round((causado::numeric/100000),2);
update spg_cuentas		set pagado=	round((pagado::numeric/100000),2);
update spg_cuentas		set aumento=	round((aumento::numeric/100000),2);
update spg_cuentas		set disminucion=	round((disminucion::numeric/100000),2);
update spg_cuentas		set enero=	round((enero::numeric/100000),2);
update spg_cuentas		set febrero=	round((febrero::numeric/100000),2);
update spg_cuentas		set marzo=	round((marzo::numeric/100000),2);
update spg_cuentas		set abril=	round((abril::numeric/100000),2);
update spg_cuentas		set mayo=	round((mayo::numeric/100000),2);
update spg_cuentas		set junio=	round((junio::numeric/100000),2);
update spg_cuentas		set julio=	round((julio::numeric/100000),2);
update spg_cuentas		set agosto=	round((agosto::numeric/100000),2);
update spg_cuentas		set septiembre=	round((septiembre::numeric/100000),2);
update spg_cuentas		set octubre=	round((octubre::numeric/100000),2);
update spg_cuentas		set noviembre=	round((noviembre::numeric/100000),2);
update spg_cuentas		set diciembre=	round((diciembre::numeric/100000),2);
update spg_dt_cmp		set monto=	round((monto::numeric/100000),2);
update spg_dtmp_cmp		set monto=	round((monto::numeric/100000),2);
update spg_temporal		set asignado=	round((asignado::numeric/100000),2);
update spg_temporal		set precomprometido=	round((precomprometido::numeric/100000),2);
update spg_temporal		set comprometido=	round((comprometido::numeric/100000),2);
update spg_temporal		set causado=	round((causado::numeric/100000),2);
update spg_temporal		set pagado=	round((pagado::numeric/100000),2);
update spg_temporal		set aumento=	round((aumento::numeric/100000),2);
update spg_temporal		set disminucion=	round((disminucion::numeric/100000),2);
update spg_temporal		set enero=	round((enero::numeric/100000),2);
update spg_temporal		set febrero=	round((febrero::numeric/100000),2);
update spg_temporal		set marzo=	round((marzo::numeric/100000),2);
update spg_temporal		set abril=	round((abril::numeric/100000),2);
update spg_temporal		set mayo=	round((mayo::numeric/100000),2);
update spg_temporal		set junio=	round((junio::numeric/100000),2);
update spg_temporal		set julio=	round((julio::numeric/100000),2);
update spg_temporal		set agosto=	round((agosto::numeric/100000),2);
update spg_temporal		set septiembre=	round((septiembre::numeric/100000),2);
update spg_temporal		set octubre=	round((octubre::numeric/100000),2);
update spg_temporal		set noviembre=	round((noviembre::numeric/100000),2);
update spg_temporal		set diciembre=	round((diciembre::numeric/100000),2);










