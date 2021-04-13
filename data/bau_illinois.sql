BEGIN TRANSACTION;
CREATE TABLE "time_season" (
	"t_season"	text,
	PRIMARY KEY("t_season")
);
INSERT INTO `time_season` VALUES ('inter');
INSERT INTO `time_season` VALUES ('summer');
INSERT INTO `time_season` VALUES ('winter');
CREATE TABLE "time_periods" (
	"t_periods"	integer,
	"flag"	text,
	FOREIGN KEY("flag") REFERENCES "time_period_labels"("t_period_labels"),
	PRIMARY KEY("t_periods")
);
-- Periods when natural gas plants were built
INSERT INTO `time_periods` VALUES (1940,'e');
INSERT INTO `time_periods` VALUES (1948,'e');
INSERT INTO `time_periods` VALUES (1951,'e');
INSERT INTO `time_periods` VALUES (1959,'e');
INSERT INTO `time_periods` VALUES (1960,'e');
INSERT INTO `time_periods` VALUES (1965,'e');
INSERT INTO `time_periods` VALUES (1966,'e');
INSERT INTO `time_periods` VALUES (1974,'e');
INSERT INTO `time_periods` VALUES (1990,'e');
INSERT INTO `time_periods` VALUES (1993,'e');
INSERT INTO `time_periods` VALUES (1995,'e');
INSERT INTO `time_periods` VALUES (1996,'e');
INSERT INTO `time_periods` VALUES (1999,'e');
INSERT INTO `time_periods` VALUES (2000,'e');
INSERT INTO `time_periods` VALUES (2001,'e');
INSERT INTO `time_periods` VALUES (2002,'e');


-- Periods when coal plants were built
INSERT INTO `time_periods` VALUES (1953,'e');
INSERT INTO `time_periods` VALUES (1954,'e');
INSERT INTO `time_periods` VALUES (1955,'e');
INSERT INTO `time_periods` VALUES (1958,'e');
INSERT INTO `time_periods` VALUES (1962,'e');
INSERT INTO `time_periods` VALUES (1963,'e');
INSERT INTO `time_periods` VALUES (1967,'e');
INSERT INTO `time_periods` VALUES (1968,'e');
INSERT INTO `time_periods` VALUES (1970,'e');
INSERT INTO `time_periods` VALUES (1973,'e');
INSERT INTO `time_periods` VALUES (1975,'e');
INSERT INTO `time_periods` VALUES (1977,'e');
INSERT INTO `time_periods` VALUES (1978,'e');
INSERT INTO `time_periods` VALUES (1989,'e');
INSERT INTO `time_periods` VALUES (1991,'e');
INSERT INTO `time_periods` VALUES (1994,'e');
INSERT INTO `time_periods` VALUES (1997,'e');
INSERT INTO `time_periods` VALUES (1998,'e');


-- Periods when nuclear plants were built
INSERT INTO `time_periods` VALUES (1969,'e');
INSERT INTO `time_periods` VALUES (1971,'e');
INSERT INTO `time_periods` VALUES (1972,'e');
INSERT INTO `time_periods` VALUES (1982,'e');
INSERT INTO `time_periods` VALUES (1984,'e');
INSERT INTO `time_periods` VALUES (1985,'e');
INSERT INTO `time_periods` VALUES (1987,'e');
INSERT INTO `time_periods` VALUES (1988,'e');



-- Periods when wind farms were built
INSERT INTO `time_periods` VALUES (2003,'e');
INSERT INTO `time_periods` VALUES (2004,'e');
INSERT INTO `time_periods` VALUES (2005,'e');
INSERT INTO `time_periods` VALUES (2006,'e');

-- Periods when solar and wind farms were built
INSERT INTO `time_periods` VALUES (2007,'e');
INSERT INTO `time_periods` VALUES (2008,'e');
INSERT INTO `time_periods` VALUES (2009,'e');
INSERT INTO `time_periods` VALUES (2010,'e');
INSERT INTO `time_periods` VALUES (2011,'e');
INSERT INTO `time_periods` VALUES (2012,'e');
INSERT INTO `time_periods` VALUES (2013,'e');
INSERT INTO `time_periods` VALUES (2014,'e');
INSERT INTO `time_periods` VALUES (2015,'e');
INSERT INTO `time_periods` VALUES (2016,'e');
INSERT INTO `time_periods` VALUES (2017,'e');
INSERT INTO `time_periods` VALUES (2018,'e');
INSERT INTO `time_periods` VALUES (2019,'e');
INSERT INTO `time_periods` VALUES (2020,'e');

-- future periods
INSERT INTO `time_periods` VALUES (2021,'f');
INSERT INTO `time_periods` VALUES (2022,'f');
INSERT INTO `time_periods` VALUES (2023,'f');
INSERT INTO `time_periods` VALUES (2024,'f');
INSERT INTO `time_periods` VALUES (2025,'f');
INSERT INTO `time_periods` VALUES (2026,'f');
INSERT INTO `time_periods` VALUES (2027,'f');
INSERT INTO `time_periods` VALUES (2028,'f');
INSERT INTO `time_periods` VALUES (2029,'f');
INSERT INTO `time_periods` VALUES (2030,'f');
INSERT INTO `time_periods` VALUES (2031,'f');
INSERT INTO `time_periods` VALUES (2032,'f');
INSERT INTO `time_periods` VALUES (2033,'f');
INSERT INTO `time_periods` VALUES (2034,'f');
INSERT INTO `time_periods` VALUES (2035,'f');
INSERT INTO `time_periods` VALUES (2036,'f');
INSERT INTO `time_periods` VALUES (2037,'f');
INSERT INTO `time_periods` VALUES (2038,'f');
INSERT INTO `time_periods` VALUES (2039,'f');
INSERT INTO `time_periods` VALUES (2040,'f');
INSERT INTO `time_periods` VALUES (2041,'f');
INSERT INTO `time_periods` VALUES (2042,'f');
INSERT INTO `time_periods` VALUES (2043,'f');
INSERT INTO `time_periods` VALUES (2044,'f');
INSERT INTO `time_periods` VALUES (2045,'f');
INSERT INTO `time_periods` VALUES (2046,'f');
INSERT INTO `time_periods` VALUES (2047,'f');
INSERT INTO `time_periods` VALUES (2048,'f');
INSERT INTO `time_periods` VALUES (2049,'f');
INSERT INTO `time_periods` VALUES (2050,'f');
INSERT INTO `time_periods` VALUES (2051,'f');


CREATE TABLE "time_period_labels" (
	"t_period_labels"	text,
	"t_period_labels_desc"	text,
	PRIMARY KEY("t_period_labels")
);
INSERT INTO `time_period_labels` VALUES ('e','existing vintages');
INSERT INTO `time_period_labels` VALUES ('f','future');
CREATE TABLE "time_of_day" (
	"t_day"	text,
	PRIMARY KEY("t_day")
);
INSERT INTO `time_of_day` VALUES ('day');
INSERT INTO `time_of_day` VALUES ('night');
CREATE TABLE "technology_labels" (
	"tech_labels"	text,
	"tech_labels_desc"	text,
	PRIMARY KEY("tech_labels")
);
INSERT INTO `technology_labels` VALUES ('r','resource technology');
INSERT INTO `technology_labels` VALUES ('p','production technology');
INSERT INTO `technology_labels` VALUES ('pb','baseload production technology');
INSERT INTO `technology_labels` VALUES ('ps','storage production technology');


CREATE TABLE "technologies" (
	"tech"	text,
	"flag"	text,
	"sector"	text,
	"tech_desc"	text,
	"tech_category"	text,
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("flag") REFERENCES "technology_labels"("tech_labels"),
	PRIMARY KEY("tech")
);
INSERT INTO `technologies` VALUES ('BYRON_U1','p','electric','Byron Unit 1','uranium');
INSERT INTO `technologies` VALUES ('BYRON_U2','p','electric','Byron Unit 2','uranium');
INSERT INTO `technologies` VALUES ('LASALLE_U1','p','electric','LaSalle Unit 1','uranium');
INSERT INTO `technologies` VALUES ('LASALLE_U2','p','electric','LaSalle Unit 2','uranium');
INSERT INTO `technologies` VALUES ('QUAD_CITIES_U1','p','electric','Quad Cities Unit 1','uranium');
INSERT INTO `technologies` VALUES ('QUAD_CITIES_U2','p','electric','Quad Cities Unit 2','uranium');
INSERT INTO `technologies` VALUES ('DRESDEN_U2','p','electric','Dresden Unit 2','uranium');
INSERT INTO `technologies` VALUES ('DRESDEN_U3','p','electric','Dresden Unit 3','uranium');
INSERT INTO `technologies` VALUES ('BRAIDWOOD_U1','p','electric','Braidwood Unit 1','uranium');
INSERT INTO `technologies` VALUES ('BRAIDWOOD_U2','p','electric','Braidwood Unit 2','uranium');
INSERT INTO `technologies` VALUES ('CLINTON_U1','p','electric','Clinton Unit 1','uranium');
INSERT INTO `technologies` VALUES ('NATGAS_PLANT_NEW','p','electric','Natural Gas Plants -- New','natural gas');
INSERT INTO `technologies` VALUES ('NATGAS_PLANT_EXISTING','p','electric','Natural Gas Plants -- Existing','natural gas');
INSERT INTO `technologies` VALUES ('COAL_PLANT_NEW','p','electric','Coal Power Plants -- New','coal');
INSERT INTO `technologies` VALUES ('COAL_PLANT_EXISTING','p','electric','Coal Power Plants -- Existing','coal');
INSERT INTO `technologies` VALUES ('WIND_FARM','p','electric','Wind Farm','wind power');
INSERT INTO `technologies` VALUES ('SOLAR_FARM','p','electric','SOLAR_FARMar Farm','SOLAR_FARMar power');

-- TO DO : Add imported uranium, imported natural gas, and imported coal to technologies.
-- TO DO : Add a transmission technology to deliver electricity to IL and
--     	   an connection technology to export extra electricity to other states.




CREATE TABLE "tech_reserve" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);

CREATE TABLE "tech_exchange" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);

CREATE TABLE "tech_curtailment" (
	"tech"	text,
	"notes"	TEXT,
	PRIMARY KEY("tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);

CREATE TABLE "tech_flex" (
	"tech"	text,
	"notes"	TEXT,
	PRIMARY KEY("tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);

CREATE TABLE "tech_annual" (
	"tech"	text,
	"notes"	TEXT,
	PRIMARY KEY("tech"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
);


CREATE TABLE "sector_labels" (
	"sector"	text,
	PRIMARY KEY("sector")
);
INSERT INTO `sector_labels` VALUES ('supply');
INSERT INTO `sector_labels` VALUES ('electric');
-- INSERT INTO `sector_labels` VALUES ('transport');
-- INSERT INTO `sector_labels` VALUES ('commercial');
-- INSERT INTO `sector_labels` VALUES ('residential');
-- INSERT INTO `sector_labels` VALUES ('industrial');

CREATE TABLE "regions" (
	"regions"	TEXT,
	"region_note"	TEXT,
	PRIMARY KEY("regions")
);
INSERT INTO `regions` VALUES ('IL',NULL);

CREATE TABLE "groups" (
	"group_name"	text,
	"notes"	text,
	PRIMARY KEY("group_name")
);

CREATE TABLE "commodity_labels" (
	"comm_labels"	text,
	"comm_labels_desc"	text,
	PRIMARY KEY("comm_labels")
);
INSERT INTO `commodity_labels` VALUES ('p','physical commodity');
INSERT INTO `commodity_labels` VALUES ('e','emissions commodity');
INSERT INTO `commodity_labels` VALUES ('d','demand commodity');

CREATE TABLE "commodities" (
	"comm_name"	text,
	"flag"	text,
	"comm_desc"	text,
	FOREIGN KEY("flag") REFERENCES "commodity_labels"("comm_labels"),
	PRIMARY KEY("comm_name")
);
INSERT INTO `commodities` VALUES ('ethos','p','# dummy commodity to supply inputs (makes graph easier to read)');
INSERT INTO `commodities` VALUES ('ELC','d','# electricity');

-- TO DO : Add an exported electricity commodity and an IL demand commodity.

CREATE TABLE "TechOutputSplit" (
	"regions"	TEXT,
	"periods"	integer,
	"tech"	TEXT,
	"output_comm"	text,
	"to_split"	real,
	"to_split_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","periods","tech","output_comm")
);

CREATE TABLE "TechInputSplit" (
	"regions"	TEXT,
	"periods"	integer,
	"input_comm"	text,
	"tech"	text,
	"ti_split"	real,
	"ti_split_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","periods","input_comm","tech")
);

CREATE TABLE "StorageDuration" (
	"regions"	text,
	"tech"	text,
	"duration"	real,
	"duration_notes"	text,
	PRIMARY KEY("regions","tech")
);


CREATE TABLE "SegFrac" (
	"season_name"	text,
	"time_of_day_name"	text,
	"segfrac"	real CHECK("segfrac" >= 0 AND "segfrac" <= 1),
	"segfrac_notes"	text,
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
	PRIMARY KEY("season_name","time_of_day_name")
);
INSERT INTO `SegFrac` VALUES ('inter','day',0.1667,'# I-D');
INSERT INTO `SegFrac` VALUES ('inter','night',0.0833,'# I-N');
INSERT INTO `SegFrac` VALUES ('summer','day',0.1667,'# S-D');
INSERT INTO `SegFrac` VALUES ('summer','night',0.0833,'# S-N');
INSERT INTO `SegFrac` VALUES ('winter','day',0.3333,'# W-D');
INSERT INTO `SegFrac` VALUES ('winter','night',0.1667,'# W-N');


/*
Comment on Planning Reserve Margin:
The planning reserve margin is the excess capacity (expressed in percent) above
the expected load that a system must carry to meet reliability requirements.
Current reserve margin in Illinois is about 35%
*/

CREATE TABLE "PlanningReserveMargin" (
	`regions`	text,
	`reserve_margin`	REAL,
	PRIMARY KEY(regions),
	FOREIGN KEY(`regions`) REFERENCES regions
);
INSERT INTO "PlanningReserveMargin" VALUES ('IL', 0.35);


CREATE TABLE "MyopicBaseyear" (
	"year"	real
	"notes"	text
);
CREATE TABLE "MinGenGroupWeight" (
	"regions"	text,
	"tech"	text,
	"group_name"	text,
	"act_fraction"	REAL,
	"tech_desc"	text,
	PRIMARY KEY("tech","group_name","regions")
);
CREATE TABLE "MinGenGroupTarget" (
	"regions"	text,
	"periods"	integer,
	"group_name"	text,
	"min_act_g"	real,
	"notes"	text,
	PRIMARY KEY("periods","group_name","regions")
);
CREATE TABLE "MinCapacity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"mincap"	real,
	"mincap_units"	text,
	"mincap_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","periods","tech")
);

CREATE TABLE "MinActivity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"minact"	real,
	"minact_units"	text,
	"minact_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","periods","tech")
);

CREATE TABLE "MaxCapacity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"maxcap"	real,
	"maxcap_units"	text,
	"maxcap_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","periods","tech")
);
/*
No expansion of nuclear capacity is allowed!
*/
-- BYRON UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BYRON_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BYRON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BYRON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BYRON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BYRON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BYRON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BYRON_U1',0.0,'MWe','cannot be expanded');
-- BYRON UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BYRON_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BYRON_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BYRON_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BYRON_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BYRON_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BYRON_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BYRON_U2',0.0,'MWe','cannot be expanded');
-- BRAIDWOOD UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BRAIDWOOD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BRAIDWOOD_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BRAIDWOOD_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BRAIDWOOD_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BRAIDWOOD_U1',0.0,'MWe','cannot be expanded');
-- BRAIDWOOD UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BRAIDWOOD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BRAIDWOOD_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BRAIDWOOD_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BRAIDWOOD_U2',0.0,'MWe','cannot be expanded');
-- LASALLE UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'LASALLE_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'LASALLE_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'LASALLE_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'LASALLE_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'LASALLE_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'LASALLE_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'LASALLE_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'LASALLE_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'LASALLE_U1',0.0,'MWe','cannot be expanded');
-- LASALLE UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'LASALLE_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'LASALLE_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'LASALLE_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'LASALLE_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'LASALLE_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'LASALLE_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'LASALLE_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'LASALLE_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'LASALLE_U2',0.0,'MWe','cannot be expanded');
-- QUAD CITIES UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'QUAD_CITIES_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'QUAD_CITIES_U1',0.0,'MWe','cannot be expanded');
-- QUAD CITIES UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'QUAD_CITIES_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'QUAD_CITIES_U2',0.0,'MWe','cannot be expanded');
-- DRESDEN UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'DRESDEN_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'DRESDEN_U2',0.0,'MWe','cannot be expanded');
-- DRESDEN UNIT 3
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'DRESDEN_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'DRESDEN_U3',0.0,'MWe','cannot be expanded');
-- CLINTON UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'CLINTON_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'CLINTON_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'CLINTON_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'CLINTON_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'CLINTON_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'CLINTON_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'CLINTON_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'CLINTON_U1',0.0,'MWe','cannot be expanded');

-- COAL PLANTS
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'COAL_PLANT_EXISTING',10929.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'COAL_PLANT_EXISTING',10929.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'COAL_PLANT_EXISTING',10562.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'COAL_PLANT_EXISTING',10196.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'COAL_PLANT_EXISTING',9829.7,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'COAL_PLANT_EXISTING',9829.7,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'COAL_PLANT_EXISTING',9829.7,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'COAL_PLANT_EXISTING',9503.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'COAL_PLANT_EXISTING',9503.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'COAL_PLANT_EXISTING',9503.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'COAL_PLANT_EXISTING',9503.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'COAL_PLANT_EXISTING',9148.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'COAL_PLANT_EXISTING',8450.6,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'COAL_PLANT_EXISTING',8450.6,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'COAL_PLANT_EXISTING',8450.6,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'COAL_PLANT_EXISTING',8450.6,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'COAL_PLANT_EXISTING',7791.1,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'COAL_PLANT_EXISTING',6851.1,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'COAL_PLANT_EXISTING',6851.1,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'COAL_PLANT_EXISTING',6226.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'COAL_PLANT_EXISTING',6226.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'COAL_PLANT_EXISTING',4969.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'COAL_PLANT_EXISTING',4334.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'COAL_PLANT_EXISTING',4334.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'COAL_PLANT_EXISTING',3442.1,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'COAL_PLANT_EXISTING',3442.1,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'COAL_PLANT_EXISTING',2824.7,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'COAL_PLANT_EXISTING',2544.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'COAL_PLANT_EXISTING',2544.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'COAL_PLANT_EXISTING',2544.4,'MWe','cannot be expanded');

-- NATURAL GAS PLANTS
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'NATGAS_PLANT_EXISTING',18623.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'NATGAS_PLANT_EXISTING',18617.5,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'NATGAS_PLANT_EXISTING',18608.2,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'NATGAS_PLANT_EXISTING',18608.2,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'NATGAS_PLANT_EXISTING',18608.2,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'NATGAS_PLANT_EXISTING',18524.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'NATGAS_PLANT_EXISTING',18524.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'NATGAS_PLANT_EXISTING',18514.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'NATGAS_PLANT_EXISTING',18514.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'NATGAS_PLANT_EXISTING',18514.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'NATGAS_PLANT_EXISTING',18514.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'NATGAS_PLANT_EXISTING',18514.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'NATGAS_PLANT_EXISTING',18401.3,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'NATGAS_PLANT_EXISTING',18033.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'NATGAS_PLANT_EXISTING',18020.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'NATGAS_PLANT_EXISTING',18020.9,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'NATGAS_PLANT_EXISTING',18013.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'NATGAS_PLANT_EXISTING',18013.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'NATGAS_PLANT_EXISTING',18013.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'NATGAS_PLANT_EXISTING',17353.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'NATGAS_PLANT_EXISTING',16693.4,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'NATGAS_PLANT_EXISTING',16693.4,'MWe','cannot be expanded');


-- NON NUCLEAR CAPACITY
-- TO DO : Add non-nuclear capacity

CREATE TABLE "MaxActivity" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"maxact"	real,
	"maxact_units"	text,
	"maxact_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","periods","tech")
);

/*
Comment on Lifetime Tech:
The lifetimes for the nuclear facilities are based on their current license
expirations. There is no technical reason for them to shutdown after 40 or 60
years. In the ZEC and Moratorium scenarios, these facilities will pursue license
extensions up to 80 years.
*/
CREATE TABLE "LifetimeTech" (
	"regions"	text,
	"tech"	text,
	"life"	real,
	"life_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);
INSERT INTO `LifetimeTech` VALUES ('IL','BYRON_U1',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','BYRON_U2',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','QUAD_CITIES_U1',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','QUAD_CITIES_U2',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','LASALLE_U1',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','LASALLE_U2',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','BRAIDWOOD_U1',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','BRAIDWOOD_U2',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','DRESDEN_U2',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','DRESDEN_U3',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','CLINTON_U1',40.0,'');

INSERT INTO `LifetimeTech` VALUES ('IL','NATGAS_PLANT_EXISTING',80.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','NATGAS_PLANT_NEW',80.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','COAL_PLANT_EXISTING',70.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','COAL_PLANT_NEW',70.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','WIND_FARM',25.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','SOLAR_FARM',25.0,'');

CREATE TABLE "LifetimeProcess" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"life_process"	real,
	"life_process_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","tech","vintage")
);

CREATE TABLE "LifetimeLoanTech" (
	"regions"	text,
	"tech"	text,
	"loan"	real,
	"loan_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BYRON_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BYRON_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BRAIDWOOD_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BRAIDWOOD_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','LASALLE_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','LASALLE_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','QUAD_CITIES_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','QUAD_CITIES_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','DRESDEN_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','DRESDEN_U3', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','CLINTON_U1', 40.0, 'initial license is 40 yrs');

INSERT INTO `LifetimeLoanTech` VALUES ('IL','COAL_PLANT_NEW', 25.0, 'assume 25 year payoff period');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','NATGAS_PLANT_NEW', 25.0, 'assume 25 year payoff period');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','NATGAS_PLANT_EXISTING', 25.0, 'assume 25 year payoff period');

INSERT INTO `LifetimeLoanTech` VALUES ('IL','WIND_FARM', 10.0, 'assume 10 year payoff period');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','SOLAR_FARM', 10.0, 'assume 10 year payoff period');



CREATE TABLE "GrowthRateSeed" (
	"regions"	text,
	"tech"	text,
	"growthrate_seed"	real,
	"growthrate_seed_units"	text,
	"growthrate_seed_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);

CREATE TABLE "GrowthRateMax" (
	"regions"	text,
	"tech"	text,
	"growthrate_max"	real,
	"growthrate_max_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);

CREATE TABLE "GlobalDiscountRate" (
	"rate"	real
);
INSERT INTO `GlobalDiscountRate` VALUES (0.05);

CREATE TABLE "ExistingCapacity" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"exist_cap"	real,
	"exist_cap_units"	text,
	"exist_cap_notes"	text,
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech","vintage")
);
-- IL Nuclear Fleet
INSERT INTO `ExistingCapacity` VALUES ('IL','BYRON_U1',1985,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','BYRON_U2',1987,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','BRAIDWOOD_U1',1987,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','BRAIDWOOD_U2',1988,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','LASALLE_U1',1982,1182,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','LASALLE_U2',1984,1182,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','QUAD_CITIES_U1',1972,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','QUAD_CITIES_U2',1972,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','DRESDEN_U2',1969,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','DRESDEN_U3',1971,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','CLINTON_U1',1987,1157,'MW','MW electric');


-- IL Wind Capacity from DOE-EERE: No new capacity in 2006, 2013, or 2014
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2003, 50.4, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2004, 0.66, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2005, 56.1, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2006, 0.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2007, 592.2, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2008, 215.7, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2009, 632.4, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2010, 497.09, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2011, 697.44, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2012, 826.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2013, 0.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2014, 0.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2015, 274.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2016, 184.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2017, 306.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2018, 529.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2019, 489.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','WIND_FARM', 2020, 1059.0, 'MW', 'MW electric');


-- IL Solar Capacity from SEIA
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2007, 0.2, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2008, 0.4, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2009, 1.7, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2010, 11.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2011, 0.7, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2012, 26.7, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2013, 0.5, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2014, 10.6, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2015, 11.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2016, 5.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2017, 11.0, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2018, 25.2, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2019, 105.3, 'MW', 'MW electric');
INSERT INTO `ExistingCapactiy` VALUES ('IL','SOLAR_FARM', 2020, 253.9, 'MW', 'MW electric');

-- IL Coal Capacity from EIA
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1953, 366.6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1954, 366.6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1955, 366.6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1958, 326.4 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1962, 355.3 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1963, 697.4 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1967, 659.5 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1968, 940.0 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1970, 625.1 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1972, 1256.6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1973, 634.5 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1975, 892.8 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1977, 617.4 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1978, 280.3 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1987, 124.0 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1989, 64.8 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1991, 45.0 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1994, 355.3 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1997, 355.3 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 1998, 3.5 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 2005, 105.0 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 2009, 230.1 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'COAL_PLANT_EXISTING', 2012, 1766.0 'MW','MWe');

-- IL Natural Gas Capacity from EIA
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1940, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1948, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1951, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1953, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1958, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1959, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1960, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1962, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1965, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1966, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1970, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1974, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1985, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1987, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1988, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1990, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1991, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1993, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1995, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1996, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1997, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1998, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1999, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2000, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2001, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2002, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2003, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2004, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2005, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2012, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2015, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2016, 6 'MW','MWe');
INSERT INTO `ExistingCapacity` VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2019, 6 'MW','MWe');


CREATE TABLE "EmissionLimit" (
	"regions"	text,
	"periods"	integer,
	"emis_comm"	text,
	"emis_limit"	real,
	"emis_limit_units"	text,
	"emis_limit_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name"),
	PRIMARY KEY("regions","periods","emis_comm")
);
CREATE TABLE "EmissionActivity" (
	"regions"	text,
	"emis_comm"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"emis_act"	real,
	"emis_act_units"	text,
	"emis_act_notes"	text,
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	PRIMARY KEY("regions","emis_comm","input_comm","tech","vintage","output_comm")
);

CREATE TABLE "Efficiency" (
	"regions"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"efficiency"	real CHECK("efficiency" > 0),
	"eff_notes"	text,
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	PRIMARY KEY("regions","input_comm","tech","vintage","output_comm")
);
/*
The efficiency for all technologies is unity until the fuel commodities are
introduced.
*/

-- EXISTING Nuclear Facilities
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BYRON_U1', 1985, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BYRON_U2', 1987, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BRAIDWOOD_U1', 1987, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BRAIDWOOD_U2', 1988, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'LASALLE_U1', 1982, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'LASALLE_U2', 1984, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'QUAD_CITIES_U1', 1972, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'QUAD_CITIES_U2', 1972, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'DRESDEN_U2', 1969, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'DRESDEN_U3', 1971, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CLINTON_U1', 1987, 'ELC', 1.00, 'MWe to MWe');

-- EXISTING SOLAR
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2007, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2008, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2009, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2010, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2011, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2012, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2013, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2014, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2015, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2016, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2017, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2018, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2019, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2020, 'ELC', 1.00, 'MWe to MWe');

-- EXISTING WIND
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2003, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2004, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2005, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2006, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2007, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2008, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2009, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2010, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2011, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2012, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2013, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2014, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2015, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2016, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2017, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2018, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2019, 'ELC', 1.00, 'MWe to MWE');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2020, 'ELC', 1.00, 'MWe to MWE');

-- EXISTING Coal facilities
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1953, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1954, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1955, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1958, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1962, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1963, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1967, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1968, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1970, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1972, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1973, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1975, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1977, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1978, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1987, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1989, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1991, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1994, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1997, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 1998, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 2005, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 2009, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_EXISTING', 2012, 'ELC', 1.00, 'MWe to MWe');

--EXISTING Natural Gas Facilities
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1940, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1948, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1951, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1953, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1958, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1959, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1960, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1962, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1965, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1966, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1970, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1974, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1985, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1987, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1988, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1990, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1991, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1993, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1995, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1996, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1997, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1998, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 1999, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2000, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2001, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2002, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2003, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2004, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2005, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2012, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2015, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2016, 'ELC' 1.00 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_EXISTING', 2019, 'ELC' 1.00 'MWe to MWe');



-- 2020s
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2029, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2029, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2029, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2029, 'ELC', 1.00, 'MWe to MWe');

-- 2030s
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2039, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2039, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2039, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2039, 'ELC', 1.00, 'MWe to MWe');

-- 2040s
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2049, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2049, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2049, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2049, 'ELC', 1.00, 'MWe to MWe');
-- 2050
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'COAL_PLANT_NEW', 2050, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NATGAS_PLANT_NEW', 2050, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WIND_FARM', 2050, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOLAR_FARM', 2050, 'ELC', 1.00, 'MWe to MWe');


CREATE TABLE "DiscountRate" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"tech_rate"	real,
	"tech_rate_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","tech","vintage")
);
CREATE TABLE "DemandSpecificDistribution" (
	"regions"	text,
	"season_name"	text,
	"time_of_day_name"	text,
	"demand_name"	text,
	"dds"	real CHECK("dds" >= 0 AND "dds" <= 1),
	"dds_notes"	text,
	FOREIGN KEY("demand_name") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	PRIMARY KEY("regions","season_name","time_of_day_name","demand_name")
);
INSERT INTO `DemandSpecificDistribution` VALUES ('IL','inter','day','ELC',0.15,'');
INSERT INTO `DemandSpecificDistribution` VALUES ('IL','inter','night','ELC',0.05,'');
INSERT INTO `DemandSpecificDistribution` VALUES ('IL','summer','day','ELC',0.15,'');
INSERT INTO `DemandSpecificDistribution` VALUES ('IL','summer','night','ELC',0.05,'');
INSERT INTO `DemandSpecificDistribution` VALUES ('IL','winter','day','ELC',0.5,'');
INSERT INTO `DemandSpecificDistribution` VALUES ('IL','winter','night','ELC',0.1,'');

CREATE TABLE "Demand" (
	"regions"	text,
	"periods"	integer,
	"demand_comm"	text,
	"demand"	real,
	"demand_units"	text,
	"demand_notes"	text,
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("demand_comm") REFERENCES "commodities"("comm_name"),
	PRIMARY KEY("regions","periods","demand_comm")
);
INSERT INTO `Demand` VALUES ('IL',2021,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2022,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2023,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2024,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2025,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2026,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2027,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2028,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2029,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2030,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2031,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2032,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2033,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2034,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2035,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2036,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2037,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2038,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2039,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2040,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2041,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2042,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2043,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2044,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2045,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2046,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2047,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2048,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2049,'ELC',141000,'GWh','');
INSERT INTO `Demand` VALUES ('IL',2050,'ELC',141000,'GWh','');


CREATE TABLE "CapacityToActivity" (
	"regions"	text,
	"tech"	text,
	"c2a"	real,
	"c2a_notes"	TEXT,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);
INSERT INTO `CapacityToActivity` VALUES ('IL','BYRON_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','BYRON_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','CLINTON_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','DRESDEN_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','DRESDEN_U3',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','LASALLE_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','LASALLE_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','QUAD_CITIES_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','QUAD_CITIES_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','BRAIDWOOD_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','BRAIDWOOD_U2',8.76,'MW capacity to GWh');

INSERT INTO `CapacityToActivity` VALUES ('IL','NATGAS_PLANT_EXISTING',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','NATGAS_PLANT_NEW',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','COAL_PLANT_EXISTING',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','COAL_PLANT_NEW',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','WIND_FARM',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','SOLAR_FARM',8.76,'MW capacity to GWh');


CREATE TABLE "CapacityFactorTech" (
	"regions"	text,
	"season_name"	text,
	"time_of_day_name"	text,
	"tech"	text,
	"cf_tech"	real CHECK("cf_tech" >= 0 AND "cf_tech" <= 1),
	"cf_tech_notes"	text,
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","season_name","time_of_day_name","tech")
);
-- CAPACITY FACTORS FOR EACH NUCLEAR PLANT
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BYRON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BYRON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BYRON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BYRON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BYRON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BYRON_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BYRON_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BYRON_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BYRON_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BYRON_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BYRON_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BYRON_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','QUAD_CITIES_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','QUAD_CITIES_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','QUAD_CITIES_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','QUAD_CITIES_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','QUAD_CITIES_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','QUAD_CITIES_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','QUAD_CITIES_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','QUAD_CITIES_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','QUAD_CITIES_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','QUAD_CITIES_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','QUAD_CITIES_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','QUAD_CITIES_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','LASALLE_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','LASALLE_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','LASALLE_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','LASALLE_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','LASALLE_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','LASALLE_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','LASALLE_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','LASALLE_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','LASALLE_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','LASALLE_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','LASALLE_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','LASALLE_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BRAIDWOOD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BRAIDWOOD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BRAIDWOOD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BRAIDWOOD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BRAIDWOOD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BRAIDWOOD_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BRAIDWOOD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BRAIDWOOD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BRAIDWOOD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BRAIDWOOD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BRAIDWOOD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BRAIDWOOD_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','DRESDEN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','DRESDEN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','DRESDEN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','DRESDEN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','DRESDEN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','DRESDEN_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','DRESDEN_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','DRESDEN_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','DRESDEN_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','DRESDEN_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','DRESDEN_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','DRESDEN_U3',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','CLINTON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','CLINTON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','CLINTON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','CLINTON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','CLINTON_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','CLINTON_U1',0.925,'');

-- CAPACITY FACTORS FOR NON-NUCLEAR
-- TO DO: Update the capacity factors for these technologies in winter.
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','COAL_PLANT_EXISTING',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','COAL_PLANT_EXISTING',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','COAL_PLANT_EXISTING',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','COAL_PLANT_EXISTING',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','COAL_PLANT_EXISTING',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','COAL_PLANT_EXISTING',0.405,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','COAL_PLANT_NEW',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','COAL_PLANT_NEW',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','COAL_PLANT_NEW',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','COAL_PLANT_NEW',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','COAL_PLANT_NEW',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','COAL_PLANT_NEW',0.405,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','NATGAS_PLANT_EXISTING',0.55,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','NATGAS_PLANT_NEW',0.55,'');


INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','WIND_FARM',0.33,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','SOLAR_FARM',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','SOLAR_FARM',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','SOLAR_FARM',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','SOLAR_FARM',0.0,'');


CREATE TABLE "CapacityFactorProcess" (
	"regions"	text,
	"season_name"	text,
	"time_of_day_name"	text,
	"tech"	text,
	"vintage"	integer,
	"cf_process"	real CHECK("cf_process" >= 0 AND "cf_process" <= 1),
	"cf_process_notes"	text,
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
	PRIMARY KEY("regions","season_name","time_of_day_name","tech","vintage")
);


CREATE TABLE "CapacityCredit" (
	"regions"	text,
	"periods"	integer,
	"tech"	text,
	"vintage" integer,
	"cf_tech"	real CHECK("cf_tech" >= 0 AND "cf_tech" <= 1),
	"cf_tech_notes"	text,
	PRIMARY KEY("regions","periods","tech","vintage")
);
CREATE TABLE "MaxResource" (
	"regions"	text,
	"tech"	text,
	"maxres"	real,
	"maxres_units"	text,
	"maxres_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);

/*
===============================================================================
===============================================================================
COST TABLES
===============================================================================
===============================================================================
*/

CREATE TABLE "CostVariable" (
	"regions"	text NOT NULL,
	"periods"	integer NOT NULL,
	"tech"	text NOT NULL,
	"vintage"	integer NOT NULL,
	"cost_variable"	real,
	"cost_variable_units"	text,
	"cost_variable_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","periods","tech","vintage")
);


-- EXISTING NATURAL GAS
INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1940, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1948, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1951, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1953, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1958, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1959, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1960, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1962, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1965, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1966, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1970, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1974, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1985, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1987, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1988, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1990, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1991, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1993, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1995, 0.000028 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1996, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1997, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1998, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1999, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2000, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2001, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2002, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2003, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2004, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2005, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2012, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2015, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2016, 0.0000018978, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2019, 0.0000018978, 'M$/MWh','not depreciated');


-- EXISTING NUCLEAR
INSERT INTO "CostVariable" VALUES('IL', 2021, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2033, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2034, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2036, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2037, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2038, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2039, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2041, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2042, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2043, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2044, 'BYRON_U1', 1985, 0.000028248, 'M$/MWh', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2033, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2034, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2036, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2037, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2038, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2039, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2041, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2042, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2043, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2044, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2045, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2046, 'BYRON_U2', 1987, 0.000028248, 'M$/MWh', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2033, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2034, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2036, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2037, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2038, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2039, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2041, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2042, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2043, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2044, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2045, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2046, 'BRAIDWOOD_U1', 1987, 0.000028248, 'M$/MWh', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2033, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2034, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2036, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2037, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2038, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2039, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2041, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2042, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2043, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2044, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2045, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2046, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2047, 'BRAIDWOOD_U2', 1988, 0.000028248, 'M$/MWh', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'QUAD_CITIES_U1', 1972, 0.000029802, 'M$/MWh', 'BWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'QUAD_CITIES_U2', 1972, 0.000029802, 'M$/MWh', 'BWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2033, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2034, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2035, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2036, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2037, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2038, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2039, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2040, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2041, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2042, 'LASALLE_U1', 1982, 0.000029802, 'M$/MWh', 'BWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2032, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2033, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2034, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2035, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2036, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2037, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2038, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2039, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2040, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2041, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2042, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2043, 'LASALLE_U2', 1984, 0.000029802, 'M$/MWh', 'BWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'DRESDEN_U2', 1969, 0.000029802, 'M$/MWh', 'BWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2028, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2029, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2031, 'DRESDEN_U3', 1971, 0.000029802, 'M$/MWh', 'BWR');

INSERT INTO "CostVariable" VALUES('IL', 2021, 'CLINTON_U1', 1987, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2022, 'CLINTON_U1', 1987, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2023, 'CLINTON_U1', 1987, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2024, 'CLINTON_U1', 1987, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025, 'CLINTON_U1', 1987, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2026, 'CLINTON_U1', 1987, 0.000029802, 'M$/MWh', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2027, 'CLINTON_U1', 1987, 0.000029802, 'M$/MWh', 'BWR');


-- EXISTING COAL
INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1953, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1953, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1953, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1954, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1954, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1954, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1954, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1955, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1955, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1955, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1955, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1955, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1958, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1962, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1963, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1967, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1968, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1970, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1972, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1973, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1975, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1977, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 1978, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1987, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1989, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1991, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1994, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1997, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1998, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2005, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2009, 0.0000416101, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2012, 0.0000416101, 'M$/MWh','fully depreciated');

-- NEW CAPACITY
INSERT INTO "CostVariable" VALUES ('IL', 2021, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2021, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2022, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2022, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2023, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2023, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2024, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2024, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2025, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2026, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2026, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2027, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2027, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2028, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2028, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2029, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2029, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2030, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2031, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2031, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2032, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2032, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2033, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2033, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2034, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2034, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2035, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2036, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2036, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2037, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2037, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2038, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2038, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2039, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2039, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2040, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2041, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2041, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2042, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2042, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2043, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2043, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2044, 'NATGAS_PLANT_NEW', 2044, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2044, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2044, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2044, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2044, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2044, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2044, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2045, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2045, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2045, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2045, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2045, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2045, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2046, 'NATGAS_PLANT_NEW', 2046, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2046, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2046, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2046, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2046, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2047, 'NATGAS_PLANT_NEW', 2047, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2047, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2047, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2047, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2048, 'NATGAS_PLANT_NEW', 2048, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2048, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2048, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2049, 'NATGAS_PLANT_NEW', 2049, 0.0000018978, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2049, 0.0000018978, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2050, 0.0000018978, 'M$/MWh','new capacity');


INSERT INTO "CostVariable" VALUES ('IL', 2021, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2021, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2022, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2022, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2023, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2023, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2024, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2024, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2025, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2026, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2026, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2027, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2027, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2028, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2028, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2029, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2029, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2030, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2031, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2031, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2032, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2032, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2033, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2033, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2034, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2034, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2035, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2036, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2036, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2037, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2037, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2038, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2038, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2039, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2039, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2040, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2041, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2041, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2042, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2042, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2043, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2043, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2044, 'COAL_PLANT_NEW', 2044, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2044, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2044, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2044, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2044, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2044, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2044, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2045, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2045, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2045, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2045, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2045, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2045, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2046, 'COAL_PLANT_NEW', 2046, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2046, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2046, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2046, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2046, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2047, 'COAL_PLANT_NEW', 2047, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2047, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2047, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2047, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2048, 'COAL_PLANT_NEW', 2048, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2048, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2048, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2049, 'COAL_PLANT_NEW', 2049, 0.0000111434, 'M$/MWh','new capacity');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2049, 0.0000111434, 'M$/MWh','new capacity');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2050, 0.0000111434, 'M$/MWh','new capacity');


-- SOLAR and WIND have NO variable costs

-- TO DO: Add new nuclear variable costs


CREATE TABLE "CostInvest" (
	"regions"	text,
	"tech"	text,
	"vintage"	integer,
	"cost_invest"	real,
	"cost_invest_units"	text,
	"cost_invest_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","tech","vintage")
);
-- EXISTING NUCLEAR, we don't need investment cost for theses...
-- INSERT INTO "CostInvest" VALUES('IL', 'BYRON_U1', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'BYRON_U2', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'BRAIDWOOD_U1', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'BRAIDWOOD_U2', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'QUAD_CITIES_U1', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'QUAD_CITIES_U2', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'LASALLE_U1', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'LASALLE_U2', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'DRESDEN_U2', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'DRESDEN_U3', 1985, , 'M$/MW', '');
-- INSERT INTO "CostInvest" VALUES('IL', 'CLINTON_U1', 1985, , 'M$/MW', '');

INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2021, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2022, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2023, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2024, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2025, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2026, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2027, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2028, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2029, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2030, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2031, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2032, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2033, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2034, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2035, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2036, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2037, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2038, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2039, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2040, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2041, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2042, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2043, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2044, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2045, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2046, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2047, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2048, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2049, 0.972256, 'M$/MW', 'combined cycle no CCS');
INSERT INTO "CostInvest" VALUES('IL', 'NATGAS_PLANT_NEW', 2050, 0.972256, 'M$/MW', 'combined cycle no CCS');

INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2021, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2022, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2023, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2024, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2025, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2026, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2027, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2028, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2029, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2030, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2031, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2032, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2033, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2034, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2035, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2036, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2037, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2038, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2039, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2040, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2041, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2042, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2043, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2044, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2045, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2046, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2047, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2048, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2049, 5.963442, 'M$/MW', 'UCS with 90% CCS');
INSERT INTO "CostInvest" VALUES('IL', 'COAL_PLANT_NEW', 2050, 5.963442, 'M$/MW', 'UCS with 90% CCS');

INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2021, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2022, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2023, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2024, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2025, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2026, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2027, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2028, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2029, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2030, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2031, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2032, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2033, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2034, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2035, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2036, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2037, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2038, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2039, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2040, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2041, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2042, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2043, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2044, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2045, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2046, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2047, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2048, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2049, 1.332539, 'M$/MW', 'single axis tracking');
INSERT INTO "CostInvest" VALUES('IL', 'SOLAR_FARM', 2050, 1.332539, 'M$/MW', 'single axis tracking');

INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2021, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2022, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2023, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2024, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2025, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2026, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2027, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2028, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2029, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2030, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2031, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2032, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2033, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2034, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2035, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2036, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2037, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2038, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2039, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2040, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2041, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2042, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2043, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2044, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2045, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2046, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2047, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2048, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2049, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');
INSERT INTO "CostInvest" VALUES('IL', 'WIND_FARM', 2050, 1.640555, 'M$/MW', 'onshore, 33% capacity factor');

-- TO DO: Add investment cost for new nuclear

CREATE TABLE "CostFixed" (
	"regions"	text NOT NULL,
	"periods"	integer NOT NULL,
	"tech"	text NOT NULL,
	"vintage"	integer NOT NULL,
	"cost_fixed"	real,
	"cost_fixed_units"	text,
	"cost_fixed_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","periods","tech","vintage")
);

-- EXISTING NUCLEAR
INSERT INTO "CostFixed" VALUES('IL', 2021,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2033,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2034,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2036,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2037,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2038,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2039,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2041,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2042,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2043,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2044,'BYRON_U1', 1985, 0.057347, 'M$/MW-year', 'PWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2033,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2034,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2036,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2037,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2038,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2039,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2041,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2042,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2043,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2044,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2046,'BYRON_U2', 1987, 0.057347, 'M$/MW-year', 'PWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2033,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2034,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2036,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2037,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2038,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2039,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2041,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2042,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2043,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2044,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2046,'BRAIDWOOD_U1', 1987, 0.057347, 'M$/MW-year', 'PWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2033,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2034,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2036,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2037,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2038,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2039,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2041,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2042,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2043,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2044,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2046,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2047,'BRAIDWOOD_U2', 1988, 0.057347, 'M$/MW-year', 'PWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'QUAD_CITIES_U1', 1972, 0.057260, 'M$/MW-year', 'BWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'QUAD_CITIES_U2', 1972, 0.057260, 'M$/MW-year', 'BWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2033,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2034,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2036,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2037,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2038,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2039,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2041,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2042,'LASALLE_U1', 1982, 0.057260, 'M$/MW-year', 'BWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2032,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2033,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2034,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2036,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2037,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2038,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2039,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2041,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2042,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2043,'LASALLE_U2', 1984, 0.057260, 'M$/MW-year', 'BWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'DRESDEN_U2', 1969, 0.057260, 'M$/MW-year', 'BWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2028,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2029,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2031,'DRESDEN_U3', 1971, 0.057260, 'M$/MW-year', 'BWR');

INSERT INTO "CostFixed" VALUES('IL', 2021,'CLINTON_U1', 1987, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2022,'CLINTON_U1', 1987, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2023,'CLINTON_U1', 1987, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2024,'CLINTON_U1', 1987, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'CLINTON_U1', 1987, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2026,'CLINTON_U1', 1987, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2027,'CLINTON_U1', 1987, 0.057260, 'M$/MW-year', 'BWR');


-- EXISTING WIND
INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2003, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2004, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2005, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2006, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2007, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2008, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2009, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2010, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2011, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2012, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2013, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2039, 'WIND_FARM', 2014, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2039, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2040, 'WIND_FARM', 2015, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2039, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2040, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2041, 'WIND_FARM', 2016, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2039, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2040, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2041, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2042, 'WIND_FARM', 2017, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2039, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2040, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2041, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2042, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2043, 'WIND_FARM', 2018, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2039, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2040, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2041, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2042, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2043, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2044, 'WIND_FARM', 2019, 0.026730, 'M$/MW-year', 'existing wind tech');

INSERT INTO "CostFixed" VALUES ('IL',2021, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2022, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2023, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2024, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2025, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2026, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2027, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2028, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2029, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2030, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2031, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2032, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2033, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2034, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2035, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2036, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2037, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2038, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2039, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2040, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2041, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2042, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2043, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2044, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');
INSERT INTO "CostFixed" VALUES ('IL',2045, 'WIND_FARM', 2020, 0.026730, 'M$/MW-year', 'existing wind tech');


-- EXISTING GAS
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1996, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1997, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1998, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1999, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2000, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2001, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2002, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2003, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2004, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2005, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2012, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2015, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2016, 0.0123816 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2046, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2047, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2048, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2049, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'NATGAS_PLANT_EXISTING', 2019, 0.0123816 'M$/MW-year','still paying loan');

-- EXISTING SOLAR
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2007, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2008, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2009, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2010, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2011, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2012, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2013, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'SOLAR_FARM', 2014, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2015, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2016, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2017, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2018, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'SOLAR_FARM', 2019, 0.0154769, 'M$/MW-year', '');

INSERT INTO "CostFixed" VALUES ('IL', 2021, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2022, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2023, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2024, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2026, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2027, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2028, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2029, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2031, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2032, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2033, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2034, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2036, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2037, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2038, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2039, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2041, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2042, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2043, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2044, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2020, 0.0154769, 'M$/MW-year', '');



-- NEW TECHNOLOGY
INSERT INTO "CostFixed" VALUES('IL', 2021, 'NATGAS_PLANT_NEW', 2021, 0.0123816, 'M$/MW-year', 'combined cycle no CCS');
INSERT INTO "CostFixed" VALUES('IL', 2021, 'COAL_PLANT_NEW', 2021, 0.060426, 'M$/MW-year', 'UCS with 90% CCS');
INSERT INTO "CostFixed" VALUES('IL', 2021, 'SOLAR_FARM', 2021, 0.0154769, 'M$/MW-year', 'single axis tracking');
INSERT INTO "CostFixed" VALUES('IL', 2021, 'WIND_FARM', 2021, 0.0267320, 'M$/MW-year', 'onshore, 33% capacity factor');



/*
===============================================================================
===============================================================================
OUTPUT TABLES
===============================================================================
===============================================================================
*/
CREATE TABLE "Output_V_Capacity" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"tech"	text,
	"vintage"	integer,
	"capacity"	real,
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	PRIMARY KEY("regions","scenario","tech","vintage")
);
CREATE TABLE "Output_VFlow_Out" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"t_season"	text,
	"t_day"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"vflow_out"	real,
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm")
);
CREATE TABLE "Output_VFlow_In" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"t_season"	text,
	"t_day"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"vflow_in"	real,
	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm")
);
CREATE TABLE "Output_Objective" (
	"scenario"	text,
	"objective_name"	text,
	"total_system_cost"	real
);
CREATE TABLE "Output_Emissions" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"emissions_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"emissions"	real,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("emissions_comm") REFERENCES "EmissionActivity"("emis_comm"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","scenario","t_periods","emissions_comm","tech","vintage")
);
CREATE TABLE "Output_Curtailment" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"t_season"	text,
	"t_day"	text,
	"input_comm"	text,
	"tech"	text,
	"vintage"	integer,
	"output_comm"	text,
	"curtailment"	real,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm")
);
CREATE TABLE "Output_Costs" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"output_name"	text,
	"tech"	text,
	"vintage"	integer,
	"output_cost"	real,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
	PRIMARY KEY("regions","scenario","output_name","tech","vintage")
);
CREATE TABLE "Output_CapacityByPeriodAndTech" (
	"regions"	text,
	"scenario"	text,
	"sector"	text,
	"t_periods"	integer,
	"tech"	text,
	"capacity"	real,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
	PRIMARY KEY("regions","scenario","t_periods","tech")
);



COMMIT;
