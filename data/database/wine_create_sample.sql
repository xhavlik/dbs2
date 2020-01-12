DROP TABLE IF EXISTS wine;
DROP TABLE IF EXISTS wine_company;
DROP TABLE IF EXISTS wine_region;
DROP TABLE IF EXISTS wine_type;
DROP TABLE IF EXISTS wine_category;
DROP TABLE IF EXISTS wine_subcategory;

CREATE TABLE wine(
    id_wine VARCHAR(50) NOT NULL,
	fk_wine_company INT NOT NULL,
	fk_wine_region INT NOT NULL,
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

INSERT INTO wine_subcategory (id_wine_subcategory, name)
VALUES(1, "moravské zemské");

INSERT INTO wine_category (id_wine_category, name)
VALUES(1, "polosuché");

INSERT INTO wine_type (id_wine_type, name)
VALUES(1, "bile-vino");

INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)
VALUES(1, "Dívčí vrch, Strachotice", 76.67, 90.26, 19.30, 1);

INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)
VALUES(1, "Vinařství Trávníček a Kořínek", "Hnanice", "2011-09-01", 29, 78780000);

INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory, volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)
VALUES("1", 1, 1, "Muškát moravský - mladé víno", 1, 110, 2019, 1, 1, 0.75, 12, '42', '42', '42', '42', '2-3', '10°C', '42', "2019-09-01", '12345');
