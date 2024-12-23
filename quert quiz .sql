SELECT
 refresh_date AS Day,
 term AS Top_Term,
 rank
FROM `bigquery-public-data.google_trends.top_terms`
WHERE
 rank = 3
 
 -- Choose only the top term each day.
 AND refresh_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
 
GROUP BY Day,Top_Term, rank, week
ORDER BY Day DESC
 -- Show the days in reverse chronological order.