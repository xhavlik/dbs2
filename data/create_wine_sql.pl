#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

require './modules/file_actions.pl';

my $file_input_wine = "./raw/wine.json";

my $file_output_sql = "./database/wine.sql";
my $file_output_nosql_wine = "./database/wine.json";
my $file_output_nosql_wine_company = "./database/wine_company.json";
my $file_output_nosql_wine_region = "./database/wine_region.json";

my $sql_output = "";
my $nosql_output_wine = "";
my $nosql_output_wine_company = "";
my $nosql_output_wine_region = "";

# sql output base
$sql_output .= "DROP TABLE IF EXISTS wine;\n";
$sql_output .= "DROP TABLE IF EXISTS wine_company;\n";
$sql_output .= "DROP TABLE IF EXISTS wine_region;\n";
$sql_output .= "\n";
$sql_output .= "CREATE TABLE wine(\n";
$sql_output .= "	id_wine VARCHAR(25) NOT NULL, --PK\n";
$sql_output .= "	id_wine_company INT NOT NULL, --FK\n";
$sql_output .= "	id_wine_region INT NOT NULL, --FK\n";
$sql_output .= "    type VARCHAR(50) NOT NULL,\n";
$sql_output .= "    name VARCHAR(50) NOT NULL,\n";
$sql_output .= "    category VARCHAR(50) NOT NULL,\n";
$sql_output .= "    subcategory VARCHAR(50),\n";
$sql_output .= "    volume VARCHAR(50),\n";
$sql_output .= "    alcohol VARCHAR(50),\n";
$sql_output .= "    sugar_left VARCHAR(50),\n";
$sql_output .= "    acids VARCHAR(50),\n";
$sql_output .= "    extract_sugar_free VARCHAR(50),\n";
$sql_output .= "    grapes_sugar VARCHAR(50),\n";
$sql_output .= "    archivation VARCHAR(50),\n";
$sql_output .= "    cooled VARCHAR(50),\n";
$sql_output .= "    sulfur_dioxide VARCHAR(50),\n";
$sql_output .= "    grapes_collected VARCHAR(50),\n";
$sql_output .= "    wine_yard VARCHAR(50)\n";
$sql_output .= ");\n";
$sql_output .= "\n";
$sql_output .= "CREATE TABLE wine_company(\n";
$sql_output .= "	id_wine_company INT NOT NULL, --PK\n";
$sql_output .= "    name VARCHAR(50) NOT NULL\n";
$sql_output .= ");\n";
$sql_output .= "\n";
$sql_output .= "CREATE TABLE wine_region(\n";
$sql_output .= "    id_wine_region INT NOT NULL, --PK\n";
$sql_output .= "    region VARCHAR(50) NOT NULL\n";
$sql_output .= ");\n";
$sql_output .= "\n";
$sql_output .= "---- PK ----\n";
$sql_output .= "ALTER TABLE wine ADD CONSTRAINT pk_wine PRIMARY KEY (id_wine);\n";
$sql_output .= "ALTER TABLE wine_company ADD CONSTRAINT pk_wine_company PRIMARY KEY (id_wine_company);\n";
$sql_output .= "ALTER TABLE wine_region ADD CONSTRAINT pk_wine_region PRIMARY KEY (id_wine_region);\n";
$sql_output .= "\n";
$sql_output .= "---- FK ----\n";
$sql_output .= "ALTER TABLE wine ADD CONSTRAINT fk_wine_company FOREIGN KEY (id_wine_company) REFERENCES wine_company;\n";
$sql_output .= "ALTER TABLE wine ADD CONSTRAINT fk_wine_region FOREIGN KEY (id_wine_region) REFERENCES wine_region;\n";
$sql_output .= "\n";
$sql_output .= "---- FILL ----\n";


my $wines = readJsonFile($file_input_wine);
my $wine_companies = {};
my $wine_regions = {};


# first find all wine companies
foreach my $wine (@$wines) {
	if ($wine->{"Vinarstvi"} and not defined $wine_companies->{$wine->{"Vinarstvi"}}) {
		$wine_companies->{$wine->{"Vinarstvi"}} = (scalar keys $wine_companies) + 1;
	}
}

foreach my $wine_company (reverse sort { $wine_companies->{$b} <=> $wine_companies->{$a} } keys %$wine_companies) {
	$sql_output .= "INSERT INTO wine_company (id_wine_company, name) VALUES('$wine_companies->{$wine_company}', '$wine_company');\n";
	$nosql_output_wine_company .= "{\"id_wine_company\":\"$wine_companies->{$wine_company}\", \"name\":\"$wine_company\"}\n";
}

$sql_output .= "\n";


# second find all wine region
foreach my $wine (@$wines) {
	if ($wine->{"Vinarska oblast"} and not defined $wine_regions->{$wine->{"Vinarska oblast"}}) {
		$wine_regions->{$wine->{"Vinarska oblast"}} = (scalar keys $wine_regions) + 1;
	}
}

foreach my $wine_region (reverse sort { $wine_regions->{$b} <=> $wine_regions->{$a} } keys %$wine_regions) {
	$sql_output .= "INSERT INTO wine_region (id_wine_region, region) VALUES('$wine_regions->{$wine_region}', '$wine_region');\n";
	$nosql_output_wine_region .= "{\"id_wine_region\":\"$wine_regions->{$wine_region}\", \"region\":\"$wine_region\"}\n";
}

$sql_output .= "\n";

# finally fill wine table
foreach my $wine (@$wines) {
	if (not defined $wine->{"ID produktu"}) {
		next;
	}

	$sql_output .= "INSERT INTO wine (";
	$sql_output .= "id_wine, id_wine_company, id_wine_region, type, name, category, subcategory, volume, ";
	$sql_output .= "alcohol, sugar_left, acids, extract_sugar_free, grapes_sugar, archivation, cooled, ";
	$sql_output .= "sulfur_dioxide, grapes_collected, wine_yard";
	$sql_output .= ")\n";
	$sql_output .= "VALUES(";
	$sql_output .= "'" . ($wine->{"ID produktu"} || "null") . "', ";
	$sql_output .= "'" . ($wine_companies->{$wine->{"Vinarstvi"}} || "null") . "', ";
	$sql_output .= "'" . ($wine_regions->{$wine->{"Vinarska oblast"}} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Druh vina"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Nazev"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Kategorie"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Privlastek"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Objem"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Alkohol"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Zbytkovy cukr"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Kyseliny"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Bezcukerny extrak"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Cukernatost hroznu"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Doba archivace"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Podavat vychlazene na"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Obsahuje oxid siricity"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Hrozny sbirany"} || "null") . "', ";
	$sql_output .= "'" . ($wine->{"Vinicni trat"} || "null") . "');\n";

	$nosql_output_wine .= "{\"id_wine\":" . ($wine->{"ID produktu"} ? "\"" . $wine->{"ID produktu"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"id_wine_company\":" . ($wine_companies->{$wine->{"Vinarstvi"}} ? "\"" . $wine_companies->{$wine->{"Vinarstvi"}} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"id_wine_region\":" . ($wine_regions->{$wine->{"Vinarska oblast"}} ? "\"" . $wine_regions->{$wine->{"Vinarska oblast"}} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"type\":" . ($wine->{"Druh vina"} ? "\"" . $wine->{"Druh vina"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"name\":" . ($wine->{"Nazev"} ? "\"" . $wine->{"Nazev"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"category\":" . ($wine->{"Kategorie"} ? "\"" . $wine->{"Kategorie"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"subcategory\":" . ($wine->{"Privlastek"} ? "\"" . $wine->{"Privlastek"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"volume\":" . ($wine->{"Objem"} ? "\"" . $wine->{"Objem"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"alcohol\":" . ($wine->{"Alkohol"} ? "\"" . $wine->{"Alkohol"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"sugar_left\":" . ($wine->{"Zbytkovy cukr"} ? "\"" . $wine->{"Zbytkovy cukr"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"acids\":" . ($wine->{"Kyseliny"} ? "\"" . $wine->{"Kyseliny"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"extract_sugar_free\":" . ($wine->{"Bezcukerny extrak"} ? "\"" . $wine->{"Bezcukerny extrak"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"grapes_sugar\":" . ($wine->{"Cukernatost hroznu"} ? "\"" . $wine->{"Cukernatost hroznu"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"archivation\":" . ($wine->{"Doba archivace"} ? "\"" . $wine->{"Doba archivace"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"cooled\":" . ($wine->{"Podavat vychlazene na"} ? "\"" . $wine->{"Podavat vychlazene na"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"sulfur_dioxide\":" . ($wine->{"Obsahuje oxid siricity"} ? "\"" . $wine->{"Obsahuje oxid siricity"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"grapes_collected\":" . ($wine->{"Hrozny sbirany"} ? "\"" . $wine->{"Hrozny sbirany"} . "\"" : "null") . ", ";
	$nosql_output_wine .= "\"wine_yard\":" . ($wine->{"Vinicni trat"} ? "\"" . $wine->{"Vinicni trat"} . "\"" : "null") . "}\n";
}

writeInFile($file_output_sql, $sql_output);
writeInFile($file_output_nosql_wine, $nosql_output_wine);
writeInFile($file_output_nosql_wine_company, $nosql_output_wine_company);
writeInFile($file_output_nosql_wine_region, $nosql_output_wine_region);
