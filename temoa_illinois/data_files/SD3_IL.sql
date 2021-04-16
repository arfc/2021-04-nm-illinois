BEGIN TRANSACTION;
CREATE TABLE "time_season" (
	"t_season"	text,
	PRIMARY KEY("t_season")
);
-- INSERT INTO `time_season` VALUES ('inter');
-- INSERT INTO `time_season` VALUES ('summer');
-- INSERT INTO `time_season` VALUES ('winter');

INSERT INTO "time_season" VALUES('S1');
INSERT INTO "time_season" VALUES('S2');
INSERT INTO "time_season" VALUES('S3');
INSERT INTO "time_season" VALUES('S4');

CREATE TABLE "time_periods" (
	"t_periods"	integer,
	"flag"	text,
	FOREIGN KEY("flag") REFERENCES "time_period_labels"("t_period_labels"),
	PRIMARY KEY("t_periods")
);

-- PERIODS WHEN NUCLEAR PLANTS WERE BUILT
INSERT INTO `time_periods` VALUES (1969,'e');
INSERT INTO `time_periods` VALUES (1971,'e');
INSERT INTO `time_periods` VALUES (1972,'e');
INSERT INTO `time_periods` VALUES (1982,'e');
INSERT INTO `time_periods` VALUES (1984,'e');
INSERT INTO `time_periods` VALUES (1985,'e');
INSERT INTO `time_periods` VALUES (1987,'e');
INSERT INTO `time_periods` VALUES (1988,'e');

-- PERIODS WHEN WIND FARMS WERE BUILT
INSERT INTO `time_periods` VALUES (2003,'e');
INSERT INTO `time_periods` VALUES (2004,'e');
INSERT INTO `time_periods` VALUES (2005,'e');
INSERT INTO `time_periods` VALUES (2007,'e');
INSERT INTO `time_periods` VALUES (2008,'e');
INSERT INTO `time_periods` VALUES (2009,'e');
INSERT INTO `time_periods` VALUES (2010,'e');
INSERT INTO `time_periods` VALUES (2011,'e');
INSERT INTO `time_periods` VALUES (2012,'e');
INSERT INTO `time_periods` VALUES (2015,'e');
INSERT INTO `time_periods` VALUES (2016,'e');
INSERT INTO `time_periods` VALUES (2017,'e');
INSERT INTO `time_periods` VALUES (2018,'e');
INSERT INTO `time_periods` VALUES (2019,'e');
INSERT INTO `time_periods` VALUES (2020,'e');

-- PERIODS WHEN UTILITY SOLAR WAS BUILT
INSERT INTO `time_periods` VALUES (2014,'e');

-- PERIODS WHEN BATTERIES WERE BUILT
INSERT INTO `time_periods` VALUES (2013,'e');


-- PERIODS WHEN COAL PLANTS WERE BUILT
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

-- PERIODS WHEN NATURAL GAS PLANTS WERE BUILT
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


-- FUTURE PERIODS
INSERT INTO `time_periods` VALUES (2025,'f');
INSERT INTO `time_periods` VALUES (2030,'f');
INSERT INTO `time_periods` VALUES (2035,'f');
INSERT INTO `time_periods` VALUES (2040,'f');
INSERT INTO `time_periods` VALUES (2045,'f');
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
-- INSERT INTO `time_of_day` VALUES ('day');
-- INSERT INTO `time_of_day` VALUES ('night');

INSERT INTO "time_of_day" VALUES('H1');
INSERT INTO "time_of_day" VALUES('H2');
INSERT INTO "time_of_day" VALUES('H3');
INSERT INTO "time_of_day" VALUES('H4');
INSERT INTO "time_of_day" VALUES('H5');
INSERT INTO "time_of_day" VALUES('H6');
INSERT INTO "time_of_day" VALUES('H7');
INSERT INTO "time_of_day" VALUES('H8');
INSERT INTO "time_of_day" VALUES('H9');
INSERT INTO "time_of_day" VALUES('H10');
INSERT INTO "time_of_day" VALUES('H11');
INSERT INTO "time_of_day" VALUES('H12');
INSERT INTO "time_of_day" VALUES('H13');
INSERT INTO "time_of_day" VALUES('H14');
INSERT INTO "time_of_day" VALUES('H15');
INSERT INTO "time_of_day" VALUES('H16');
INSERT INTO "time_of_day" VALUES('H17');
INSERT INTO "time_of_day" VALUES('H18');
INSERT INTO "time_of_day" VALUES('H19');
INSERT INTO "time_of_day" VALUES('H20');
INSERT INTO "time_of_day" VALUES('H21');
INSERT INTO "time_of_day" VALUES('H22');
INSERT INTO "time_of_day" VALUES('H23');
INSERT INTO "time_of_day" VALUES('H24');

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
INSERT INTO "technologies" VALUES ('NUCLEAR_EXISTING','pb','electric', 'current nuclear technology','uranium');
INSERT INTO "technologies" VALUES ('COAL_PLANT_EXISTING','pb','electric', 'current coal technology','coal');
INSERT INTO "technologies" VALUES ('COAL_PLANT_NEW','pb','electric', 'new coal technology','coal');
INSERT INTO "technologies" VALUES ('NATGAS_PLANT_EXISTING','p','electric', 'current natgas technology','natural gas');
INSERT INTO "technologies" VALUES ('NATGAS_PLANT_NEW','p','electric', 'new natgas technology','natural gas');
INSERT INTO "technologies" VALUES ('SOLAR_FARM','p','electric', 'utility solar','solar energy');
INSERT INTO "technologies" VALUES ('SOLAR_RESIDENTIAL','p','electric', 'residential solar','solar energy');
INSERT INTO "technologies" VALUES ('WIND_FARM','p','electric', 'utility wind','wind energy');
INSERT INTO "technologies" VALUES ('TRANSMISSION','r','transmission', 'connects generation to end-use','NULL');
INSERT INTO "technologies" VALUES ('LI_BATTERY','ps','electric', 'connects generation to end-use','NULL');

CREATE TABLE "tech_reserve" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);
INSERT INTO "tech_reserve" VALUES ('LI_BATTERY', 'battery reserve');

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
INSERT INTO "tech_curtailment" VALUES ('SOLAR_FARM', '');
INSERT INTO "tech_curtailment" VALUES ('SOLAR_RESIDENTIAL', '');
INSERT INTO "tech_curtailment" VALUES ('WIND_FARM', '');

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
INSERT INTO `sector_labels` VALUES ('transmission');
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
INSERT INTO "commodities" VALUES ('ethos','p','# dummy commodity to supply inputs (makes graph easier to read)');
INSERT INTO "commodities" VALUES ('ELC','p','# electricity');
INSERT INTO "commodities" VALUES ('IL_DEMAND','d','# electricity');

-- TO DO: add emissions commodities
INSERT INTO "commodities" VALUES ('CO2eq','e','MT/MWh, lifecycle emissions');
INSERT INTO "commodities" VALUES ('CO2','e','MT/MWh, generation emissions');
INSERT INTO "commodities" VALUES ('SO2','e','MT/MWh, generation emissions');
INSERT INTO "commodities" VALUES ('NOx','e','MT/MWh, generation emissions');
INSERT INTO "commodities" VALUES ('Hg','e','MT/MWh, generation emissions');
INSERT INTO "commodities" VALUES ('e-waste','e','kg/MWh, generation emissions');
INSERT INTO "commodities" VALUES ('spent-fuel','e','kg/MWh, generation emissions');


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
INSERT INTO "StorageDuration" VALUES ('IL', 'LI_BATTERY', 2.0, '2 hour storage');

CREATE TABLE "SegFrac" (
	"season_name"	text,
	"time_of_day_name"	text,
	"segfrac"	real CHECK("segfrac" >= 0 AND "segfrac" <= 1),
	"segfrac_notes"	text,
	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
	PRIMARY KEY("season_name","time_of_day_name")
);
-- INSERT INTO `SegFrac` VALUES ('inter','day',0.1667,'# I-D');
-- INSERT INTO `SegFrac` VALUES ('inter','night',0.0833,'# I-N');
-- INSERT INTO `SegFrac` VALUES ('summer','day',0.1667,'# S-D');
-- INSERT INTO `SegFrac` VALUES ('summer','night',0.0833,'# S-N');
-- INSERT INTO `SegFrac` VALUES ('winter','day',0.3333,'# W-D');
-- INSERT INTO `SegFrac` VALUES ('winter','night',0.1667,'# W-N');

INSERT INTO "SegFrac" VALUES('S1','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S1','H24',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S2','H24',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S3','H24',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('S4','H24',1.04166666666666660884e-02,'from Power Genome: p6');

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

-- INSERT INTO "MinActivity" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 92000.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MinActivity" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 74000.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MinActivity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 55000.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MinActivity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 50000.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MinActivity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 55000.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MinActivity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 66943.044, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MinActivity" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 38726.208, 'MWe', 'cannot build more than existing capacity');

INSERT INTO "MinActivity" VALUES ('IL', 2025, 'SOLAR_FARM', 219.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinActivity" VALUES ('IL', 2030, 'SOLAR_FARM', 200.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinActivity" VALUES ('IL', 2035, 'SOLAR_FARM', 180.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinActivity" VALUES ('IL', 2040, 'SOLAR_FARM', 180.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinActivity" VALUES ('IL', 2045, 'SOLAR_FARM', 180.0, 'MWe', 'cannot build more than existing capacity');


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
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 8032.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 6875.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 4905.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 4905.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2541.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MaxCapacity" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 0.0, 'MWe', 'cannot build more than existing capacity');

-- Existing Coal
-- INSERT INTO `MaxCapacity` VALUES ('IL',2025,'COAL_PLANT_EXISTING',9829.7,'MWe','cannot be expanded');
-- INSERT INTO `MaxCapacity` VALUES ('IL',2030,'COAL_PLANT_EXISTING',9503.3,'MWe','cannot be expanded');
-- INSERT INTO `MaxCapacity` VALUES ('IL',2035,'COAL_PLANT_EXISTING',8450.6,'MWe','cannot be expanded');
-- INSERT INTO `MaxCapacity` VALUES ('IL',2040,'COAL_PLANT_EXISTING',6226.0,'MWe','cannot be expanded');
-- INSERT INTO `MaxCapacity` VALUES ('IL',2045,'COAL_PLANT_EXISTING',3442.1,'MWe','cannot be expanded');
-- INSERT INTO `MaxCapacity` VALUES ('IL',2050,'COAL_PLANT_EXISTING',2544.4,'MWe','cannot be expanded');



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

CREATE TABLE "LifetimeTech" (
	"regions"	text,
	"tech"	text,
	"life"	real,
	"life_notes"	text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);
INSERT INTO "LifetimeTech" VALUES ('IL','NUCLEAR_EXISTING',60.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','NATGAS_PLANT_EXISTING',80.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','NATGAS_PLANT_NEW',40.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','COAL_PLANT_EXISTING',80.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','COAL_PLANT_NEW',40.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','WIND_FARM',25.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','SOLAR_FARM',25.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','SOLAR_RESIDENTIAL',25.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','LI_BATTERY',12.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','TRANSMISSION',1000.0,'');

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
INSERT INTO "LifetimeLoanTech" VALUES ('IL','NUCLEAR_EXISTING',40.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','NATGAS_PLANT_EXISTING',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','NATGAS_PLANT_NEW',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','COAL_PLANT_EXISTING',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','COAL_PLANT_NEW',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','WIND_FARM',10.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','SOLAR_FARM',10.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','SOLAR_RESIDENTIAL',10.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','LI_BATTERY',5.0,'');
-- INSERT INTO "LifetimeLoanTech" VALUES ('IL','TRANSMISSION',1025.0,'');


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
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1969,0.01,'MWe','Dresden Unit 2');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1971,0.01,'MWe','Dresden Unit 3');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1972,1970,'MWe','Quad Cities Unit 1+2');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1982,1182,'MWe','LaSalle Unit 1');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1984,1182,'MWe','LaSalle Unit 2');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1985,0.01,'MWe','Byron Unit 1');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1987,2482,'MWe','Clinton, Byron Unit 2, Braidwood Unit 1');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1988,1215,'MWe','Braidwood Unit 2');


-- EXISTING WIND
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2003, 50.4, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2004, 0.66, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2005, 56.1, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2007, 592.2, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2008, 215.7, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2009, 632.4, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2010, 497.09, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2011, 697.44, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2012, 826.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2015, 274.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2016, 184.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2017, 306.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2018, 529.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2019, 489.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','WIND_FARM', 2020, 1059.0, 'MW', 'MW electric');

-- EXISTING UTILITY SOLAR
INSERT INTO "ExistingCapacity" VALUES ('IL','SOLAR_FARM', 2009, 9.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','SOLAR_FARM', 2012, 22.6, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','SOLAR_FARM', 2015, 5.9, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','SOLAR_FARM', 2016, 1.0, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','SOLAR_FARM', 2017, 2.1, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','SOLAR_FARM', 2019, 3.5, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','SOLAR_FARM', 2020, 71.9, 'MW', 'MW electric');

-- EXISTING BATTERY STORAGE
INSERT INTO "ExistingCapacity" VALUES ('IL','LI_BATTERY', 2015, 71.1, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','LI_BATTERY', 2016, 19.8, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','LI_BATTERY', 2017, 0.3, 'MW', 'MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','LI_BATTERY', 2018, 20.0, 'MW', 'MW electric');

-- EXISTING COAL
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1953, 366.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1954, 366.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1955, 366.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1958, 326.4, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1962, 355.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1963, 697.4, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1967, 659.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1968, 940.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1970, 625.1, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1972, 1256.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1973, 634.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1975, 892.8, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1977, 617.4, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1978, 280.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1987, 124.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1989, 64.8, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1991, 45.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1994, 355.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1997, 355.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 1998, 3.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 2005, 105.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 2009, 230.1, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL','COAL_PLANT_EXISTING', 2012, 1766.0, 'MW','MWe');


-- EXISTING NATURAL GAS
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1948, 9.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1951, 83.9, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1953, 9.4, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1958, 113.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1959, 367.9, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1960, 12.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1962, 7.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1965, 660.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1966, 660.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1970, 72.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1974, 193.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1985, 4.7, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1987, 3.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1988, 36.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1990, 8.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1991, 7.4, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1993, 4.2, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1995, 4.7, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1996, 9.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1997, 138.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1998, 135.9, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 1999, 1374.1, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2000, 2209.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2001, 4564.9, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2002, 5598.7, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2003, 1067.6, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2004, 27.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2005, 542.8, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2012, 7.0, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2015, 627.5, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2016, 54.3, 'MW','MWe');
INSERT INTO "ExistingCapacity" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2019, 1.8, 'MW','MWe');


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

INSERT INTO "EmissionLimit" VALUES ('IL', 2025, 'CO2', 35.00, 'MT', 'zero emissions allowed');
INSERT INTO "EmissionLimit" VALUES ('IL', 2030, 'CO2', 0.00, 'MT', 'zero emissions allowed');
INSERT INTO "EmissionLimit" VALUES ('IL', 2035, 'CO2', 0.00, 'MT', 'zero emissions allowed');
INSERT INTO "EmissionLimit" VALUES ('IL', 2040, 'CO2', 0.00, 'MT', 'zero emissions allowed');
INSERT INTO "EmissionLimit" VALUES ('IL', 2045, 'CO2', 0.00, 'MT', 'zero emissions allowed');
INSERT INTO "EmissionLimit" VALUES ('IL', 2050, 'CO2', 0.00, 'MT', 'zero emissions allowed');

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

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1953,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1954,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1955,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1958,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1962,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1963,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1967,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1968,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1970,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1972,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1973,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1975,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1977,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1978,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1987,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1989,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1991,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1994,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1997,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1998,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2005,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2009,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2012,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',4.9e-4,'MT/MWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2025,'ELC',1.7e-4,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2030,'ELC',1.7e-4,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2035,'ELC',1.7e-4,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2040,'ELC',1.7e-4,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2045,'ELC',1.7e-4,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2050,'ELC',1.7e-4,'MT/MWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2025,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2030,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2035,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2040,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2045,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2050,'ELC',8.2e-4,'MT/MWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2025,'ELC',2.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2030,'ELC',2.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2035,'ELC',2.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2040,'ELC',2.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2045,'ELC',2.2e-4,'MT/MWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2050,'ELC',2.2e-4,'MT/MWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1969,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1971,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1972,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1982,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1984,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1985,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1987,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1988,'ELC',1.2e-5,'MT/MWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2003,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2004,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2005,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2007,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2008,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2009,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2010,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2011,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2012,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2015,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2016,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2017,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2018,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2019,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2020,'ELC',1.1e-5,'MT/MWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2025,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2030,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2035,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2040,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2045,'ELC',1.2e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2050,'ELC',1.2e-5,'MT/MWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2025,'ELC',4.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2030,'ELC',4.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2035,'ELC',4.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2040,'ELC',4.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2045,'ELC',4.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2050,'ELC',4.1e-5,'MT/MWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2025,'ELC',4.8e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2030,'ELC',4.8e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2035,'ELC',4.8e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2040,'ELC',4.8e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2045,'ELC',4.8e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2050,'ELC',4.8e-5,'MT/MWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2025,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2030,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2035,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2040,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2045,'ELC',1.1e-5,'MT/MWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2050,'ELC',1.1e-5,'MT/MWh','NULL');

/*
CO2 - produced from generation
*/
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1953,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1954,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1955,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1958,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1962,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1963,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1967,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1968,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1970,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1972,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1973,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1975,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1977,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1978,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1987,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1989,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1991,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1994,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1997,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1998,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2005,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2009,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2012,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2025,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2030,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2035,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2040,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2045,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2050,'ELC',3.25949832e-4,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2025,'ELC',3.265689e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2030,'ELC',3.265689e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2035,'ELC',3.265689e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2040,'ELC',3.265689e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2045,'ELC',3.265689e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2050,'ELC',3.265689e-5,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',1.8108324e-4,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2025,'ELC',1.810832e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2030,'ELC',1.810832e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2035,'ELC',1.810832e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2040,'ELC',1.810832e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2045,'ELC',1.810832e-5,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2050,'ELC',1.810832e-5,'MT/MWh','source: NREL ATB');

/*
NOx - produced from generation
*/
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1953,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1954,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1955,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1958,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1962,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1963,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1967,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1968,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1970,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1972,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1973,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1975,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1977,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1978,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1987,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1989,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1991,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1994,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1997,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1998,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2005,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2009,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2012,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2025,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2030,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2035,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2040,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2045,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2050,'ELC',1.238176e-7,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2025,'ELC',1.315562e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2030,'ELC',1.315562e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2035,'ELC',1.315562e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2040,'ELC',1.315562e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2045,'ELC',1.315562e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2050,'ELC',1.315562e-7,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2025,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2030,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2035,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2040,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2045,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2050,'ELC',3.09544e-8,'MT/MWh','source: NREL ATB');

/*
SO2 - produced from generation
*/
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1953,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1954,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1955,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1958,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1962,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1963,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1967,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1968,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1970,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1972,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1973,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1975,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1977,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1978,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1987,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1989,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1991,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1994,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1997,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1998,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2005,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2009,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2012,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2025,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2030,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2035,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2040,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2045,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2050,'ELC',1.54772e-7,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2025,'ELC',8.589846e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2030,'ELC',8.589846e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2035,'ELC',8.589846e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2040,'ELC',8.589846e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2045,'ELC',8.589846e-8,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2050,'ELC',8.589846e-8,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2025,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2030,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2035,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2040,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2045,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2050,'ELC',5.1075e-9,'MT/MWh','source: NREL ATB');

/*
NON GHG EMISSIONS
*/
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1969,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1971,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1972,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1982,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1984,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1985,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1987,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',1988,'ELC',0.0037224,'t/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2003, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2004, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2005, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2007, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2008, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2009, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2010, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2011, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2012, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2015, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2016, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2017, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2018, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2019, 'ELC', 0.168297, 't/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM', 2020, 'ELC', 0.168297, 't/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',2025,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',2030,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',2035,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',2040,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',2045,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_EXISTING',2050,'ELC',0.0037224,'t/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_RESIDENTIAL',2025,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_RESIDENTIAL',2030,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_RESIDENTIAL',2035,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_RESIDENTIAL',2040,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_RESIDENTIAL',2045,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_RESIDENTIAL',2050,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_FARM',2025,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_FARM',2030,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_FARM',2035,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_FARM',2040,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_FARM',2045,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','SOLAR_FARM',2050,'ELC',2.455418,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM',2025,'ELC',0.168297,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM',2030,'ELC',0.168297,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM',2035,'ELC',0.168297,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM',2040,'ELC',0.168297,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM',2045,'ELC',0.168297,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ethos','WIND_FARM',2050,'ELC',0.168297,'t/GWh','NULL');


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
-- EXISTING CAPACITY
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1969,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1971,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1972,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1982,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1984,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1985,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1987,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',1988,'ELC',1.0,'MWe to MWe');

INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY', 2015, 'ELC', 0.85, 'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY', 2016, 'ELC', 0.85, 'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY', 2017, 'ELC', 0.85, 'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY', 2018, 'ELC', 0.85, 'round trip efficiency');

INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2003, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2004, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2005, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2007, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2008, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2009, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2010, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2011, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2012, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2015, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2016, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2017, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2018, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2019, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM', 2020, 'ELC', 1.0, 'MWe to MWe');

INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM', 2009, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM', 2012, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM', 2015, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM', 2016, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM', 2017, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM', 2019, 'ELC', 1.0, 'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM', 2020, 'ELC', 1.0, 'MWe to MWe');

INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1953,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1954,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1955,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1958,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1962,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1963,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1967,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1968,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1970,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1972,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1973,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1975,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1977,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1978,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1987,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1989,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1991,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1994,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1997,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',1998,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2005,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2009,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2012,'ELC',1.0,'MWe to MWe');

INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',1.0,'MWe to MWe');



-- NEW BUILDS
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY',2025,'ELC',0.85,'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY',2030,'ELC',0.85,'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY',2035,'ELC',0.85,'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY',2040,'ELC',0.85,'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY',2045,'ELC',0.85,'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ELC','LI_BATTERY',2050,'ELC',0.85,'round trip efficiency');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_EXISTING',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_NEW',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_NEW',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_NEW',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_NEW',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_NEW',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NATGAS_PLANT_NEW',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_EXISTING',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_NEW',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_NEW',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_NEW',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_NEW',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_NEW',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','COAL_PLANT_NEW',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_RESIDENTIAL',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_RESIDENTIAL',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_RESIDENTIAL',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_RESIDENTIAL',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_RESIDENTIAL',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_RESIDENTIAL',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','SOLAR_FARM',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','WIND_FARM',2050,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','TRANSMISSION',2025,'IL_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','TRANSMISSION',2030,'IL_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','TRANSMISSION',2035,'IL_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','TRANSMISSION',2040,'IL_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','TRANSMISSION',2045,'IL_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','TRANSMISSION',2050,'IL_DEMAND',1.0,'MWe to MWe');

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
-- INSERT INTO "DemandSpecificDistribution" VALUES ('IL','inter','day','IL_DEMAND',0.15,'');
-- INSERT INTO "DemandSpecificDistribution" VALUES ('IL','inter','night','IL_DEMAND',0.05,'');
-- INSERT INTO "DemandSpecificDistribution" VALUES ('IL','summer','day','IL_DEMAND',0.15,'');
-- INSERT INTO "DemandSpecificDistribution" VALUES ('IL','summer','night','IL_DEMAND',0.05,'');
-- INSERT INTO "DemandSpecificDistribution" VALUES ('IL','winter','day','IL_DEMAND',0.5,'');
-- INSERT INTO "DemandSpecificDistribution" VALUES ('IL','winter','night','IL_DEMAND',0.1,'');

INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H1','IL_DEMAND',8.4185287899607615103e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H2','IL_DEMAND',0.00802069409308967,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H3','IL_DEMAND',7.73885017715577553515e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H4','IL_DEMAND',7.55779510494581328872e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H5','IL_DEMAND',7.45350981566282946855e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H6','IL_DEMAND',7.49531514299930229361e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H7','IL_DEMAND',7.59762418044456280807e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H8','IL_DEMAND',7.78916858933167543382e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H9','IL_DEMAND',8.19034771238968603568e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H10','IL_DEMAND',8.72165541799322513449e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H11','IL_DEMAND',9.31893953110232708958e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H12','IL_DEMAND',9.8012969988791609488e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H13','IL_DEMAND',1.02071887224732815724e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H14','IL_DEMAND',1.04992179363400644359e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H15','IL_DEMAND',1.06554938508924071371e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H16','IL_DEMAND',1.08122258235611480581e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H17','IL_DEMAND',1.09177272678211926409e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H18','IL_DEMAND',1.09066298536555118803e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H19','IL_DEMAND',1.06738881949204559435e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H20','IL_DEMAND',1.03301723945285802569e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H21','IL_DEMAND',1.01045756462837567346e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H22','IL_DEMAND',9.74793819926060740865e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H23','IL_DEMAND',9.25524341417875533177e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S1','H24','IL_DEMAND',8.64047707327440100977e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H1','IL_DEMAND',8.02115015120606796028e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H2','IL_DEMAND',7.64627037952700372436e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H3','IL_DEMAND',7.40273534537053135018e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H4','IL_DEMAND',7.19264457308323688911e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H5','IL_DEMAND',7.09063957438224243268e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H6','IL_DEMAND',7.11192228648081098407e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H7','IL_DEMAND',7.21757575011298859596e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H8','IL_DEMAND',7.37324358717680091585e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H9','IL_DEMAND',7.80254629407934729296e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H10','IL_DEMAND',8.3846284699751853775e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H11','IL_DEMAND',8.99255393913357160828e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H12','IL_DEMAND',0.00948494468547116,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H13','IL_DEMAND',1.00411835681044510348e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H14','IL_DEMAND',1.04946573551760839737e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H15','IL_DEMAND',1.08468862404073867339e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H16','IL_DEMAND',1.1088140983981871479e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H17','IL_DEMAND',1.12948873300822462406e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H18','IL_DEMAND',1.14082937816931892505e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H19','IL_DEMAND',1.12736046179836794239e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H20','IL_DEMAND',0.010973670396766,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H21','IL_DEMAND',1.07751330967607861222e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H22','IL_DEMAND',1.03543434746976668187e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H23','IL_DEMAND',9.65368618853837748283e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S2','H24','IL_DEMAND',8.87473892573078376733e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H1','IL_DEMAND',1.07327196919357829157e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H2','IL_DEMAND',1.00743237912293646246e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H3','IL_DEMAND',9.62069798478559778942e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H4','IL_DEMAND',9.30236941953987116205e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H5','IL_DEMAND',9.16539996524837197178e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H6','IL_DEMAND',9.22362338477516856272e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H7','IL_DEMAND',9.40437441824086561847e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H8','IL_DEMAND',9.87882687866680278543e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H9','IL_DEMAND',1.0642116146144735278e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H10','IL_DEMAND',1.15268688919566396344e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H11','IL_DEMAND',1.24342725242163054666e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H12','IL_DEMAND',1.31803836026432516503e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H13','IL_DEMAND',1.38457723944677719291e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H14','IL_DEMAND',1.42867805930245294482e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H15','IL_DEMAND',1.45360923633220430473e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H16','IL_DEMAND',1.45820022137060963801e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H17','IL_DEMAND',1.45461256418827969416e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H18','IL_DEMAND',1.43679589377433553076e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H19','IL_DEMAND',1.40595116316862486782e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H20','IL_DEMAND',1.35946363917046671859e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H21','IL_DEMAND',1.31667018591513154679e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H22','IL_DEMAND',1.26962019024008266471e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H23','IL_DEMAND',1.21282575281133220973e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S3','H24','IL_DEMAND',1.1353566807725442786e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H1','IL_DEMAND',1.06168809303707183805e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H2','IL_DEMAND',1.00045468994204873186e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H3','IL_DEMAND',0.00954970493799966,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H4','IL_DEMAND',0.00925144292987544,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H5','IL_DEMAND',9.03876782826189099917e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H6','IL_DEMAND',8.95424505735614890966e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H7','IL_DEMAND',8.94573197251672183605e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H8','IL_DEMAND',9.14138090445141583695e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H9','IL_DEMAND',9.76085984589188104809e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H10','IL_DEMAND',1.05575933752389931885e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H11','IL_DEMAND',1.13479420909565354574e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H12','IL_DEMAND',1.20390221566714691187e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H13','IL_DEMAND',1.26369143472691014551e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H14','IL_DEMAND',1.30806588945242465577e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H15','IL_DEMAND',1.33054955459084058022e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H16','IL_DEMAND',1.34210302687292042794e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H17','IL_DEMAND',1.34318236441506207168e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H18','IL_DEMAND',1.33618947329696112491e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H19','IL_DEMAND',1.30779225458258589742e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H20','IL_DEMAND',1.25987574848638109181e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H21','IL_DEMAND',1.21899773931991705494e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H22','IL_DEMAND',1.18046082848429541994e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H23','IL_DEMAND',1.1286374245242819167e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','S4','H24','IL_DEMAND',1.0592253792085233599e-02,'from Power Genome: p6');


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
INSERT INTO "Demand" VALUES ('IL',2025,'IL_DEMAND',141000,'GWh','based on annual retail sales');
INSERT INTO "Demand" VALUES ('IL',2030,'IL_DEMAND',141000,'GWh','based on annual retail sales');
INSERT INTO "Demand" VALUES ('IL',2035,'IL_DEMAND',141000,'GWh','based on annual retail sales');
INSERT INTO "Demand" VALUES ('IL',2040,'IL_DEMAND',141000,'GWh','based on annual retail sales');
INSERT INTO "Demand" VALUES ('IL',2045,'IL_DEMAND',141000,'GWh','based on annual retail sales');
INSERT INTO "Demand" VALUES ('IL',2050,'IL_DEMAND',141000,'GWh','based on annual retail sales');

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
-- EXISTING NUCLEAR
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1969, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1971, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1972, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1982, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1984, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1985, 0.029802, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1987, 0.028428, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1988, 0.028428, 'M$/MW-year', 'PWR');
--
-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1971, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1972, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1982, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1984, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1985, 0.029802, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1987, 0.028428, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1988, 0.028428, 'M$/MW-year', 'PWR');
--
-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1982, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1984, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1985, 0.029802, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1987, 0.028428, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1988, 0.028428, 'M$/MW-year', 'PWR');
--
-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1982, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1984, 0.029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1985, 0.029802, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1987, 0.028428, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1988, 0.028428, 'M$/MW-year', 'PWR');
--
-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1987, 0.028428, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1988, 0.028428, 'M$/MW-year', 'PWR');


-- NON NUCLEAR
-- EXISTING COAL
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1953, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1954, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1955, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1958, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1953, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1954, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1955, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1958, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1958, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/MWh','fully depreciated');

-- EXISTING NATURAL GAS
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1948, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1951, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1953, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1958, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1959, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1960, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1962, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1965, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1966, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1970, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1974, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1985, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1987, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1988, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1990, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1991, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1993, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1995, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1996, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1997, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1998, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1999, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2000, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2001, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2002, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2003, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2004, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2005, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2012, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2015, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2016, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2019, 0.007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1951, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1953, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1958, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1959, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1960, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1962, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1965, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1966, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1970, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1974, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1985, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1987, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1988, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1990, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1991, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1993, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1995, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1996, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1997, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1998, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1999, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2000, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2001, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2002, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2003, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2004, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2005, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2012, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2015, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2016, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2019, 0.007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1958, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1959, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1960, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1962, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1965, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1966, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1970, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1974, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1985, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1987, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1988, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1990, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1991, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1993, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1995, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1996, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1997, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1998, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1999, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2000, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2001, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2002, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2003, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2004, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2005, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2012, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2015, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2016, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2019, 0.007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1962, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1965, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1966, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1970, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1974, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1985, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1987, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1988, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1990, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1991, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1993, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1995, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1996, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1997, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1998, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1999, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2000, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2001, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2002, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2003, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2004, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2005, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2012, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2015, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2016, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2019, 0.007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1966, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1970, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1974, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1985, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1987, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1988, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1990, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1991, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1993, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1995, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1996, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1997, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1998, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1999, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2000, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2001, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2002, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2003, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2004, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2005, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2012, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2015, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2016, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2019, 0.007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1974, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1985, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1987, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1988, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1990, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1991, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1993, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1995, 0.007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1996, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1997, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1998, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1999, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2000, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2001, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2002, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2003, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2004, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2005, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2012, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2015, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2016, 0.007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2019, 0.007123, 'M$/MWh','not depreciated');


/*
FUTURE CAPACITY
*/

-- INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 2025, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2025, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2025, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2025, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2025, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2025, 0.02988, 'M$/MW-year', 'source: NREL ATB');
--
-- INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2030, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2030, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2030, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2030, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2030, 0.02988, 'M$/MW-year', 'source: NREL ATB');
--
-- INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2035, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2035, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2035, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2035, 0.02988, 'M$/MW-year', 'source: NREL ATB');
--
-- INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2040, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2040, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2040, 0.02988, 'M$/MW-year', 'source: NREL ATB');
--
-- INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2045, 0.02988, 'M$/MW-year', 'source: NREL ATB');
-- INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2045, 0.02988, 'M$/MW-year', 'source: NREL ATB');
--
-- INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2050, 0.02988, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2040, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2040, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2040, 0.021369, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2045, 0.021369, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2045, 0.021369, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2050, 0.021369, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2040, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2040, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2040, 0.0366329, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2045, 0.0366329, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2045, 0.0366329, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2050, 0.0366329, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2025, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2025, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2025, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2025, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2025, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2025, 0.007123, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2030, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2030, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2030, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2030, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2030, 0.007123, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2035, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2035, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2035, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2035, 0.007123, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2040, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2040, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2040, 0.007123, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2045, 0.007123, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2045, 0.007123, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2050, 0.007123, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2025, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2025, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2025, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2025, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2025, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2025, 0.009158, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2030, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2030, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2030, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2030, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2030, 0.009158, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2035, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2035, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2035, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2035, 0.009158, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2040, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2040, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2040, 0.009158, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2045, 0.009158, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2045, 0.009158, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2050, 0.009158, 'M$/MW-year', 'source: NREL ATB');


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

-- TO DO : ADD Investment cost from license renewals for existing nuclear, coal, and natural gas!
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2025, 0.3910000, 'M$/MW', 'existing nuclear, source: IEA 2020');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2030, 0.3910000, 'M$/MW', 'existing nuclear, source: IEA 2020');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2035, 0.3910000, 'M$/MW', 'existing nuclear, source: IEA 2020');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2040, 0.3910000, 'M$/MW', 'existing nuclear, source: IEA 2020');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2045, 0.3910000, 'M$/MW', 'existing nuclear, source: IEA 2020');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2050, 0.3910000, 'M$/MW', 'existing nuclear, source: IEA 2020');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2025, 0.9595800, 'M$/MW', 'current tech, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2030, 0.9595800, 'M$/MW', 'current tech, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2035, 0.9595800, 'M$/MW', 'current tech, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2040, 0.9595800, 'M$/MW', 'current tech, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2045, 0.9595800, 'M$/MW', 'current tech, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_EXISTING', 2050, 0.9595800, 'M$/MW', 'current tech, source: NREL ATB');

-- NEW COAL
INSERT INTO "CostInvest" VALUES ('IL', 'COAL_PLANT_NEW', 2025, 6.0352770, 'M$/MW', 'assume UCS/CCS, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'COAL_PLANT_NEW', 2030, 6.0352770, 'M$/MW', 'assume UCS/CCS, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'COAL_PLANT_NEW', 2035, 6.0352770, 'M$/MW', 'assume UCS/CCS, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'COAL_PLANT_NEW', 2040, 6.0352770, 'M$/MW', 'assume UCS/CCS, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'COAL_PLANT_NEW', 2045, 6.0352770, 'M$/MW', 'assume UCS/CCS, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'COAL_PLANT_NEW', 2050, 6.0352770, 'M$/MW', 'assume UCS/CCS, source: NREL ATB');

-- NEW NATURAL GAS
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_NEW', 2025, 2.7128728, 'M$/MW', 'assume combined cycle with CCs, SOURCE: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_NEW', 2030, 2.7128728, 'M$/MW', 'assume combined cycle with CCs, SOURCE: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_NEW', 2035, 2.7128728, 'M$/MW', 'assume combined cycle with CCs, SOURCE: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_NEW', 2040, 2.7128728, 'M$/MW', 'assume combined cycle with CCs, SOURCE: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_NEW', 2045, 2.7128728, 'M$/MW', 'assume combined cycle with CCs, SOURCE: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NATGAS_PLANT_NEW', 2050, 2.7128728, 'M$/MW', 'assume combined cycle with CCs, SOURCE: NREL ATB');

-- SOLAR FARM
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2025, 1.5935292, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2030, 1.5935292, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2035, 1.5935292, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2040, 1.5935292, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2045, 1.5935292, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2050, 1.5935292, 'M$/MW', 'utility solar');

-- SOLAR RESIDENTIAL
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2025, 3.107694, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2030, 3.107694, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2035, 3.107694, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2040, 3.107694, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2045, 3.107694, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2050, 3.107694, 'M$/MW', 'residential solar');

--WIND
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2025, 1.8784558, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2030, 1.8784558, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2035, 1.8784558, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2040, 1.8784558, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2045, 1.8784558, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2050, 1.8784558, 'M$/MW', 'on shore wind, 33% capacity factor');

-- BATTERY
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2025, 0.859857, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2030, 0.859857, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2035, 0.859857, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2040, 0.859857, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2045, 0.859857, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2050, 0.859857, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');


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

/*
COMMENT ABOUT NUCLEAR FIXED COSTS: Existing nuclear capacity will age out by 2050
if their licenses are not extended.
*/
-- FIXED COST FOR EXISTING NUCLEAR
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1969, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1971, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1972, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1982, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1984, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1985, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1987, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1988, 57.7182, 'M$/GW-year', 'PWR');

INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1971, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1982, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1984, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1985, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1987, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1988, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1972, 57.7182, 'M$/GW-year', 'BWR');

INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1982, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1984, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1985, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1987, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1988, 57.7182, 'M$/GW-year', 'PWR');

INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1982, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1984, 57.7182, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1985, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1987, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1988, 57.7182, 'M$/GW-year', 'PWR');

INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1987, 57.7182, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1988, 57.7182, 'M$/GW-year', 'PWR');


INSERT INTO "CostFixed" VALUES ('IL',2025,'SOLAR_FARM', 2009, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2030,'SOLAR_FARM', 2009, 19.3341, 'M$/GW-year', 'MW electric');

INSERT INTO "CostFixed" VALUES ('IL',2025,'SOLAR_FARM', 2012, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2030,'SOLAR_FARM', 2012, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2035,'SOLAR_FARM', 2012, 19.3341, 'M$/GW-year', 'MW electric');

INSERT INTO "CostFixed" VALUES ('IL',2025,'SOLAR_FARM', 2015, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2030,'SOLAR_FARM', 2015, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2035,'SOLAR_FARM', 2015, 19.3341, 'M$/GW-year', 'MW electric');

INSERT INTO "CostFixed" VALUES ('IL',2025,'SOLAR_FARM', 2016, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2030,'SOLAR_FARM', 2016, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2035,'SOLAR_FARM', 2016, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2040,'SOLAR_FARM', 2016, 19.3341, 'M$/GW-year', 'MW electric');

INSERT INTO "CostFixed" VALUES ('IL',2025,'SOLAR_FARM', 2017, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2030,'SOLAR_FARM', 2017, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2035,'SOLAR_FARM', 2017, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2040,'SOLAR_FARM', 2017, 19.3341, 'M$/GW-year', 'MW electric');

INSERT INTO "CostFixed" VALUES ('IL',2025,'SOLAR_FARM', 2019, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2030,'SOLAR_FARM', 2019, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2035,'SOLAR_FARM', 2019, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2040,'SOLAR_FARM', 2019, 19.3341, 'M$/GW-year', 'MW electric');

INSERT INTO "CostFixed" VALUES ('IL',2025,'SOLAR_FARM', 2020, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2030,'SOLAR_FARM', 2020, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2035,'SOLAR_FARM', 2020, 19.3341, 'M$/GW-year', 'MW electric');
INSERT INTO "CostFixed" VALUES ('IL',2040,'SOLAR_FARM', 2020, 19.3341, 'M$/GW-year', 'MW electric');

-- FIXED COST FOR EXISTING WIND
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2003,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2004,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2005,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2007,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2008,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2009,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2010,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2011,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2012,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2015,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2016,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2017,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2018,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2019,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2020,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2007,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2008,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2009,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2010,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2011,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2012,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2015,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2016,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2017,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2018,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2019,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2020,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2011,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2012,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2015,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2016,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2017,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2018,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2019,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2020,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2016,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2017,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2018,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2019,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2020,43.7560, 'M$/GW-year', 'onshore, 33% capacity factor');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1996, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1997, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1998, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1999, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2000, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2001, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2002, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2003, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2004, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2005, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2012, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2015, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2016, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2019, 11.1934, 'M$/GW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1996, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1997, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1998, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1999, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2000, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2001, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2002, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2003, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2004, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2005, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2012, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2015, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2016, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2019, 11.1934, 'M$/GW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1996, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1997, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1998, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1999, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2000, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2001, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2002, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2003, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2004, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2005, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2012, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2015, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2016, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2019, 11.1934, 'M$/GW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1996, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1997, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1998, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1999, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2000, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2001, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2002, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2003, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2004, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2005, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2012, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2015, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2016, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2019, 11.1934, 'M$/GW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1996, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1997, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1998, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1999, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2000, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2001, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2002, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2003, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2004, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2005, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2012, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2015, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2016, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2019, 11.1934, 'M$/GW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1996, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1997, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1998, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1999, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2000, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2001, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2002, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2003, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2004, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2005, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2012, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2015, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2016, 11.1934, 'M$/GW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2019, 11.1934, 'M$/GW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1953, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1954, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1955, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1958, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1962, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1963, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1967, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1968, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1970, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1972, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1973, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1975, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1977, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1978, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1987, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1989, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1991, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1994, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1997, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1998, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2005, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2009, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2012, 40.7033, 'M$/GWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1953, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1954, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1955, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1958, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1962, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1963, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1967, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1968, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1970, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1972, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1973, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1975, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1977, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1978, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1987, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1989, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1991, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1994, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1997, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1998, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2005, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2009, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2012, 40.7033, 'M$/GWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1958, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1962, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1963, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1967, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1968, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1970, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1972, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1973, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1975, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1977, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1978, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1987, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1989, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1991, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1994, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1997, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1998, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2005, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2009, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2012, 40.7033, 'M$/GWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1962, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1963, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1967, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1968, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1970, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1972, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1973, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1975, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1977, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1978, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1987, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1989, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1991, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1994, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1997, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1998, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2005, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2009, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2012, 40.7033, 'M$/GWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1967, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1968, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1970, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1972, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1973, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1975, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1977, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1978, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1987, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1989, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1991, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1994, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1997, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1998, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2005, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2009, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2012, 40.7033, 'M$/GWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1972, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1973, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1975, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1977, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1978, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1987, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1989, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1991, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1994, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1997, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1998, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2005, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2009, 40.7033, 'M$/GWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2012, 40.7033, 'M$/GWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL',2025,'LI_BATTERY',2015, 13.127, ' M$/GW-year','based on 2-hour storage at 50 MW');
INSERT INTO "CostFixed" VALUES ('IL',2025,'LI_BATTERY',2016, 13.127, ' M$/GW-year','based on 2-hour storage at 50 MW');
INSERT INTO "CostFixed" VALUES ('IL',2025,'LI_BATTERY',2017, 13.127, ' M$/GW-year','based on 2-hour storage at 50 MW');
INSERT INTO "CostFixed" VALUES ('IL',2025,'LI_BATTERY',2018, 13.127, ' M$/GW-year','based on 2-hour storage at 50 MW');
/*
FUTURE CAPACITY
*/
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 2025, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2025, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2025, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2025, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2025, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2025, 57.7182, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2030, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2030, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2030, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2030, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2030, 57.7182, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2035, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2035, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2035, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2035, 57.7182, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2040, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2040, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2040, 57.7182, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2045, 57.7182, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2045, 57.7182, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2050, 57.7182, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2025, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2025, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2025, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2025, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2025, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2025, 40.7033, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2030, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2030, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2030, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2030, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2030, 40.7033, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2035, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2035, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2035, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2035, 40.7033, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2040, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2040, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2040, 40.7033, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2045, 40.7033, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2045, 40.7033, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2050, 40.7033, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2025, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2025, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2025, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2025, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2025, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2025, 59.0197, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2030, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2030, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2030, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2030, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2030, 59.0197, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2035, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2035, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2035, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2035, 59.0197, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2040, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2040, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2040, 59.0197, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2045, 59.0197, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2045, 59.0197, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2050, 59.0197, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2025, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2025, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2025, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2025, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2025, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2025, 11.1934, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2030, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2030, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2030, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2030, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2030, 11.1934, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2035, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2035, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2035, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2035, 11.1934, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2040, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2040, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2040, 11.1934, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2045, 11.1934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2045, 11.1934, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2050, 11.1934, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2025, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2025, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2025, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2025, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2025, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2025, 27.4747, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2030, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2030, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2030, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2030, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2030, 27.4747, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2035, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2035, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2035, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2035, 27.4747, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2040, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2040, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2040, 27.4747, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2045, 27.4747, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2045, 27.4747, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2050, 27.4747, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2025, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2025, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2025, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2025, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2025, 19.3340, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2030, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2030, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2030, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2030, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2030, 19.3340, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2035, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2035, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2035, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2035, 19.3340, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2040, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2040, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2040, 19.3340, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2045, 19.3340, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2045, 19.3340, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2050, 19.3340, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_RESIDENTIAL', 2025, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_RESIDENTIAL', 2025, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2025, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2025, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2025, 22.3868, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_RESIDENTIAL', 2030, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2030, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2030, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2030, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2030, 22.3868, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2035, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2035, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2035, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2035, 22.3868, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2040, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2040, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2040, 22.3868, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2045, 22.3868, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2045, 22.3868, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2050, 22.3868, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2025, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2025, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2025, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2025, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2025, 43.75601, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2030, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2030, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2030, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2030, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2030, 43.75601, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2035, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2035, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2035, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2035, 43.75601, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2040, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2040, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2040, 43.75601, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2045, 43.75601, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2045, 43.75601, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2050, 43.75601, 'M$/GW-year', 'source: NREL ATB');


-- BATTERY STORAGE
INSERT INTO "CostFixed" VALUES ('IL',2025,'LI_BATTERY',2025,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2030,'LI_BATTERY',2025,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2035,'LI_BATTERY',2025,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2030,'LI_BATTERY',2030,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2035,'LI_BATTERY',2030,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2040,'LI_BATTERY',2030,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2035,'LI_BATTERY',2035,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2040,'LI_BATTERY',2035,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2045,'LI_BATTERY',2035,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2040,'LI_BATTERY',2040,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2045,'LI_BATTERY',2040,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2050,'LI_BATTERY',2040,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2045,'LI_BATTERY',2045,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2050,'LI_BATTERY',2045,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2050,'LI_BATTERY',2050,13.127,'based on 2-hour storage at 50 MW', 'source: NREL & SL');


CREATE TABLE "CapacityToActivity" (
	"regions"	text,
	"tech"	text,
	"c2a"	real,
	"c2a_notes"	TEXT,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);
INSERT INTO "CapacityToActivity" VALUES ('IL','NUCLEAR_EXISTING',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','COAL_PLANT_EXISTING',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','COAL_PLANT_NEW',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','NATGAS_PLANT_EXISTING',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','NATGAS_PLANT_NEW',8.76, '');;
INSERT INTO "CapacityToActivity" VALUES ('IL','SOLAR_FARM',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','SOLAR_RESIDENTIAL',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','WIND_FARM',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','TRANSMISSION', 1.00, '');


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
-- TO DO: Update the capacity factors for these technologies in winter.
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','NUCLEAR_EXISTING',0.925,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','NUCLEAR_EXISTING',0.925,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','NUCLEAR_EXISTING',0.925,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','NUCLEAR_EXISTING',0.925,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','NUCLEAR_EXISTING',0.925,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','NUCLEAR_EXISTING',0.925,'');
--
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','COAL_PLANT_EXISTING',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','COAL_PLANT_EXISTING',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','COAL_PLANT_EXISTING',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','COAL_PLANT_EXISTING',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','COAL_PLANT_EXISTING',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','COAL_PLANT_EXISTING',0.54,'');
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','COAL_PLANT_NEW',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','COAL_PLANT_NEW',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','COAL_PLANT_NEW',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','COAL_PLANT_NEW',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','COAL_PLANT_NEW',0.54,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','COAL_PLANT_NEW',0.54,'');
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','NATGAS_PLANT_EXISTING',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','NATGAS_PLANT_EXISTING',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','NATGAS_PLANT_EXISTING',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','NATGAS_PLANT_EXISTING',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','NATGAS_PLANT_EXISTING',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','NATGAS_PLANT_EXISTING',0.55,'');
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','NATGAS_PLANT_NEW',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','NATGAS_PLANT_NEW',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','NATGAS_PLANT_NEW',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','NATGAS_PLANT_NEW',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','NATGAS_PLANT_NEW',0.55,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','NATGAS_PLANT_NEW',0.55,'');
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','WIND_FARM',0.33,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','WIND_FARM',0.33,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','WIND_FARM',0.33,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','WIND_FARM',0.33,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','WIND_FARM',0.33,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','WIND_FARM',0.33,'');
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','SOLAR_FARM',0.25,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','SOLAR_FARM',0.0,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','SOLAR_FARM',0.25,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','SOLAR_FARM',0.0,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','SOLAR_FARM',0.25,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','SOLAR_FARM',0.0,'');
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','SOLAR_RESIDENTIAL',0.15,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','SOLAR_RESIDENTIAL',0.0,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','SOLAR_RESIDENTIAL',0.15,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','SOLAR_RESIDENTIAL',0.0,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','SOLAR_RESIDENTIAL',0.15,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','SOLAR_RESIDENTIAL',0.0,'');
--
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','LI_BATTERY',0.083,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','LI_BATTERY',0.083,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','LI_BATTERY',0.083,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','LI_BATTERY',0.083,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','LI_BATTERY',0.083,'');
-- INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','LI_BATTERY',0.083,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','NUCLEAR_EXISTING',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','COAL_PLANT_EXISTING',0.54,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','COAL_PLANT_NEW',0.54,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','NATGAS_PLANT_EXISTING',0.55,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','NATGAS_PLANT_NEW',0.55,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','WIND_FARM',0.33,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','WIND_FARM',0.33,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','SOLAR_FARM',0.25,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','SOLAR_FARM',0.0,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','SOLAR_RESIDENTIAL',0.15,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','SOLAR_RESIDENTIAL',0.0,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H1','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H2','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H3','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H4','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H5','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H6','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H7','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H8','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H9','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H10','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H11','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H12','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H13','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H14','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H15','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H16','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H17','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H18','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H19','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H20','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H21','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H22','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H23','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S1','H24','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H1','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H2','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H3','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H4','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H5','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H6','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H7','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H8','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H9','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H10','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H11','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H12','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H13','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H14','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H15','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H16','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H17','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H18','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H19','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H20','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H21','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H22','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H23','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S2','H24','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H1','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H2','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H3','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H4','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H5','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H6','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H7','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H8','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H9','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H10','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H11','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H12','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H13','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H14','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H15','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H16','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H17','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H18','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H19','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H20','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H21','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H22','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H23','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S3','H24','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H1','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H2','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H3','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H4','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H5','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H6','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H7','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H8','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H9','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H10','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H11','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H12','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H13','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H14','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H15','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H16','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H17','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H18','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H19','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H20','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H21','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H22','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H23','LI_BATTERY',0.083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','S4','H24','LI_BATTERY',0.083,'');


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
================================================================================
================================================================================
OUTPUT TABLES
================================================================================
================================================================================
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
