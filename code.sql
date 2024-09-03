-- Criar o banco de dados
CREATE DATABASE HotelManagementSystem;
USE HotelManagementSystem;

-- Criar a tabela Hóspedes
CREATE TABLE Hospedes (
    id_hospede INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Criar a tabela Quartos
CREATE TABLE Quartos (
    id_quarto INT AUTO_INCREMENT PRIMARY KEY,
    numero INT,
    tipo VARCHAR(50),
    preco DECIMAL(10, 2)
);

-- Criar a tabela Reservas
CREATE TABLE Reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_hospede INT,
    id_quarto INT,
    data_checkin DATE,
    data_checkout DATE,
    FOREIGN KEY (id_hospede) REFERENCES Hospedes(id_hospede),
    FOREIGN KEY (id_quarto) REFERENCES Quartos(id_quarto)
);

-- Inserir dados nas tabelas
INSERT INTO Hospedes (nome, telefone, email) VALUES
('Maria Silva', '123456789', 'maria@example.com'),
('João Souza', '987654321', 'joao@example.com'),
('Ana Costa', '555555555', 'ana@example.com'),
('Carlos Pereira', '444444444', 'carlos@example.com'),
('Paula Oliveira', '333333333', 'paula@example.com');

INSERT INTO Quartos (numero, tipo, preco) VALUES
(101, 'Simples', 100.00),
(102, 'Duplo', 150.00),
(103, 'Simples', 100.00),
(104, 'Suíte', 300.00),
(105, 'Simples', 100.00),
(106, 'Duplo', 150.00),
(107, 'Suíte', 300.00),
(108, 'Simples', 100.00),
(109, 'Duplo', 150.00),
(110, 'Suíte', 300.00);

INSERT INTO Reservas (id_hospede, id_quarto, data_checkin, data_checkout) VALUES
(1, 101, '2024-09-10', '2024-09-15'),
(2, 102, '2024-09-12', '2024-09-16'),
(3, 103, '2024-09-14', '2024-09-20'),
(4, 104, '2024-09-18', '2024-09-22'),
(5, 105, '2024-09-20', '2024-09-25');

-- Consultar todos os hóspedes com suas reservas e detalhes do quarto
SELECT Hospedes.nome, Reservas.id_reserva, Quartos.numero, Quartos.tipo, Quartos.preco, Reservas.data_checkin, Reservas.data_checkout
FROM Reservas
JOIN Hospedes ON Reservas.id_hospede = Hospedes.id_hospede
JOIN Quartos ON Reservas.id_quarto = Quartos.id_quarto;

-- Consultar quartos disponíveis para um determinado período
SELECT * FROM Quartos
WHERE id_quarto NOT IN (
    SELECT id_quarto FROM Reservas
    WHERE (data_checkin <= '2024-09-18' AND data_checkout >= '2024-09-15')
);

-- Atualizar informações de contato de um hóspede
UPDATE Hospedes
SET telefone = '999999999', email = 'novoemail@example.com'
WHERE id_hospede = 1;

-- Atualizar o preço de um quarto
UPDATE Quartos
SET preco = 120.00
WHERE id_quarto = 1;

-- Deletar uma reserva específica
DELETE FROM Reservas
WHERE id_reserva = 3;

-- Remover um hóspede e suas reservas associadas
DELETE FROM Reservas
WHERE id_hospede = 2;

DELETE FROM Hospedes
WHERE id_hospede = 2;
