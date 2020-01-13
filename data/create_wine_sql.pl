#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

require './modules/file_actions.pl';
require './modules/sql_schema.pl';
require './modules/extractor.pl';

my $file_input_wine = "./raw/wine.json";
my $file_input_wine_company = "./raw/wine_company.json";
my $file_input_wine_region = "./raw/wine_regions.json";

my $file_output = "./database/wine.sql";

my $sql_output_wine = getWineSqlSchema();

my $raw_wines = readJsonFile($file_input_wine);
my $raw_wine_companies = readJsonFile($file_input_wine_company);
my $raw_wine_regions = readJsonFile($file_input_wine_region);

my $wines = {};
my $wine_companies = {};
my $wine_regions = {};
my $wine_types = {};
my $wine_categories = {};
my $wine_subcategories = {};

my $sql_val_delim = ", ";
my $sql_val_end = ");\n";


# first find all ENUMS in wine data
foreach my $wine (@$raw_wines) {
	if (isValidValue($wine->{"vinarstvi"}) and not defined $wine_companies->{$wine->{"vinarstvi"}}) {
		$wine_companies->{$wine->{"vinarstvi"}}{id_wine_company} = (scalar keys $wine_companies) + 1;
	}

	if (isValidValue($wine->{"vinarska_oblast"}) and not defined $wine_regions->{$wine->{"vinarska_oblast"}}) {
		$wine_regions->{$wine->{"vinarska_oblast"}}{id_wine_region} = (scalar keys $wine_regions) + 1;
		$wine_regions->{$wine->{"vinarska_oblast"}}{area_name} = $wine->{"vinarska_oblast"};
		$wine_regions->{$wine->{"vinarska_oblast"}}{full_data} = 0;
	}

	if (isValidValue($wine->{"druh_vina"}) and not defined $wine_types->{$wine->{"druh_vina"}}) {
		$wine_types->{$wine->{"druh_vina"}} = (scalar keys $wine_types) + 1;
	}

	if (isValidValue($wine->{"kategorie"}) and not defined $wine_categories->{$wine->{"kategorie"}}) {
		$wine_categories->{$wine->{"kategorie"}} = (scalar keys $wine_categories) + 1;
	}

	if (isValidValue($wine->{"privlastek"}) and not defined $wine_subcategories->{$wine->{"privlastek"}}) {
		$wine_subcategories->{$wine->{"privlastek"}} = (scalar keys $wine_subcategories) + 1;
	}
}

# find all companies and fill data from wine_company data
foreach my $company (@{$raw_wine_companies->{"wine_company"}}) {
	if (not $wine_companies->{$company->{name}}{id_wine_company}) {
		$wine_companies->{$company->{name}}{id_wine_company} = (scalar keys $wine_companies) + 1;
	}
	$wine_companies->{$company->{name}}{name} = $company->{name} || '';
	$wine_companies->{$company->{name}}{headquarters} = $company->{headquarters} || '';
	$wine_companies->{$company->{name}}{created_at} = $company->{created_at} || '';
	$wine_companies->{$company->{name}}{employees} = $company->{'num-employees'} || '';
	$wine_companies->{$company->{name}}{initial_deposit} = $company->{initial_deposit} || '';
}

# find all regions and fill data from wine_region data
foreach my $region_data (@{$raw_wine_regions}) {

	# try mapping to existing records
	foreach my $fill_region (keys %$wine_regions) {
		if (not $wine_regions->{$fill_region}{full_data}) {
			if ($region_data->{area_name} =~ $fill_region or $region_data->{area_name} =~ substr($fill_region, 0, 8)) {
				$wine_regions->{$fill_region}{area_name} = $region_data->{area_name} || '';
				$wine_regions->{$fill_region}{area_ha} = $region_data->{area_ha} || '';
				$wine_regions->{$fill_region}{productivity} = $region_data->{productivity} || '';
				$wine_regions->{$fill_region}{price_per_m_sq} = $region_data->{price_per_m2} || '';
				$wine_regions->{$fill_region}{protection_class} = $region_data->{protection_class} || '';
				$wine_regions->{$fill_region}{full_data} = 1;
				last;
			}
		}
	}
}


# create SQL


# wine types sql
foreach my $type (reverse sort { $wine_types->{$b} <=> $wine_types->{$a} } keys %$wine_types) {
	$sql_output_wine .= "INSERT INTO wine_type (id_wine_type, name) VALUES(";
	$sql_output_wine .= $wine_types->{$type} . $sql_val_delim;
	$sql_output_wine .= stringOrNull($type) . $sql_val_end;
}
$sql_output_wine .= "\n";

# wine categories sql
foreach my $category (reverse sort { $wine_categories->{$b} <=> $wine_categories->{$a} } keys %$wine_categories) {
	$sql_output_wine .= "INSERT INTO wine_category (id_wine_category, name) VALUES(";
	$sql_output_wine .= $wine_categories->{$category} . $sql_val_delim;
	$sql_output_wine .= stringOrNull($category) . $sql_val_end;
}
$sql_output_wine .= "\n";

# wine subcategories sql
foreach my $subcategory (reverse sort { $wine_subcategories->{$b} <=> $wine_subcategories->{$a} } keys %$wine_subcategories) {
	$sql_output_wine .= "INSERT INTO wine_subcategory (id_wine_subcategory, name) VALUES(";
	$sql_output_wine .= $wine_subcategories->{$subcategory} . $sql_val_delim;
	$sql_output_wine .= stringOrNull($subcategory) . $sql_val_end;
}
$sql_output_wine .= "\n";

# wine company sql
foreach my $wine_company (reverse sort { $wine_companies->{$b}{id_wine_company} <=> $wine_companies->{$a}{id_wine_company} } keys %$wine_companies) {
	$sql_output_wine .= "INSERT INTO wine_company (id_wine_company, name, headquarters, created_at, employees, initial_deposit)\nVALUES(";
	$sql_output_wine .= $wine_companies->{$wine_company}{id_wine_company} . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine_company) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine_companies->{$wine_company}{headquarters}) . $sql_val_delim;
	$sql_output_wine .= dateOrNull($wine_companies->{$wine_company}{created_at}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_companies->{$wine_company}{employees}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_companies->{$wine_company}{initial_deposit}) . $sql_val_end;
}
$sql_output_wine .= "\n";

# wine region sql
foreach my $wine_region (reverse sort { $wine_regions->{$b}{id_wine_region} <=> $wine_regions->{$a}{id_wine_region} } keys %$wine_regions) {
	$sql_output_wine .= "INSERT INTO wine_region (id_wine_region, area_name, area_ha, productivity, price_per_m_sq, protection_class)\nVALUES(";
	$sql_output_wine .= $wine_regions->{$wine_region}{id_wine_region} . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine_regions->{$wine_region}{area_name}) . $sql_val_delim;
	$sql_output_wine .= floatOrNull($wine_regions->{$wine_region}{area_ha}) . $sql_val_delim;
	$sql_output_wine .= floatOrNull($wine_regions->{$wine_region}{productivity}) . $sql_val_delim;
	$sql_output_wine .= floatOrNull($wine_regions->{$wine_region}{price_per_m_sq}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_regions->{$wine_region}{protection_class}) . $sql_val_end;
}
$sql_output_wine .= "\n";


# finally fill wine sql
foreach my $wine (@$raw_wines) {
	if (not defined $wine->{"id_produktu"}) {
		next;
	}

	$sql_output_wine .= "INSERT INTO wine (id_wine, fk_wine_company, fk_wine_region, name, fk_wine_type, price, year, fk_wine_category, fk_wine_subcategory,\n";
	$sql_output_wine .= "volume, alcohol, sugar, acids, extract_sugar_free, grapes_sugar, archivation, recommend_temp, sulfur_dioxide, harvest, batchnum)\nVALUES(";
	$sql_output_wine .= stringOrNull($wine->{"id_produktu"}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_companies->{$wine->{"vinarstvi"}}{id_wine_company}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_regions->{$wine->{"vinarska_oblast"}}{id_wine_region}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"nazev"}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_types->{$wine->{"druh_vina"}}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine->{"cena"}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine->{"rok"}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_categories->{$wine->{"kategorie"}}) . $sql_val_delim;
	$sql_output_wine .= intOrNull($wine_subcategories->{$wine->{"privlastek"}}) . $sql_val_delim;
	$sql_output_wine .= floatOrNull($wine->{"objem"}) . $sql_val_delim;
	$sql_output_wine .= floatOrNull($wine->{"alkohol"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"zbytkovy_cukr"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"kyseliny"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"bezcukernaty_extrakt"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"cukernatost_hroznu"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"doba_archivace"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"doporucena_teplota"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"obsahuje_oxid_siricity"}) . $sql_val_delim;
	$sql_output_wine .= dateOrNull($wine->{"hrozny_sbirany"}) . $sql_val_delim;
	$sql_output_wine .= stringOrNull($wine->{"cislo_sarze"}) . $sql_val_end;
}

writeInFile($file_output, $sql_output_wine);
