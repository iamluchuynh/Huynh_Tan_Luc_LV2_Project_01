#!/bin/bash

highest=$(csvsort -c revenue -r tmdb-movies.csv | csvcut -c original_title,revenue | head -n 2 | tail -n 1)
lowest=$(csvsort -c revenue tmdb-movies.csv | csvcut -c original_title,revenue | head -n 2 | tail -n 1)
echo "Highest revenue movie: $highest" > highest_and_lowest_revenue_movies.txt
echo "Lowest revenue movie: $lowest" >> highest_and_lowest_revenue_movies.txt

