SELECT ROUND(MIN(pa.valor_plano), 2) faturamento_minimo, ROUND(MAX(pa.valor_plano), 2) faturamento_maximo, ROUND(AVG(pa.valor_plano), 2) faturamento_medio, SUM(pa.valor_plano) faturamento_total
FROM plano pa
JOIN usuario us
ON pa.plano_id = us.plano_id;