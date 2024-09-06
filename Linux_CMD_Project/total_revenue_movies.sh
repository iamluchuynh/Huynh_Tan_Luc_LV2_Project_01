#!/bin/bash

echo "Tổng doanh thu của tất cả các bộ phim:"
# Sử dụng awk để tính tổng doanh thu từ cột 'revenue' (giả định đây là cột thứ 5)
awk -F',' 'NR > 1 {sum += $5} END {print sum}' tmdb-movies.csv



