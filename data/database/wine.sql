DROP TABLE IF EXISTS wine;
DROP TABLE IF EXISTS wine_company;
DROP TABLE IF EXISTS wine_region;
DROP TABLE IF EXISTS wine_type;
DROP TABLE IF EXISTS wine_category;
DROP TABLE IF EXISTS wine_subcategory;

CREATE TABLE wine(
	id_wine VARCHAR(50) NOT NULL,
	fk_wine_company INT,
	fk_wine_region INT,
    name VARCHAR(50) NOT NULL,
    fk_wine_type INT,
    price INT,
    year INT,
    fk_wine_category INT,
    fk_wine_subcategory INT,
    volume FLOAT,
    alcohol FLOAT,
    sugar VARCHAR(50),
    acids VARCHAR(50),
    extract_sugar_free VARCHAR(50),
    grapes_sugar VARCHAR(50),
    archivation VARCHAR(50),
    recommend_temp VARCHAR(50),
    sulfur_dioxide VARCHAR(50),
    harvest DATE,
    batchnum VARCHAR(50)
);

CREATE TABLE wine_company(
	id_wine_company INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    headquarters VARCHAR(50),
    created_at DATE,
    employees INT,
    initial_deposit BIGINT
);

CREATE TABLE wine_region(
    id_wine_region INT NOT NULL,
    area_name VARCHAR(50) NOT NULL,
    area_ha FLOAT,
    productivity FLOAT,
    price_per_m_sq FLOAT,
    protection_class INT
);

CREATE TABLE wine_type(
    id_wine_type INT NOT NULL,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE wine_category(
    id_wine_category INT NOT NULL,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE wine_subcategory(
    id_wine_subcategory INT NOT NULL,
    name VARCHAR(50) NOT NULL
);

ALTER TABLE wine ADD CONSTRAINT pk_wine PRIMARY KEY (id_wine);
ALTER TABLE wine_company ADD CONSTRAINT pk_wine_company PRIMARY KEY (id_wine_company);
ALTER TABLE wine_region ADD CONSTRAINT pk_wine_region PRIMARY KEY (id_wine_region);
ALTER TABLE wine_type ADD CONSTRAINT pk_wine_type PRIMARY KEY (id_wine_type);
ALTER TABLE wine_category ADD CONSTRAINT pk_wine_category PRIMARY KEY (id_wine_category);
ALTER TABLE wine_subcategory ADD CONSTRAINT pk_wine_subcategory PRIMARY KEY (id_wine_subcategory);

INSERT INTO wine_type (id_wine_type, name) VALUES(1, 'bile-vino');
INSERT INTO wine_type (id_wine_type, name) VALUES(2, 'sekty-a-sumiva-vina');
INSERT INTO wine_type (id_wine_type, name) VALUES(3, 'ruzove-vino');
INSERT INTO wine_type (id_wine_type, name) VALUES(4, 'cervene-vino');
INSERT INTO wine_type (id_wine_type, name) VALUES(5, 'ostatni');
INSERT INTO wine_type (id_wine_type, name) VALUES(6, 'hroznovy-most');

INSERT INTO wine_category (id_wine_category, name) VALUES(1, 'polosuché');
INSERT INTO wine_category (id_wine_category, name) VALUES(2, 'polosladké');
INSERT INTO wine_category (id_wine_category, name) VALUES(3, 'suché');
INSERT INTO wine_category (id_wine_category, name) VALUES(4, 'sladké');

INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(1, 'moravské zemské');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(2, 'perlivé');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(3, 'výběr z hroznů');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(4, 'pozdní sběr');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(5, 'ledové');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(6, 'kabinetní');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(7, 'výběr z bobulí');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(8, 'jakostní');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(9, 'VOC');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(10, 'známkové');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(11, 'slámové');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(12, 'odrůdové');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(13, 'jakostní šumivé');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(14, 'likérové');
INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(15, 'výběr z cibéb');

INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(1, 'vinarstvi Trávníček a Kořínek', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(2, 'vinarstvi Waldberg', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(3, 'vinarstvi Jan Plaček', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(4, 'vinarstvi LAHOFER', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(5, 'vinarstvi Josef Kořínek', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(6, 'Dobrá Vinice', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(7, 'Vinné sklepy Lechovice', 'Lechovice', '1993-06-09', 37, 4599000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(8, 'vinarstvi HANZEL', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(9, 'ZNOVÍN ZNOJMO', 'Šatov', '1992-05-04', 86, 45217000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(10, 'Martin Vajčner | vinarstvi', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(11, 'Modrý sklep', 'Znojmo', '1993-12-03', 26, 50000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(12, 'vinarstvi Dobrovolný', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(13, 'vinarstvi AMPELOS', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(14, 'PARTILIA', 'Chvalovice', '2014-09-22', 1, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(15, 'vinarstvi Vinice Hnanice', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(16, 'vinarstvi Markel', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(17, 'VINEA Znojmo', 'Znojmo', '1993-05-19', 7, 100000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(18, 'Tasovické vinarstvi', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(19, 'VINO HORT', 'Dobšice', '2008-10-07', 4, 200000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(20, 'vinarstvi rodiny Nápravovy', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(21, 'vinarstvi Líbal', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(22, 'REGINA COELI', 'Znojmo', '1991-02-11', 2, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(23, 'vinarstvi Piálek & Jäger', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(24, 'VÍNO VANĚK', 'Vrbovec', '2009-09-25', 3, 200000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(25, 'vinarstvi Ladislav Musil', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(26, 'Popis', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(27, 'vinarstvi Špalek', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(28, 'vinarstvi Arte Vini', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(29, 'vinarstvi SIMENON', null, null, null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(30, 'Vinné sklepy Maršovice', 'Jezeřany-Maršovice', '1998-10-15', 7, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(32, 'Vinařství Trávníček a Kořínek', 'Hnanice', '2011-09-01', 29, 78780000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(33, 'Vinařství Jan Plaček', 'Brno-venkov', '1998-12-16', 5, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(34, 'Vinařství Waldberg', 'Vrbovec', '1994-02-04', 19, 12631000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(35, 'Vinařství LAHOFER', 'Dobšice', '1998-01-05', 42, 31465000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(36, 'Vinařství Josef Kořínek', 'Znojmo', '2015-01-06', null, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(37, 'Dobrá vinice', 'Ratíškovice', '1992-03-16', null, 14112000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(38, 'Vinařství HANZEL', 'Miroslav', '1995-12-05', 17, 24854286);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(39, 'Martin Vajčner | vinařství', 'Znojmo', '2018-11-16', 3, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(40, 'Vinařství Dobrovolný', 'Znojmo', '1991-08-12', 4, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(41, 'Vinařství AMPELOS', 'Vrbovec', '1993-08-05', 13, 100000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(42, 'Vinařství Vinice Hnanice', 'Brno', '2011-04-30', 63, 8200000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(43, 'Vinařství Markel', 'Znojmo', '1999-05-17', 1, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(44, 'Tasovické vinařství', 'Tasovice', '2013-08-07', 11, 200000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(45, 'Vinařství rodiny Nápravovy', 'Znojmo', '1993-05-26', 2, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(46, 'Vinařství Líbal', 'Horní Dunajovice', '2001-08-27', 5, 200000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(47, 'Vinařství Piálek & Jäger', 'Nový Šaldorf-Sedlešovice', '2011-07-08', 4, 200000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(48, 'Vinařství Ladislav Musil', 'Brno', '1992-06-05', 1, null);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(49, 'Vinařství Špalek', 'Nový Šaldorf-Sedlešovice', '2002-02-28', 6, 201000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(50, 'Vinařství Arte Vini', 'Chýně', '2009-04-23', 4, 200000);
INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(51, 'Vinařství Simenon', 'Znojmo', '2012-09-14', 2, null);

INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(1, 'Velké Bílovice', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(2, 'Dívčí vrch, Strachotice', 76.67, 90.26, 19.30, 1);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(3, 'Popice', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(4, 'Stošíkovice', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(5, 'Knížecí vrch, Hnanice', 81.91, 80.05, 14.13, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(6, 'Načeratický kopec', 164.71, 53.53, 10.21, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(7, 'Konice', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(8, 'Nad Sklepy, Vrbovec', 82.24, 71.46, 13.41, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(9, 'Šobes, Podmolí', 14.68, 79.01, 13.59, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(10, 'Skalka, Krhovice', 77.79, 57.86, 10.79, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(11, 'Vinohrady, Dyjákovice', 49.12, 49.51, 10.11, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(12, 'Nová hora, Moravské Bránice', 55.31, 53.14, 10.46, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(13, 'Novosedly', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(14, 'Frédy, Horní Dunajovice', 62.25, 48.25, 10.40, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(15, 'Šibeniční hora, Dolní Kounice', 77.53, 71.57, 12.33, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(16, 'Staré vinice, Havraníky', 96.00, 69.47, 12.64, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(17, 'Stará hora, Božice', 68.66, 65.93, 13.78, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(18, 'Dobšice u Znojma', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(19, 'Volné pole, Hostěradice', 116.10, 48.27, 10.22, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(20, 'Hustopeče', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(21, 'Hrádek u Znojma', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(22, 'Weinperky, Miroslav', 127.79, 49.44, 10.95, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(23, 'Frédy, Želetice', 37.44, 51.12, 10.83, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(24, 'Nad Kolářovým sklepem, Borotice', 93.26, 54.64, 10.89, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(25, 'Kamenný vrch, Tasovice', 89.50, 74.55, 14.30, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(26, 'Dívčí hora, Chvalovice', 136.27, 17.04, 5.90, 5);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(27, 'Kraví hora, Znojmo', 87.21, 74.43, 13.18, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(28, 'Seslice, Mělčany', 72.87, 53.89, 10.98, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(29, 'Bohutice', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(30, 'Oblekovice', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(31, 'Dívčí vrch, Slup', 36.66, 70.43, 14.13, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(32, 'Nový Šaldorf', null, null, null, null);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(33, 'Staré hory, Nové Bránice', 15.75, 51.90, 10.75, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(34, 'Šác, Dyjákovičky', 26.75, 77.44, 13.34, 2);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(35, 'Babičák, Dyje', 44.53, 85.87, 19.11, 1);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(36, 'U lipky, Oleksovice', 27.13, 47.84, 10.54, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(37, 'Na vyhlídce, Olbramovice', 90.13, 47.28, 10.40, 3);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(38, 'Kraví hora, Nový Šaldorf-Sedlešovice', 92.52, 32.40, 5.35, 4);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(39, 'Kokusové hory, Petrovice', 67.28, 84.70, 18.23, 1);
INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(40, 'Tři díly, Těšetice', 30.93, 80.04, 13.80, 2);

INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0080', 1, null, 'Muškát moravský - mladé víno', 1, 110, 2019, 1, 1, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0294', 2, null, 'Mladé bílé 2019', 1, 130, 2019, 1, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '19/165WA');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0062', 3, null, 'Mladé pokušení 2019', 1, 159, 2019, 2, 1, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0259', 4, null, 'Prosecco - 2018 DOC Extra Dry', 2, 230, 2018, 3, 2, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, 'L19/218');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0081', 1, null, 'Dornfelder rosé - mladé víno', 3, 110, 2019, 2, 1, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0033', 5, null, 'Zweigeltrebe rosé - Mladé 2019', 3, 145, 2019, 2, 1, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0017', 6, 1, 'Quatre - Štverka 2016', 1, 290, 2016, null, 1, 0.00, 13.00, '1 g/l ', '5,4 g/l', '', '24,6 °NM', '', '', 'Ano', null, 'Q1968/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0054', 7, null, 'Sauvignon - Mladé víno 2019', 1, 115, 2019, 1, 1, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0295', 2, null, 'Mladé růžové 2019', 3, 140, 2019, 2, 1, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '19/172WA');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0260', 4, null, 'Mladý LAHOFER 2019', 1, 120, 2019, 1, 1, 0.00, 11.00, '14,3 g/l ', '6,7 g/l', '', '', 'o 1 roku', '', 'Ano', null, '10419LA');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0261', 4, null, 'Mladá LAHOFERka 2019', 3, 140, 2019, 2, 1, 0.00, 11.00, null, '', '', '', 'o 1 roku', '', 'Ano', null, '14719LA');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0177', 8, null, 'Martin Růžový 2019', 3, 140, 2019, 1, 1, 0.00, 12.00, '12,8 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '10519HA');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0262', 4, null, 'Rulandské bílé A', 1, 200, 2018, 3, 3, 0.00, 12.00, '7,8 g/l ', '6,5 g/l', '25,3 g/l', '', '', '', 'Ano', null, '10018LA');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0220', 9, 2, 'Sauvignon - Pozdrav ze Znojma', 1, 190, 2018, 1, 4, 0.00, 12.00, '7,9 g/l ', '6,4 g/l', '22,8 g/l', '', '7 – 9', '', 'Ano', null, '8343');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAJ.0006', 10, 3, 'Ryzlink vlašský', 1, 250, 2018, 3, 1, 0.00, 13.00, '2 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '5/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0218', 9, 4, 'Ryzlink rýnský - ledové víno', 1, 420, 2015, 4, 5, 0.00, 8.00, '194,8 g/l ', '9 g/l', '53,6 g/l', '', '10 -12', '', 'Ano', null, '5110');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0078', 1, 5, 'Pinot Noir', 4, 259, 2017, 3, 1, 0.00, 13.00, '0,3 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '29/17/PN');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0064', 11, 6, 'Chardonnay', 1, 180, 2018, 2, 4, 0.00, 14.00, '20,1 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '6/18-A');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0030', 12, 7, 'Sylvánské zelené', 1, 267, 2017, 1, 6, 0.00, 11.00, '10,9 g/l ', '7,8 g/l', '20,1 g/l', '', '', '', 'Ano', null, '10-17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0081', 13, 8, 'Rulandské šedé', 1, 199, 2017, 1, 4, 0.00, 12.00, '14,6 g/l ', '6,3 g/l', '20,7 g/l', '21 °NM', '', '', 'Ano', null, '1711');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0217', 9, 9, 'Ryzlink vlašský - Šobes', 1, 240, 2017, 1, 4, 0.00, 12.00, '10,6 g/l ', '7 g/l', '23,9 g/l', '', '7 – 9', '', 'Ano', null, '7318');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0079', 13, 8, 'Sauvignon', 1, 200, 2017, 1, 4, 0.00, 12.00, '12,3 g/l ', '5,7 g/l', '19,1 g/l', '', '', '', 'Ano', null, '1703');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0082', 13, null, 'Mladý Kerner', 1, 150, 2019, 3, 1, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0019', 14, null, 'Veltlínské zelené', 1, 242, 2018, 3, 1, 0.00, 13.00, '1 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '1808');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0176', 8, null, 'Martin Bílý 2019', 1, 120, 2019, null, 1, 0.00, 12.00, '38,6 g/l ', '7,6 g/l', '', '', 'o 1 roku', '', 'Ano', null, '12319HA');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0131', 15, 5, 'Kerner', 1, 170, 2017, 4, 4, 0.00, 10.00, '57,3 g/l ', '8,3 g/l', '31,2 g/l', '', '', '', 'Ano', null, '2598/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0065', 11, 6, 'Tramín', 1, 200, 2018, 4, 7, 0.00, 11.00, '69,9 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '12/18-A');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MAR.0012', 16, null, 'Pálava', 1, 260, 2018, null, 3, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0014', 17, 7, 'Cabernet Sauvignon Rosé', 3, 140, 2018, 2, 1, 0.00, 12.00, '22 g/l ', '7,3 g/l', '', '', '', '', 'Ano', null, '18/04');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0036', 18, 10, 'Müller Thrugau', 1, 120, 2018, 3, 4, 0.00, 12.00, '4 g/l ', '5,3 g/l', '23,4 g/l', '', '', '', 'Ano', null, '182');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0275', 2, 11, 'Ryzlink vlašský', 1, 200, 2018, 3, 4, 0.00, 12.00, '5,2 g/l ', '5,6 g/l', '20,9 g/l', '', '', '', 'Ano', null, '18/02');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0061', 3, 12, 'Frankovka', 4, 160, 2017, 3, 8, 0.00, 12.00, '0,4 g/l ', '3,8 g/l', '22,4 g/l', '', '1 - 3 roky', '', 'Ano', null, '17FR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0163', 8, 8, 'Hibernal', 1, 180, 2018, 2, 4, 0.00, 11.00, '26,5 g/l ', '7 g/l', '28,7 g/l', '', '2 - 4', '', 'Ano', null, '9118');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0219', 9, 2, 'Ryzlink rýnský', 1, 170, 2018, 3, 9, 0.00, 12.00, '7 g/l ', '7 g/l', '27,6 g/l', '', '6 - 8', '', 'Ano', null, '8345');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0066', 19, null, 'Pinot Gris', 1, 266, 2017, 3, 4, 0.00, 12.00, '3,6 g/l ', '5,5 g/l', '', '', '6 - 8', '', 'Ano', null, '10/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0028', 20, 13, 'Sauvignon - KRAVÁK', 1, 300, 2018, 3, 4, 0.00, 14.00, '2,1 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '19/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0043', 21, 14, 'Tramín červený', 1, 225, 2016, 2, 4, 0.00, 12.00, '28,3 g/l ', '5,3 g/l', '21,8 g/l', '', '', '', 'Ano', null, '1612');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0065', 22, 15, 'Veltlínské zelené - Staré keře', 1, 182, 2018, 3, 4, 0.00, 13.00, '1,2 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '1840');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0031', 5, 16, 'Veltlínské zelené', 1, 185, 2018, 3, 1, 0.00, 12.00, '6,8 g/l ', '6,5 g/l', '', '22,9 °NM', '', '', 'Ano', null, 'VZ15/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0077', 1, 5, 'Pinot Blanc', 1, 249, 2016, 3, 4, 0.00, 12.00, '0,8 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '2/16/PB');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0052', 7, 17, 'Ryzlink vlašský', 1, 150, 2016, 3, 4, 0.00, 12.00, '2,6 g/l ', '6,7 g/l', '', '', '', '', 'Ano', null, '86E1-17/10');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0080', 13, 8, 'Veritas', 1, 200, 2017, 2, 4, 0.00, 12.00, '22,8 g/l ', '6,3 g/l', '21,5 g/l', '22 °NM', '', '', 'Ano', null, '1704');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0234', 4, 18, 'Neuburské', 1, 175, 2018, 1, 4, 0.00, 12.00, '10,6 g/l ', '6,5 g/l', '23,8 g/l', '21,4 °NM', '4 - 6', '', 'Ano', '2018-09-19', '4718');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0209', 9, null, 'Mont Pré', 1, 100, 2017, 1, 10, 0.00, 12.00, '9,5 g/l ', '7 g/l', '20,4 g/l', '', '4 - 6', '', 'Ano', null, '7415');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0129', 15, 8, 'Sylvánské zelené', 1, 150, 2018, 3, 6, 0.00, 11.00, '0,7 g/l ', '5,5 g/l', '21,2 g/l', '', '', '', 'Ano', null, '668/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0128', 15, 5, 'Sauvignon Gris', 1, 199, 2018, 4, 7, 0.00, 11.00, '87,7 g/l ', '7,5 g/l', '30,9 g/l', '', '', '', 'Ano', null, '1656/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0161', 8, 19, 'Müller Thurgau', 1, 165, 2018, 3, 4, 0.00, 12.00, '7,6 g/l ', '6,2 g/l', '23,1 g/l', '21,2 °NM', '4 - 6', '', 'Ano', '2018-09-10', '2218');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0215', 9, 20, 'Chardonnay', 1, 160, 2018, 3, 4, 0.00, 12.00, '5,6 g/l ', '6,8 g/l', '24,6 g/l', '', '6 - 8', '', 'Ano', null, '8315');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0079', 1, 5, 'Frankovka', 4, 196, 2017, 3, 1, 0.00, 13.00, '0,1 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '31/17/FR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0041', 21, 14, 'Sauvignon VOC', 1, 250, 2017, 3, 9, 0.00, 11.00, '5,6 g/l ', '5,6 g/l', '20,4 g/l', '21,5 °NM', '', '', 'Ano', null, '1711/1');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0243', 4, 21, 'Veltlínské zelené', 1, 165, 2018, 3, 4, 0.00, 11.00, '5,2 g/l ', '6,4 g/l', '24,2 g/l', '21 °NM', '2 - 4', '', 'Ano', '2018-09-03', '1618');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0213', 9, 22, 'Müller Thurgau', 1, 150, 2018, 3, 4, 0.00, 12.00, '6 g/l ', '6,2 g/l', '21,4 g/l', '', '5-7 le', '', 'Ano', null, '8326');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0011', 17, 7, 'Sauvignon', 1, 160, 2018, 1, 1, 0.00, 13.00, '13 g/l ', '7 g/l', '', '23,5 °NM', '', '', 'Ano', null, '18/01');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0012', 17, 7, 'Neuburské', 1, 150, 2018, 2, 1, 0.00, 11.00, '23 g/l ', '7 g/l', '', '23 °NM', '', '', 'Ano', null, '18/02');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0042', 21, 23, 'Chardonnay', 1, 240, 2017, 2, 3, 0.00, 12.00, '30 g/l ', '6,8 g/l', '29,8 g/l', '24,5 °NM', '', '', 'Ano', null, '1712');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0013', 17, 7, 'Pálava', 1, 180, 2018, 2, 1, 0.00, 12.00, '39 g/l ', '7,2 g/l', '', '26 °NM', '', '', 'Ano', null, '18/03');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0078', 13, 8, 'Pálava', 1, 210, 2018, 2, 4, 0.00, 12.00, '22,6 g/l ', '5,3 g/l', '23,1 g/l', '24 °NM', '', '', 'Ano', null, '1850');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0051', 7, 24, 'Frankovka - slámové', 4, 344, 2015, 4, 11, 0.00, 11.00, '180 g/l ', '6,7 g/l', '', '', '', '', 'Ano', null, '01526');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0077', 13, null, 'Symposion', 1, 150, 2017, 1, 8, 0.00, 10.00, '15,5 g/l ', '5,9 g/l', '', '21 °NM', '', '', 'Ano', null, '1730');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0127', 15, 8, 'Hibernal', 1, 170, 2018, 1, 4, 0.00, 12.00, '7,3 g/l ', '7 g/l', '24,7 g/l', '', '', '', 'Ano', null, '671/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0212', 9, 22, 'Tramín červený', 1, 190, 2017, 4, 7, 0.00, 11.00, '66,8 g/l ', '7,7 g/l', '35,6 g/l', '', '8 - 10 le', '', 'Ano', null, '7356');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0257', 4, 19, 'Ryzlink rýnský', 1, 109, 2018, 3, 6, 0.00, 12.00, '5,7 g/l ', '6,7 g/l', '24,2 g/l', '21 °NM', '3 - 5', '', 'Ano', '2018-10-17', '10418');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0222', 4, null, 'Muškát moravský', 1, 170, 2018, 4, 4, 0.00, 9.00, '45,3 g/l ', '6,9 g/l', '25,1 g/l', '21,2 °NM', '2 - 4', '', 'Ano', null, '118');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0211', 9, 4, 'Semillon', 1, 169, 2018, 3, 4, 0.00, 12.00, '7 g/l ', '7 g/l', '25 g/l', '', '2 - 4', '', 'Ano', null, '8359');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0076', 1, 5, 'Müller Thurgau', 1, 179, 2018, 3, 6, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, 'NP/MT/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0076', 13, 8, 'Sauvignon', 1, 199, 2018, 1, 4, 0.00, 12.00, '10,9 g/l ', '4,9 g/l', '21,9 g/l', '21 °NM', '', '', 'Ano', null, '1813');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0032', 18, 25, 'Veltlínské červené rané', 1, 100, 2017, 1, 4, 0.00, 11.00, '8,1 g/l ', '5,9 g/l', '23,7 g/l', '', '', '', 'Ano', null, '173');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0010', 17, 7, 'Dornfelder', 4, 170, 2018, 3, 1, 0.00, 14.00, '0,1 g/l ', '5,8 g/l', '', '', '', '', 'Ano', null, '18/05');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0074', 23, null, 'Chardonnay - Dolce Vita', 1, 280, 2018, 4, 3, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1819S');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0276', 2, 26, 'Sylvánské zelené - suché', 1, 200, 2018, 3, 4, 0.00, 13.00, '5,6 g/l ', '5,2 g/l', '21,5 g/l', '', '', '', 'Ano', null, '18/14');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0072', 23, 27, 'Ryzlink rýnský Sexenberg', 1, 269, 2016, 3, 4, 0.00, 12.00, '1 g/l ', '', '', '', '', '', 'Ano', null, '1606G');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0071', 23, null, 'Roséčko', 3, 145, 2018, 3, 6, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '1803');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0070', 23, 22, 'Grand Veltlin No.5', 1, 390, 2016, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1620');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0047', 24, 8, 'Rulandské bílé', 1, 180, 2018, 3, 4, 0.00, 12.00, '7 g/l ', '5,6 g/l', '24,8 g/l', '22 °NM', '', '', 'Ano', null, '18/RB');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0046', 24, 27, 'Veltlínské zelené', 1, 180, 2018, 3, 4, 0.00, 12.00, '2,6 g/l ', '6,3 g/l', '22,7 g/l', '', '', '', 'Ano', null, '18/VZ');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0258', 4, null, 'Merlot', 4, 155, 2013, 3, 12, 0.00, 13.00, '0,4 g/l ', '4 g/l', '22,4 g/l', '', '', '', 'Ano', null, '4613');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0051', 24, 6, 'Ryzlink rýnský - panenský sběr', 1, 206, 2018, 3, 1, 0.00, 12.00, '4 g/l ', '6 g/l', '', '21 °NM', '', '', 'Ano', null, '18/RRO');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0060', 3, 28, 'Pálava', 1, 181, 2018, 2, 4, 0.00, 13.00, '28,9 g/l ', '5,9 g/l', '24,4 g/l', '', '', '', 'Ano', null, '18PAps');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0050', 24, 8, 'Rulandské šedé', 1, 193, 2018, 3, 4, 0.00, 13.00, '3,9 g/l ', '6,2 g/l', '26,8 g/l', '22,8 °NM', '', '', 'Ano', null, '18/RŠ');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0049', 24, 8, 'Tramín', 1, 206, 2018, 1, 3, 0.00, 13.00, '11,3 g/l ', '5,9 g/l', '23,6 g/l', '24,3 °NM', '', '', 'Ano', null, '18/TR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0249', 4, null, 'Veltlínské zelené', 1, 109, 2018, 3, 6, 0.00, 12.00, '5,9 g/l ', '6,4 g/l', '23,1 g/l', '21,3 °NM', '2 - 4', '', 'Ano', '2018-10-08', '7918');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0048', 24, 27, 'Pinot Gris', 1, 206, 2018, 3, 3, 0.00, 13.00, '7,6 g/l ', '6 g/l', '26,5 g/l', '24,2 °NM', '', '', 'Ano', null, '18/PG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0073', 23, 27, 'Ryzlink rýnský - botritický sběr', 1, 320, 2017, 4, 7, 0.00, 8.00, '125 g/l ', '', '', '', '', '', 'Ano', null, '1706S');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0033', 18, 25, 'Veritas', 1, 180, 2018, 2, 3, 0.00, 12.00, '30,3 g/l ', '6,4 g/l', '24,8 g/l', '', '', '', 'Ano', null, '183');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0017', 14, null, 'Ryzlink rýnský', 1, 194, 2017, 2, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ne', null, '1709');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAJ.0005', 10, 2, 'Tramín červený', 1, 250, 2018, 3, 1, 0.00, 11.00, '1 g/l ', '5,8 g/l', '', '', '', '', 'Ano', null, '2/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0050', 7, 29, 'Rulandské bílé', 1, 185, 2018, 2, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '01824');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0013', 6, null, 'Velké dobré červené', 4, 363, 2015, null, 1, 0.00, 13.00, null, '5,9 g/l', '', '', '', '', 'Ne', null, 'VDČ 1968 - 15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0210', 9, 5, 'Pálava', 1, 160, 2018, 2, 3, 0.00, 12.00, '23,8 g/l ', '6,9 g/l', '23,2 g/l', '', '6 - 8', '', 'Ano', null, '8380');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0016', 6, null, 'Vlašský ryzlink Qvevri Georgia Naturel Orange', 1, 424, 2017, null, 1, 0.00, 12.00, '0,1 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, 'VRQ 1968/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0014', 6, null, 'Blanc de Pinot noir', 1, 351, 2016, 3, 1, 0.00, 13.00, null, '6 g/l', '', '', '', '', 'Ano', null, 'BDEPN 1986 - 16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0034', 18, 25, 'Tramín červený', 1, 150, 2018, 2, 3, 0.00, 13.00, '22,6 g/l ', '6,4 g/l', '27,3 g/l', '', '', '', 'Ano', null, '1811');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0022', 25, null, 'Irsai Oliver', 1, 199, 2018, 3, 4, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '1/2018ps');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0031', 18, 25, 'Muškát moravský', 1, 100, 2017, 1, 4, 0.00, 13.00, '9,1 g/l ', '5,6 g/l', '22,3 g/l', '', '', '', 'Ano', null, '171');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0207', 9, null, 'Tramín červený', 1, 115, 2018, 2, 8, 0.00, 12.00, '23,1 g/l ', '6,6 g/l', '23,1 g/l', '', '4 - 6', '', 'Ano', null, '8376');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0225', 4, 8, 'Tramín červený', 1, 210, 2018, 4, 7, 0.00, 11.00, '57,6 g/l ', '6,9 g/l', '28 g/l', '27,2 °NM', '4 - 6', '', 'Ano', '2018-10-01', '6018');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0015', 6, null, 'Cuvée Kambrium', 1, 224, 2015, 3, 1, 0.00, 12.00, '0,5 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, 'KAM 1968 -15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAJ.0004', 10, 30, 'Ryzlink rýnský', 1, 250, 2018, 3, 1, 0.00, 11.00, '0,5 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '8/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0035', 18, 25, 'Pálava', 1, 170, 2018, 4, 3, 0.00, 11.00, '56,9 g/l ', '6,3 g/l', '29,6 g/l', '', '', '', 'Ano', null, '1812');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0061', 22, 15, 'Merlot Rosé', 3, 182, 2018, 1, 4, 0.00, 13.00, '11,6 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '1835');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0049', 7, 24, 'Zweigeltrebe', 4, 185, 2018, 3, 3, 0.00, 14.00, null, '', '', '25,1 °NM', '', '', 'Ne', '2018-10-12', '01832');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0059', 22, 15, 'Frankovka', 4, 133, 2017, 3, 1, 0.00, 13.00, '0,2 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '1722');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0061', 11, 6, 'Muškát moravský', 1, 120, 2018, 2, 8, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '1/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0063', 22, 15, 'Pálava', 1, 206, 2018, 1, 4, 0.00, 13.00, '15,2 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '1843');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0062', 22, 15, 'Pálava', 1, 145, 2018, 3, 1, 0.00, 13.00, '5,5 g/l ', '6,7 g/l', '', '22,4 °NM', '', '', 'Ano', null, '1816');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0251', 4, null, 'Frizzante LAHOFER', 2, 170, 2018, 4, 2, 0.00, 9.00, '51 g/l ', '7,1 g/l', '', '', '1 - 2', '', 'Ano', null, '13318');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0060', 22, 15, 'Müller Thrugau', 1, 133, 2018, 3, 1, 0.00, 12.00, '2 g/l ', '5,8 g/l', '', '20 °NM', '', '', 'Ano', null, '1813');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0059', 11, 6, 'Rulandské šedé', 1, 99, 2018, 1, 8, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '4/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0208', 9, null, 'Chardonnay', 1, 115, 2017, 1, 8, 0.00, 12.00, '9,6 g/l ', '6,5 g/l', '23,5 g/l', '', '4 - 6', '', 'Ano', null, '7363');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0058', 3, 15, 'Svatovavřinecké Rosé', 3, 138, 2018, 2, 6, 0.00, 11.00, '15,9 g/l ', '4,9 g/l', '', '', '1 - 3 roky', '', 'Ano', null, 'SV18roka');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0201', 9, 4, 'Rulandské modré AKÁT z edice DUEL', 4, 240, 2017, 3, 3, 0.00, 13.00, '1,1 g/l ', '5,4 g/l', '29,9 g/l', '', '6-8le', '', 'Ano', null, '7413');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0059', 3, 28, 'SolarCO2', 2, 149, 2018, 4, 2, 0.00, 9.00, '72,4 g/l ', '7,7 g/l', '22,2 g/l', '', '1 - 3 roky', '', 'Ano', null, 'SOL18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0203', 9, 4, 'Tramín červený GENUS REGIS', 1, 150, 2017, 2, 3, 0.00, 12.00, '40,3 g/l ', '6,7 g/l', '28,5 g/l', '', '6 - 8', '', 'Ano', null, '7355');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0205', 9, 31, 'Cabernet Sauvignon Rosé', 3, 150, 2018, 2, 4, 0.00, 13.00, '19,8 g/l ', '7,2 g/l', '24,9 g/l', '', '2 - 4', '', 'Ano', null, '8387');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0202', 9, 4, 'Rulandské modré DUB z edice DUEL', 4, 240, 2017, 3, 3, 0.00, 13.00, '1,1 g/l ', '5,3 g/l', '29,6 g/l', '', '6-8le', '', 'Ano', null, '7414');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0204', 9, 25, 'Pálava', 1, 150, 2018, 2, 3, 0.00, 12.00, '36,4 g/l ', '7 g/l', '27,3 g/l', '', '7 – 9', '', 'Ano', null, '8377');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0060', 11, 6, 'Veltlínské zelené', 1, 80, 2018, 3, 8, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '8/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0091', 27, 32, 'Gryllus bílý', 1, 210, 2018, 3, 6, 0.00, 12.00, '2,8 g/l ', '', '', '', '', '', 'Ano', null, '1618');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0064', 22, 33, 'Sauvignon Staré hory', 1, 182, 2018, 3, 4, 0.00, 12.00, '4 g/l ', '6,7 g/l', '', '', '', '', 'Ano', null, '1841');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0030', 18, 10, 'Veltlínské zelené VOC', 1, 160, 2018, 3, 9, 0.00, 13.00, '0,3 g/l ', '5,6 g/l', '22,1 g/l', '', '', '', 'Ano', '2018-09-24', '189');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0075', 1, 5, 'Veltlínské zelené VOC', 1, 225, 2018, 3, 9, 0.00, 13.00, '2,6 g/l ', '6 g/l', '', '', '', '', 'Ano', null, 'VZ/VK/V18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0018', 14, null, 'Tramín červený', 1, 194, 2018, 2, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1806');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAJ.0002', 10, 3, 'Veltlínské zelené', 1, 250, 2018, 3, 1, 0.00, 12.00, '2,4 g/l ', '6,1 g/l', '', '', '', '', 'Ne', null, '4/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAJ.0003', 10, 6, 'Frankovka', 4, 300, 2018, 3, 1, 0.00, 11.00, '1,4 g/l ', '6,3 g/l', '', '', '', '', 'Ano', null, '9/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAJ.0001', 10, 6, 'Sauvignon', 1, 300, 2018, 3, 1, 0.00, 11.00, '2 g/l ', '6,4 g/l', '', '', '', '', 'Ano', null, '7/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0056', 28, 8, 'Pinot Noir', 4, 290, 2017, 3, 1, 0.00, 13.00, '1 g/l ', '5,5 g/l', '', '24 °NM', '', '', 'Ano', null, 'L-201815');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0055', 28, 15, 'Frankovka', 4, 290, 2017, 3, 1, 0.00, 13.00, '1 g/l ', '5,5 g/l', '', '22 °NM', '', '', 'Ano', null, 'L-201812');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0053', 28, null, 'Chardonnay', 1, 250, 2017, 3, 1, 0.00, 13.00, '4 g/l ', '6,5 g/l', '', '22,5 °NM', '', '', 'Ano', null, 'L-201807');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0052', 28, 7, 'Ryzlink rýnský', 1, 250, 2018, 3, 1, 0.00, 12.00, '4 g/l ', '6,5 g/l', '', '22,5 °NM', '', '', 'Ano', null, 'L-201907');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0016', 14, 4, 'Pinot Noir', 4, 299, 2017, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1711');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0089', 27, 32, 'Veltlínské zelené VOC', 1, 190, 2018, 3, 9, 0.00, 12.00, '2,7 g/l ', '', '', '', '', '', 'Ano', null, '1818');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0125', 15, 5, 'Ryzlink rýnský VOC', 1, 180, 2018, 3, 9, 0.00, 12.00, '2,8 g/l ', '6,3 g/l', '22,2 g/l', '', '', '', 'Ano', null, '1646/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0054', 28, 34, 'Pálava', 1, 290, 2018, 4, 1, 0.00, 12.00, '33 g/l ', '6,5 g/l', '', '24,5 °NM', '', '', 'Ano', null, 'L-201908');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0049', 28, 16, 'Ryzlink rýnský VOC', 1, 219, 2018, 3, 9, 0.00, 12.00, '3 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, 'L-201928');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0050', 28, 32, 'Sauvignon VOC', 1, 219, 2018, 3, 9, 0.00, 11.00, '6 g/l ', '5,5 g/l', '', '', '', '', 'Ano', null, 'L-201927');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0031', 29, null, 'Veltlínské zelené VOC', 1, 220, 2018, 3, 9, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '2018-06');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0090', 27, 32, 'Rulandské šedé', 1, 210, 2018, 1, 4, 0.00, 13.00, '4,6 g/l ', '', '', '', '', '', 'Ano', null, '1918');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0030', 29, null, 'Ryzlink rýnský VOC', 1, 220, 2018, 1, 9, 0.00, null, null, '', '', '', '', '', 'Ano', null, '2018-08');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0274', 2, 26, 'Sylvánské zelené - polosladké', 1, 200, 2018, 2, 4, 0.00, 11.00, '25,6 g/l ', '6,1 g/l', '25,3 g/l', '', '', '', 'Ano', null, '18/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0029', 18, 25, 'Sauvignon VOC', 1, 160, 2018, 1, 9, 0.00, 13.00, '13,4 g/l ', '6 g/l', '23,6 g/l', '', '', '', 'Ano', '2018-09-12', '184');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0065', 19, 6, 'Ryzlink rýnský VOC', 1, 266, 2018, null, 9, 0.00, 11.00, '8,8 g/l ', '7,1 g/l', '', '', '6 - 8', '', 'Ano', null, '14/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0206', 9, 5, 'Tramín červený - Lacerta Viridis', 1, 170, 2018, 2, 4, 0.00, 12.00, '25 g/l ', '7 g/l', '25,9 g/l', '', '4 - 6', '', 'Ano', null, '8319');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0044', 24, 8, 'Muškát moravský', 1, 180, 2018, 3, 6, 0.00, 11.00, '3,1 g/l ', '5,4 g/l', '19,7 g/l', '19,2 °NM', '', '', 'Ano', null, '18/MM');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0045', 24, 8, 'Tramín žlutý', 1, 230, 2018, 4, 1, 0.00, 11.00, '46 g/l ', '6,6 g/l', '', '27,1 °NM', '', '', 'Ano', null, '18/TŽ');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0186', 4, 35, 'LAHOmošt hroznový Veltlínské zelené', 6, 99, 0, 4, null, 0.00, null, null, '', '', '', '', '', 'Ne', null, '1317');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0029', 29, null, 'Sauvignon Blanc VOC', 1, 220, 2018, 3, 9, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '2018-04');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0041', 24, 26, 'Zweigeltrebe Rosé', 3, 180, 2018, 3, 6, 0.00, 11.00, '3,8 g/l ', '6,1 g/l', '23,3 g/l', '19,8 °NM', '', '', 'Ano', null, '18/ZWR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0042', 24, 26, 'Frizzante Zweigeltrebe', 2, 206, 2018, 1, 13, 0.00, 10.00, null, '', '', '19,8 °NM', '', '', 'Ano', null, '18/ZWF');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0040', 24, 8, 'Ryzlink rýnský VOC', 1, 230, 2018, 3, 9, 0.00, 12.00, '2,5 g/l ', '6,3 g/l', '26,4 g/l', '21 °NM', '', '', 'Ano', null, '18/RR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0053', 7, 36, 'Ryzlink rýnský', 1, 165, 2017, 2, 4, 0.00, 12.00, '31,8 g/l ', '7,5 g/l', '', '', '', '', 'Ano', null, '01732');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0124', 15, 5, 'Sauvignon VOC', 1, 190, 2018, 3, 9, 0.00, 12.00, '3,2 g/l ', '5,2 g/l', '20,3 g/l', '', '', '', 'Ano', null, '1649/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0268', 2, 8, 'Hibernal', 1, 200, 2018, 2, 4, 0.00, 12.00, '25,1 g/l ', '6,4 g/l', '26,9 g/l', '', '', '', 'Ano', null, '18/12');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0267', 2, 8, 'Neuburské', 1, 200, 2018, 3, 4, 0.00, 12.00, '5,5 g/l ', '6,6 g/l', '24,5 g/l', '', '', '', 'Ano', null, '18/11');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0266', 2, 8, 'Chardonnay', 1, 200, 2018, 1, 4, 0.00, 12.00, '10,9 g/l ', '5,6 g/l', '26,3 g/l', '', '', '', 'Ano', null, '18/24');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0265', 2, 8, 'Rinot', 1, 200, 2018, 1, 3, 0.00, 13.00, '13,9 g/l ', '6,8 g/l', '25,9 g/l', '', '', '', 'Ano', null, '18/12');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0240', 4, 18, 'Rulandské šedé', 1, 190, 2018, 3, 4, 0.00, 13.00, '7,9 g/l ', '6,3 g/l', '24,3 g/l', '23 °NM', '4 - 6', '', 'Ano', '2018-09-17', '3618');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0269', 2, 11, 'Ryzlink rýnský', 1, 200, 2018, 1, 4, 0.00, 12.00, '12,7 g/l ', '6,6 g/l', '26,1 g/l', '', '', '', 'Ano', null, '18/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0244', 4, 35, 'Pálava', 1, 220, 2018, 2, 3, 0.00, 12.00, '31,6 g/l ', '7,1 g/l', '24,5 g/l', '25,6 °NM', '4 - 6', '', 'Ano', '2018-10-04', '11818');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0197', 9, 5, 'Sauvignon VOC', 1, 170, 2018, 3, 9, 0.00, 13.00, '3,2 g/l ', '6,9 g/l', '25,2 g/l', '', '6 - 8', '', 'Ano', null, '8335');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0199', 9, 10, 'Veltlínské zelené VOC', 1, 170, 2018, 3, 9, 0.00, 12.00, '6,9 g/l ', '6,7 g/l', '24,1 g/l', '', '4 - 6', '', 'Ano', null, '8312');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0200', 9, 5, 'Sauvignon VOC', 1, 170, 2017, 3, 9, 0.00, 12.00, '8,5 g/l ', '6,7 g/l', '22,8 g/l', '', '6 - 8', '', 'Ano', null, '7345');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0238', 4, 8, 'Veltlínské zelené VOC', 1, 175, 2018, 3, 9, 0.00, 12.00, '8,6 g/l ', '6,7 g/l', '25,5 g/l', '22,6 °NM', '4 - 6', '', 'Ano', '2018-09-27', '7518');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0167', 8, 35, 'Pálava', 1, 220, 2018, 2, 3, 0.00, 12.00, '31,2 g/l ', '7,2 g/l', '26,2 g/l', '25,6 °NM', '4 - 6', '', 'Ano', '2018-10-04', '8918');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0196', 9, 20, 'Ryzlink vlašský - Rosnička zelená', 1, 170, 2018, 3, 4, 0.00, 12.00, '7,9 g/l ', '7,1 g/l', '24,4 g/l', '', '6 - 8', '', 'Ano', null, '8329');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0239', 4, 18, 'Sauvignon VOC - U Hájku', 1, 190, 2018, 3, 9, 0.00, 12.00, '7,3 g/l ', '7,2 g/l', '22,4 g/l', '21,2 °NM', '4 - 6', '', 'Ano', null, '1418');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0039', 24, 8, 'Sauvignon VOC', 1, 206, 2018, 3, 9, 0.00, 12.00, '2,3 g/l ', '6,7 g/l', '25,1 g/l', '21,3 °NM', '', '', 'Ano', null, '18/SG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0043', 24, 26, 'Frizzante Sauvignon', 2, 206, 2018, 1, 13, 0.00, 11.00, null, '', '', '21,3 °NM', '', '', 'Ano', null, '18/SGF');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0048', 7, 24, 'Ryzlink rýnský VOC', 1, 165, 2018, 1, 9, 0.00, 12.00, null, '', '', '22,5 °NM', '', '', 'Ano', null, '01849');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0237', 4, 8, 'Sauvignon VOC - Šác', 1, 190, 2018, 1, 9, 0.00, 12.00, '11,6 g/l ', '7 g/l', '23,6 g/l', '21,5 °NM', '4 - 6', '', 'Ano', null, '2818');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0126', 15, 31, 'Veltlínské zelené VOC', 1, 170, 2018, 3, 9, 0.00, 12.00, '2 g/l ', '5,6 g/l', '20,4 g/l', '', '', '', 'Ano', null, '1670A/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0051', 28, 19, 'Veltlínské zelené', 1, 250, 2018, 3, 1, 0.00, 12.00, '2 g/l ', '6 g/l', '', '22 °NM', '', '', 'Ne', null, 'L-201904');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0047', 7, 36, 'Sauvignon VOC', 1, 165, 2018, 1, 9, 0.00, 11.00, null, '', '', '22 °NM', '', '', 'Ano', null, '01850');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0072', 13, 8, 'Ryzlink rýnský', 1, 199, 2016, 1, 4, 0.00, 11.00, '14,4 g/l ', '7,4 g/l', '24 g/l', '23 °NM', '', '', 'Ne', null, '1629');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0075', 13, 8, 'Ryzlink rýnský VOC', 1, 199, 2018, 1, 9, 0.00, 12.00, '12,4 g/l ', '6,6 g/l', '26,4 g/l', '22 °NM', '', '', 'Ano', null, '1819');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0067', 23, null, 'Sauvignon VOC', 1, 190, 2018, 1, 9, 0.00, 13.00, '10 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '1805');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0195', 9, 25, 'Ryzlink rýnský - Rosnička zelená', 1, 170, 2018, 3, 4, 0.00, 12.00, '6,8 g/l ', '7,2 g/l', '26,8 g/l', '', '6 - 8', '', 'Ano', null, '8349');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0073', 13, 8, 'Veltlínské zelené VOC', 1, 190, 2018, 3, 9, 0.00, 13.00, '7,7 g/l ', '5,8 g/l', '23,3 g/l', '22 °NM', '', '', 'Ano', null, '1821');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0040', 21, 14, 'Ryzlink rýnský VOC', 1, 210, 2018, 3, 9, 0.00, 13.00, '4,7 g/l ', '6,4 g/l', '27,7 g/l', '22,5 °NM', '', '', 'Ano', null, '1808/1');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0029', 5, 5, 'Zweigeltrebe Rosé', 3, 149, 2018, 2, 3, 0.00, 12.00, '25,5 g/l ', '7,8 g/l', '', '', '', '', 'Ano', null, 'ZWR27/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0069', 23, null, 'Veltlínské zelené VOC', 1, 180, 2018, 3, 9, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1804');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0261', 2, 8, 'Veltlínské zelené', 1, 200, 2018, 3, 9, 0.00, 13.00, '5,4 g/l ', '5,4 g/l', '23,8 g/l', '', '', '', 'Ano', null, '18/05');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0063', 19, null, 'Hort sekt Alsasko', 2, 484, 2011, 3, 13, 0.00, 12.00, '4,6 g/l ', '6,4 g/l', '', '', '', '', 'Ano', null, 'F4/11');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0194', 9, 25, 'Muškát moravský', 1, 115, 2018, 1, 8, 0.00, 12.00, '16,1 g/l ', '6,3 g/l', '19,6 g/l', '', '2 - 4', '', 'Ano', null, '8313');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0262', 2, 8, 'Sauvignon VOC', 1, 200, 2018, 1, 9, 0.00, 12.00, '8,4 g/l ', '6,4 g/l', '23,6 g/l', '', '', '', 'Ano', null, '18/13');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0193', 9, 5, 'Irsai Oliver', 1, 120, 2018, 2, 8, 0.00, 11.00, '16 g/l ', '6,4 g/l', '22,8 g/l', '', '3 - 5', '', 'Ne', null, '8324');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0062', 19, null, 'Hort sekt Limoux', 2, 484, 2016, 3, 13, 0.00, 12.00, '7 g/l ', '5 g/l', '', '', '', '', 'Ano', null, 'L19073-1');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0191', 9, 25, 'Sauvignon - TROPICAL', 1, 180, 2018, 1, 4, 0.00, 12.00, '7,8 g/l ', '7,1 g/l', '25,5 g/l', '', '7 – 9', '', 'Ano', null, '8337');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0192', 9, 20, 'Cabernet Sauvignon ROUGE', 3, 180, 2018, 2, 3, 0.00, 13.00, '24,7 g/l ', '7 g/l', '24,1 g/l', '', '4 - 6', '', 'Ano', null, '8427');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0068', 23, null, 'Ryzlink rýnský VOC', 1, 240, 2018, 3, 9, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1806');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0190', 9, 4, 'Sauvignon GREEN', 1, 180, 2018, 3, 4, 0.00, 12.00, '5,9 g/l ', '6,3 g/l', '23 g/l', '', '7 – 9', '', 'Ano', null, '8336');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0064', 19, 6, 'Veltlínské zelené VOC', 1, 236, 2018, 3, 9, 0.00, 11.00, '4,7 g/l ', '5,7 g/l', '', '', '', '', 'Ano', null, '13/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0074', 13, 26, 'Sauvignon VOC', 1, 199, 2018, 1, 9, 0.00, 12.00, '11,5 g/l ', '5,4 g/l', '21,8 g/l', '20 °NM', '', '', 'Ano', null, '1806');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0069', 13, 26, 'Muškát moravský', 1, 160, 2018, 1, 6, 0.00, 11.00, '13,2 g/l ', '5,2 g/l', '19,3 g/l', '20 °NM', '2 - 3', '', 'Ano', null, '11805');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0088', 27, 32, 'GRYLLUS rosé BIO', 3, 165, 2018, null, 6, 0.00, 12.00, '0,5 g/l ', '', '', '', '', '', 'Ano', null, '818');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0153', 8, 18, 'Rulandské modré', 4, 200, 2017, 3, 3, 0.00, 12.00, '0,2 g/l ', '4,7 g/l', '26,1 g/l', '24 °NM', '4 - 6', '', 'Ano', '2017-10-09', '4617');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0058', 22, 15, 'Frankovka Rosé', 3, 121, 2018, 3, 1, 0.00, 12.00, '1,3 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '1832');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0213', 4, 18, 'Ryzlink rýnský VOC', 1, 190, 2017, 3, 9, 0.00, 13.00, '7,8 g/l ', '7,3 g/l', '24,8 g/l', '22,6 °NM', '4 - 6', '', 'Ano', '2017-10-17', '5917');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0066', 23, 6, 'Veltlínské zelené EXTRA', 1, 220, 2018, 3, 4, 0.00, 13.00, null, '', '', '', '4 - 6', '', 'Ano', null, '1807');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0071', 13, 8, 'Cabernet Sauvignon / Merlot Rosé', 3, 170, 2018, 2, 4, 0.00, 12.00, '16 g/l ', '5,9 g/l', '21,4 g/l', '22,5 °NM', '2 - 3', '', 'Ano', null, '1826');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0118', 15, null, 'Irsai Oliver', 1, 150, 2018, 2, 6, 0.00, 10.00, '19 g/l ', '5,2 g/l', '19,5 g/l', '', '', '', 'Ano', null, '663/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0070', 13, 8, 'Zweigeltrebe Rosé', 3, 160, 2018, 1, 6, 0.00, 11.00, '14,2 g/l ', '5,7 g/l', '21,1 g/l', '20 °NM', '1 - 3 roky', '', 'Ano', null, '1811');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0121', 15, 16, 'Ryzlink vlašský', 1, 199, 2017, 4, 7, 0.00, 12.00, '50,3 g/l ', '7 g/l', '36,2 g/l', '', '', '', 'Ano', null, '2583/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0123', 15, 8, 'Cabernet Sauvignon Rosé', 3, 160, 2018, 2, 3, 0.00, 12.00, '25,8 g/l ', '6,4 g/l', '28,5 g/l', '', '', '', 'Ano', null, '1665/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0119', 15, 5, 'Muškát moravský', 1, 140, 2018, 1, 6, 0.00, 11.00, '15,2 g/l ', '7 g/l', '23,2 g/l', '', '', '', 'Ano', null, '664/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0014', 14, 11, 'Ryzlink vlašský', 1, 182, 2018, 3, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1803');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0073', 1, 5, 'Frankovka rosé / Pozdravy z NP Podyjí', 3, 150, 2018, 1, 6, 0.00, 12.00, null, '', '', '', '2 - 3', '', 'Ano', null, 'R/FR/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0122', 15, 16, 'Solaris', 1, 160, 2018, 2, 4, 0.00, 12.00, '25,6 g/l ', '7,5 g/l', '30,3 g/l', '', '', '', 'Ano', null, '673/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0072', 1, 16, 'Muškát moravský / Pozdravy z NP Podyjí', 1, 179, 2018, 2, 6, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '7/MM/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0013', 14, 11, 'Veltlínské zelené', 1, 182, 2018, 3, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1804');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0212', 4, 37, 'Rulandské bílé', 1, 175, 2017, 1, 4, 0.00, 12.00, '9,6 g/l ', '6,6 g/l', '23,2 g/l', '21,4 °NM', '4 - 6', '', 'Ano', '2017-09-27', '2717');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0162', 8, null, 'Rotgipfler', 1, 155, 2018, 1, 1, 0.00, 12.00, '10,5 g/l ', '6,5 g/l', '22,6 g/l', '', '2 - 4', '', 'Ano', '2018-09-21', '5918');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0164', 8, 8, 'Chardonnay', 1, 180, 2018, 2, 4, 0.00, 11.00, '38,2 g/l ', '7,1 g/l', '24,7 g/l', '22,8 °NM', '4-6', '', 'Ano', '2018-09-13', '11618');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0068', 13, 8, 'Sylvánské zelené', 1, 190, 2018, 3, 6, 0.00, 11.00, '6,6 g/l ', '5,1 g/l', '20,4 g/l', '20 °NM', '4', '', 'Ano', null, '1818');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0015', 14, 8, 'Muškát moravský', 1, 182, 2018, 1, 1, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '¨1805');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0074', 1, 5, 'Pinot Noir rosé / Pozdravy z NP Podyjí', 3, 179, 2018, 3, 6, 0.00, 13.00, null, '', '', '', '2 - 3', '', 'Ano', null, '9/PN/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0046', 7, 36, 'Rulandské modré - klaret', 3, 150, 2016, 1, 4, 0.00, 13.00, '9,8 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '01631');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0028', 5, 5, 'Dornfelder rosé', 3, 135, 2018, 1, 6, 0.00, 11.00, '10,9 g/l ', '6,4 g/l', '', '', '', '', 'Ano', null, 'DOR26/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0058', 11, 32, 'Veltlínské zelené', 1, 180, 2017, 3, 4, 0.00, 13.00, '3,1 g/l ', '5 g/l', '', '', '6 - 8', '', 'Ano', null, '7/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0057', 11, 32, 'Rulandské modré - klaret', 3, 180, 2017, 1, 4, 0.00, 12.00, '11,9 g/l ', '6,2 g/l', '', '', '2 - 4', '', 'Ano', null, '9/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0086', 27, 32, 'Sauvignon BIO', 1, 190, 2017, 3, 4, 0.00, 13.00, '0,4 g/l ', '5,7 g/l', '', '', '', '', 'Ano', null, '3317');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0068', 1, 5, 'Ryzlink rýnský / Pozdravy z NP Podyjí', 1, 179, 2018, 3, 4, 0.00, 14.00, null, '', '', '', '2 - 4', '', 'Ano', null, 'L/RR/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0069', 1, 5, 'Sauvignn Blanc / Pozdravy z NP Podyjí', 1, 179, 2018, 3, 4, 0.00, 14.00, null, '', '', '', '4 - 6', '', 'Ano', null, 'H/SG/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0048', 28, 19, 'GREEN', 1, 175, 2018, 3, 1, 0.00, null, '2 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, 'L-201901');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0046', 28, 38, 'Sauvignon Blanc', 1, 269, 2018, 3, 1, 0.00, 13.00, '9 g/l ', '7 g/l', '', '', '', '', 'Ano', null, 'L-201906');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0085', 27, null, 'Rulandské bílé', 1, 165, 2018, 1, 1, 0.00, 12.00, '10,9 g/l ', '5,3 g/l', '', '', '', '', 'Ano', null, '518');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0047', 28, 30, 'Pinot Gris', 1, 269, 2018, 3, 1, 0.00, 13.00, '7 g/l ', '6 g/l', '', '', '', '', 'Ano', null, 'L-201909');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0188', 9, null, 'πnot noir - rosé', 3, 180, 2018, 2, 4, 0.00, 13.00, '18 g/l ', '7 g/l', '', '', '4 - 6', '', 'Ano', null, '8418');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0070', 1, 16, 'Tramín červený / Pozdravy z NP Podyjí', 1, 179, 2018, 2, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, 'N/TČ/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0232', 4, null, 'Rulandské šedé', 1, 190, 2018, 1, 4, 0.00, 12.00, '12,7 g/l ', '6,4 g/l', '26,4 g/l', '23 °NM', '4 - 6', '', 'Ano', '2018-10-02', '6818');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0187', 9, null, 'πnot noir - klaret', 3, 180, 2018, 2, 3, 0.00, 13.00, '17 g/l ', '6,7 g/l', '', '', '7 – 9', '', 'Ano', null, '8417');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0027', 29, 8, 'Pinot Gris', 1, 200, 2017, 3, 1, 0.00, 13.00, '5 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '2017-04');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0189', 9, null, 'πnot noir - červené', 4, 180, 2018, 3, 3, 0.00, 13.00, '4 g/l ', '4,3 g/l', '', '', '7 – 9', '', 'Ano', null, '8419');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0054', 3, 28, 'Muscaris', 1, 182, 2018, 2, 4, 0.00, 12.00, '22,5 g/l ', '6,4 g/l', '22,5 g/l', '', '1 - 3 roky', '', 'Ano', null, '18MUS');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0052', 3, 12, 'Muškát moravský', 1, 127, 2018, 1, 6, 0.00, 11.00, '7 g/l ', '4,7 g/l', '20,8 g/l', '', '1 - 3 roky', '', 'Ano', null, '18MM');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0050', 3, 28, 'Hibernal', 1, 185, 2018, 3, 6, 0.00, 11.00, '6,1 g/l ', '5,3 g/l', '23,1 g/l', '', '1 - 3 roky', '', 'Ano', null, '18HI');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0051', 3, 12, 'Sauvignon', 1, 160, 2018, 1, 6, 0.00, 12.00, '7,5 g/l ', '5 g/l', '19,3 g/l', '', '1 - 3 roky', '', 'Ano', null, '18SHkab');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0055', 3, 15, 'RoseCO2 - perlivé víno', 2, 127, 2018, 2, 2, 0.00, 9.00, '40 g/l ', '4,9 g/l', '22,2 g/l', '', '1 - 3 roky', '', 'Ano', null, '18roseco');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0043', 7, 24, 'Chardonnay', 1, 165, 2016, 1, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '01630');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0067', 1, 5, 'Ryzlink vlašský / Pozdravy z NP Podyjí', 1, 179, 2018, 3, 6, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, 'S/RV/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0071', 1, 16, 'Veltlínské zelené / Pozdravy z NP Podyjí', 1, 179, 2018, 3, 6, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, 'SK/VZ/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0049', 3, 28, 'Savilon', 1, 225, 2018, 3, 4, 0.00, 13.00, '3,5 g/l ', '5,2 g/l', '21,1 g/l', '', '1 - 3 roky', '', 'Ano', null, '18SAV');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0053', 22, 15, 'Veltlínské zelené - Staré keře', 1, 182, 2017, 3, 4, 0.00, 12.00, '0,5 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '1740');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0055', 22, 15, 'Merlot rosé', 3, 182, 2017, 1, 4, 0.00, 12.00, '9,3 g/l ', '8,1 g/l', '', '9,3 °NM', '', '', 'Ano', null, '1735');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0045', 7, 24, 'Sylvánské zelené', 1, 185, 2016, 1, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', '2016-10-03', '01653');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0053', 3, 28, 'Rinot', 1, 160, 2018, 1, 4, 0.00, 12.00, '7,7 g/l ', '6,3 g/l', '22,2 g/l', '', '1 - 3 roky', '', 'Ano', null, '18Rin');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0054', 22, 15, 'Sauvignon - Karlov', 1, 182, 2017, 3, 4, 0.00, 12.00, '3,1 g/l ', '7,4 g/l', '', '', '', '', 'Ano', null, '1701');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0028', 29, 8, 'Ryzlink rýnský', 1, 200, 2018, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '2018-10');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0057', 22, 15, 'Veltlínské červené rané', 1, 121, 2018, 3, 1, 0.00, 12.00, '0,7 g/l ', '6 g/l', '', '19,8 °NM', '', '', 'Ano', null, '1815');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0056', 22, 15, 'Pinot Noir - Klaret', 1, 182, 2017, 3, 4, 0.00, 13.00, '3 g/l ', '7,3 g/l', '', '', '', '', 'Ano', null, '1744');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0158', 8, 8, 'Rulandské šedé', 1, 200, 2018, 2, 3, 0.00, 12.00, '29,8 g/l ', '7,2 g/l', '35,4 g/l', '26,5 °NM', '4 - 6', '', 'Ano', '2018-10-01', '6218');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0052', 22, 15, 'Pinot Gris', 1, 206, 2016, 3, 4, 0.00, 13.00, '5,6 g/l ', '7,5 g/l', '', '', '', '', 'Ano', null, '1634');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0044', 7, 24, 'Muškát moravský', 1, 116, 2018, 1, 1, 0.00, 11.00, null, '', '', '18,5 °NM', '', '', 'Ano', null, '01803');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0186', 9, 5, 'Sauvignon - Lacerta Viridis', 1, 160, 2018, 3, 4, 0.00, 12.00, '7,1 g/l ', '6,9 g/l', '24,7 g/l', '', '4 - 6', '', 'Ano', null, '8318');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0160', 8, 19, 'Zweigeltrebe Rosé', 3, 160, 2018, 1, 6, 0.00, 10.00, '13,8 g/l ', '6,9 g/l', '23,4 g/l', '20,8 °NM', '2 - 3', '', 'Ano', '2018-10-14', '8618');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0159', 8, 37, 'Frankovka Rosé', 3, 160, 2018, 2, 6, 0.00, 9.00, '25,2 g/l ', '6,7 g/l', '23,4 g/l', '19,5 °NM', '2 - 3', '', 'Ano', '2018-10-15', '11418');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0058', 19, null, 'HF Premium', 4, 290, 2015, 3, 10, 0.00, 13.00, '0,4 g/l ', '4,6 g/l', '', '', '', '', 'Ano', null, 'F3/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0042', 7, 17, 'Tramín červený', 1, 185, 2017, null, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '01734');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0230', 4, 19, 'Svatovavřinecké Rosé', 3, 109, 2018, 2, 6, 0.00, 10.00, '18,2 g/l ', '6,7 g/l', '24,4 g/l', '19,2 °NM', '2 - 4', '', 'Ano', '2018-09-11', '3218');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0084', 27, 32, 'Ryzlink rýnský z velkého sudu', 1, 250, 2017, 3, 4, 0.00, 13.00, '1 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '1717');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0231', 4, 19, 'Müller Thurgau', 1, 109, 2018, 3, 6, 0.00, 11.00, '6,7 g/l ', '6,4 g/l', '23 g/l', '19,8 °NM', '2 - 4', '', 'Ano', '2018-08-29', '1318');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0051', 22, 15, 'Chardonnay SUR-LIE', 1, 230, 2016, 3, 4, 0.00, 14.00, '4 g/l ', '5,4 g/l', '', '', '', '', 'Ano', null, '1606');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0184', 9, 22, 'Sylvánské zelené - Ledňáček říční', 1, 180, 2018, 3, 4, 0.00, 11.00, '6,5 g/l ', '7,1 g/l', '25 g/l', '', '3 - 5', '', 'Ano', null, '8316');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0185', 9, 2, 'Ryzlink rýnský', 1, 180, 2017, 1, 3, 0.00, 13.00, '9,8 g/l ', '7,1 g/l', '24,3 g/l', '', '7 – 9', '', 'Ano', null, '7336');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0065', 1, 5, 'Sauvignon', 1, 300, 2017, 3, 4, 0.00, 13.00, '2,1 g/l ', '7,6 g/l', '', '', '', '', 'Ano', null, '11/17/SG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0083', 27, null, 'Veltlínské zelené', 1, 150, 2018, 3, 6, 0.00, 12.00, '0,6 g/l ', '6,3 g/l', '', '', '2 - 3', '', 'Ano', null, '118');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0066', 1, 5, 'Ryzlink rýnský - BETON', 1, 300, 2017, 3, 4, 0.00, 13.00, '5,7 g/l ', '8,7 g/l', '', '', '', '', 'Ano', null, '22/17/RR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0152', 8, 37, 'Rulandské bílé', 1, 190, 2017, 1, 4, 0.00, 12.00, '10,9 g/l ', '6,7 g/l', '22,6 g/l', '22 °NM', '4 - 6', '', 'Ano', '2017-09-27', '2617');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0040', 7, null, 'Hroznový mošt - Sylvánské zelené', 6, 120, 2018, 4, null, 0.00, null, null, '', '', '', '', '', 'Ano', null, '01829');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0041', 7, null, 'Frankovka Rosé', 3, 116, 2017, 2, 1, 0.00, 10.00, null, '', '', '18,9 °NM', '', '', 'Ano', null, '01705');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0183', 9, 10, 'Veltlínské zelené - Ledňáček říční', 1, 170, 2018, 3, 4, 0.00, 12.00, '7,3 g/l ', '6,9 g/l', '25,7 g/l', '', '2 - 4', '', 'Ano', null, '8311');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0064', 23, null, 'FREŠ - známkové cuvée', 1, 125, 2018, 3, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1801');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0009', 30, null, 'Tramín červený', 1, 113, 2018, 4, 1, 0.00, 9.00, null, '', '', '', '1', '', 'Ano', null, 'M2/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0117', 15, 8, 'Kerner', 1, 170, 2017, 4, 7, 0.00, 11.00, '53,1 g/l ', '8,3 g/l', '31,1 g/l', '', '', '', 'Ano', null, '2589/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0180', 9, 25, 'Veritas', 1, 160, 2017, 1, 3, 0.00, 12.00, '9,8 g/l ', '6,2 g/l', '21,5 g/l', '', '4 - 6', '', 'Ano', null, '7373');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0150', 8, 37, 'Veltlínské zelené', 1, 175, 2017, 3, 9, 0.00, 12.00, '6 g/l ', '6,5 g/l', '22,1 g/l', '21,5 °NM', '4 - 6', '', 'Ano', '2017-10-04', '3517');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0179', 9, null, 'Modrý Janek', 1, 150, 2017, 3, 1, 0.00, 12.00, '3,2 g/l ', '6,2 g/l', '22,8 g/l', '', '4 - 6', '', 'Ano', null, '7403');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0057', 3, 12, 'Cuvée TRIO', 4, 193, 2017, 3, 4, 0.00, 13.00, '0,4 g/l ', '5,1 g/l', '25,1 g/l', '', '3 - 6', '', 'Ano', null, 'RMC');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0010', 30, null, 'Rulandské šedé', 1, 113, 2018, 4, 1, 0.00, 8.00, null, '', '', '', 'o 1 roku', '', 'Ano', null, 'M3/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0227', 4, 8, 'Rulandské šedé', 1, 200, 2018, 2, 3, 0.00, 11.00, '38,6 g/l ', '6,7 g/l', '29,3 g/l', '25 °NM', '4 - 6', '', 'Ano', '2018-11-19', '5118');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0097', 2, 8, 'Zweigeltrebe', 4, 99, 2013, 3, 8, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '13/38');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0050', 22, 15, 'Frankovka', 4, 182, 2017, 3, 4, 0.00, 12.00, '0,3 g/l ', '6,7 g/l', '', '', '', '', 'Ano', null, '1750');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0090', 2, 8, 'Svatovařinecké', 4, 99, 2013, 3, 8, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '13/34');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0008', 30, null, 'Chardonnay', 1, 113, 2018, 4, 1, 0.00, 9.00, null, '', '', '', 'o 1 roku', '', 'Ano', null, 'M1/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0065', 23, null, 'Hibernal', 1, 240, 2018, 1, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1811');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0021', 25, 15, 'Frankovka rosé', 3, 199, 2016, 3, 4, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '38-2016ps');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0223', 4, 8, 'Pálava', 1, 220, 2018, 4, 3, 0.00, 10.00, '53,8 g/l ', '7,5 g/l', '27 g/l', '24,2 °NM', '5-7 le', '', 'Ano', '2018-10-03', '7818');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0072', 2, 8, 'Chardonnay', 1, 99, 2013, 3, 8, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '13/25');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0154', 8, 19, 'Sauvignon', 1, 180, 2017, 1, 4, 0.00, 12.00, '12,3 g/l ', '6,7 g/l', '', '22 °NM', '4 - 6', '', 'Ano', '2017-09-26', '8017');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0075', 2, 8, 'Müller Thurgau', 1, 99, 2013, 3, 8, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '13/01');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0045', 28, null, 'Red Reserve', 4, 299, 2016, 3, 1, 0.00, 13.00, '1 g/l ', '5,5 g/l', '', '25 °NM', '', '', 'Ano', null, 'L-201711');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0084', 2, 11, 'Ryzlink rýnský', 1, 200, 2016, 3, 9, 0.00, 12.00, '1,2 g/l ', '7,9 g/l', '', '', '', '', 'Ano', null, '16/12');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0096', 2, 8, 'Veltlínské zelené', 1, 99, 2013, 3, 8, 0.00, null, null, '', '', '', '', '', 'Ano', null, '13/04');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0086', 2, 8, 'Ryzlink rýnský', 1, 99, 2010, 3, 8, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '10/14');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0039', 7, 17, 'Rulandské šedé', 1, 241, 2017, 1, 4, 0.00, 12.00, null, '', '', '', '6', '', 'Ano', null, '131K1-17/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0083', 2, 11, 'Ryzlink rýnský', 1, 200, 2016, 2, 4, 0.00, 11.00, '31,9 g/l ', '8 g/l', '', '', '', '', 'Ano', null, '16/24');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0082', 2, 26, 'Rulandské šedé', 1, 250, 2017, 4, 7, 0.00, 12.00, '53,6 g/l ', '7,9 g/l', '', '', '', '', 'Ano', null, '17/14');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0088', 2, 8, 'Sauvignon', 1, 140, 2014, 3, 6, 0.00, 11.00, '1,2 g/l ', '8 g/l', '', '', '', '', 'Ano', null, '14/70');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0080', 2, 11, 'Rulandské bílé', 1, 140, 2017, 3, 6, 0.00, 12.00, '1,5 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '17/03');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0071', 2, 8, 'Chardonnay', 1, 200, 2017, 2, 3, 0.00, 13.00, '16,5 g/l ', '6,7 g/l', '', '', '', '', 'Ano', null, '17/08');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0087', 2, 11, 'Ryzlink vlašský', 1, 170, 2017, 3, 4, 0.00, 12.00, '3,3 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '17/02');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0091', 2, 11, 'Tramín červený', 1, 170, 2016, 2, 4, 0.00, 12.00, '21,5 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '16/22');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0065', 2, 11, 'Cuvée Rosé', 3, 130, 2017, 2, 6, 0.00, 10.00, '25,8 g/l ', '6,1 g/l', '', '', '', '', 'Ano', null, '17/72');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0089', 2, 8, 'Sauvignon', 1, 200, 2017, 3, 9, 0.00, 13.00, '2,1 g/l ', '5,3 g/l', '', '', '', '', 'Ano', null, '17/12');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0066', 2, 8, 'Cuvée sv. Urban', 1, 140, 2017, 2, 4, 0.00, 11.00, '23,3 g/l ', '5,2 g/l', '', '', '', '', 'Ano', null, '17/71');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0068', 2, 8, 'Cuvée Waldberg', 1, 180, 2017, 3, 4, 0.00, 13.00, '0,4 g/l ', '6,9 g/l', '', '', '', '', 'Ano', null, '17/07');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0092', 2, 11, 'Tramín červený', 1, 200, 2017, 2, 3, 0.00, 12.00, '18,3 g/l ', '6,4 g/l', '', '', '', '', 'Ano', null, '17/09');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0229', 4, null, 'Veltlínské červené rané', 1, 109, 2018, 3, 6, 0.00, 11.00, '5,6 g/l ', '6,4 g/l', '22,3 g/l', '20 °NM', '2 - 4', '', 'Ano', '2018-08-23', '418');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0099', 2, 26, 'Zweigeltrebe Rosé', 3, 160, 2017, 1, 4, 0.00, 12.00, '8,2 g/l ', '7,7 g/l', '', '', '', '', 'Ano', null, '17/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0076', 27, null, 'der Ilgner SPRUDEL', 1, 220, 2018, 4, 2, 0.00, 5.00, null, '', '', '', '', '', 'Ne', null, 'S88-2018');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0063', 23, null, 'Veltlínské zelené', 1, 180, 2018, 3, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '18004');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0025', 5, null, 'Müller Thurgau', 1, 155, 2018, 3, 1, 0.00, 11.00, '5,8 g/l ', '5,5 g/l', '', '', '', '', 'Ano', null, 'MT12/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0214', 4, 37, 'Frankovka', 4, 165, 2017, 3, 4, 0.00, 12.00, '0,3 g/l ', '4,8 g/l', '30,7 g/l', '22 °NM', '5-7 le', '', 'Ano', null, '6517');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0098', 2, 26, 'Zweigeltrebe Rosé', 3, 160, 2016, 3, 4, 0.00, 12.00, '5,3 g/l ', '7,3 g/l', '', '', '', '', 'Ano', null, '16/30');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0077', 2, 8, 'Müller Thurgau', 1, 150, 2017, 3, 4, 0.00, 13.00, '1 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '17/01');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0211', 4, 8, 'Ryzlink rýnský', 1, 190, 2017, 1, 9, 0.00, 13.00, '11,9 g/l ', '7,2 g/l', '24,4 g/l', '22,6 °NM', '4 - 6', '', 'Ano', '2017-10-10', '4417');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0176', 9, 5, 'Sauvignon TROPICAL', 1, 180, 2017, 1, 4, 0.00, 12.00, '10 g/l ', '7 g/l', '20,1 g/l', '', '7 – 9', '', 'Ano', null, '7348');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0026', 5, null, 'Muškát moravský', 1, 165, 2018, 3, 1, 0.00, 11.00, '2,1 g/l ', '6,7 g/l', '', '', '2', '', 'Ano', null, 'MM11/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0056', 19, null, 'Merlot Nature 2016 HF', 4, 163, 2016, 3, 10, 0.00, 13.00, '0,3 g/l ', '4,7 g/l', '', '', '', '', 'Ano', null, 'F1/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0082', 27, null, 'Zweigeltrebe', 4, 165, 2017, 3, 8, 0.00, 13.00, '0,3 g/l ', '4,8 g/l', '', '', '', '', 'Ano', null, '917');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0035', 7, null, 'Sekt Lechovice BRUT', 2, 249, 2016, 3, 13, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '01655');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0038', 7, 24, 'Tramín červený', 1, 200, 2017, 4, 7, 0.00, 13.00, '88,3 g/l ', '5,8 g/l', '', '', '', '', 'Ano', null, '01743');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0036', 7, null, 'Sekt Lechovice DEMI SEC', 2, 249, 0, 1, 13, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '01656');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0070', 2, 8, 'Hibernal', 1, 200, 2016, 1, 3, 0.00, 13.00, '15,4 g/l ', '7,5 g/l', '25 g/l', '', '', '', 'Ano', null, '16/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0057', 19, null, 'MOŠT HORT - Pinot Noir', 6, 120, 2015, 4, null, 0.00, null, null, '', '', '', 'o 31.12.2019', '', 'Ne', null, 'M2/2015');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0076', 2, 8, 'Müller Thurgau', 1, 150, 2016, 2, 4, 0.00, 11.00, '17,2 g/l ', '6 g/l', '', '', '', '', 'Ano', null, '16/05');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0037', 7, 24, 'Ryzlink rýnský - slámové víno', 1, 342, 2015, 4, 11, 0.00, 9.00, '218 g/l ', '9,6 g/l', '', '', '', '', 'Ano', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0026', 29, null, 'Frizzanté 2018', 2, 200, 2018, 2, 2, 0.00, 11.00, '30 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '2018-09');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0039', 21, 14, 'Pálava', 1, 350, 2017, 2, 3, 0.00, 11.00, '36,3 g/l ', '7,1 g/l', '26,3 g/l', '24,5 °NM', '', '', 'Ano', null, '1713');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0027', 5, 7, 'Solaris', 1, 195, 2018, 1, 1, 0.00, 13.00, '8,1 g/l ', '7 g/l', '', '', '', '', 'Ano', null, 'SO02/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0081', 27, 32, 'Sauvignon - KRAVÁK', 1, 300, 2017, null, 4, 0.00, null, null, '', '', '', '', '', 'Ano', null, 'ročník 2017');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('BLA.0004', 26, null, 'Mosel Riesling - Schieferberg 2016', 1, 299, null, null, null, null, 10.00, null, '', '', '', '', '', 'Ano', null, '051');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0024', 5, 16, 'Veltlínské zelené PÉT-NAT', 1, 225, 2018, null, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ne', null, 'PNT01/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0038', 24, 26, 'Dornfelder', 4, 180, 2017, 3, 4, 0.00, 13.00, '0,3 g/l ', '5,1 g/l', '23,9 g/l', '', '', '', 'Ano', null, '17/DOR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0062', 23, 32, 'Sauvignon KRAVÁK', 1, 299, 2017, 3, 4, 0.00, 12.00, '0,3 g/l ', '6,1 g/l', '', '', '', '', 'Ano', null, '1708');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0020', 25, 15, 'Frankovka', 4, 199, 2016, 3, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '9/2016ps');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0047', 22, 15, 'Pinot Noir', 4, 303, 2016, 3, 4, 0.00, 13.00, '0,3 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '¨1653');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0074', 27, 32, 'Šaler červený', 4, 220, 2015, 4, 14, 0.00, 16.00, '96 g/l ', '4,7 g/l', '', '', '', '', 'Ano', null, '2115');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0061', 23, null, 'Chardonnay SUR-LIE', 1, 290, 2016, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1610');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0178', 9, null, 'Denis d´ Or Barrique', 4, 140, 2017, 3, 10, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '77');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0073', 27, 32, 'Šaler bílý', 1, 220, 2017, 4, 14, 0.00, 17.00, null, '', '', '', '', '', 'Ano', null, '2217');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0209', 4, 34, 'Ryzlink vlašský', 1, 175, 2017, 2, 3, 0.00, 12.00, '39,5 g/l ', '7,1 g/l', '25,9 g/l', '24,2 °NM', '4 - 6', '', 'Ano', '2017-10-12', '5017');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0078', 2, 8, 'Muškát moravský', 1, 160, 2017, 1, 4, 0.00, 13.00, '11,1 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '17/06');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0075', 27, null, 'Svatováclavské 2018', 4, 150, 2018, 3, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '3018');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0037', 24, null, 'PINOT BLANC Sur-lie', 1, 219, 2017, 3, 4, 0.00, 12.00, '3,1 g/l ', '6,4 g/l', '19,3 g/l', '21,2 °NM', '', '', 'Ano', null, '17/PB');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0114', 15, null, 'Müller Thrugau', 1, 117, 2018, 1, 6, 0.00, 11.00, '5,9 g/l ', '6,3 g/l', '23,1 g/l', '', '', '', 'Ano', null, '674/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0027', 20, 32, 'Sauvignon - KRAVÁK', 1, 300, 2017, 3, 4, 0.00, 14.00, '7,4 g/l ', '6,9 g/l', '', '', '', '', 'Ano', null, '12/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0171', 9, null, 'Rulandské bílé - SUR LIE', 1, 180, 2017, 3, 4, 0.00, 12.00, '1 g/l ', '5,8 g/l', '19,6 g/l', '', '6 - 8', '', 'Ano', null, '7402');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0170', 9, 9, 'Ryzlink vlašský - Terroir Club', 1, 240, 2016, 2, 4, 0.00, 12.00, '19,9 g/l ', '6,6 g/l', '22,7 g/l', '', '7 – 9', '', 'Ano', null, '6396');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0081', 2, 11, 'Rulandské šedé', 1, 190, 2016, 3, 4, 0.00, 12.00, '5,8 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '16/09');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0029', 12, 32, 'Sauvignon - KRAVÁK', 1, 380, 2017, 3, 4, 0.00, 12.00, '4,5 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '9-17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0155', 8, null, 'Martin Růžový 2018', 3, 140, 2018, 1, 1, 0.00, 10.00, '14,9 g/l ', '6,5 g/l', '', '', 'o 1 roku', '', 'Ano', null, '2118');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0066', 13, 8, 'Rulandské šedé', 1, 199, 2016, 2, 4, 0.00, 12.00, '17,9 g/l ', '6,5 g/l', '22,5 g/l', '23 °NM', '', '', 'Ano', null, '1614');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0169', 9, 20, 'ROBINIA - Ryzlink rýnský', 1, 380, 2016, 3, 4, 0.00, 12.00, '6,8 g/l ', '6,4 g/l', '22,7 g/l', '', '7 – 9', '', 'Ano', null, '6317');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0054', 19, null, 'Selection Cabernet Sauvignon 2017 HF', 4, 200, 2017, 3, null, 0.00, 14.00, '0,4 g/l ', '4,5 g/l', '', '', '', '', 'Ano', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0065', 13, 8, 'Veltlínské zelené', 1, 180, 2017, 3, 4, 0.00, 13.00, '6,2 g/l ', '5,6 g/l', '20,1 g/l', '22 °NM', '', '', 'Ano', null, '1734');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0044', 28, 32, 'Sauvignon KRAVÁK', 1, 375, 2017, 3, 4, 0.00, 12.00, '6 g/l ', '6 g/l', '', '', '', '', 'Ano', null, 'L-201855');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0062', 1, 16, 'Frankovka', 4, 196, 2016, 3, 4, 0.00, 11.00, '0,1 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '20/16/FR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0053', 19, 18, 'Ryzlink rýnský VOC', 1, 266, 2017, 3, 9, 0.00, 12.00, '6,3 g/l ', '7,7 g/l', '', '', '4', '', 'Ano', null, '14/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0105', 15, 5, 'Kerka', 1, 190, 2017, 2, 4, 0.00, 10.00, '42,2 g/l ', '8,6 g/l', '27 g/l', '', '', '', 'Ano', null, '2598A/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0028', 12, null, 'Ryzlink rýnský VOC', 1, 220, 2017, 3, 9, 0.00, 13.00, '8,6 g/l ', '7,7 g/l', '22,4 g/l', '', '', '', 'Ano', null, '15-17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0034', 7, 24, 'Irsai Oliver', 1, 120, 2018, 1, 1, 0.00, 11.00, null, '', '', '22,1 °NM', '1 - 2', '', 'Ano', null, '01802');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0166', 9, 22, 'Neuburské', 1, 150, 2017, 1, 4, 0.00, 12.00, '11,6 g/l ', '6,8 g/l', '25 g/l', '', '5-7 le', '', 'Ano', null, '7321');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0010', 14, null, 'Chardonnay', 1, 242, 2017, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1710');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0113', 15, 5, 'Irsai Oliver', 1, 140, 2018, 1, 6, 0.00, 11.00, '4,4 g/l ', '5,3 g/l', '22,2 g/l', '', '', '', 'Ano', null, '662/18');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0025', 29, 8, 'Moje Cuvée 2018', 1, 135, 2018, 1, 1, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '2018-01');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0112', 8, 37, 'Ryzlink rýnský VOC - Královská řada', 1, 350, 2015, 3, 9, 0.00, 12.00, '8,6 g/l ', '7,3 g/l', '21,2 g/l', '21,5 °NM', '10 -12', '', 'Ano', '2015-10-20', '5715');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0032', 7, 24, 'Pálava', 1, 288, 2017, 2, 3, 0.00, 12.00, null, '', '', '', '', '', 'Ano', '2017-10-16', '01738');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0149', 8, 34, 'Tramín červený', 1, 200, 2017, 1, 4, 0.00, 12.00, '8,8 g/l ', '6,6 g/l', '25,1 g/l', '23 °NM', '4 - 6', '', 'Ano', '2017-10-05', '3617');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0019', 25, null, 'Cuvée Ejbešic', 1, 199, 2016, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '6/2016');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0007', 30, null, 'Cabernet Sauvignon Rosé', 3, 113, 2017, 2, 1, 0.00, 10.00, '37 g/l ', '', '', '', 'o 2 le', '', 'Ano', null, 'M11/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0165', 9, null, 'πnot noir - červené', 4, 180, 2017, 3, 3, 0.00, 13.00, '3,3 g/l ', '4,4 g/l', '31,9 g/l', '', '7 – 9', '', 'Ano', null, '7398');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0005', 30, null, 'Ryzlink rýnský', 1, 215, 2016, 2, 4, 0.00, 11.00, '37 g/l ', '', '', '', '', '', 'Ano', null, '3/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('STA.0001', 26, null, 'PINK FRAME / cuvée Frankovka a Merlot', 3, 300, null, null, null, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1917');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0003', 30, null, 'Rulandské šedé', 1, 152, 2016, 2, 4, 0.00, 14.00, '17 g/l ', '', '', '', '', '', 'Ne', null, '5/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0018', 25, 15, 'Ryzlink rýnský', 1, 180, 2015, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '13');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0062', 2, 8, 'Veltlínské zelené VOC', 1, 200, 2017, 3, 9, 0.00, 13.00, '0,9 g/l ', '5 g/l', '21 g/l', '24,2 °NM', '', '', 'Ano', null, '17/10');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0045', 3, 15, 'Rulandské bílé', 1, 149, 2017, 3, 4, 0.00, 12.00, '4,6 g/l ', '6,2 g/l', '20,4 g/l', '', '1 - 3 roky', '', 'Ano', null, 'RB17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0027', 12, 7, 'Sylvánské zelené', 1, 215, 2016, 1, 4, 0.00, 13.00, '11,3 g/l ', '7,4 g/l', '22 g/l', '', '', '', 'Ano', null, '08-16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0001', 30, null, 'Hroznový mošt - Rulandské modré', 6, 128, 0, 4, null, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0063', 2, null, 'Ryzlink rýnský VOC - Královská řada', 1, 350, 2015, 3, 9, 0.00, 13.00, '4,4 g/l ', '6,3 g/l', '23,2 g/l', '', '', '', 'Ano', null, '15/45');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0062', 13, null, 'Müller Thrugau', 1, 160, 2017, 1, 6, 0.00, 12.00, '8,6 g/l ', '5,9 g/l', '19,2 g/l', '20 °NM', '', '', 'Ano', null, '1736');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0052', 2, 8, 'Veltlínské zelené', 1, 200, 2016, 3, 4, 0.00, 13.00, '2,1 g/l ', '5,6 g/l', '21,6 g/l', '', '', '', 'Ano', null, '16/44');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0111', 15, 16, 'Cuvée Terasy VOC', 1, 180, 2017, 3, 9, 0.00, 13.00, '3,3 g/l ', '5 g/l', '20,4 g/l', '', '', '', 'Ano', null, '2582/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0061', 13, 8, 'Chardonnay', 1, 250, 2016, 2, 3, 0.00, 12.00, '19,1 g/l ', '7 g/l', '25,8 g/l', '24 °NM', '', '', 'Ano', null, '1652');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0008', 17, 7, 'Cabernet sauvignon Rosé', 3, 140, 2017, 2, 1, 0.00, 11.00, '22,5 g/l ', '7,2 g/l', '', '22,5 °NM', '', '', 'Ano', null, '17/05');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0063', 13, 8, 'Ryzlink rýnský / pro vegany', 1, 210, 2017, 3, 4, 0.00, 12.00, '8,3 g/l ', '7,9 g/l', '23,2 g/l', '21 °NM', '', '', 'Ano', null, '1716');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MAR.0010', 16, null, 'Ryzlink vlašský', 1, 225, 2017, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, 'RV 1/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MAR.0011', 16, 17, 'Rulandské bílé', 1, 225, 2017, 3, 1, 0.00, 14.00, null, '', '', '', '', '', 'Ano', null, 'RB 4/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0009', 17, 7, 'Tramín červený', 1, 160, 2017, 1, 1, 0.00, 12.00, '11,5 g/l ', '7,3 g/l', '', '23 °NM', '', '', 'Ano', null, '17/02');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MAR.0009', 16, 25, 'Ryzlink rýnský', 1, 225, 2017, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, 'RR 5/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0200', 4, 8, 'Rulandské modré', 4, 190, 2016, 3, 4, 0.00, 12.00, '2,4 g/l ', '4,9 g/l', '30,8 g/l', '23,2 °NM', '6 - 8', '', 'Ano', '2016-11-09', '8116');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MAR.0008', 16, 31, 'Tramín červený', 1, 260, 2017, 2, 3, 0.00, 14.00, null, '', '', '', '', '', 'Ano', null, 'TČ 3/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MAR.0007', 16, 31, 'Pálava', 1, 260, 2017, 2, 3, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, 'PA 2/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0060', 1, null, 'Frankovka rosé / Pozdravy z NP Podyjí', 3, 179, 2017, null, 6, 0.00, 12.00, '16,9 g/l ', '7,7 g/l', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0002', 30, null, 'Chardonnay', 1, 152, 2016, 1, 4, 0.00, 13.00, '9,9 g/l ', '', '', '', '', '', 'Ano', null, '4/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0052', 19, null, 'Selection HF 2015', 4, 236, 2015, 3, 10, 0.00, 14.00, '0,4 g/l ', '4,4 g/l', '', '', '10', '', 'Ano', null, 'F2/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0146', 8, 35, 'Sylvánské zelené', 1, 180, 2017, 1, 4, 0.00, 12.00, '12,8 g/l ', '6,7 g/l', '23,6 g/l', '23,2 °NM', '4 - 6', '', 'Ano', '2017-10-18', '6117');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0045', 22, 33, 'Sauvignon - Staré hory', 1, 182, 2017, 3, 4, 0.00, 12.00, '2,7 g/l ', '7,3 g/l', '', '', '', '', 'Ano', null, '1741');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0050', 1, 5, 'Cuvée VzPg 2015', 1, 339, 2015, 3, 1, 0.00, 12.00, '0,3 g/l ', '6,8 g/l', '', '', '', '', 'Ano', null, 'VZPG/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0064', 13, 8, 'Rulandské šedé', 1, 199, 2017, 1, 4, 0.00, 12.00, '14,6 g/l ', '6,3 g/l', '20,7 g/l', '21 °NM', '', '', 'Ano', null, '1711');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0029', 7, null, 'Rulandské šedé', 1, 120, 2017, 1, 1, 0.00, 12.00, null, '', '', '21,2 °NM', '', '', 'Ano', '2017-09-10', '01707');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0030', 7, 36, 'Ryzlink rýnský', 1, 184, 2016, 2, 4, 0.00, 10.00, null, '', '', '', '', '', 'Ne', '2016-10-18', '01642');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0016', 25, 15, 'Veltlínské zelené', 1, 199, 2015, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '12');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0147', 8, 8, 'Chardonnay', 1, 180, 2017, 1, 4, 0.00, 12.00, '14,4 g/l ', '6,9 g/l', '23,1 g/l', '23 °NM', '3 - 5', '', 'Ano', '2017-09-25', '2317');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0055', 11, 32, 'Svatovavřinecké Rosé', 3, 120, 2017, 1, 4, 0.00, 12.00, '10,4 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '12/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0017', 25, 15, 'Chardonnay', 1, 199, 2016, 3, 3, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '4');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0158', 9, null, 'Znovín de Lux Demi Sec', 2, 225, 2016, 2, 13, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '6379');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAR.0003', 14, 8, 'Sauvignon', 1, 194, 2017, 1, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1704');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0015', 25, 15, 'Rulandské bílé', 1, 199, 2015, 3, 3, 0.00, 14.00, null, '', '', '', '', '', 'Ano', null, '4');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0053', 11, 6, 'Rulandské šedé', 1, 180, 2017, 1, 4, 0.00, 12.00, '13,9 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '5/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JOK.0023', 5, 16, 'Veltlínské zelené', 1, 195, 2017, 3, 4, 0.00, 12.00, '5,5 g/l ', '7,2 g/l', '', '21,6 °NM', '', '', 'Ano', null, 'VZ12/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0050', 11, 32, 'Sauvignon', 1, 180, 2017, 1, 4, 0.00, 13.00, '12 g/l ', '5,6 g/l', '', '', '', '', 'Ano', null, '8/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0033', 24, 8, 'Pinot Gris', 1, 206, 2017, 1, 3, 0.00, 12.00, '12,6 g/l ', '6,6 g/l', '22,6 g/l', '24 °NM', '', '', 'Ano', null, '17/PG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0035', 24, 8, 'Tramín', 1, 219, 2017, 1, 3, 0.00, 13.00, '10,6 g/l ', '6,2 g/l', '22,2 g/l', '24,2 °NM', '', '', 'Ano', null, '17/TR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0034', 24, 27, 'Veltlínské zelené', 1, 180, 2017, 3, 4, 0.00, 12.00, '3,4 g/l ', '6,1 g/l', '19,5 g/l', '22,1 °NM', '', '', 'Ano', null, '17/VZ');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0041', 28, 18, 'Sauvignon VOC', 1, 219, 2017, 3, 9, 0.00, 12.00, '5,5 g/l ', '6 g/l', '', '', '', '', 'Ano', null, 'L-201827');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0103', 15, 5, 'Pálava', 1, 300, 2015, 4, 15, 0.00, 12.00, '97,8 g/l ', '6,6 g/l', '46,1 g/l', '', '', '', 'Ano', null, '50/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0058', 23, null, 'Rulandské šedé', 1, 280, 2017, 2, 4, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '1721');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0043', 28, 37, 'Veltlínské zelené VOC', 1, 219, 2017, 3, 9, 0.00, 11.00, '2 g/l ', '6 g/l', '', '', '', '', 'Ano', null, 'L-201826');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0057', 23, null, 'Tramín červený', 1, 280, 2017, 4, 3, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1713');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0202', 4, 37, 'Muškát moravský', 1, 170, 2017, 2, 6, 0.00, 10.00, '23,5 g/l ', '7 g/l', '23,5 g/l', '19,4 °NM', '2-4', '', 'Ano', '2017-09-18', '1417');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0051', 11, 6, 'Tramín', 1, 180, 2017, 2, 3, 0.00, 13.00, '28,1 g/l ', '5,8 g/l', '', '', '', '', 'Ano', null, '16/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0155', 9, null, 'Znovín De Lux Brut', 2, 225, 0, 3, 13, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '6376');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0028', 18, 10, 'Veltlínské zelené VOC', 1, 160, 2017, 3, 9, 0.00, 13.00, '5,5 g/l ', '5,4 g/l', '20,6 g/l', '22,5 °NM', '', '', 'Ano', null, '1712');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0042', 28, 27, 'Ryzlink rýnský VOC', 1, 219, 2017, 3, 9, 0.00, 12.00, '8 g/l ', '7,5 g/l', '', '', '', '', 'Ano', null, 'L-201828');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0054', 11, 32, 'Müller Thurgau', 1, 80, 2017, 1, 8, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '1/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0060', 13, 8, 'Veltlínské zelené VOC', 1, 190, 2017, 3, 9, 0.00, 13.00, '6,1 g/l ', '5,4 g/l', '21,9 g/l', '22 °NM', '', '', 'Ano', null, '1727');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0027', 18, 25, 'Sauvignon VOC', 1, 160, 2017, 1, 9, 0.00, 13.00, '8,1 g/l ', '6,4 g/l', '22,1 g/l', '22,5 °NM', '', '', 'Ano', null, '174');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0052', 11, 32, 'Ryzlink rýnský', 1, 180, 2017, 1, 4, 0.00, 12.00, '15,9 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '13/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0061', 2, 26, 'Sylvánské zelené', 1, 200, 2017, 3, 4, 0.00, 12.00, '6,1 g/l ', '7 g/l', '23,3 g/l', '', '', '', 'Ano', null, '17/05');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0164', 9, null, 'πnot noir - rosé', 3, 180, 2017, 1, 4, 0.00, 12.00, '14,4 g/l ', '7 g/l', '22,5 g/l', '', '4 - 6', '', 'Ano', null, '7397');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0058', 13, 26, 'Sauvignon VOC', 1, 199, 2017, 1, 9, 0.00, 12.00, '10,9 g/l ', '5,9 g/l', '21,1 g/l', '22 °NM', '', '', 'Ano', null, '1708');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0071', 27, 32, 'Ryzlink rýnský z velkého sudu', 1, 250, 2016, 3, 4, 0.00, 12.00, '0,1 g/l ', '5,5 g/l', '', '', '', '', 'Ano', null, '1716');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0059', 13, 8, 'Ryzlink rýnský VOC', 1, 199, 2017, 1, 9, 0.00, 12.00, '14,5 g/l ', '7,6 g/l', '26,6 g/l', '21 °NM', '', '', 'Ano', null, '1722');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0051', 19, 37, 'Veltlínské zelené VOC', 1, 236, 2017, 3, 9, 0.00, 12.00, '4 g/l ', '5,8 g/l', '', '', '', '', 'Ano', null, '12/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('JZM.0004', 30, null, 'Sauvignon', 1, 152, 2016, 1, 4, 0.00, 13.00, '11,9 g/l ', '', '', '', '', '', 'Ne', null, '6/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0069', 27, 37, 'Veltlínské zelené VOC', 1, 160, 2017, 3, 9, 0.00, 13.00, '0,3 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '2917');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0049', 19, 6, 'Sauvignon VOC', 1, 266, 2017, 3, 9, 0.00, 13.00, '8,3 g/l ', '6,3 g/l', '', '', '', '', 'Ano', null, '6/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0031', 24, 8, 'Sauvignon VOC', 1, 190, 2017, 3, 9, 0.00, 13.00, '6,4 g/l ', '5,7 g/l', '23,7 g/l', '', '', '', 'Ano', null, '17/SG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0060', 2, 11, 'Rulandské šedé', 1, 190, 2017, 3, 4, 0.00, 12.00, '6,6 g/l ', '6,4 g/l', '22,3 g/l', '', '', '', 'Ano', null, '17/04');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0068', 27, 32, 'Veltlínské zelené VOC', 1, 210, 2017, 3, 9, 0.00, 13.00, '0,3 g/l ', '5,4 g/l', '', '', '', '', 'Ano', null, '1817');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0026', 12, 7, 'Veltlínské zelené VOC', 1, 220, 2017, 1, 9, 0.00, 12.00, '10,4 g/l ', '7,6 g/l', '23,5 g/l', '', '', '', 'Ano', null, '07-17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0057', 1, 5, 'Sauvignon VOC', 1, 225, 2017, 3, 9, 0.00, 13.00, '0,4 g/l ', '7,4 g/l', '', '', '', '', 'Ano', null, '9/17/SG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0026', 7, 36, 'Sauvignon VOC', 1, 165, 2017, null, 9, 0.00, 12.00, '0,7 g/l ', '6,3 g/l', '21,1 g/l', '', '', '', 'Ano', null, '01747');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0058', 1, 5, 'Ryzlink rýnský VOC', 1, 225, 2017, 3, 9, 0.00, 12.00, '4,5 g/l ', '7,9 g/l', '', '', '', '', 'Ano', null, '21/17/RR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0204', 4, 21, 'Veltlínské zelené VOC', 1, 175, 2017, 3, 9, 0.00, 11.00, '8,2 g/l ', '6,8 g/l', '22 g/l', '20,4 °NM', '4 - 6', '', 'Ano', '2017-09-27', '2517');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0207', 4, null, 'André', 4, 109, 2017, 3, 8, 0.00, 12.00, '1 g/l ', '4,8 g/l', '30,5 g/l', '', '3-5', '', 'Ano', '2017-09-25', '2117');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0053', 23, null, 'Pálava', 1, 290, 2017, 2, 3, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1722');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0032', 24, 8, 'Ryzlink rýnský VOC', 1, 230, 2017, 3, 9, 0.00, 13.00, '5,1 g/l ', '6,6 g/l', '25,6 g/l', '22,8 °NM', '', '', 'Ano', null, '17/RR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0050', 19, 18, 'Sauvignon VOC', 1, 266, 2017, 3, 9, 0.00, 13.00, '6,3 g/l ', '6 g/l', '', '', '', '', 'Ano', null, '11/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0194', 4, null, 'LAHOFER červený Sladký - Dornfelder', 4, 220, 2016, 4, null, 0.00, 12.00, '40,9 g/l ', '5,7 g/l', '', '21,8 °NM', 'o 31.12.2021', '', 'Ano', '2016-10-05', '2716');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0067', 27, 7, 'Gryllus bílý BIO VOC', 1, 210, 2017, 3, 9, 0.00, 13.00, '2 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '1617');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0127', 8, 34, 'DNA - Tramín červený - Vinohrady - Cuvée', 1, 390, 2015, 1, 1, 0.00, 13.00, '9,4 g/l ', '6,4 g/l', '', '24 °NM', '6-8le', '', 'Ano', '2015-09-22', '915');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0144', 8, 19, 'Sauvignon VOC', 1, 190, 2017, 1, 9, 0.00, 12.00, '12,3 g/l ', '6,8 g/l', '22,3 g/l', '22 °NM', '4 - 6', '', 'Ano', '2017-09-26', '2417');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0126', 8, 34, 'DNA - Tramín červený - Nerez', 1, 390, 2015, 1, 1, 0.00, 13.00, '10,7 g/l ', '6,2 g/l', '', '24 °NM', '6-8le', '', 'Ano', '2015-09-22', '915');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0124', 8, 34, 'DNA - Tramín červený - Dub', 1, 390, 2015, 1, 1, 0.00, 13.00, '9,3 g/l ', '6,6 g/l', '', '24 °NM', '6-8le', '', 'Ano', '2015-09-22', '915');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0100', 15, 5, 'Sauvignon VOC', 1, 190, 2017, 1, 9, 0.00, 11.00, '13,2 g/l ', '7 g/l', '20,8 g/l', '', '', '', 'Ano', null, '37/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0141', 8, 8, 'Kerner', 1, 180, 2017, 2, 4, 0.00, 11.00, '37 g/l ', '7,2 g/l', '21,2 g/l', '22,6 °NM', '4 - 6', '', 'Ano', '2017-09-15', '917');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0066', 27, 32, 'Sauvignon VOC', 1, 230, 2017, 3, 9, 0.00, 13.00, '0,6 g/l ', '5,7 g/l', '', '', '', '', 'Ano', null, '417');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0007', 17, 7, 'Ryzlink vlašský', 1, 150, 2017, 1, 1, 0.00, 12.00, '15,5 g/l ', '7,5 g/l', '', '23,5 °NM', '', '', 'Ano', null, '17/03');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0049', 11, 32, 'Hibernal / panenská sklizeň', 1, 180, 2016, 3, 4, 0.00, 13.00, '7,1 g/l ', '7,2 g/l', '', '', '', '', 'Ano', null, '6/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0145', 9, null, 'Znovín Classi Demi', 2, 190, 2016, 2, 13, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '6378');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0143', 9, null, 'Znovín De Lux rosé Cabernet Sauvignon Demi sec', 2, 225, 2013, 2, 13, 0.00, 12.00, '47 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '3025');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0044', 22, 15, 'Veltlínské zelené', 1, 121, 2017, 3, 1, 0.00, 12.00, '0,9 g/l ', '6,4 g/l', '', '', '', '', 'Ano', null, '1714');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0025', 12, 7, 'Zweigeltrebe Rosé', 3, 165, 2016, 1, 6, 0.00, 11.00, '9,4 g/l ', '7,2 g/l', '20,3 g/l', '', '', '', 'Ano', null, '02-16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0024', 20, 7, 'Muškát moravský', 1, 169, 2017, 2, 6, 0.00, 11.00, '18,4 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '10/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0125', 8, 34, 'DNA - Tramín červený - akát', 1, 390, 2015, 1, 1, 0.00, 13.00, '10 g/l ', '6,4 g/l', '', '24 °NM', '6-8le', '', 'Ano', '2015-09-22', '915');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0052', 1, 16, 'Müller Thurgau', 1, 179, 2017, 1, 6, 0.00, 11.00, '6,2 g/l ', '6,9 g/l', '', '', '', '', 'Ano', null, '13/17/MT');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0063', 27, 32, 'Gryllus červený', 4, 299, 2015, 3, 10, 0.00, 13.00, '0,2 g/l ', '4,7 g/l', '', '', '', '', 'Ano', null, '1315');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0051', 1, 5, 'Veltlínské zelené', 1, 140, 2017, null, 6, 0.00, 11.00, '0,3 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '15/17/VZ');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0023', 29, 7, 'Sauvignon Blanc', 1, 200, 0, 3, 1, 0.00, 14.00, '8 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '2017-03');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0024', 29, 34, 'Pálava', 1, 230, 2017, 2, 1, 0.00, 13.00, '35 g/l ', '7,5 g/l', '', '', '', '', 'Ano', null, '2017-08');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0023', 20, 8, 'Rulandské modré - KLARET', 3, 182, 2017, null, 1, 0.00, 14.00, '7,9 g/l ', '6,6 g/l', '', '', '', '', 'Ano', null, '17/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0095', 15, 31, 'Müller Thurgau', 1, 140, 2017, 2, 6, 0.00, 10.00, '20,1 g/l ', '6,4 g/l', '19,2 g/l', '', '', '', 'Ano', null, '2584/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0056', 13, 8, 'Sylvánské zelené', 1, 173, 2017, 3, 6, 0.00, 10.00, '6,4 g/l ', '6,4 g/l', '19,3 g/l', '19 °NM', '', '', 'Ano', null, '1707');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0038', 3, 28, 'Cabernet Cortis', 4, 423, 2016, 3, 7, 0.00, 14.00, '1,9 g/l ', '5,5 g/l', '29,7 g/l', '', '1 - 3 roky', '', 'Ano', null, '16CAS');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0040', 28, 8, 'White RESERVE', 1, 375, 2015, 3, 1, 0.00, 13.00, '6 g/l ', '7 g/l', '', '23 °NM', 'až 10 le', '', 'Ano', null, 'L-201610');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0047', 11, 32, 'Veltlínské zelené', 1, 80, 2017, 3, 8, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '3/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0192', 4, 18, 'Müller Thrugau', 1, 165, 2017, 4, 4, 0.00, 10.00, '50,8 g/l ', '6,8 g/l', '23,8 g/l', '22 °NM', '2 - 4', '', 'Ano', '2017-10-09', '4217');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0021', 29, null, 'RESERVE Pinot Cuvée 2016', 1, 300, 2016, null, 1, 0.00, 14.00, '3 g/l ', '6 g/l', '', '', '', '', 'Ano', null, '2016-03');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0139', 8, 18, 'Müller Thrugau', 1, 165, 2017, 1, 4, 0.00, 13.00, '9,1 g/l ', '6,5 g/l', '21,6 g/l', '22 °NM', '3 - 5', '', 'Ano', '2017-10-11', '7217');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MOD.0045', 11, 6, 'Rulandské šedé', 1, 160, 2016, 1, 3, 0.00, 13.00, '7,6 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '15/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0176', 4, null, 'Rulandské bílé', 1, 175, 2016, 3, 4, 0.00, 12.00, '3,8 g/l ', '6,8 g/l', '25,4 g/l', '21,2 °NM', '4 - 6', '', 'Ano', '2016-10-25', '5216');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0193', 4, null, 'Rosé LAHOFER', 3, 165, 2017, 4, 4, 0.00, 9.00, '50,9 g/l ', '7 g/l', '23,6 g/l', '22 °NM', '2 - 4', '', 'Ano', '2017-10-04', '3817');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0139', 9, 31, 'Cabernet Sauvignon Rosé', 3, 135, 2017, 2, 4, 0.00, 12.00, '18,1 g/l ', '6,7 g/l', '21,7 g/l', '', '2 - 3', '', 'Ano', null, '7317');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0040', 22, null, 'Cuvé 25', 4, 303, 2017, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1560');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0025', 20, 7, 'Sylvánské zelené', 1, 165, 2017, 3, 6, 0.00, 12.00, '6,2 g/l ', '6,4 g/l', '', '', '', '', 'Ano', null, '9/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0034', 3, null, 'Cuvée Premiéra', 1, 269, 2015, null, 4, 0.00, null, null, '', '', '', '', '', 'Ne', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0046', 23, 6, 'Veltlínské zelené EXTRA', 1, 220, 2016, 3, 4, 0.00, 12.00, '4,9 g/l ', '', '', '', '', '', 'Ano', null, '1607');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0050', 23, null, '100% Hroznový mošt', 6, 120, 2017, 4, null, 1.00, null, null, '', '', '', '', '', 'Ne', null, 'VM17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0061', 27, 32, 'KRAVÍ HORA Pinot Blanc SUR LIE', 1, 275, 2016, 3, 4, 0.00, 12.00, '0,1 g/l ', '4,4 g/l', '17,4 g/l', '22,5 °NM', '', '', 'Ano', null, '716');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0131', 8, 8, 'Rulandské bílé', 1, 180, 2016, 3, 4, 0.00, 11.00, '3,4 g/l ', '6,6 g/l', '23,6 g/l', '21 °NM', '3 - 4', '', 'Ano', '2016-10-21', '7916');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0026', 20, 8, 'Veltlínské zelené', 1, 157, 2017, 3, 4, 0.00, 12.00, '4,7 g/l ', '6,7 g/l', '', '', '', '', 'Ano', null, '6/17');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0138', 9, null, 'Znovín Classic Brut', 2, 160, 2016, 3, 13, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '6350');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0132', 8, 18, 'Ryzlink rýnský VOC', 1, 190, 2016, 3, 9, 0.00, 12.00, '3,8 g/l ', '7,5 g/l', '25,9 g/l', '21 °NM', '7 – 9', '', 'Ano', '2016-10-12', '3816');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0132', 9, 8, 'Veltlínské zelené - Terroir Club', 1, 150, 2016, 2, 4, 0.00, 12.00, '16,4 g/l ', '6,3 g/l', '22,6 g/l', '', '4 - 6', '', 'Ano', null, '6375');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0013', 25, null, 'Rulandské šedé', 1, 182, 2015, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '6');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0012', 25, 15, 'Modrý Portugal', 4, 182, 2015, 3, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '5');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0011', 25, null, 'Zweigeltrebe', 4, 182, 2015, 3, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '10');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0171', 4, 18, 'Ryzlink rýnský', 1, 165, 2016, 2, 6, 0.00, 10.00, '19,6 g/l ', '7,2 g/l', '24,5 g/l', '20,4 °NM', '4 - 6', '', 'Ano', '2016-10-10', '4416');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIH.0094', 15, null, 'Cuvée Terasy VOC', 1, 155, 2016, 3, 9, 0.00, 12.00, '0,8 g/l ', '6,5 g/l', '21,4 g/l', '', '', '', 'Ano', null, '215/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0184', 4, 19, 'Zweigeltrebe', 4, 165, 2016, 3, 4, 0.00, 12.00, '0,3 g/l ', '4,6 g/l', '28,6 g/l', '22 °NM', '6 - 8', '', 'Ano', '2016-10-22', '4616');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0135', 8, 8, 'Muškát žlutý', 1, 190, 2017, 4, 1, 0.00, 9.00, '54 g/l ', '7,5 g/l', '', '20 °NM', '2 - 4', '', 'Ano', '2017-09-28', '3217');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0131', 9, null, 'Znovín Classic Sekt Demi sec - červený', 2, 170, 0, 2, 13, 0.00, 13.00, '43,1 g/l ', '7,3 g/l', '', '', '', '', 'Ano', null, '9080');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0039', 22, 15, 'Merlot - barrique', 4, 666, 2015, 3, 3, 0.00, 14.00, '0,2 g/l ', '5,7 g/l', '', '', '', '', 'Ano', null, '1546');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0048', 1, 5, 'Chardonnay APRI 2015', 1, 565, 2015, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ne', null, '9/15/CH');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0045', 19, 18, 'Ryzlink rýnský VOC', 1, 266, 2016, 3, 9, 0.00, 12.00, '6,3 g/l ', '7,7 g/l', '', '', '', '', 'Ano', null, '17/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0173', 4, 19, 'Rulandské bílé', 1, 175, 2016, 2, 4, 0.00, 10.00, '29,8 g/l ', '7,1 g/l', '27,5 g/l', '21,2 °NM', '6 - 8', '', 'Ano', '2016-10-25', '9016');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0136', 9, 2, 'Sauvignon RETRO STYL', 1, 160, 2016, 3, 4, 0.00, 12.00, '1,5 g/l ', '7,4 g/l', '20,8 g/l', '', '4 - 6', '', 'Ano', null, '6366');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0163', 4, 18, 'Sauvignon', 1, 200, 2016, 4, 3, 0.00, 10.00, '71,3 g/l ', '7,5 g/l', '23,4 g/l', '24,6 °NM', '5-7 le', '', 'Ano', '2016-10-23', '4816');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0060', 27, null, 'Meruňkový nektar - der Ilgner', 6, 120, 0, null, null, 0.00, null, null, '', '', '', '', '', 'Ne', null, 'M77-2017');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0054', 2, null, 'Rulandské bílé', 1, 99, 0, 3, 8, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '13/13');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PLA.0035', 3, 12, 'Cabernet Sauvignon', 4, 225, 2015, 3, 4, 0.00, 12.00, '0,1 g/l ', '4,8 g/l', '21,8 g/l', '', '1 - 3 roky', '', 'Ano', null, '15CS');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0054', 13, 26, 'Sauvignon', 1, 199, 2016, 1, 4, 0.00, 12.00, '13,1 g/l ', '6,6 g/l', '21,5 g/l', '22 °NM', '', '', 'Ano', null, '1643');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0036', 21, 14, 'Zweigeltrebe - barrique', 4, 150, 2013, 3, 8, 0.00, 12.00, '0,3 g/l ', '5,7 g/l', '23,2 g/l', '', '', '', 'Ano', null, '1309');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0026', 18, 25, 'Veritas', 1, 230, 2016, 2, 3, 0.00, 12.00, '20,1 g/l ', '6,5 g/l', '24,6 g/l', '', '', '', 'Ano', null, '167');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0024', 24, 8, 'Rulandské bílé', 1, 180, 2016, 1, 4, 0.00, 12.00, '10,3 g/l ', '6,2 g/l', '24,9 g/l', '22,4 °NM', '', '', 'Ano', null, '16/RB');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0010', 25, null, 'Svatovavřinecké', 4, 199, 2015, 3, 4, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, '15/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0037', 28, 32, 'Sauvignon - KRAVÁK', 1, 340, 2016, 3, 4, 0.00, 13.00, '0,7 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, 'L-201755');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0022', 20, 32, 'Sauvignon - KRAVÁK', 1, 363, 2016, 3, 4, 0.00, 13.00, '4,7 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '9/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0044', 23, 32, 'Sauvignon - KRAVÁK', 1, 299, 2016, 3, 4, 0.00, 13.00, '2,1 g/l ', '6 g/l', '', '', '', '', 'Ano', null, '1608');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0036', 22, 15, 'Veltlínské zelené', 1, 182, 2015, 3, 4, 0.00, 13.00, '1,5 g/l ', '7,6 g/l', '', '', '', '', 'Ano', null, '1531');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0053', 13, 8, 'Pinot Noir - Blanc de Noir', 1, 250, 2015, 2, 3, 0.00, 13.00, '34,5 g/l ', '6,9 g/l', '35,1 g/l', '26,5 °NM', '', '', 'Ano', null, '1536');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('TAO.0037', 22, 15, 'Chardonnay', 1, 230, 2015, 3, 4, 0.00, 14.00, '4,3 g/l ', '8,1 g/l', '', '', '', '', 'Ano', null, '1512');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0055', 2, null, 'Sauvignon', 1, 99, 0, 3, 8, 0.00, 11.00, null, '', '', '', '', '', 'Ano', null, '13/40');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0143', 8, 35, 'Sylvánské zelené - HANZEL DNA', 1, 390, 2016, 3, 1, 0.00, 13.00, '3 g/l ', '6,3 g/l', '23,3 g/l', '23 °NM', '10 -12', '', 'Ano', '2016-09-27', '9716');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0042', 19, null, 'Viognier', 1, 139, 2015, 3, 10, 0.00, 12.00, '0,5 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, 'F4/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0035', 28, null, 'Pinot Gris', 1, 230, 2016, null, 1, 0.00, 12.00, '2,5 g/l ', '6,5 g/l', '', '22,5 °NM', '', '', 'Ano', null, 'L-201709');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0175', 4, 8, 'Ryzlink vlašský', 1, 165, 2016, 3, 4, 0.00, 13.00, '7,4 g/l ', '6,4 g/l', '22,6 g/l', '23 °NM', '6 - 8', '', 'Ano', '2016-10-27', '8616');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0050', 2, 8, 'Müller Thurgau', 1, 160, 2016, 1, 4, 0.00, 12.00, '8,6 g/l ', '5,5 g/l', '21,6 g/l', '', '', '', 'Ano', null, '16/06');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0033', 28, 38, 'Sauvignon Blanc', 1, 269, 2016, 3, 1, 0.00, 13.00, '1 g/l ', '6,5 g/l', '', '', '3 - 4', '', 'Ano', null, 'L-201706');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0053', 2, 11, 'Ryzlink vlašský', 1, 170, 2016, 3, 4, 0.00, 12.00, '3,1 g/l ', '6 g/l', '21,7 g/l', '', '', '', 'Ano', null, '16/01');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0023', 7, 36, 'Frankovka Rosé', 3, 116, 2016, null, 1, 0.00, 12.00, null, '', '', '22,5 °NM', '', '', 'Ne', '2016-09-20', '01649');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0019', 12, 7, 'Sauvignon VOC', 1, 347, 2016, 3, 9, 0.00, 12.00, '5,2 g/l ', '7,4 g/l', '20,7 g/l', '', '', '', 'Ano', null, '03-16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0043', 23, null, 'SAUVIGNON dolce vita', 1, 255, 2016, 2, 4, 0.00, 10.00, '27,1 g/l ', '6,8 g/l', '', '', '2 - 3', '', 'Ano', null, '1612');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0128', 9, 39, 'Pálava', 1, 150, 2015, 2, 3, 0.00, 12.00, '28,7 g/l ', '6,9 g/l', '27 g/l', '', '6 - 8', '', 'Ano', null, '5071');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0042', 23, null, 'Chardonnay - Grand Reserva No.3', 1, 799, 2015, 3, 4, 0.00, 13.00, '1,7 g/l ', '', '', '', '', '', 'Ano', null, '1516');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0049', 2, 8, 'Sylvánské zelené', 1, 190, 2014, 3, 6, 0.00, 11.00, '3 g/l ', '7,3 g/l', '23,3 g/l', '', '', '', 'Ano', null, '14/07');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0048', 2, 8, 'Muškát moravský', 1, 160, 2016, 2, 4, 0.00, 11.00, '30,7 g/l ', '6,1 g/l', '21 g/l', '', '', '', 'Ano', null, '16/21');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0021', 7, 17, 'Veltlínské zelené VOC', 1, 165, 2016, 3, 9, 0.00, 12.00, '2,3 g/l ', '5,5 g/l', '20,7 g/l', '21,1 °NM', '4 - 6', '', 'Ano', '2016-10-17', '01654');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0005', 17, 30, 'Rulandské šedé', 1, 200, 2016, 2, 3, 0.00, 12.00, '40,8 g/l ', '7,5 g/l', '26,5 g/l', '', '', '', 'Ano', null, '16/05');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0004', 17, 7, 'Chardonnay', 1, 200, 2016, 2, 4, 0.00, 12.00, '31,5 g/l ', '7,6 g/l', '22,8 g/l', '', '', '', 'Ano', null, '16/06');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAV.0005', 26, 22, 'Kvevri Barbora - Tramín červený 2016', 1, 448, null, null, null, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '5/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0049', 1, 5, 'Sauvignon VOC', 1, 225, 2016, 3, 9, 0.00, 13.00, '0,6 g/l ', '7,7 g/l', '', '', '4 - 6', '', 'Ano', null, '6/16/SG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0038', 19, 8, 'CH sir lie 2011 - Chardonnay & Pinot Blanc', 1, 327, 2011, 3, 4, 0.00, 13.00, '1 g/l ', '4,4 g/l', '', '', '8 - 10 le', '', 'Ano', null, '20/11');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0033', 21, 14, 'Veltlínské zelené VOC', 1, 200, 2016, 3, 9, 0.00, 11.00, '6,6 g/l ', '5,4 g/l', '19,6 g/l', '21,5 °NM', '4 - 6', '', 'Ano', null, '1615');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0047', 2, 26, 'Sylvánské zelené', 1, 200, 2016, 3, 4, 0.00, 13.00, '5,1 g/l ', '6,8 g/l', '23,3 g/l', '', '', '', 'Ano', null, '16/04');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0022', 7, 24, 'Svatovavřinecké', 4, 120, 2016, 3, 1, 0.00, 12.00, null, '', '', '20,5 °NM', '', '', 'Ano', null, '01612');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0052', 27, 32, 'EDELSPITZ PIGAGE - oranžové víno', 1, 500, 2015, 3, 1, 0.00, 13.00, '0,1 g/l ', '4,4 g/l', '', '', '', '', 'Ano', null, '4315');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0169', 4, 37, 'Veltlínské zelené VOC', 1, 175, 2016, 3, 9, 0.00, 12.00, '6 g/l ', '6,4 g/l', '22,8 g/l', '21 °NM', '3 - 5', '', 'Ano', '2016-11-01', '7216');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0055', 23, 26, 'Ryzlink rýnský VOC', 1, 240, 2017, 1, 9, 0.00, 13.00, '10,9 g/l ', '8 g/l', '', '', '', '', 'Ano', null, '1706');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0120', 8, 19, 'Sauvignon VOC', 1, 190, 2016, 3, 9, 0.00, 13.00, '3,1 g/l ', '6,7 g/l', '22,8 g/l', '21 °NM', '3 - 5', '', 'Ano', '2016-10-12', '3716');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0124', 9, 39, 'Pálava', 1, 160, 2016, null, 3, 0.00, 12.00, '26,1 g/l ', '6,8 g/l', '25,6 g/l', '', '5-7 le', '', 'Ano', null, '6326');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0043', 2, 11, 'Sauvignon VOC', 1, 200, 2016, 3, 9, 0.00, 12.00, '6,4 g/l ', '7 g/l', '22,5 g/l', '21,8 °NM', '', '', 'Ano', null, '16/11');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0020', 24, 8, 'Sauvignon Blanc VOC', 1, 219, 2016, null, 9, 0.00, 12.00, '10,3 g/l ', '6,3 g/l', '21,4 g/l', '21,5 °NM', '', '', 'Ano', null, '16/SGBL');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0021', 24, 8, 'Sauvignon VOC', 1, 219, 2016, 3, 9, 0.00, 12.00, '3,5 g/l ', '6,3 g/l', '22 g/l', '21,5 °NM', '', '', 'Ano', null, '16/SG');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('KOR.0043', 1, 5, 'Ryzlink rýnský VOC', 1, 225, 2016, 3, 9, 0.00, 13.00, '0,5 g/l ', '7,2 g/l', '', '', '5 - 6 le', '', 'Ano', null, '17/16/RR');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0049', 27, 32, 'KRAVÍ HORA Sauvignon', 1, 210, 2016, 3, 1, 0.00, 12.00, '0,6 g/l ', '6,8 g/l', '', '', '', '', 'Ano', null, '3316');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0014', 29, null, 'Chardonnay', 1, 180, 2016, 3, 1, 0.00, 12.00, '5 g/l ', '7,5 g/l', '', '', '', '', 'Ano', null, '2016-02');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0165', 4, null, 'Neuburské', 1, 175, 2016, 2, 4, 0.00, 10.00, '22,3 g/l ', '8,3 g/l', '26,1 g/l', '21 °NM', '4 - 6', '', 'Ano', '2016-09-19', '916');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0117', 8, 19, 'Müller Thrugau', 1, 165, 2016, 3, 4, 0.00, 11.00, '3,7 g/l ', '6,4 g/l', '19,8 g/l', '21 °NM', '2 - 4', '', 'Ano', '2016-09-21', '1716');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SIM.0016', 29, null, 'Veltlínské zelené', 1, 180, 2016, 1, 1, 0.00, 12.00, '11 g/l ', '7 g/l', '', '', '', '', 'Ano', null, '2016-04');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0105', 8, 35, 'Veltlínské zelené', 1, 175, 2015, 3, 9, 0.00, 12.00, '3,5 g/l ', '6,6 g/l', '20,2 g/l', '21 °NM', '4 - 6', '', 'Ano', '2015-10-05', '4115');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0084', 8, 19, 'Sauvignon', 1, 190, 2014, 1, 9, 0.00, 11.00, '13,7 g/l ', '7,6 g/l', '27,5 g/l', '20 °NM', '3 - 4', '', 'Ano', '2014-10-11', '4314');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0015', 7, 17, 'Sauvignon', 1, 120, 2016, 3, 1, 0.00, 12.00, null, '', '', '20,5 °NM', '', '', 'Ano', '2016-09-19', '01603');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0013', 7, 17, 'Tramín červený', 1, 120, 2016, 1, 1, 0.00, 12.00, null, '', '', '23,3 °NM', '', '', 'Ano', '2016-10-10', '01635');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0044', 2, 8, 'Veltlínské zelené VOC', 1, 200, 2016, 3, 9, 0.00, 13.00, '1,4 g/l ', '5,1 g/l', '19,2 g/l', '21,8 °NM', '', '', 'Ano', null, '16/10');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0001', 17, 7, 'Neuburské', 1, 110, 2016, 3, 1, 0.00, 11.00, '1,8 g/l ', '8 g/l', '', '', '', '', 'Ano', null, '16/03');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0025', 18, 25, 'Sauvignon VOC', 1, 160, 2016, 1, 9, 0.00, 12.00, '9,2 g/l ', '8,2 g/l', '24,2 g/l', '21,5 °NM', '4 - 6', '', 'Ano', null, '163');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0034', 21, 14, 'Sauvignon', 1, 250, 2016, 2, 4, 0.00, 11.00, '28,6 g/l ', '7,4 g/l', '21,3 g/l', '22 °NM', '', '', 'Ano', null, '1609');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0051', 2, 11, 'Ryzlink rýnský', 1, 185, 2015, 3, 4, 0.00, 12.00, '7,4 g/l ', '7,3 g/l', '28 g/l', '', '', '', 'Ano', null, '15/06');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0044', 13, null, '100% Hroznový mošt', 6, 99, 2016, 4, null, 0.00, null, null, '', '', '', '', '', 'Ne', null, '1665');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0012', 6, null, 'Cuvée Národní Park', 1, 195, 2015, 3, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, 'CNP 1968-15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0011', 6, null, 'Quatre - Štverka 2014', 1, 290, 2014, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, 'Q775/14');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0110', 8, 8, 'Rulandské šedé', 1, 190, 2015, 1, 4, 0.00, 13.00, '9,2 g/l ', '6,8 g/l', '20,4 g/l', '23 °NM', '4 - 6', '', 'Ano', null, '2515');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0091', 9, 22, 'Kerner', 1, 180, 2015, 4, 7, 0.00, 11.00, '69,3 g/l ', '7,6 g/l', '33,8 g/l', '', '8 - 10 le', '', 'Ano', null, '5042');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0021', 18, 25, 'Ryzlink rýnský', 1, 140, 2015, 1, 4, 0.00, 11.00, '8,2 g/l ', '7,3 g/l', '', '21 °NM', '', '', 'Ano', null, '1510/1');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0102', 9, 39, 'Veltlínské zelené', 1, 160, 2015, 1, 3, 0.00, 12.00, '7 g/l ', '6,6 g/l', '24,3 g/l', '', '4 - 6', '', 'Ano', null, '5017');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('PAJ.0034', 23, null, 'Sauvignon - Grand Reserva No.2', 1, 599, 2013, 3, 4, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, '1318');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('SPA.0044', 27, 32, 'Tramín červený', 1, 390, 2015, 4, 7, 0.00, 11.00, '76,4 g/l ', '5,9 g/l', '', '', '', '', 'Ano', null, '1815');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0035', 2, 26, 'Ryzlink rýnský VOC - Královská řada', 1, 350, 2013, 3, 9, 0.00, 12.00, '2,5 g/l ', '8,1 g/l', '24,3 g/l', '', '', '', 'Ano', null, '13/09');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VAN.0013', 24, 26, 'Zweigeltrebe', 4, 180, 2015, 3, 4, 0.00, 12.00, '0,2 g/l ', '5,5 g/l', '22,2 g/l', '21,6 °NM', '', '', 'Ano', null, '15/ZW');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0103', 8, 19, 'Sauvignon', 1, 190, 2015, 1, 9, 0.00, 13.00, '13,5 g/l ', '7 g/l', '20,4 g/l', '23 °NM', '4 - 6', '', 'Ano', '2015-10-01', '3115');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0039', 13, 8, 'Ryzlink rýnský', 1, 199, 2015, 2, 4, 0.00, 12.00, '25,2 g/l ', '9,2 g/l', '30,4 g/l', '24,5 °NM', '', '', 'Ano', null, '1526');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0020', 20, 32, 'Sauvignon - KRAVÁK', 1, 363, 2015, 3, 4, 0.00, 14.00, '5,7 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '9/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0087', 8, 37, 'Ryzlink rýnský', 1, 145, 2014, 3, 6, 0.00, null, '6,4 g/l ', '8 g/l', '26 g/l', '19 °NM', '2-4le', '', 'Ano', '2014-10-22', '4514');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0020', 18, null, 'Tasovjanka', 1, 180, 2015, 2, 1, 0.00, 12.00, '14 g/l ', '6,3 g/l', '', '', '', '', 'Ano', null, '1515');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0084', 4, 18, 'SEKT Neuburské', 2, 350, 2014, 1, 13, 0.00, 12.00, '6 g/l ', '', '', '', '', '', 'Ne', null, '414');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0104', 8, 19, 'André', 4, 145, 2015, 3, 8, 0.00, null, '0,2 g/l ', '5,3 g/l', '25,7 g/l', '20 °NM', '4-6 le', '', 'Ano', '2015-11-06', '8315');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('AMP.0038', 13, 8, 'Müller Thrugau', 1, 150, 2015, 2, 4, 0.00, 12.00, '21,7 g/l ', '5,9 g/l', '19,6 g/l', '21,5 °NM', '', '', 'Ano', null, '1511');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0099', 8, 8, 'Rulandské šedé', 1, 290, 2015, 4, 15, 0.00, null, '112 g/l ', '7,2 g/l', '53,3 g/l', '32,4 °NM', '10-12le', '', 'Ano', '2015-11-11', '8115');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VSL.0011', 7, 17, 'Cabernet Sauvignon', 4, 245, 2011, 3, 4, 0.00, 11.00, '0,8 g/l ', '5,5 g/l', '27,5 g/l', '21,1 °NM', '', '', 'Ano', '2011-11-10', '01108');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0008', 6, null, 'Sauvignon Blanc qvevri', 1, 460, 2013, 3, 1, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, 'SG 1968-13');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0144', 4, 18, 'A-SEKT Neuburské', 2, 350, 2014, null, 13, 0.00, 12.00, '6 g/l ', '', '', '', '', '', 'Ano', null, 'A414');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0017', 12, 7, 'Sauvignon (VOC)', 1, 250, 2015, 2, 9, 0.00, 13.00, '13,5 g/l ', '7,7 g/l', '21,2 g/l', '', '', '', 'Ano', null, '06/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DVP.0007', 6, null, 'Nejedlík Orange', 1, 714, 2011, 3, 1, 0.00, 13.00, '2 g/l ', '5,7 g/l', '', '', '8 a více', '', 'Ano', null, 'NEJ 1968/11');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('WAL.0032', 2, 8, 'Veltlínské zelené (VOC)', 1, 175, 2015, 1, 9, 0.00, 12.00, '14,5 g/l ', '6,3 g/l', '', '22 °NM', '', '', 'Ano', null, '15/11');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0017', 18, 25, 'Sauvignon (VOC)', 1, 180, 2015, 3, 9, 0.00, 12.00, '8,7 g/l ', '6,3 g/l', '21,3 g/l', '23 °NM', '', '', 'Ano', null, '153');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0029', 19, 18, 'Sauvignon (VOC)', 1, 254, 2015, 3, 9, 0.00, 12.00, '8,4 g/l ', '7,5 g/l', '', '', '', '', 'Ano', null, '13/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0024', 21, null, 'Rulandské bílé', 1, 210, 2015, 2, 4, 0.00, 11.00, '32,6 g/l ', '7,5 g/l', '', '', '', '', 'Ano', null, '1510');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0025', 21, 14, 'Sauvignon (VOC)', 1, 250, 2015, 2, 9, 0.00, 12.00, '13,8 g/l ', '5,8 g/l', '22,2 g/l', '', '', '', 'Ano', null, '1511');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0040', 19, 18, 'Sauvignon VOC', 1, 266, 2016, 3, 9, 0.00, 12.00, '8,5 g/l ', '7,3 g/l', '', '', '', '', 'Ano', null, '4/16');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0129', 4, 19, 'Svatovavřinecké', 4, 165, 2012, 3, 4, 0.00, 12.00, '0,1 g/l ', '5,2 g/l', '26,9 g/l', '21,2 °NM', '', '', 'Ano', null, '4412');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0019', 20, 32, 'Sauvignon - KRAVÁK', 1, 290, 2014, 3, 6, 0.00, 12.00, '1,8 g/l ', '6,7 g/l', '', '', '', '', 'Ano', null, '6/14');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('MUS.0002', 25, 15, 'Veltlínské zelené', 1, 199, 2012, 3, 4, 0.00, 14.00, null, '', '', '', '', '', 'Ano', null, '3');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0020', 19, 18, 'Sauvignon VOC', 1, 254, 2014, 3, 9, 0.00, 10.00, '6 g/l ', '8,5 g/l', '', '', '', '', 'Ano', null, '');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HAN.0086', 8, 21, 'Veltlínské zelené', 1, 190, 2014, 3, 9, 0.00, 11.00, '1,6 g/l ', '5,9 g/l', '21,3 g/l', '19 °NM', '3 - 5', '', 'Ano', '2014-10-20', '4814');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ZNO.0045', 9, null, 'Znovín de Lux rosé Demi', 2, 200, 0, null, 13, 0.00, 12.00, '36,7 g/l ', '6,5 g/l', '', '', '', '', 'Ano', null, '3103');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOD.0011', 18, 10, 'Veltlínské zelené', 1, 130, 2014, 3, 9, 0.00, 11.00, '3,5 g/l ', '7,3 g/l', '22,3 g/l', '21,2 °NM', '', '', 'Ano', null, '1410');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0018', 12, 40, 'Ryzlink rýnský (VOC)', 1, 311, 2015, 2, 9, 0.00, 12.00, '13,3 g/l ', '8,1 g/l', '23,1 g/l', '', '', '', 'Ano', null, '16/15');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('BLA.0003', 26, null, 'St. Laurent A 2012 - Školní statek Mělník', 4, 260, null, null, null, 0.00, 12.00, null, '', '', '', '', '', 'Ano', null, 'N-1/12');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LIB.0016', 21, null, 'Aurélius', 1, 206, 1999, 3, null, 0.00, null, null, '', '', '', '', '', 'Ano', null, '43');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0072', 4, null, 'Sauvignon Francie', 1, 155, 2014, 3, 12, 0.00, 12.00, '2,3 g/l ', '6,4 g/l', '21,7 g/l', '', '2 - 3 roky', '', 'Ano', null, '5614');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('DOB.0015', 12, 7, 'Veltlínské zelené', 1, 250, 2014, null, 9, 0.00, 12.00, '6,5 g/l ', '6,8 g/l', '19 g/l', '', '', '', 'Ano', null, '10-14');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0010', 20, null, 'Rulandské bílé', 1, 557, 2009, 4, 11, 0.00, 11.00, '186,6 g/l ', '9,1 g/l', '', '37 °NM', '', '', 'Ano', null, '23/09');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('ART.0029', 28, null, 'ORANGE RESERVE 2015', 1, 545, 2015, 3, 1, 0.00, 13.00, null, '', '', '', '', '', 'Ano', null, 'L-201612');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('LAH.0021', 4, 8, 'Rulandské šedé', 1, 290, 2011, 4, 15, 0.00, 13.00, '59,3 g/l ', '6,7 g/l', '31,6 g/l', '32,6 °NM', '5', '', 'Ano', '2011-11-23', '8111');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('NAP.0011', 20, null, 'Ryzlink vlašský', 1, 557, 2009, 4, 11, 0.00, 10.00, '271,7 g/l ', '8,7 g/l', '', '45,2 °NM', '', '', 'Ano', null, '25/09');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('VIZ.0003', 17, 7, 'Pálava', 1, 149, 2016, 2, 1, 0.00, 11.00, '33,9 g/l ', '6,2 g/l', '', '', '', '', 'Ano', null, '16/02');
INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,
volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES('HOR.0016', 19, null, 'HORT FRANCE Premium', 4, 290, 2012, 3, null, 0.00, 13.00, '0,3 g/l ', '4,9 g/l', '', '', 'o roku 2030', '', 'Ano', null, '');
