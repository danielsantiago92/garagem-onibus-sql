USE garagem_onibus;

-- ==========================================
-- CONSULTA 01 - ÔNIBUS ATIVOS
-- ==========================================

SELECT
    prefixo,
    modelo,
    ano
FROM onibus
WHERE status = 'Ativo';


-- ==========================================
-- CONSULTA 02 - VIAGENS POR ÔNIBUS
-- ==========================================

SELECT
    o.prefixo,
    COUNT(v.id_viagem) AS quantidade_viagens
FROM onibus o
LEFT JOIN viagem v
    ON o.id_onibus = v.id_onibus
GROUP BY o.prefixo;


-- ==========================================
-- CONSULTA 03 - QUILOMETRAGEM TOTAL
-- ==========================================

SELECT
    o.prefixo,
    SUM(v.km_percorridos) AS km_total
FROM onibus o
INNER JOIN viagem v
    ON o.id_onibus = v.id_onibus
GROUP BY o.prefixo
ORDER BY km_total DESC;


-- ==========================================
-- CONSULTA 04 - CUSTO DE MANUTENÇÃO
-- ==========================================

SELECT
    o.prefixo,
    SUM(m.custo) AS custo_total
FROM onibus o
INNER JOIN manutencao m
    ON o.id_onibus = m.id_onibus
GROUP BY o.prefixo
ORDER BY custo_total DESC;