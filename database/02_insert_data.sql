USE garagem_onibus;

USE garagem_onibus;

-- =====================================
-- DADOS DOS MOTORISTAS
-- =====================================

INSERT INTO motorista
(nome, categoria_cnh)
VALUES
('Carlos Silva', 'D'),
('João Santos', 'D'),
('Marcos Oliveira', 'D'),
('Rafael Souza', 'D');


-- =====================================
-- DADOS DAS LINHAS
-- =====================================

INSERT INTO linha
(numero, itinerario)
VALUES
('100', 'Centro x Zona Norte'),
('101', 'Centro x Zona Sul'),
('200', 'Centro x Zona Oeste');


-- =====================================
-- DADOS DAS VIAGENS
-- =====================================

INSERT INTO viagem
(id_onibus, id_motorista, id_linha, data_viagem, km_percorridos)
VALUES
(1, 1, 1, '2026-08-01', 120),
(2, 2, 2, '2026-08-01', 95),
(3, 3, 1, '2026-08-02', 110),
(1, 1, 1, '2026-08-02', 125),
(4, 4, 3, '2026-08-02', 150);


-- =====================================
-- DADOS DAS MANUTENÇÕES
-- =====================================

INSERT INTO manutencao
(id_onibus, tipo, data_abertura, custo, status)
VALUES
(1, 'Troca de óleo', '2026-08-01', 450.00, 'Concluída'),
(1, 'Revisão dos freios', '2026-08-05', 1200.00, 'Concluída'),
(2, 'Troca de pneus', '2026-08-07', 3500.00, 'Concluída'),
(3, 'Problema no motor', '2026-08-08', 5800.00, 'Aberta'),
(3, 'Revisão elétrica', '2026-08-10', 1500.00, 'Concluída'),
(4, 'Troca de óleo', '2026-08-12', 480.00, 'Concluída'),
(5, 'Suspensão', '2026-08-15', 2800.00, 'Aberta');