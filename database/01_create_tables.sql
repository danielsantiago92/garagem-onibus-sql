-- Sistema de Gestão de Garagem de Ônibus Municipal 
-- Consultas dados
SELECT
    o.prefixo,
    SUM(v.km_percorridos) AS km_total,
    SUM(m.custo) AS custo_manutencao
FROM onibus o
LEFT JOIN viagem v
    ON o.id_onibus = v.id_onibus
LEFT JOIN manutencao m
    ON o.id_onibus = m.id_onibus
GROUP BY o.prefixo
ORDER BY km_total DESC
LIMIT 3;
