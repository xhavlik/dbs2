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
$sql_output .= "	id_wine VARCHAR2(25) NOT NULL, --PK\n";
$sql_output .= "    name VARCHAR2(50) NOT NULL,\n";
$sql_output .= "    type VARCHAR2(25) NOT NULL,\n";
$sql_output .= "    category VARCHAR2(25) NOT NULL,\n";
$sql_output .= "	id_wine_company NUMBER NOT NULL, --FK\n";
$sql_output .= "	id_wine_region NUMBER NOT NULL --FK\n";
$sql_output .= ");\n";
$sql_output .= "\n";
$sql_output .= "CREATE TABLE wine_company(\n";
$sql_output .= "	id_wine_company NUMBER NOT NULL, --PK\n";
$sql_output .= "    name VARCHAR(50) NOT NULL\n";
$sql_output .= ");\n";
$sql_output .= "\n";
$sql_output .= "CREATE TABLE wine_region(\n";
$sql_output .= "    id_wine_region NUMBER NOT NULL, --PK\n";
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

	$sql_output .= "INSERT INTO wine (id_wine, name, type, category, id_wine_company, id_wine_region)\n";
	$sql_output .= "VALUES(";
	$sql_output .= "'" . ($wine->{"ID produktu"} || "") . "', ";
	$sql_output .= "'" . ($wine->{"Nazev"} || "") . "', ";
	$sql_output .= "'" . ($wine->{"Druh vina"} || "") . "', ";
	$sql_output .= "'" . ($wine->{"Kategorie"} || "") . "', ";
	$sql_output .= "'" . ($wine_companies->{$wine->{"Vinarstvi"}} || "") . "', ";
	$sql_output .= "'" . ($wine_regions->{$wine->{"Vinarska oblast"}} || "") . "');\n";

	$nosql_output_wine .= "{\"id_wine\": \"" . ($wine->{"ID produktu"} || "") . "\", ";
	$nosql_output_wine .= "\"name\":\"" . ($wine->{"Nazev"} || "") . "\", ";
	$nosql_output_wine .= "\"type\":\"" . ($wine->{"Druh vina"} || "") . "\", ";
	$nosql_output_wine .= "\"category\":\"" . ($wine->{"Kategorie"} || "") . "\", ";
	$nosql_output_wine .= "\"id_wine_company\":\"" . ($wine_companies->{$wine->{"Vinarstvi"}} || "") . "\", ";
	$nosql_output_wine .= "\"id_wine_region\": \"" . ($wine_regions->{$wine->{"Vinarska oblast"}} || "") . "\"}\n";
}

writeInFile($file_output_sql, $sql_output);
writeInFile($file_output_nosql_wine, $nosql_output_wine);
writeInFile($file_output_nosql_wine_company, $nosql_output_wine_company);
writeInFile($file_output_nosql_wine_region, $nosql_output_wine_region);
