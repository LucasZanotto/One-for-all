SELECT ROUND(MIN(pa.valor_plano), 2) faturamento_minimo, MAX(pa.valor_plano) faturamento_maximo, AVG(pa.valor_plano) faturamento_medio, SUM(pa.valor_plano) faturamento_total
FROM plano pa
JOIN usuario us
ON pa.plano_id = us.plano_id;