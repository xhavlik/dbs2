sub getWineSqlSchema {
	my $sql_schema = << "END_SQL";
DROP TABLE IF EXISTS wine;
DROP TABLE IF EXISTS wine_company;
DROP TABLE IF EXISTS wine_region;

CREATE TABLE wine(
	id_wine VARCHAR(25) NOT NULL,
	id_wine_company INT NOT NULL,
	id_wine_region INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50), ENUM
    price INT,
    year INT,
    category VARCHAR(50), ENUM
    subcategory VARCHAR(50), ENUM
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
    name VARCHAR(50) NOT NULL
);

END_SQL

	# ALTER TABLE wine ADD CONSTRAINT pk_wine PRIMARY KEY (id_wine);
	# ALTER TABLE wine_company ADD CONSTRAINT pk_wine_company PRIMARY KEY (id_wine_company);
	# ALTER TABLE wine_region ADD CONSTRAINT pk_wine_region PRIMARY KEY (id_wine_region);
	# 
	# ALTER TABLE wine ADD CONSTRAINT fk_wine_company FOREIGN KEY (id_wine_company) REFERENCES wine_company;
	# ALTER TABLE wine ADD CONSTRAINT fk_wine_region FOREIGN KEY (id_wine_region) REFERENCES wine_region;
	# 

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
