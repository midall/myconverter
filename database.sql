
INSERT INTO currency_rates
( cur_from, cur_to, cur_rate, cur_date )

SELECT cfr.cur_id, cto.cur_id, (RAND() + 0.5) AS rate, DATE( NOW() )
FROM currency cfr
JOIN currency cto
