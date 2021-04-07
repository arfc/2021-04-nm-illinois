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
-- Periods when nuclear plants were built
INSERT INTO `time_periods` VALUES (1969,'e');
INSERT INTO `time_periods` VALUES (1971,'e');
INSERT INTO `time_periods` VALUES (1972,'e');
INSERT INTO `time_periods` VALUES (1982,'e');
INSERT INTO `time_periods` VALUES (1984,'e');
INSERT INTO `time_periods` VALUES (1985,'e');
INSERT INTO `time_periods` VALUES (1987,'e');
INSERT INTO `time_periods` VALUES (1988,'e');

INSERT INTO `time_periods` VALUES (1990,'e');
INSERT INTO `time_periods` VALUES (2000,'e');
INSERT INTO `time_periods` VALUES (2010,'e');
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
INSERT INTO `technologies` VALUES ('BYN_U1','p','electric','Byron Unit 1','uranium');
INSERT INTO `technologies` VALUES ('BYN_U2','p','electric','Byron Unit 2','uranium');
INSERT INTO `technologies` VALUES ('LAS_U1','p','electric','LaSalle Unit 1','uranium');
INSERT INTO `technologies` VALUES ('LAS_U2','p','electric','LaSalle Unit 2','uranium');
INSERT INTO `technologies` VALUES ('QDC_U1','p','electric','Quad Cities Unit 1','uranium');
INSERT INTO `technologies` VALUES ('QDC_U2','p','electric','Quad Cities Unit 2','uranium');
INSERT INTO `technologies` VALUES ('DRS_U2','p','electric','Dresden Unit 2','uranium');
INSERT INTO `technologies` VALUES ('DRS_U3','p','electric','Dresden Unit 3','uranium');
INSERT INTO `technologies` VALUES ('BWD_U1','p','electric','Braidwood Unit 1','uranium');
INSERT INTO `technologies` VALUES ('BWD_U2','p','electric','Braidwood Unit 2','uranium');
INSERT INTO `technologies` VALUES ('CLN_U1','p','electric','Clinton Unit 1','uranium');
INSERT INTO `technologies` VALUES ('NGP','p','electric','Natural Gas Plants','natural gas');
INSERT INTO `technologies` VALUES ('CPP','p','electric','Coal Power Plants','coal');
INSERT INTO `technologies` VALUES ('WND','p','electric','Wind Farm','wind power');
INSERT INTO `technologies` VALUES ('SOL','p','electric','Solar Farm','solar power');

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
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BYN_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BYN_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BYN_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BYN_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BYN_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BYN_U1',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BYN_U1',0.0,'MWe','cannot be expanded');
-- BYRON UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BYN_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BYN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BYN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BYN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BYN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BYN_U2',0.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BYN_U2',0.0,'MWe','cannot be expanded');
-- BRAIDWOOD UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BWD_U1',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BWD_U1',1215.0,'MWe','cannot be expanded');
-- BRAIDWOOD UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'BWD_U2',1215.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'BWD_U2',1215.0,'MWe','cannot be expanded');
-- LASALLE UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'LAS_U1',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'LAS_U1',1182.0,'MWe','cannot be expanded');
-- LASALLE UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'LAS_U2',1182.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'LAS_U2',1182.0,'MWe','cannot be expanded');
-- QUAD CITIES UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'QDC_U1',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'QDC_U1',985.0,'MWe','cannot be expanded');
-- QUAD CITIES UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'QDC_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'QDC_U2',985.0,'MWe','cannot be expanded');
-- DRESDEN UNIT 2
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'DRS_U2',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'DRS_U2',985.0,'MWe','cannot be expanded');
-- DRESDEN UNIT 3
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'DRS_U3',985.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'DRS_U3',985.0,'MWe','cannot be expanded');
-- CLINTON UNIT 1
INSERT INTO `MaxCapacity` VALUES ('IL',2021,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2022,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2023,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2024,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2025,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2026,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2027,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2028,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2029,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2030,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2031,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2032,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2033,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2034,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2035,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2036,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2037,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2038,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2039,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2040,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2041,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2042,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2043,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2044,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2045,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2046,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2047,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2048,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2049,'CLN_U1',1157.0,'MWe','cannot be expanded');
INSERT INTO `MaxCapacity` VALUES ('IL',2050,'CLN_U1',1157.0,'MWe','cannot be expanded');

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
INSERT INTO `LifetimeTech` VALUES ('IL','BYN_U1',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','BYN_U2',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','QDC_U1',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','QDC_U2',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','LAS_U1',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','LAS_U2',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','BWD_U1',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','BWD_U2',59.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','DRS_U2',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','DRS_U3',60.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','CLN_U1',40.0,'');

INSERT INTO `LifetimeTech` VALUES ('IL','NGP',40.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','CPP',40.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','WND',40.0,'');
INSERT INTO `LifetimeTech` VALUES ('IL','SOL',40.0,'');

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
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BYN_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BYN_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BWD_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','BWD_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','LAS_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','LAS_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','QDC_U1', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','QDC_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','DRS_U2', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','DRS_U3', 40.0, 'initial license is 40 yrs');
INSERT INTO `LifetimeLoanTech` VALUES ('IL','CLN_U1', 40.0, 'initial license is 40 yrs');

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
INSERT INTO `ExistingCapacity` VALUES ('IL','BYN_U1',1985,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','BYN_U2',1987,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','BWD_U1',1987,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','BWD_U2',1988,1215,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','LAS_U1',1982,1182,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','LAS_U2',1984,1182,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','QDC_U1',1972,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','QDC_U2',1972,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','DRS_U2',1969,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','DRS_U3',1971,985,'MW','MW electric');
INSERT INTO `ExistingCapacity` VALUES ('IL','CLN_U1',1987,1157,'MW','MW electric');


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
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BYN_U1', 1985, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BYN_U2', 1987, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BWD_U1', 1987, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'BWD_U2', 1988, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'LAS_U1', 1982, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'LAS_U2', 1984, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'QDC_U1', 1972, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'QDC_U2', 1972, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'DRS_U2', 1969, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'DRS_U3', 1971, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CLN_U1', 1987, 'ELC', 1.00, 'MWe to MWe');

-- 2020s
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2029, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2029, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2029, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2021, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2022, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2023, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2024, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2025, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2026, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2027, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2028, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2029, 'ELC', 1.00, 'MWe to MWe');

-- 2030s
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2039, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2039, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2039, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2031, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2032, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2033, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2034, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2035, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2036, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2037, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2038, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2039, 'ELC', 1.00, 'MWe to MWe');

-- 2040s
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2049, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2049, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2049, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2041, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2042, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2043, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2044, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2045, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2046, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2047, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2048, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2049, 'ELC', 1.00, 'MWe to MWe');

INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'CPP', 2050, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'NGP', 2050, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'WND', 2050, 'ELC', 1.00, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL', 'ethos', 'SOL', 2050, 'ELC', 1.00, 'MWe to MWe');


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

CREATE TABLE "CapacityToActivity" (
	"regions"	text,
	"tech"	text,
	"c2a"	real,
	"c2a_notes"	TEXT,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);
INSERT INTO `CapacityToActivity` VALUES ('IL','BYN_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','BYN_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','CLN_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','DRS_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','DRS_U3',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','LAS_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','LAS_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','QDC_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','QDC_U2',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','BWD_U1',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','BWD_U2',8.76,'MW capacity to GWh');

INSERT INTO `CapacityToActivity` VALUES ('IL','NGP',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','CPP',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','WND',8.76,'MW capacity to GWh');
INSERT INTO `CapacityToActivity` VALUES ('IL','SOL',8.76,'MW capacity to GWh');


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
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BYN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BYN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BYN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BYN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BYN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BYN_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BYN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BYN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BYN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BYN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BYN_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BYN_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','QDC_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','QDC_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','QDC_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','QDC_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','QDC_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','QDC_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','QDC_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','QDC_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','QDC_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','QDC_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','QDC_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','QDC_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','LAS_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','LAS_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','LAS_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','LAS_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','LAS_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','LAS_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','LAS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','LAS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','LAS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','LAS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','LAS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','LAS_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BWD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BWD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BWD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BWD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BWD_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BWD_U1',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','BWD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','BWD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','BWD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','BWD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','BWD_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','BWD_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','DRS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','DRS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','DRS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','DRS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','DRS_U2',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','DRS_U2',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','DRS_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','DRS_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','DRS_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','DRS_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','DRS_U3',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','DRS_U3',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','CLN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','CLN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','CLN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','CLN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','CLN_U1',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','CLN_U1',0.925,'');

-- CAPACITY FACTORS FOR NON-NUCLEAR
-- TO DO: Update the capacity factors for these technologies in winter.
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','CPP',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','CPP',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','CPP',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','CPP',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','CPP',0.405,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','CPP',0.405,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','NGP',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','NGP',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','NGP',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','NGP',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','NGP',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','NGP',0.55,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','WND',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','WND',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','WND',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','WND',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','WND',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','WND',0.33,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','SOL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','SOL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','SOL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','SOL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','SOL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','SOL',0.19,'');


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
#INSERT INTO `MaxResource` VALUES ('utopia','IMPGSL1',60,'','');


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
