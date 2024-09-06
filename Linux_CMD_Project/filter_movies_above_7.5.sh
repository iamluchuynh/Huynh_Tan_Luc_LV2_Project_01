# Tìm Movies có điểm đánh giá trên 7.5
csvgrep -c vote_average -r "^[8-9]\.|^[7]\.[6-9]" tmdb-movies.csv > movies_above_7.5.csv

