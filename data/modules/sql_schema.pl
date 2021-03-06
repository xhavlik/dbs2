sub getWineSqlSchema {
	my $sql_schema = << "END_SQL";
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

END_SQL

# ALTER TABLE wine ADD CONSTRAINT FK_wine_company FOREIGN KEY (fk_wine_company) REFERENCES wine_company(id_wine_company);
# ALTER TABLE wine ADD CONSTRAINT FK_wine_region FOREIGN KEY (fk_wine_region) REFERENCES wine_region(id_wine_region);
# ALTER TABLE wine ADD CONSTRAINT FK_wine_type FOREIGN KEY (fk_wine_type) REFERENCES wine_type(id_wine_type);
# ALTER TABLE wine ADD CONSTRAINT FK_wine_category FOREIGN KEY (fk_wine_category) REFERENCES wine_category(id_wine_category);
# ALTER TABLE wine ADD CONSTRAINT FK_wine_subcategory FOREIGN KEY (fk_wine_subcategory) REFERENCES wine_subcategory(id_wine_subcategory);

	return $sql_schema;

}


sub getWeatherSqlSchema {
	my $sql_schema = << "END_SQL";
DROP TABLE IF EXISTS weather;

CREATE TABLE weather(
    date DATE NOT NULL,
    avg_air_pressure FLOAT,
    avg_humidity FLOAT,
    total_rainfall FLOAT,
    min_temperature FLOAT,
    max_temperature FLOAT,
    avg_temperature FLOAT,
    sunshine FLOAT,
    avg_wind_speed FLOAT
);

ALTER TABLE weather ADD CONSTRAINT pk_weather PRIMARY KEY (date);

END_SQL

	return $sql_schema;
}


1;
