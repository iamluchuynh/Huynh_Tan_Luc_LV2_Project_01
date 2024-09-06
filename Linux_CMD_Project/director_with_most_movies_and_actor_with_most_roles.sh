#!/bin/bash

echo "Đạo diễn có nhiều phim nhất:"
csvcut -c director tmdb-movies.csv | tr '|' '\n' | sort | uniq -c | sort -nr | head -1

echo "Diễn viên có nhiều phim nhất:"
csvcut -c cast tmdb-movies.csv | tr '|' '\n' | sort | grep -v '""' | uniq -c | sort -nr | head -1

