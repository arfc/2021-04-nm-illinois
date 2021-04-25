BEGIN TRANSACTION;
CREATE TABLE "time_season" (
	"t_season"	text,
	PRIMARY KEY("t_season")
);
-- INSERT INTO `time_season` VALUES ('inter');
-- INSERT INTO `time_season` VALUES ('summer');
-- INSERT INTO `time_season` VALUES ('winter');

INSERT INTO "time_season" VALUES('spring');
INSERT INTO "time_season" VALUES('fall');
INSERT INTO "time_season" VALUES('summer');
INSERT INTO "time_season" VALUES('winter');

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
INSERT INTO "technologies" VALUES ('NUCLEAR_NEW','pb','electric', 'advanced nuclear technology','uranium');
INSERT INTO "technologies" VALUES ('COAL_PLANT_EXISTING','pb','electric', 'current coal technology','coal');
INSERT INTO "technologies" VALUES ('COAL_PLANT_NEW','pb','electric', 'new coal technology','coal');
INSERT INTO "technologies" VALUES ('NATGAS_PLANT_EXISTING','p','electric', 'current natgas technology','natural gas');
INSERT INTO "technologies" VALUES ('NATGAS_PLANT_NEW','p','electric', 'new natgas technology','natural gas');
INSERT INTO "technologies" VALUES ('SOLAR_FARM','p','electric', 'utility solar','solar energy');
INSERT INTO "technologies" VALUES ('SOLAR_RESIDENTIAL','p','electric', 'residential solar','solar energy');
INSERT INTO "technologies" VALUES ('WIND_FARM','p','electric', 'utility wind','wind energy');
INSERT INTO "technologies" VALUES ('TRANSMISSION','r','transmission', 'connects generation to end-use','NULL');
INSERT INTO "technologies" VALUES ('INTERCONNECT','r','transmission', 'connects generation to other states','NULL');
INSERT INTO "technologies" VALUES ('LI_BATTERY','ps','electric', 'connects generation to end-use','NULL');

CREATE TABLE "tech_reserve" (
	"tech"	text,
	"notes"	text,
	PRIMARY KEY("tech")
);
INSERT INTO "tech_reserve" VALUES ('LI_BATTERY', 'battery reserve');
-- INSERT INTO "tech_reserve" VALUES ('NUCLEAR_EXISTING', 'nuclear reserve');

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
INSERT INTO "commodities" VALUES ('EX_DEMAND','d','# electricity');

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
INSERT INTO "StorageDuration" VALUES ('IL', 'LI_BATTERY', 4.87, '4.87 hour storage');

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

INSERT INTO "SegFrac" VALUES('spring','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('spring','H24',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('fall','H24',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('summer','H24',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H1',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H2',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H3',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H4',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H5',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H6',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H7',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H8',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H9',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H10',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H11',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H12',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H13',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H14',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H15',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H16',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H17',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H18',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H19',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H20',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H21',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H22',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H23',1.04166666666666660884e-02,'from Power Genome: p6');
INSERT INTO "SegFrac" VALUES('winter','H24',1.04166666666666660884e-02,'from Power Genome: p6');

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

INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H1','IL_DEMAND',8.4185287899607615103e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H2','IL_DEMAND',0.00802069409308967,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H3','IL_DEMAND',7.73885017715577553515e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H4','IL_DEMAND',7.55779510494581328872e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H5','IL_DEMAND',7.45350981566282946855e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H6','IL_DEMAND',7.49531514299930229361e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H7','IL_DEMAND',7.59762418044456280807e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H8','IL_DEMAND',7.78916858933167543382e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H9','IL_DEMAND',8.19034771238968603568e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H10','IL_DEMAND',8.72165541799322513449e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H11','IL_DEMAND',9.31893953110232708958e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H12','IL_DEMAND',9.8012969988791609488e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H13','IL_DEMAND',1.02071887224732815724e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H14','IL_DEMAND',1.04992179363400644359e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H15','IL_DEMAND',1.06554938508924071371e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H16','IL_DEMAND',1.08122258235611480581e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H17','IL_DEMAND',1.09177272678211926409e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H18','IL_DEMAND',1.09066298536555118803e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H19','IL_DEMAND',1.06738881949204559435e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H20','IL_DEMAND',1.03301723945285802569e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H21','IL_DEMAND',1.01045756462837567346e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H22','IL_DEMAND',9.74793819926060740865e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H23','IL_DEMAND',9.25524341417875533177e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H24','IL_DEMAND',8.64047707327440100977e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H1','IL_DEMAND',8.02115015120606796028e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H2','IL_DEMAND',7.64627037952700372436e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H3','IL_DEMAND',7.40273534537053135018e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H4','IL_DEMAND',7.19264457308323688911e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H5','IL_DEMAND',7.09063957438224243268e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H6','IL_DEMAND',7.11192228648081098407e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H7','IL_DEMAND',7.21757575011298859596e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H8','IL_DEMAND',7.37324358717680091585e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H9','IL_DEMAND',7.80254629407934729296e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H10','IL_DEMAND',8.3846284699751853775e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H11','IL_DEMAND',8.99255393913357160828e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H12','IL_DEMAND',0.00948494468547116,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H13','IL_DEMAND',1.00411835681044510348e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H14','IL_DEMAND',1.04946573551760839737e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H15','IL_DEMAND',1.08468862404073867339e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H16','IL_DEMAND',1.1088140983981871479e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H17','IL_DEMAND',1.12948873300822462406e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H18','IL_DEMAND',1.14082937816931892505e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H19','IL_DEMAND',1.12736046179836794239e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H20','IL_DEMAND',0.010973670396766,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H21','IL_DEMAND',1.07751330967607861222e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H22','IL_DEMAND',1.03543434746976668187e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H23','IL_DEMAND',9.65368618853837748283e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H24','IL_DEMAND',8.87473892573078376733e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H1','IL_DEMAND',1.07327196919357829157e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H2','IL_DEMAND',1.00743237912293646246e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H3','IL_DEMAND',9.62069798478559778942e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H4','IL_DEMAND',9.30236941953987116205e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H5','IL_DEMAND',9.16539996524837197178e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H6','IL_DEMAND',9.22362338477516856272e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H7','IL_DEMAND',9.40437441824086561847e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H8','IL_DEMAND',9.87882687866680278543e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H9','IL_DEMAND',1.0642116146144735278e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H10','IL_DEMAND',1.15268688919566396344e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H11','IL_DEMAND',1.24342725242163054666e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H12','IL_DEMAND',1.31803836026432516503e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H13','IL_DEMAND',1.38457723944677719291e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H14','IL_DEMAND',1.42867805930245294482e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H15','IL_DEMAND',1.45360923633220430473e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H16','IL_DEMAND',1.45820022137060963801e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H17','IL_DEMAND',1.45461256418827969416e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H18','IL_DEMAND',1.43679589377433553076e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H19','IL_DEMAND',1.40595116316862486782e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H20','IL_DEMAND',1.35946363917046671859e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H21','IL_DEMAND',1.31667018591513154679e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H22','IL_DEMAND',1.26962019024008266471e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H23','IL_DEMAND',1.21282575281133220973e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H24','IL_DEMAND',1.1353566807725442786e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H1','IL_DEMAND',1.06168809303707183805e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H2','IL_DEMAND',1.00045468994204873186e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H3','IL_DEMAND',0.00954970493799966,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H4','IL_DEMAND',0.00925144292987544,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H5','IL_DEMAND',9.03876782826189099917e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H6','IL_DEMAND',8.95424505735614890966e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H7','IL_DEMAND',8.94573197251672183605e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H8','IL_DEMAND',9.14138090445141583695e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H9','IL_DEMAND',9.76085984589188104809e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H10','IL_DEMAND',1.05575933752389931885e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H11','IL_DEMAND',1.13479420909565354574e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H12','IL_DEMAND',1.20390221566714691187e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H13','IL_DEMAND',1.26369143472691014551e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H14','IL_DEMAND',1.30806588945242465577e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H15','IL_DEMAND',1.33054955459084058022e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H16','IL_DEMAND',1.34210302687292042794e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H17','IL_DEMAND',1.34318236441506207168e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H18','IL_DEMAND',1.33618947329696112491e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H19','IL_DEMAND',1.30779225458258589742e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H20','IL_DEMAND',1.25987574848638109181e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H21','IL_DEMAND',1.21899773931991705494e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H22','IL_DEMAND',1.18046082848429541994e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H23','IL_DEMAND',1.1286374245242819167e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H24','IL_DEMAND',1.0592253792085233599e-02,'from Power Genome: p6');

INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H1','EX_DEMAND',8.4185287899607615103e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H2','EX_DEMAND',0.00802069409308967,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H3','EX_DEMAND',7.73885017715577553515e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H4','EX_DEMAND',7.55779510494581328872e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H5','EX_DEMAND',7.45350981566282946855e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H6','EX_DEMAND',7.49531514299930229361e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H7','EX_DEMAND',7.59762418044456280807e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H8','EX_DEMAND',7.78916858933167543382e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H9','EX_DEMAND',8.19034771238968603568e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H10','EX_DEMAND',8.72165541799322513449e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H11','EX_DEMAND',9.31893953110232708958e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H12','EX_DEMAND',9.8012969988791609488e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H13','EX_DEMAND',1.02071887224732815724e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H14','EX_DEMAND',1.04992179363400644359e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H15','EX_DEMAND',1.06554938508924071371e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H16','EX_DEMAND',1.08122258235611480581e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H17','EX_DEMAND',1.09177272678211926409e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H18','EX_DEMAND',1.09066298536555118803e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H19','EX_DEMAND',1.06738881949204559435e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H20','EX_DEMAND',1.03301723945285802569e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H21','EX_DEMAND',1.01045756462837567346e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H22','EX_DEMAND',9.74793819926060740865e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H23','EX_DEMAND',9.25524341417875533177e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','spring','H24','EX_DEMAND',8.64047707327440100977e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H1','EX_DEMAND',8.02115015120606796028e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H2','EX_DEMAND',7.64627037952700372436e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H3','EX_DEMAND',7.40273534537053135018e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H4','EX_DEMAND',7.19264457308323688911e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H5','EX_DEMAND',7.09063957438224243268e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H6','EX_DEMAND',7.11192228648081098407e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H7','EX_DEMAND',7.21757575011298859596e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H8','EX_DEMAND',7.37324358717680091585e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H9','EX_DEMAND',7.80254629407934729296e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H10','EX_DEMAND',8.3846284699751853775e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H11','EX_DEMAND',8.99255393913357160828e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H12','EX_DEMAND',0.00948494468547116,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H13','EX_DEMAND',1.00411835681044510348e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H14','EX_DEMAND',1.04946573551760839737e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H15','EX_DEMAND',1.08468862404073867339e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H16','EX_DEMAND',1.1088140983981871479e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H17','EX_DEMAND',1.12948873300822462406e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H18','EX_DEMAND',1.14082937816931892505e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H19','EX_DEMAND',1.12736046179836794239e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H20','EX_DEMAND',0.010973670396766,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H21','EX_DEMAND',1.07751330967607861222e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H22','EX_DEMAND',1.03543434746976668187e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H23','EX_DEMAND',9.65368618853837748283e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','fall','H24','EX_DEMAND',8.87473892573078376733e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H1','EX_DEMAND',1.07327196919357829157e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H2','EX_DEMAND',1.00743237912293646246e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H3','EX_DEMAND',9.62069798478559778942e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H4','EX_DEMAND',9.30236941953987116205e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H5','EX_DEMAND',9.16539996524837197178e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H6','EX_DEMAND',9.22362338477516856272e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H7','EX_DEMAND',9.40437441824086561847e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H8','EX_DEMAND',9.87882687866680278543e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H9','EX_DEMAND',1.0642116146144735278e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H10','EX_DEMAND',1.15268688919566396344e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H11','EX_DEMAND',1.24342725242163054666e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H12','EX_DEMAND',1.31803836026432516503e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H13','EX_DEMAND',1.38457723944677719291e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H14','EX_DEMAND',1.42867805930245294482e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H15','EX_DEMAND',1.45360923633220430473e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H16','EX_DEMAND',1.45820022137060963801e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H17','EX_DEMAND',1.45461256418827969416e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H18','EX_DEMAND',1.43679589377433553076e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H19','EX_DEMAND',1.40595116316862486782e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H20','EX_DEMAND',1.35946363917046671859e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H21','EX_DEMAND',1.31667018591513154679e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H22','EX_DEMAND',1.26962019024008266471e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H23','EX_DEMAND',1.21282575281133220973e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','summer','H24','EX_DEMAND',1.1353566807725442786e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H1','EX_DEMAND',1.06168809303707183805e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H2','EX_DEMAND',1.00045468994204873186e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H3','EX_DEMAND',0.00954970493799966,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H4','EX_DEMAND',0.00925144292987544,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H5','EX_DEMAND',9.03876782826189099917e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H6','EX_DEMAND',8.95424505735614890966e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H7','EX_DEMAND',8.94573197251672183605e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H8','EX_DEMAND',9.14138090445141583695e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H9','EX_DEMAND',9.76085984589188104809e-03,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H10','EX_DEMAND',1.05575933752389931885e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H11','EX_DEMAND',1.13479420909565354574e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H12','EX_DEMAND',1.20390221566714691187e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H13','EX_DEMAND',1.26369143472691014551e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H14','EX_DEMAND',1.30806588945242465577e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H15','EX_DEMAND',1.33054955459084058022e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H16','EX_DEMAND',1.34210302687292042794e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H17','EX_DEMAND',1.34318236441506207168e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H18','EX_DEMAND',1.33618947329696112491e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H19','EX_DEMAND',1.30779225458258589742e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H20','EX_DEMAND',1.25987574848638109181e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H21','EX_DEMAND',1.21899773931991705494e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H22','EX_DEMAND',1.18046082848429541994e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H23','EX_DEMAND',1.1286374245242819167e-02,'from Power Genome: p6');
INSERT INTO "DemandSpecificDistribution" VALUES('IL','winter','H24','EX_DEMAND',1.0592253792085233599e-02,'from Power Genome: p6');


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

INSERT INTO "Demand" VALUES ('IL',2025,'EX_DEMAND',46000,'GWh','based on annual exported electricity');
INSERT INTO "Demand" VALUES ('IL',2030,'EX_DEMAND',46000,'GWh','based on annual exported electricity');
INSERT INTO "Demand" VALUES ('IL',2035,'EX_DEMAND',46000,'GWh','based on annual exported electricity');
INSERT INTO "Demand" VALUES ('IL',2040,'EX_DEMAND',46000,'GWh','based on annual exported electricity');
INSERT INTO "Demand" VALUES ('IL',2045,'EX_DEMAND',46000,'GWh','based on annual exported electricity');
INSERT INTO "Demand" VALUES ('IL',2050,'EX_DEMAND',46000,'GWh','based on annual exported electricity');


CREATE TABLE "PlanningReserveMargin" (
	`regions`	text,
	`reserve_margin`	REAL,
	PRIMARY KEY(regions),
	FOREIGN KEY(`regions`) REFERENCES regions
);
INSERT INTO "PlanningReserveMargin" VALUES ('IL', 0.15);

CREATE TABLE RampDown(
	"regions" text,
	"tech" text,
	"ramp_down" real,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY ("regions", "tech")
);
INSERT INTO "RampDown" VALUES ('IL', 'NUCLEAR_EXISTING', 0.1);
INSERT INTO "RampDown" VALUES ('IL', 'NUCLEAR_NEW', 0.25);

CREATE TABLE RampUp(
	"regions" text,
	"tech" text,
	"ramp_up" real,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY ("regions", "tech")
);
INSERT INTO "RampUp" VALUES ('IL', 'NUCLEAR_EXISTING', 0.1);
INSERT INTO "RampUp" VALUES ('IL', 'NUCLEAR_NEW', 0.25);

CREATE TABLE tech_ramping (
	"tech" text,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("tech")
);
INSERT INTO "tech_ramping" VALUES ('NUCLEAR_EXISTING');
INSERT INTO "tech_ramping" VALUES ('NUCLEAR_NEW');

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
-- ALL EXISTING NUCLEAR MUST STAY OPEN
INSERT INTO "MinCapacity" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinCapacity" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinCapacity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinCapacity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinCapacity" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MinCapacity" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');

INSERT INTO "MinCapacity" VALUES ('IL', 2030, 'NUCLEAR_NEW', 4334.7704, 'MWe', 'cannot build more than existing capacity');

INSERT INTO "MinCapacity" VALUES ('IL', 2030, 'LI_BATTERY', 45794.2296, 'MWe', 'required capacity for high renewable penetration');
INSERT INTO "MinCapacity" VALUES ('IL', 2035, 'LI_BATTERY', 45794.2296, 'MWe', 'required capacity for high renewable penetration');
INSERT INTO "MinCapacity" VALUES ('IL', 2040, 'LI_BATTERY', 45794.2296, 'MWe', 'required capacity for high renewable penetration');
INSERT INTO "MinCapacity" VALUES ('IL', 2045, 'LI_BATTERY', 45794.2296, 'MWe', 'required capacity for high renewable penetration');
INSERT INTO "MinCapacity" VALUES ('IL', 2050, 'LI_BATTERY', 45794.2296, 'MWe', 'required capacity for high renewable penetration');

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

-- All Plants Could Be Kept Open
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');

-- Shutdown at the end of their current licenses.
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 11446.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 8491.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 8491.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 4912.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 0.0, 'MWe', 'cannot build more than existing capacity');

-- Shutdown prematurely
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 8032.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 6875.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 4905.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 4905.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2541.0, 'MWe', 'cannot build more than existing capacity');
-- INSERT INTO "MaxCapacity" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 0.0, 'MWe', 'cannot build more than existing capacity');


INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'SOLAR_RESIDENTIAL', 6900.0, 'MWe', 'restricted to theoretical max from NREL');
INSERT INTO "MaxCapacity" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 12500.0, 'MWe', 'restricted to theoretical max from NREL');
INSERT INTO "MaxCapacity" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 22500.0, 'MWe', 'restricted to theoretical max from NREL');
INSERT INTO "MaxCapacity" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 30000.0, 'MWe', 'restricted to theoretical max from NREL');
INSERT INTO "MaxCapacity" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 34000.0, 'MWe', 'restricted to theoretical max from NREL');

INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'WIND_FARM', 13825.9, 'MWe', 'Aggressive build indicated by Clean Energy Jobs Act');
INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'SOLAR_FARM', 10000.0, 'MWe', 'Aggressive build indicated by Clean Energy Jobs Act');



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
INSERT INTO "LifetimeTech" VALUES ('IL','NUCLEAR_NEW',60.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','NATGAS_PLANT_EXISTING',80.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','NATGAS_PLANT_NEW',40.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','COAL_PLANT_EXISTING',80.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','COAL_PLANT_NEW',40.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','WIND_FARM',25.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','SOLAR_FARM',25.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','SOLAR_RESIDENTIAL',25.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','LI_BATTERY',12.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','TRANSMISSION',1000.0,'');
INSERT INTO "LifetimeTech" VALUES ('IL','INTERCONNECT',1000.0,'');

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
INSERT INTO "LifetimeLoanTech" VALUES ('IL','NUCLEAR_EXISTING',10.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','NUCLEAR_NEW',20.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','NATGAS_PLANT_EXISTING',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','NATGAS_PLANT_NEW',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','COAL_PLANT_EXISTING',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','COAL_PLANT_NEW',25.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','WIND_FARM',10.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','SOLAR_FARM',10.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','SOLAR_RESIDENTIAL',10.0,'');
INSERT INTO "LifetimeLoanTech" VALUES ('IL','LI_BATTERY',5.0,'');
-- INSERT INTO "LifetimeLoanTech" VALUES ('IL','TRANSMISSION',1025.0,'');
-- INSERT INTO "LifetimeLoanTech" VALUES ('IL','INTERCONNECT',1025.0,'');


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
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1969,985,'MWe','Dresden Unit 2');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1971,985,'MWe','Dresden Unit 3');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1972,1970,'MWe','Quad Cities Unit 1+2');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1982,1182,'MWe','LaSalle Unit 1');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1984,1182,'MWe','LaSalle Unit 2');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1985,1215,'MWe','Byron Unit 1');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1987,3697,'MWe','Clinton, Byron Unit 2, Braidwood Unit 1');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1988,1215,'MWe','Braidwood Unit 2');

-- Premature Closure
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1969,0.01,'MWe','Dresden Unit 2');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1971,0.01,'MWe','Dresden Unit 3');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1972,1970,'MWe','Quad Cities Unit 1+2');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1982,1182,'MWe','LaSalle Unit 1');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1984,1182,'MWe','LaSalle Unit 2');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1985,0.01,'MWe','Byron Unit 1');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1987,2482,'MWe','Clinton, Byron Unit 2, Braidwood Unit 1');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1988,1215,'MWe','Braidwood Unit 2');


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

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1953,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1954,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1955,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1958,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1962,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1963,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1967,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1968,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1970,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1972,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1973,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1975,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1977,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1978,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1987,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1989,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1991,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1994,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1997,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',1998,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2005,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2009,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2012,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',4.9e-4,'MT/GWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2025,'ELC',1.7e-4,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2030,'ELC',1.7e-4,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2035,'ELC',1.7e-4,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2040,'ELC',1.7e-4,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2045,'ELC',1.7e-4,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NATGAS_PLANT_NEW',2050,'ELC',1.7e-4,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2025,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2030,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2035,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2040,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2045,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_EXISTING',2050,'ELC',8.2e-4,'MT/GWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2025,'ELC',2.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2030,'ELC',2.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2035,'ELC',2.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2040,'ELC',2.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2045,'ELC',2.2e-4,'MT/GWh','source: IPCC 5th');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','COAL_PLANT_NEW',2050,'ELC',2.2e-4,'MT/GWh','source: IPCC 5th');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1969,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1971,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1972,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1982,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1984,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1985,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1987,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',1988,'ELC',1.2e-5,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2003,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2004,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2005,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2007,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2008,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2009,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2010,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2011,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2012,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2015,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2016,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2017,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2018,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2019,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2020,'ELC',1.1e-5,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2025,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2030,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2035,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2040,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2045,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_EXISTING',2050,'ELC',1.2e-5,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_NEW',2025,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_NEW',2030,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_NEW',2035,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_NEW',2040,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_NEW',2045,'ELC',1.2e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','NUCLEAR_NEW',2050,'ELC',1.2e-5,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2025,'ELC',4.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2030,'ELC',4.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2035,'ELC',4.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2040,'ELC',4.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2045,'ELC',4.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_RESIDENTIAL',2050,'ELC',4.1e-5,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2025,'ELC',4.8e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2030,'ELC',4.8e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2035,'ELC',4.8e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2040,'ELC',4.8e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2045,'ELC',4.8e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','SOLAR_FARM',2050,'ELC',4.8e-5,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2025,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2030,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2035,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2040,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2045,'ELC',1.1e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ethos','WIND_FARM',2050,'ELC',1.1e-5,'MT/GWh','NULL');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ELC','LI_BATTERY',2025,'ELC',2.32e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ELC','LI_BATTERY',2030,'ELC',2.32e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ELC','LI_BATTERY',2035,'ELC',2.32e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ELC','LI_BATTERY',2040,'ELC',2.32e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ELC','LI_BATTERY',2045,'ELC',2.32e-5,'MT/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2eq','ELC','LI_BATTERY',2050,'ELC',2.32e-5,'MT/GWh','NULL');



/*
CO2 - produced from generation
*/
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1953,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1954,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1955,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1958,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1962,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1963,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1967,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1968,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1970,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1972,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1973,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1975,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1977,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1978,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1987,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1989,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1991,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1994,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1997,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',1998,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2005,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2009,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2012,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2025,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2030,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2035,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2040,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2045,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_EXISTING',2050,'ELC',3.25949832e-4,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2025,'ELC',3.265689e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2030,'ELC',3.265689e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2035,'ELC',3.265689e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2040,'ELC',3.265689e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2045,'ELC',3.265689e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','COAL_PLANT_NEW',2050,'ELC',3.265689e-5,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',1.8108324e-4,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2025,'ELC',1.810832e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2030,'ELC',1.810832e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2035,'ELC',1.810832e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2040,'ELC',1.810832e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2045,'ELC',1.810832e-5,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','CO2','ethos','NATGAS_PLANT_NEW',2050,'ELC',1.810832e-5,'MT/GWh','source: NREL ATB');

/*
NOx - produced from generation
*/
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1953,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1954,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1955,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1958,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1962,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1963,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1967,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1968,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1970,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1972,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1973,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1975,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1977,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1978,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1987,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1989,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1991,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1994,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1997,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',1998,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2005,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2009,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2012,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2025,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2030,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2035,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2040,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2045,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_EXISTING',2050,'ELC',1.238176e-7,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2025,'ELC',1.315562e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2030,'ELC',1.315562e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2035,'ELC',1.315562e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2040,'ELC',1.315562e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2045,'ELC',1.315562e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','COAL_PLANT_NEW',2050,'ELC',1.315562e-7,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2025,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2030,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2035,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2040,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2045,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','NOx','ethos','NATGAS_PLANT_NEW',2050,'ELC',3.09544e-8,'MT/GWh','source: NREL ATB');

/*
SO2 - produced from generation
*/
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1953,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1954,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1955,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1958,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1962,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1963,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1967,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1968,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1970,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1972,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1973,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1975,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1977,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1978,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1987,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1989,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1991,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1994,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1997,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',1998,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2005,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2009,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2012,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2025,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2030,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2035,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2040,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2045,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_EXISTING',2050,'ELC',1.54772e-7,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2025,'ELC',8.589846e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2030,'ELC',8.589846e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2035,'ELC',8.589846e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2040,'ELC',8.589846e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2045,'ELC',8.589846e-8,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','COAL_PLANT_NEW',2050,'ELC',8.589846e-8,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1948,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1951,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1953,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1958,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1959,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1960,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1962,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1965,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1966,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1970,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1974,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1985,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1987,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1988,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1990,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1991,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1993,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1995,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1996,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1997,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1998,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',1999,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2000,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2001,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2002,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2003,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2004,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2005,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2012,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2015,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2016,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2019,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2025,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2030,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2035,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2040,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2045,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_EXISTING',2050,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');

INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2025,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2030,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2035,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2040,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2045,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');
INSERT INTO "EmissionActivity" VALUES ('IL','SO2','ethos','NATGAS_PLANT_NEW',2050,'ELC',5.1075e-9,'MT/GWh','source: NREL ATB');

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

INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_NEW',2025,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_NEW',2030,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_NEW',2035,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_NEW',2040,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_NEW',2045,'ELC',0.0037224,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','spent-fuel','ethos','NUCLEAR_NEW',2050,'ELC',0.0037224,'t/GWh','NULL');

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
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ELC','LI_BATTERY',2025,'ELC',1.8494,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ELC','LI_BATTERY',2030,'ELC',1.8494,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ELC','LI_BATTERY',2035,'ELC',1.8494,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ELC','LI_BATTERY',2040,'ELC',1.8494,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ELC','LI_BATTERY',2045,'ELC',1.8494,'t/GWh','NULL');
INSERT INTO "EmissionActivity" VALUES ('IL','e-waste','ELC','LI_BATTERY',2050,'ELC',1.8494,'t/GWh','NULL');


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
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_NEW',2025,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_NEW',2030,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_NEW',2035,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_NEW',2040,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_NEW',2045,'ELC',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ethos','NUCLEAR_NEW',2050,'ELC',1.0,'MWe to MWe');
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
INSERT INTO "Efficiency" VALUES ('IL','ELC','INTERCONNECT',2025,'EX_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','INTERCONNECT',2030,'EX_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','INTERCONNECT',2035,'EX_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','INTERCONNECT',2040,'EX_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','INTERCONNECT',2045,'EX_DEMAND',1.0,'MWe to MWe');
INSERT INTO "Efficiency" VALUES ('IL','ELC','INTERCONNECT',2050,'EX_DEMAND',1.0,'MWe to MWe');

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
/*
NUCLEAR ONLY HAS A VARIABLE COST IN THE STANDARD BAU
*/
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1969, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1971, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1972, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1982, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1984, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1985, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1987, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1988, 0.005811, 'M$/GW-year', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1971, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1972, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1982, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1984, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1985, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1987, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1988, 0.005811, 'M$/GW-year', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1982, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1984, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1985, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1987, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1988, 0.005811, 'M$/GW-year', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1982, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1984, 0.005811, 'M$/GW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1985, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1987, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1988, 0.005811, 'M$/GW-year', 'PWR');

INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1987, 0.005811, 'M$/GW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1988, 0.005811, 'M$/GW-year', 'PWR');



-- NON NUCLEAR
-- EXISTING COAL
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1953, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1954, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1955, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1958, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/GWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1953, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1954, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1955, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1958, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/GWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1958, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/GWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1962, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1963, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/GWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1967, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1968, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1970, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/GWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1972, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1973, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1975, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1977, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1978, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1987, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1989, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1991, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1994, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1997, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1998, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2005, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2009, 0.021369, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2012, 0.021369, 'M$/GWh','fully depreciated');

-- EXISTING NATURAL GAS
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1948, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1951, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1953, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1958, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1959, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1960, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1962, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1965, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1966, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1970, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1974, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1985, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1987, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1988, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1990, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1991, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1993, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1995, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1996, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1997, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1998, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1999, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2000, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2001, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2002, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2003, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2004, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2005, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2012, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2015, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2016, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2019, 0.022387, 'M$/GWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1951, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1953, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1958, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1959, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1960, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1962, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1965, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1966, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1970, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1974, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1985, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1987, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1988, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1990, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1991, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1993, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1995, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1996, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1997, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1998, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1999, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2000, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2001, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2002, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2003, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2004, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2005, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2012, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2015, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2016, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2019, 0.022387, 'M$/GWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1958, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1959, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1960, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1962, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1965, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1966, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1970, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1974, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1985, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1987, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1988, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1990, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1991, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1993, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1995, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1996, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1997, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1998, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1999, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2000, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2001, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2002, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2003, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2004, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2005, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2012, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2015, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2016, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2019, 0.022387, 'M$/GWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1962, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1965, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1966, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1970, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1974, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1985, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1987, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1988, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1990, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1991, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1993, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1995, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1996, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1997, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1998, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1999, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2000, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2001, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2002, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2003, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2004, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2005, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2012, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2015, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2016, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2019, 0.022387, 'M$/GWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1966, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1970, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1974, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1985, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1987, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1988, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1990, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1991, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1993, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1995, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1996, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1997, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1998, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1999, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2000, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2001, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2002, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2003, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2004, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2005, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2012, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2015, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2016, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2019, 0.022387, 'M$/GWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1974, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1985, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1987, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1988, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1990, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1991, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1993, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1995, 0.022387, 'M$/GWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1996, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1997, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1998, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1999, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2000, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2001, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2002, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2003, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2004, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2005, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2012, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2015, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2016, 0.022387, 'M$/GWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2019, 0.022387, 'M$/GWh','not depreciated');


/*
FUTURE CAPACITY
*/

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 2025, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2025, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2025, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2025, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2025, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2025, 0.005811, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2030, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2030, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2030, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2030, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2030, 0.005811, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2035, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2035, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2035, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2035, 0.005811, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2040, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2040, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2040, 0.005811, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2045, 0.005811, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2045, 0.005811, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2050, 0.005811, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NUCLEAR_NEW', 2025, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NUCLEAR_NEW', 2025, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_NEW', 2025, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2025, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2025, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2025, 0.009158, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NUCLEAR_NEW', 2030, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_NEW', 2030, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2030, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2030, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2030, 0.009158, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NUCLEAR_NEW', 2035, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2035, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2035, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2035, 0.009158, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2040, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2040, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2040, 0.009158, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2045, 0.009158, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2045, 0.009158, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2050, 0.009158, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2025, 0.021369, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2030, 0.021369, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2035, 0.021369, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2040, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2040, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2040, 0.021369, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2045, 0.021369, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2045, 0.021369, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2050, 0.021369, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2025, 0.0366329, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2030, 0.0366329, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2035, 0.0366329, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2040, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2040, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2040, 0.0366329, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2045, 0.0366329, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2045, 0.0366329, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2050, 0.0366329, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2025, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2025, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2025, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2025, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2025, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2025, 0.022387, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2030, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2030, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2030, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2030, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2030, 0.022387, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2035, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2035, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2035, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2035, 0.022387, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2040, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2040, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2040, 0.022387, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2045, 0.022387, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2045, 0.022387, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2050, 0.022387, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2025, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2025, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2025, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2025, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2025, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2025, 0.027474, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2030, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2030, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2030, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2030, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2030, 0.027474, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2035, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2035, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2035, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2035, 0.027474, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2040, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2040, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2040, 0.027474, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2045, 0.027474, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2045, 0.027474, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2050, 0.027474, 'M$/GW-year', 'source: NREL ATB');



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
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2025, 0.05, 'M$/MW', 'existing nuclear, source: NRC license renewal');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2030, 0.05, 'M$/MW', 'existing nuclear, source: NRC license renewal');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2035, 0.05, 'M$/MW', 'existing nuclear, source: NRC license renewal');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2040, 0.05, 'M$/MW', 'existing nuclear, source: NRC license renewal');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2045, 0.05, 'M$/MW', 'existing nuclear, source: NRC license renewal');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_EXISTING', 2050, 0.05, 'M$/MW', 'existing nuclear, source: NRC license renewal');

INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_NEW', 2025, 5.905853, 'M$/MW', 'advanced nuclear, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_NEW', 2030, 5.734473, 'M$/MW', 'advanced nuclear, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_NEW', 2035, 5.544668, 'M$/MW', 'advanced nuclear, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_NEW', 2040, 5.340865, 'M$/MW', 'advanced nuclear, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_NEW', 2045, 5.155078, 'M$/MW', 'advanced nuclear, source: NREL ATB');
INSERT INTO "CostInvest" VALUES ('IL', 'NUCLEAR_NEW', 2050, 4.916458, 'M$/MW', 'advanced nuclear, source: NREL ATB');


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
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2025, 1.593533, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2030, 0.818600, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2035, 0.782241, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2040, 0.745883, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2045, 0.709525, 'M$/MW', 'utility solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_FARM', 2050, 0.673166, 'M$/MW', 'utility solar');

-- SOLAR RESIDENTIAL
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2025, 2.036413, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2030, 1.124614, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2035, 1.057875, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2040, 0.991136, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2045, 0.924396, 'M$/MW', 'residential solar');
INSERT INTO "CostInvest" VALUES ('IL', 'SOLAR_RESIDENTIAL', 2050, 0.857657, 'M$/MW', 'residential solar');

--WIND
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2025, 1.878456, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2030, 1.614811, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2035, 1.411854, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2040, 1.356812, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2045, 1.299927, 'M$/MW', 'on shore wind, 33% capacity factor');
INSERT INTO "CostInvest" VALUES ('IL', 'WIND_FARM', 2050, 1.241198, 'M$/MW', 'on shore wind, 33% capacity factor');

-- BATTERY
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2025, 1.608, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2030, 1.182, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2035, 0.964, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2040, 0.902, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2045, 0.844, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');
INSERT INTO "CostInvest" VALUES ('IL', 'LI_BATTERY', 2050, 0.781, 'M$/MW', 'lithium-ion battery, based on 2-hour storage');


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

INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1969, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1971, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1972, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1982, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1984, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1985, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1987, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1988, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1971, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1982, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1984, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1985, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1987, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1988, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1972, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1982, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1984, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1985, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1987, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1988, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1982, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1984, 177.73741, 'M$/GW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1985, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1987, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1988, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1987, 177.73741, 'M$/GW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1988, 177.73741, 'M$/GW-year', 'PWR');

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

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 2025, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2025, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2025, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2025, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2025, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2025, 177.73741, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2030, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2030, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2030, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2030, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2030, 177.73741, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2035, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2035, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2035, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2035, 177.73741, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2040, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2040, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2040, 177.73741, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2045, 177.73741, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2045, 177.73741, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2050, 177.73741, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NUCLEAR_NEW', 2025, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_NEW', 2025, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_NEW', 2025, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2025, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2025, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2025, 121.09221, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_NEW', 2030, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_NEW', 2030, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2030, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2030, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2030, 121.09221, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_NEW', 2035, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2035, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2035, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2035, 121.09221, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_NEW', 2040, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2040, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2040, 121.09221, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_NEW', 2045, 121.09221, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2045, 121.09221, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_NEW', 2050, 121.09221, 'M$/GW-year', 'source: NREL ATB');

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

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2025, 12.824, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2025, 12.824, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2025, 12.824, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2025, 12.824, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2025, 12.824, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2030, 9.795, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2030, 9.795, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2030, 9.795, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2030, 9.795, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2030, 9.795, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2035, 9.360, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2035, 9.360, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2035, 9.360, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2035, 9.360, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2040, 8.925, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2040, 8.925, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2040, 8.925, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2045, 8.490, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2045, 8.490, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2050, 8.055, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_RESIDENTIAL', 2025, 14.133, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_RESIDENTIAL', 2025, 14.133, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2025, 14.133, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2025, 14.133, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2025, 14.133, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_RESIDENTIAL', 2030, 8.435, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2030, 8.435, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2030, 8.435, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2030, 8.435, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2030, 8.435, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2035, 7.934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2035, 7.934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2035, 7.934, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2035, 7.934, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2040, 7.434, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2040, 7.434, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2040, 7.434, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2045, 6.933, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2045, 6.933, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2050, 6.432, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2025, 40.723, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2025, 40.723, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2025, 40.723, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2025, 40.723, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2025, 40.723, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2030, 38.950, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2030, 38.950, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2030, 38.950, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2030, 38.950, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2030, 38.950, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2035, 37.489, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2035, 37.489, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2035, 37.489, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2035, 37.489, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2040, 36.029, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2040, 36.029, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2040, 36.029, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2045, 34.568, 'M$/GW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2045, 34.568, 'M$/GW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2050, 33.107, 'M$/GW-year', 'source: NREL ATB');


-- BATTERY STORAGE
INSERT INTO "CostFixed" VALUES ('IL',2025,'LI_BATTERY',2025, 25.102,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2030,'LI_BATTERY',2025, 25.102,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2035,'LI_BATTERY',2025, 25.102,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2030,'LI_BATTERY',2030, 20.431,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2035,'LI_BATTERY',2030, 20.431,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2040,'LI_BATTERY',2030, 20.431,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2035,'LI_BATTERY',2035, 19.154,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2040,'LI_BATTERY',2035, 19.154,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2045,'LI_BATTERY',2035, 19.154,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2040,'LI_BATTERY',2040, 17.877,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2045,'LI_BATTERY',2040, 17.877,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2050,'LI_BATTERY',2040, 17.877,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2045,'LI_BATTERY',2045, 16.600,'based on 2-hour storage at 50 MW', 'source: NREL & SL');
INSERT INTO "CostFixed" VALUES ('IL',2050,'LI_BATTERY',2045, 16.600,'based on 2-hour storage at 50 MW', 'source: NREL & SL');

INSERT INTO "CostFixed" VALUES ('IL',2050,'LI_BATTERY',2050, 15.323,'based on 2-hour storage at 50 MW', 'source: NREL & SL');


CREATE TABLE "CapacityToActivity" (
	"regions"	text,
	"tech"	text,
	"c2a"	real,
	"c2a_notes"	TEXT,
	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
	PRIMARY KEY("regions","tech")
);
INSERT INTO "CapacityToActivity" VALUES ('IL','NUCLEAR_EXISTING',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','NUCLEAR_NEW',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','COAL_PLANT_EXISTING',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','COAL_PLANT_NEW',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','NATGAS_PLANT_EXISTING',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','NATGAS_PLANT_NEW',8.76, '');;
INSERT INTO "CapacityToActivity" VALUES ('IL','SOLAR_FARM',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','SOLAR_RESIDENTIAL',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','WIND_FARM',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','LI_BATTERY',8.76, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','TRANSMISSION', 1.00, '');
INSERT INTO "CapacityToActivity" VALUES ('IL','INTERCONNECT', 1.00, '');


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

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','NUCLEAR_EXISTING',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','NUCLEAR_NEW',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','NUCLEAR_NEW',0.925,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','COAL_PLANT_EXISTING',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','COAL_PLANT_EXISTING',0.54,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','COAL_PLANT_NEW',0.54,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','COAL_PLANT_NEW',0.54,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','NATGAS_PLANT_EXISTING',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','NATGAS_PLANT_EXISTING',0.55,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','NATGAS_PLANT_NEW',0.55,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','NATGAS_PLANT_NEW',0.55,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','WIND_FARM',0.4137,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','WIND_FARM',0.4181,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','WIND_FARM',0.4232,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','WIND_FARM',0.3966,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','WIND_FARM',0.3811,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','WIND_FARM',0.3834,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','WIND_FARM',0.3803,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','WIND_FARM',0.3964,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','WIND_FARM',0.3838,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','WIND_FARM',0.3591,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','WIND_FARM',0.3498,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','WIND_FARM',0.3500,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','WIND_FARM',0.3500,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','WIND_FARM',0.3612,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','WIND_FARM',0.3700,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','WIND_FARM',0.3698,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','WIND_FARM',0.3750,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','WIND_FARM',0.3874,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','WIND_FARM',0.3957,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','WIND_FARM',0.3837,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','WIND_FARM',0.3729,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','WIND_FARM',0.3782,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','WIND_FARM',0.3880,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','WIND_FARM',0.3979,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','WIND_FARM',0.4057,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','WIND_FARM',0.3931,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','WIND_FARM',0.3818,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','WIND_FARM',0.3699,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','WIND_FARM',0.3663,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','WIND_FARM',0.3539,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','WIND_FARM',0.3502,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','WIND_FARM',0.3368,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','WIND_FARM',0.3321,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','WIND_FARM',0.2977,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','WIND_FARM',0.2612,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','WIND_FARM',0.2532,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','WIND_FARM',0.2605,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','WIND_FARM',0.2710,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','WIND_FARM',0.2730,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','WIND_FARM',0.2735,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','WIND_FARM',0.2904,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','WIND_FARM',0.2955,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','WIND_FARM',0.2950,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','WIND_FARM',0.3018,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','WIND_FARM',0.3414,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','WIND_FARM',0.3703,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','WIND_FARM',0.3924,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','WIND_FARM',0.4102,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','WIND_FARM',0.2460,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','WIND_FARM',0.2439,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','WIND_FARM',0.2335,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','WIND_FARM',0.2342,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','WIND_FARM',0.2234,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','WIND_FARM',0.2223,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','WIND_FARM',0.2115,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','WIND_FARM',0.2005,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','WIND_FARM',0.1628,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','WIND_FARM',0.1353,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','WIND_FARM',0.1404,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','WIND_FARM',0.1480,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','WIND_FARM',0.1557,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','WIND_FARM',0.1607,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','WIND_FARM',0.1717,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','WIND_FARM',0.1816,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','WIND_FARM',0.1819,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','WIND_FARM',0.1739,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','WIND_FARM',0.1682,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','WIND_FARM',0.1598,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','WIND_FARM',0.1617,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','WIND_FARM',0.1842,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','WIND_FARM',0.2170,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','WIND_FARM',0.2443,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','WIND_FARM',0.4396,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','WIND_FARM',0.4192,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','WIND_FARM',0.4154,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','WIND_FARM',0.4127,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','WIND_FARM',0.4000,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','WIND_FARM',0.3908,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','WIND_FARM',0.3834,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','WIND_FARM',0.3885,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','WIND_FARM',0.3933,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','WIND_FARM',0.3982,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','WIND_FARM',0.3800,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','WIND_FARM',0.3702,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','WIND_FARM',0.3737,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','WIND_FARM',0.3682,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','WIND_FARM',0.3737,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','WIND_FARM',0.3719,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','WIND_FARM',0.3864,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','WIND_FARM',0.4037,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','WIND_FARM',0.4144,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','WIND_FARM',0.4342,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','WIND_FARM',0.4358,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','WIND_FARM',0.4474,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','WIND_FARM',0.4526,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','WIND_FARM',0.4505,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','SOLAR_FARM',0.001982,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','SOLAR_FARM',0.027810,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','SOLAR_FARM',0.137300,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','SOLAR_FARM',0.309790,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','SOLAR_FARM',0.468561,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','SOLAR_FARM',0.580237,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','SOLAR_FARM',0.635097,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','SOLAR_FARM',0.625301,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','SOLAR_FARM',0.613729,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','SOLAR_FARM',0.577665,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','SOLAR_FARM',0.483008,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','SOLAR_FARM',0.352573,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','SOLAR_FARM',0.200379,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','SOLAR_FARM',0.065475,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','SOLAR_FARM',0.008754,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','SOLAR_FARM',0.000121,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','SOLAR_FARM',0.002181,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','SOLAR_FARM',0.074684,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','SOLAR_FARM',0.239819,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','SOLAR_FARM',0.405084,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','SOLAR_FARM',0.522734,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','SOLAR_FARM',0.582530,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','SOLAR_FARM',0.597893,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','SOLAR_FARM',0.555062,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','SOLAR_FARM',0.485155,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','SOLAR_FARM',0.371531,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','SOLAR_FARM',0.218444,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','SOLAR_FARM',0.083037,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','SOLAR_FARM',0.012928,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','SOLAR_FARM',0.000247,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','SOLAR_FARM',0.00,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','SOLAR_FARM',0.013701,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','SOLAR_FARM',0.055194,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','SOLAR_FARM',0.163522,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','SOLAR_FARM',0.333411,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','SOLAR_FARM',0.483278,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','SOLAR_FARM',0.602222,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','SOLAR_FARM',0.676433,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','SOLAR_FARM',0.699235,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','SOLAR_FARM',0.688378,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','SOLAR_FARM',0.661637,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','SOLAR_FARM',0.581159,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','SOLAR_FARM',0.455127,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','SOLAR_FARM',0.300445,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','SOLAR_FARM',0.027018,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','SOLAR_FARM',0.001383,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','SOLAR_FARM',0.00,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','SOLAR_FARM',0.000841,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','SOLAR_FARM',0.039476,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','SOLAR_FARM',0.176600,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','SOLAR_FARM',0.292085,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','SOLAR_FARM',0.373480,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','SOLAR_FARM',0.410083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','SOLAR_FARM',0.426438,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','SOLAR_FARM',0.382015,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','SOLAR_FARM',0.305570,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','SOLAR_FARM',0.197728,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','SOLAR_FARM',0.066908,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','SOLAR_FARM',0.006708,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','SOLAR_FARM',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','SOLAR_FARM',0.0,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','SOLAR_RESIDENTIAL',0.001982,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','SOLAR_RESIDENTIAL',0.027810,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','SOLAR_RESIDENTIAL',0.137300,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','SOLAR_RESIDENTIAL',0.309790,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','SOLAR_RESIDENTIAL',0.468561,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','SOLAR_RESIDENTIAL',0.580237,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','SOLAR_RESIDENTIAL',0.635097,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','SOLAR_RESIDENTIAL',0.625301,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','SOLAR_RESIDENTIAL',0.613729,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','SOLAR_RESIDENTIAL',0.577665,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','SOLAR_RESIDENTIAL',0.483008,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','SOLAR_RESIDENTIAL',0.352573,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','SOLAR_RESIDENTIAL',0.200379,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','SOLAR_RESIDENTIAL',0.065475,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','SOLAR_RESIDENTIAL',0.008754,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','SOLAR_RESIDENTIAL',0.000121,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','SOLAR_RESIDENTIAL',0.002181,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','SOLAR_RESIDENTIAL',0.074684,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','SOLAR_RESIDENTIAL',0.239819,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','SOLAR_RESIDENTIAL',0.405084,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','SOLAR_RESIDENTIAL',0.522734,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','SOLAR_RESIDENTIAL',0.582530,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','SOLAR_RESIDENTIAL',0.597893,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','SOLAR_RESIDENTIAL',0.555062,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','SOLAR_RESIDENTIAL',0.485155,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','SOLAR_RESIDENTIAL',0.371531,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','SOLAR_RESIDENTIAL',0.218444,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','SOLAR_RESIDENTIAL',0.083037,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','SOLAR_RESIDENTIAL',0.012928,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','SOLAR_RESIDENTIAL',0.000247,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','SOLAR_RESIDENTIAL',0.00,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','SOLAR_RESIDENTIAL',0.013701,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','SOLAR_RESIDENTIAL',0.055194,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','SOLAR_RESIDENTIAL',0.163522,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','SOLAR_RESIDENTIAL',0.333411,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','SOLAR_RESIDENTIAL',0.483278,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','SOLAR_RESIDENTIAL',0.602222,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','SOLAR_RESIDENTIAL',0.676433,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','SOLAR_RESIDENTIAL',0.699235,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','SOLAR_RESIDENTIAL',0.688378,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','SOLAR_RESIDENTIAL',0.661637,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','SOLAR_RESIDENTIAL',0.581159,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','SOLAR_RESIDENTIAL',0.455127,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','SOLAR_RESIDENTIAL',0.300445,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','SOLAR_RESIDENTIAL',0.027018,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','SOLAR_RESIDENTIAL',0.001383,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','SOLAR_RESIDENTIAL',0.00,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','SOLAR_RESIDENTIAL',0.000841,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','SOLAR_RESIDENTIAL',0.039476,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','SOLAR_RESIDENTIAL',0.176600,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','SOLAR_RESIDENTIAL',0.292085,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','SOLAR_RESIDENTIAL',0.373480,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','SOLAR_RESIDENTIAL',0.410083,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','SOLAR_RESIDENTIAL',0.426438,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','SOLAR_RESIDENTIAL',0.382015,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','SOLAR_RESIDENTIAL',0.305570,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','SOLAR_RESIDENTIAL',0.197728,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','SOLAR_RESIDENTIAL',0.066908,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','SOLAR_RESIDENTIAL',0.006708,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','SOLAR_RESIDENTIAL',0.0,'');

INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H1','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H2','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H3','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H4','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H5','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H6','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H7','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H8','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H9','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H10','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H11','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H12','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H13','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H14','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H15','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H16','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H17','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H18','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H19','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H20','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H21','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H22','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H23','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','spring','H24','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H1','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H2','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H3','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H4','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H5','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H6','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H7','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H8','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H9','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H10','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H11','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H12','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H13','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H14','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H15','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H16','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H17','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H18','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H19','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H20','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H21','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H22','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H23','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','fall','H24','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H1','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H2','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H3','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H4','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H5','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H6','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H7','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H8','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H9','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H10','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H11','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H12','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H13','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H14','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H15','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H16','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H17','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H18','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H19','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H20','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H21','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H22','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H23','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','H24','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H1','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H2','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H3','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H4','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H5','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H6','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H7','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H8','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H9','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H10','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H11','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H12','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H13','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H14','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H15','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H16','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H17','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H18','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H19','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H20','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H21','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H22','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H23','LI_BATTERY',0.167,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','H24','LI_BATTERY',0.167,'');

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
