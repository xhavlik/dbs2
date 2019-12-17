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

# {"date": "2019-12-01","avg_air_pressure": 990.7,"avg_humid": 92.0,"avg_temp": -3.1}
foreach my $year (1999 .. 2018) {
	foreach my $month (sort keys %$months) {
        foreach my $day (1 .. 31) {

            # TODO recreate hash
            # print Dumper @$weather_avg_air_pressure[0]->{1999}[0]->{January};
            # $nosql_output_weather .= $year . "-" . $month . "-" . $day . "\n";
        }
    }
}

print $nosql_output_weather;
