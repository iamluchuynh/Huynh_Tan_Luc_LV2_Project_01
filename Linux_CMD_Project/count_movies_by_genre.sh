#!/bin/bash

echo "Thống kê số lượng phim theo thể loại:" > movies_by_genre.txt
csvcut -c genres tmdb-movies.csv | tr '|' '\n' | sort | grep -v '^$' | grep -v '""' | uniq -c | sort -nr >> movies_by_genre.txt


