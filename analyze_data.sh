#!/bin/bash

#Extract the top 10 highest temperatures and save to analyzed_data
sort -t, -k2,2nr raw_data/satelite_temperature_data.csv | head -n 10 > analyzed_data/highest_temp.csv

#Extract data for a specific country and sort by humidity in descending order
country_name=$1  # Country name passed as an argument when running the script
grep "$country_name" raw_data/satelite_temperature_data.csv | sort -t, -k3,3nr > analyzed_data/humidity_data_"$country_name".csv

echo "Analysis complete. Results saved in analyzed_data."
