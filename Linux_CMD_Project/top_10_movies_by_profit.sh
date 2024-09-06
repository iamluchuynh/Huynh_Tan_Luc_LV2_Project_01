#!/bin/bash

csvcut -c original_title,revenue,budget tmdb-movies.csv | csvsql --query "SELECT original_title, (revenue - budget) AS profit FROM stdin ORDER BY profit DESC LIMIT 10" > top_10_movies_by_profit.csv


