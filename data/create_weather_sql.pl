#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

require './modules/file_actions.pl';

my $file_input_press = "./raw/weather_avg_air_pressure.json";
my $file_input_humid = "./raw/weather_avg_humidity.json";
my $file_input_rain = "./raw/weather_total_rainfall.json";
my $file_input_mintemp = "./raw/weather_min_temperature.json";
my $file_input_maxtemp = "./raw/weather_max_temperature.json";
my $file_input_avgtemp = "./raw/weather_avg_temperature.json";
my $file_input_sun = "./raw/weather_sunshine.json";
my $file_input_wind = "./raw/weather_avg_wind_speed.json";

my $file_output_nosql_weather = "./database/weather.json";

my $nosql_output_weather = "";

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
							if ($data  and $month_numeric) {
								my $date = $year . "-" . $month_numeric . "-" . $day;
								$new_hash->{$date} = $data;
							}
							$day++;
						}
					}
				}
			}
		}
	}
}

my $weather_avg_air_pressure = readJsonFile($file_input_press);
my $weather_avg_humidity = readJsonFile($file_input_humid);
my $weather_total_rainfall = readJsonFile($file_input_rain);
my $weather_min_temperature = readJsonFile($file_input_mintemp);
my $weather_max_temperature = readJsonFile($file_input_maxtemp);
my $weather_avg_temperature = readJsonFile($file_input_avgtemp);
my $weather_sunshine = readJsonFile($file_input_sun);
my $weather_avg_wind_speed = readJsonFile($file_input_wind);

$weather_avg_air_pressure = recreateHash($weather_avg_air_pressure);
$weather_avg_humidity = recreateHash($weather_avg_humidity);
$weather_total_rainfall = recreateHash($weather_total_rainfall);
$weather_min_temperature = recreateHash($weather_min_temperature);
$weather_max_temperature = recreateHash($weather_max_temperature);
$weather_avg_temperature = recreateHash($weather_avg_temperature);
$weather_sunshine = recreateHash($weather_sunshine);
$weather_avg_wind_speed = recreateHash($weather_avg_wind_speed);

# {"date": "2019-12-01","avg_air_pressure": 990.7,"avg_humid": 92.0,"avg_temp": -3.1}
foreach my $year (1999 .. 2018) {
	foreach my $month (sort keys %$months) {
		foreach my $day (1 .. 31) {

			# $nosql_output_weather .= $year . "-" . $month . "-" . $day . "\n";
		}
	}
}

print $nosql_output_weather;
