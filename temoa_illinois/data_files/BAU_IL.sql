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
INSERT INTO "technologies" VALUES ('NUCLEAR_EXISTING','p','electric', 'current nuclear technology','uranium');
INSERT INTO "technologies" VALUES ('COAL_PLANT_EXISTING','p','electric', 'current coal technology','coal');
INSERT INTO "technologies" VALUES ('COAL_PLANT_NEW','p','electric', 'new coal technology','coal');
INSERT INTO "technologies" VALUES ('NATGAS_PLANT_EXISTING','p','electric', 'current natgas technology','natural gas');
INSERT INTO "technologies" VALUES ('NATGAS_PLANT_NEW','p','electric', 'new natgas technology','natural gas');
INSERT INTO "technologies" VALUES ('SOLAR_FARM','p','electric', 'utility solar','solar energy');
INSERT INTO "technologies" VALUES ('SOLAR_RESIDENTIAL','p','electric', 'residential solar','solar energy');
INSERT INTO "technologies" VALUES ('WIND_FARM','p','electric', 'utility wind','wind energy');
INSERT INTO "technologies" VALUES ('TRANSMISSION','r','transmission', 'connects generation to end-use','NULL');

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

CREATE TABLE "PlanningReserveMargin" (
	`regions`	text,
	`reserve_margin`	REAL,
	PRIMARY KEY(regions),
	FOREIGN KEY(`regions`) REFERENCES regions
);

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
INSERT INTO "MaxCapacity" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 12431.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MaxCapacity" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 11446.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MaxCapacity" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 8491.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MaxCapacity" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 8491.0, 'MWe', 'cannot build more than existing capacity');
INSERT INTO "MaxCapacity" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 4912.0, 'MWe', 'cannot build more than existing capacity');
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
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1985,1215,'MW','MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1987,3697,'MW','MW electric');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1987,1215,'MW','MW electric');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1987,1215,'MW','MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1988,1215,'MW','MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1982,1182,'MW','MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1984,1182,'MW','MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1972,1970,'MW','MW electric');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1972,985,'MW','MW electric');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1972,985,'MW','MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1969,985,'MW','MW electric');
INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1971,985,'MW','MW electric');
-- INSERT INTO "ExistingCapacity" VALUES ('IL','NUCLEAR_EXISTING',1987,1157,'MW','MW electric');


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


-- EXISTING WIND
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
-- INSERT INTO `EmissionActivity` VALUES ('IL','co2','ethos','IMPDSL1',1990,'DSL',0.075,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','co2','ethos','IMPGSL1',1990,'GSL',0.075,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','co2','ethos','IMPHCO1',1990,'HCO',0.089,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','co2','ethos','IMPOIL1',1990,'OIL',0.075,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','DSL','TXD',1970,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','DSL','TXD',1980,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','DSL','TXD',1990,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','DSL','TXD',2000,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','DSL','TXD',2010,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','GSL','TXG',1970,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','GSL','TXG',1980,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','GSL','TXG',1990,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','GSL','TXG',2000,'TX',1.0,'','');
-- INSERT INTO `EmissionActivity` VALUES ('IL','nox','GSL','TXG',2010,'TX',1.0,'','');

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
INSERT INTO "DemandSpecificDistribution" VALUES ('IL','inter','day','IL_DEMAND',0.15,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('IL','inter','night','IL_DEMAND',0.05,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('IL','summer','day','IL_DEMAND',0.15,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('IL','summer','night','IL_DEMAND',0.05,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('IL','winter','day','IL_DEMAND',0.5,'');
INSERT INTO "DemandSpecificDistribution" VALUES ('IL','winter','night','IL_DEMAND',0.1,'');

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
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1969, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1971, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1972, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1982, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1984, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1985, 0.000029802, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1987, 0.000028428, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1988, 0.000028428, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1969, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1971, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1972, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1982, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1984, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1985, 0.000029802, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1987, 0.000028428, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1988, 0.000028428, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1969, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1971, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1972, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1982, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1984, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1985, 0.000029802, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1987, 0.000028428, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1988, 0.000028428, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1969, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1971, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1972, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1982, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1984, 0.000029802, 'M$/MW-year', 'BWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1985, 0.000029802, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1987, 0.000028428, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1988, 0.000028428, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1969, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1971, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1972, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1982, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1984, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1985, 0.000029802, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1987, 0.000028428, 'M$/MW-year', 'PWR');
INSERT INTO "CostVariable" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1988, 0.000028428, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1969, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1971, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1972, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1982, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1984, 0.000029802, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1985, 0.000029802, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1987, 0.000028428, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostVariable" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1988, 0.000028428, 'M$/MW-year', 'PWR');


-- NON NUCLEAR
-- EXISTING COAL
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1953, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1954, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1955, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1958, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1962, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1963, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1967, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1968, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1970, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1972, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1973, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1975, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1977, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1978, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1987, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1989, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1991, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1994, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1997, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1998, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2005, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2009, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2012, 0.000021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1953, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1954, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1955, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1958, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1962, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1963, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1967, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1968, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1970, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1972, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1973, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1975, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1977, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1978, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1987, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1989, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1991, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1994, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1997, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1998, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2005, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2009, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2012, 0.000021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1958, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1962, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1963, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1967, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1968, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1970, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1972, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1973, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1975, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1977, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1978, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1987, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1989, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1991, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1994, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1997, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1998, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2005, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2009, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2012, 0.000021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1962, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1963, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1967, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1968, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1970, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1972, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1973, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1975, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1977, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1978, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1987, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1989, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1991, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1994, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1997, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1998, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2005, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2009, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2012, 0.000021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1967, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1968, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1970, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1972, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1973, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1975, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1977, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1978, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1987, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1989, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1991, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1994, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1997, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1998, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2005, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2009, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2012, 0.000021369, 'M$/MWh','fully depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1972, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1973, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1975, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1977, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1978, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1987, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1989, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1991, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1994, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1997, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1998, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2005, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2009, 0.000021369, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2012, 0.000021369, 'M$/MWh','fully depreciated');

-- EXISTING NATURAL GAS
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1948, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1951, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1953, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1958, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1959, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1960, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1962, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1965, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1966, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1970, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1974, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1985, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1987, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1988, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1990, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1991, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1993, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1995, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1996, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1997, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1998, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1999, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2000, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2001, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2002, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2003, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2004, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2005, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2012, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2015, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2016, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2019, 0.000007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1951, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1953, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1958, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1959, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1960, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1962, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1965, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1966, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1970, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1974, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1985, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1987, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1988, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1990, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1991, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1993, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1995, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1996, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1997, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1998, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1999, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2000, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2001, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2002, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2003, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2004, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2005, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2012, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2015, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2016, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2019, 0.000007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1958, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1959, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1960, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1962, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1965, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1966, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1970, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1974, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1985, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1987, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1988, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1990, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1991, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1993, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1995, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1996, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1997, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1998, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1999, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2000, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2001, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2002, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2003, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2004, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2005, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2012, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2015, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2016, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2019, 0.000007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1962, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1965, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1966, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1970, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1974, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1985, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1987, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1988, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1990, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1991, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1993, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1995, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1996, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1997, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1998, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1999, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2000, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2001, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2002, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2003, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2004, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2005, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2012, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2015, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2016, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2019, 0.000007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1966, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1970, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1974, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1985, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1987, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1988, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1990, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1991, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1993, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1995, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1996, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1997, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1998, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1999, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2000, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2001, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2002, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2003, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2004, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2005, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2012, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2015, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2016, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2019, 0.000007123, 'M$/MWh','not depreciated');

INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1974, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1985, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1987, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1988, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1990, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1991, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1993, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1995, 0.000007123, 'M$/MWh','fully depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1996, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1997, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1998, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1999, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2000, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2001, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2002, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2003, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2004, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2005, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2012, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2015, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2016, 0.000007123, 'M$/MWh','not depreciated');
INSERT INTO "CostVariable" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2019, 0.000007123, 'M$/MWh','not depreciated');


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
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2025,'NUCLEAR_EXISTING', 1988, 0.057347, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1969, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1971, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2030,'NUCLEAR_EXISTING', 1988, 0.057347, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1969, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1971, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2035,'NUCLEAR_EXISTING', 1988, 0.057347, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1969, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1971, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1972, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1982, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1984, 0.057260, 'M$/MW-year', 'BWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2040,'NUCLEAR_EXISTING', 1988, 0.057347, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1969, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1971, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1972, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1982, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1984, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1985, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1987, 0.057347, 'M$/MW-year', 'PWR');
INSERT INTO "CostFixed" VALUES('IL', 2045,'NUCLEAR_EXISTING', 1988, 0.057347, 'M$/MW-year', 'PWR');

-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1969, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1971, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1972, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1982, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1984, 0.057260, 'M$/MW-year', 'BWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1985, 0.057347, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1987, 0.057347, 'M$/MW-year', 'PWR');
-- INSERT INTO "CostFixed" VALUES('IL', 2050,'NUCLEAR_EXISTING', 1988, 0.057347, 'M$/MW-year', 'PWR');

-- FIXED COST FOR EXISTING WIND
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2003,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2004,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2005,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2007,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2008,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2009,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2010,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2011,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2012,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2015,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2016,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2017,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2018,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2019,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2020,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2007,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2008,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2009,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2010,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2011,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2012,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2015,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2016,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2017,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2018,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2019,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2020,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2011,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2012,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2015,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2016,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2017,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2018,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2019,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2020,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2016,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2017,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2018,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2019,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2020,0.0437560, 'M$/MW-year', 'onshore, 33% capacity factor');


INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1996, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1997, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1998, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 1999, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2000, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2001, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2002, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2003, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2004, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2005, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2012, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2015, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2016, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2019, 0.0111934, 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1996, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1997, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1998, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 1999, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2000, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2001, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2002, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2003, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2004, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2005, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2012, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2015, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2016, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2019, 0.0111934, 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1996, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1997, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1998, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 1999, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2000, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2001, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2002, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2003, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2004, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2005, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2012, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2015, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2016, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2019, 0.0111934, 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1996, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1997, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1998, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 1999, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2000, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2001, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2002, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2003, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2004, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2005, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2012, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2015, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2016, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2019, 0.0111934, 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1996, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1997, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1998, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 1999, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2000, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2001, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2002, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2003, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2004, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2005, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2012, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2015, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2016, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2019, 0.0111934, 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1996, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1997, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1998, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 1999, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2000, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2001, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2002, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2003, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2004, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2005, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2012, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2015, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2016, 0.0111934, 'M$/MW-year','still paying loan');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2019, 0.0111934, 'M$/MW-year','still paying loan');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1953, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1954, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1955, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1958, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1962, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1963, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1967, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1968, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1970, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1972, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1973, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1975, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1977, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1978, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1987, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1989, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1991, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1994, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1997, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 1998, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2005, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2009, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2012, 0.0407033, 'M$/MWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1953, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1954, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1955, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1958, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1962, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1963, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1967, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1968, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1970, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1972, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1973, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1975, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1977, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1978, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1987, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1989, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1991, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1994, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1997, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 1998, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2005, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2009, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2012, 0.0407033, 'M$/MWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1958, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1962, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1963, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1967, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1968, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1970, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1972, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1973, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1975, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1977, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1978, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1987, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1989, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1991, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1994, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1997, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 1998, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2005, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2009, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2012, 0.0407033, 'M$/MWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1962, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1963, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1967, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1968, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1970, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1972, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1973, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1975, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1977, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1978, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1987, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1989, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1991, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1994, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1997, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 1998, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2005, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2009, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2012, 0.0407033, 'M$/MWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1967, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1968, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1970, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1972, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1973, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1975, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1977, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1978, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1987, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1989, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1991, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1994, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1997, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 1998, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2005, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2009, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2012, 0.0407033, 'M$/MWh','source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1972, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1973, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1975, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1977, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1978, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1987, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1989, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1991, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1994, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1997, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 1998, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2005, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2009, 0.0407033, 'M$/MWh','source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2012, 0.0407033, 'M$/MWh','source: NREL ATB');


/*
FUTURE CAPACITY
*/
INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NUCLEAR_EXISTING', 2025, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2025, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2025, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2025, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2025, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2025, 0.057260, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NUCLEAR_EXISTING', 2030, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2030, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2030, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2030, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2030, 0.057260, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NUCLEAR_EXISTING', 2035, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2035, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2035, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2035, 0.057260, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NUCLEAR_EXISTING', 2040, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2040, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2040, 0.057260, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NUCLEAR_EXISTING', 2045, 0.057260, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2045, 0.057260, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NUCLEAR_EXISTING', 2050, 0.057260, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_EXISTING', 2025, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2025, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2025, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2025, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2025, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2025, 0.0407033, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_EXISTING', 2030, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2030, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2030, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2030, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2030, 0.0407033, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_EXISTING', 2035, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2035, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2035, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2035, 0.0407033, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_EXISTING', 2040, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2040, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2040, 0.0407033, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_EXISTING', 2045, 0.0407033, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2045, 0.0407033, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_EXISTING', 2050, 0.0407033, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'COAL_PLANT_NEW', 2025, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2025, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2025, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2025, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2025, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2025, 0.0590197, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'COAL_PLANT_NEW', 2030, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2030, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2030, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2030, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2030, 0.0590197, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'COAL_PLANT_NEW', 2035, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2035, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2035, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2035, 0.0590197, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'COAL_PLANT_NEW', 2040, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2040, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2040, 0.0590197, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'COAL_PLANT_NEW', 2045, 0.0590197, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2045, 0.0590197, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'COAL_PLANT_NEW', 2050, 0.0590197, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_EXISTING', 2025, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2025, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2025, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2025, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2025, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2025, 0.0111934, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_EXISTING', 2030, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2030, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2030, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2030, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2030, 0.0111934, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_EXISTING', 2035, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2035, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2035, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2035, 0.0111934, 'M$/MW-year', 'source: NREL ATB');


INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_EXISTING', 2040, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2040, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2040, 0.0111934, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_EXISTING', 2045, 0.0111934, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2045, 0.0111934, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_EXISTING', 2050, 0.0111934, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'NATGAS_PLANT_NEW', 2025, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2025, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2025, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2025, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2025, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2025, 0.0274747, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'NATGAS_PLANT_NEW', 2030, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2030, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2030, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2030, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2030, 0.0274747, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'NATGAS_PLANT_NEW', 2035, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2035, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2035, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2035, 0.0274747, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'NATGAS_PLANT_NEW', 2040, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2040, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2040, 0.0274747, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'NATGAS_PLANT_NEW', 2045, 0.0274747, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2045, 0.0274747, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'NATGAS_PLANT_NEW', 2050, 0.0274747, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_FARM', 2025, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2025, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2025, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2025, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2025, 0.0193340, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_FARM', 2030, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2030, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2030, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2030, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2030, 0.0193340, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_FARM', 2035, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2035, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2035, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2035, 0.0193340, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_FARM', 2040, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2040, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2040, 0.0193340, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_FARM', 2045, 0.0193340, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2045, 0.0193340, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_FARM', 2050, 0.0193340, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'SOLAR_RESIDENTIAL', 2025, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_RESIDENTIAL', 2025, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2025, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2025, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2025, 0.0223868, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'SOLAR_RESIDENTIAL', 2030, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2030, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2030, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2030, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2030, 0.0223868, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'SOLAR_RESIDENTIAL', 2035, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2035, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2035, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2035, 0.0223868, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'SOLAR_RESIDENTIAL', 2040, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2040, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2040, 0.0223868, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'SOLAR_RESIDENTIAL', 2045, 0.0223868, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2045, 0.0223868, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'SOLAR_RESIDENTIAL', 2050, 0.0223868, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2025, 'WIND_FARM', 2025, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2025, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2025, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2025, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2025, 0.04375601, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2030, 'WIND_FARM', 2030, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2030, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2030, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2030, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2030, 0.04375601, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2035, 'WIND_FARM', 2035, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2035, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2035, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2035, 0.04375601, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2040, 'WIND_FARM', 2040, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2040, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2040, 0.04375601, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2045, 'WIND_FARM', 2045, 0.04375601, 'M$/MW-year', 'source: NREL ATB');
INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2045, 0.04375601, 'M$/MW-year', 'source: NREL ATB');

INSERT INTO "CostFixed" VALUES ('IL', 2050, 'WIND_FARM', 2050, 0.04375601, 'M$/MW-year', 'source: NREL ATB');



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
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','NUCLEAR_EXISTING',0.925,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','NUCLEAR_EXISTING',0.925,'');

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

INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','day','SOLAR_RESIDENTIAL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','inter','night','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','day','SOLAR_RESIDENTIAL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','winter','night','SOLAR_RESIDENTIAL',0.0,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','day','SOLAR_RESIDENTIAL',0.19,'');
INSERT INTO `CapacityFactorTech` VALUES ('IL','summer','night','SOLAR_RESIDENTIAL',0.0,'');

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
