SELECT cancoes.cancoes nome_musica,
CASE 
WHEN cancoes.cancoes LIKE '%Amar%' THEN REPLACE(cancoes.cancoes, 'Amar', 'Code Review')
WHEN cancoes.cancoes LIKE '%SUPERSTAR%' THEN REPLACE(cancoes.cancoes, 'SUPERSTAR', 'SUPERDEV')
WHEN cancoes.cancoes LIKE '%Bard%' THEN REPLACE(cancoes.cancoes, 'Bard', 'QA')
WHEN cancoes.cancoes LIKE '%SOUL%' THEN REPLACE(cancoes.cancoes, 'SOUL', 'CODE')
WHEN cancoes.cancoes LIKE '%Pais%' THEN REPLACE(cancoes.cancoes, 'Pais', 'Pull Requests')
END `novo_nome` 
FROM cancoes
GROUP BY cancoes.cancoes
HAVING `novo_nome`  IS NOT NULL
ORDER BY cancoes.cancoes DESC;
