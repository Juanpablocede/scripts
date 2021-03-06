INSERT INTO sno_hconcepto
SELECT 
	*
FROM 
	dblink('dbname=db_mdo_2015, 
		'SELECT 
			codemp,
			codnom,
			anocur,
			codperi,
			codconc,
			nomcon
			titcon,
			sigcon,
			forcon,
			glocon,
			acumaxcon,
			valmincon,
			valmaxcon,
			concon,
			cueprecon,
			cueconcon,
			aplisrcon,
			sueintcon,
			sueintvaccon,
			conprenom,
			intprocon,
			codestpro1,
			codestpro2,
			codestpro3,
			codestpro4,
			codestpro5,
			estcla,
			forpatcon,
			cueprepatcon,
			cueconpatcon,
			titretempcon,
			titretpatcon,
			valminpatcon,
			valmaxpatcon,
			codprov,
			cedben,
			aplarccon,
			conprocon,
			intingcon,
			poringcon
			spi_cuenta,
			repacucon,
			repconsunicon,
			consunicon,
			quirepcon,
			asifidper,
			asifidpat,
			frevarcon,
			persalnor,
			aplresenc,
			conperenc
			codente,
			guarrepcon,
			aplidiasadd,
			aplisalnorutilidad
		FROM 
			sno_hconcepto 
		WHERE 
			codnom='0001' and 
			(codconc='000000994' OR codconc='0000009995')
		ORDER BY
			codperi') 
	AS 
		sno_hconcepto(
			codemp 		character(4),
			codnom		character(4),
			anocur		character(4),
			codperi		character(3),
			codconc		character(10),
			nomcon		character varying(30),
			titcon		character varying(254),
			sigcon		character varying(1),
			forcon		text,
			glocon		smallint,
			acumaxcon	double precision,
			valmincon	double precision,
			valmaxcon	double precision,
			concon		text,
			cueprecon	character varying(25),
			cueconcon	character varying(25),
			aplisrcon	smallint,
			sueintcon	smallint,
			sueintvaccon	smallint,
			conprenom	smallint,
			intprocon	character varying(1),
			codestpro1	character(25),
			codestpro2	character(25),
			codestpro3	character(25),
			codestpro4	character(25),
			codestpro5	character(25),
			estcla		character(1),
			forpatcon	text,
			cueprepatcon	character varying(25),
			cueconpatcon	character varying(25),
			titretempcon	character varying(10),
			titretpatcon	character varying(10),
			valminpatcon	double precision,
			valmaxpatcon	double precision,
			codprov		character varying(10),
			cedben		character varying(10),
			aplarccon	smallint,
			conprocon	character varying(1),
			intingcon	character(1),
			poringcon	double precision,
			spi_cuenta	character varying(25),
			repacucon	character(1),
			repconsunicon	character(1),
			consunicon	character(10),
			quirepcon	character(1),
			asifidper	character(1),
			asifidpat	character(1),
			frevarcon	character(1),
			persalnor	character(1),
			aplresenc	character(1),
			conperenc	character(1)
			codente		character(12),
			guarrepcon	character(1),
			aplidiasadd	smallint,
			aplisalnorutilidad	smallint);
