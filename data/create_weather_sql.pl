#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

require './modules/file_actions.pl';
require './modules/sql_schema.pl';
require './modules/extractor.pl';

my $file_input_press = "./raw/weather_avg_air_pressure.json";
my $file_input_humid = "./raw/weather_avg_humidity.json";
my $file_input_rain = "./raw/weather_total_rainfall.json";
my $file_input_mintemp = "./raw/weather_min_temperature.json";
my $file_input_maxtemp = "./raw/weather_max_temperature.json";
my $file_input_avgtemp = "./raw/weather_avg_temperature.json";
my $file_input_sun = "./raw/weather_sunshine.json";
my $file_input_wind = "./raw/weather_avg_wind_speed.json";

my $file_output_weather = "./database/weather.sql";

my $sql_output_weather = getWeatherSqlSchema();

my $weather_avg_air_pressure = readJsonFile($file_input_press);
my $weather_avg_humidity = readJsonFile($file_input_humid);
my $weather_total_rainfall = readJsonFile($file_input_rain);
my $weather_min_temperature = readJsonFile($file_input_mintemp);
my $weather_max_temperature = readJsonFile($file_input_maxtemp);
my $weather_avg_temperature = readJsonFile($file_input_avgtemp);
my $weather_sunshine = readJsonFile($file_input_sun);
my $weather_avg_wind_speed = readJsonFile($file_input_wind);

my $months = {
	"01" => "January",
	"02" => "February",
	"03" => "March",
	"04" => "April",
	"05" => "May",
	"06" => "June",
	"07" => "July",
	"08" => "August",
	"09" => "September",
	"10" => "October",
	"11" => "November",
	"12" => "December",
};

my $sql_val_delim = ", ";
my $sql_val_end = ");\n";


sub recreateHash {
	my ($hash) = @_;
	my $new_hash = {};

	# [
	#    { < year hash
	#       "1999": [ < year
	#          { < month hash
	#             "January": { < month
	#                "Average air pressure [hPa]": [ < data label
	#                   992.4, < data
	foreach my $year_hash (@$hash) {
		foreach my $year (keys %$year_hash) {
			foreach my $month_hash (@{$year_hash->{$year}}) {
				foreach my $month (keys %$month_hash) {
					foreach my $data_label (keys %{$month_hash->{$month}}) {
						my $day = 1;
						foreach my $data (@{$month_hash->{$month}->{$data_label}}) {
							my ($month_numeric) = grep{ $months->{$_} eq $month } keys %$months;
							if ($data and $month_numeric) {
								my $date = sprintf("%4d-%02d-%02d", $year, $month_numeric, $day);
								$new_hash->{$date} = $data;
							}
							$day++;
						}
					}
				}
			}
		}
	}

	return $new_hash;
}

$weather_avg_air_pressure = recreateHash($weather_avg_air_pressure);
$weather_avg_humidity = recreateHash($weather_avg_humidity);
$weather_total_rainfall = recreateHash($weather_total_rainfall);
$weather_min_temperature = recreateHash($weather_min_temperature);
$weather_max_temperature = recreateHash($weather_max_temperature);
$weather_avg_temperature = recreateHash($weather_avg_temperature);
$weather_sunshine = recreateHash($weather_sunshine);
$weather_avg_wind_speed = recreateHash($weather_avg_wind_speed);


foreach my $year (1999 .. 2018) {
	foreach my $month (sort keys %$months) {
		foreach my $day (1 .. 31) {
			my $date = sprintf("%4d-%02d-%02d", $year, $month, $day);
			if (    not $weather_avg_air_pressure->{$date}
				and not $weather_avg_humidity->{$date}
				and not $weather_total_rainfall->{$date}
				and not $weather_min_temperature->{$date}
				and not $weather_max_temperature->{$date}
				and not $weather_avg_temperature->{$date}
				and not $weather_sunshine->{$date}
				and not $weather_avg_wind_speed->{$date}) {
				next;
			}

			$sql_output_weather .= "INSERT INTO weather (";
			$sql_output_weather .= "date, avg_air_pressure, avg_humidity, total_rainfall, min_temperature, ";
			$sql_output_weather .= "max_temperature, avg_temperature, sunshine, avg_wind_speed";
			$sql_output_weather .= ")\n";
			$sql_output_weather .= "VALUES(";
			$sql_output_weather .= "'$date', ";
			$sql_output_weather .= floatOrZero($weather_avg_air_pressure->{$date}) . $sql_val_delim;
			$sql_output_weather .= floatOrZero($weather_avg_humidity->{$date}) . $sql_val_delim;
			$sql_output_weather .= floatOrZero($weather_total_rainfall->{$date}) . $sql_val_delim;
			$sql_output_weather .= floatOrZero($weather_min_temperature->{$date}) . $sql_val_delim;
			$sql_output_weather .= floatOrZero($weather_max_temperature->{$date}) . $sql_val_delim;
			$sql_output_weather .= floatOrZero($weather_avg_temperature->{$date}) . $sql_val_delim;
			$sql_output_weather .= floatOrZero($weather_sunshine->{$date}) . $sql_val_delim;
			$sql_output_weather .= floatOrZero($weather_avg_wind_speed->{$date}) . $sql_val_end;
		}
	}
}

writeInFile($file_output_weather, $sql_output_weather);
