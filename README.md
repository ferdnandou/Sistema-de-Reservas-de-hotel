# Projeto 6: Sistema de Reservas de Hotel

## Descrição

Você foi designado para desenvolver um sistema de gerenciamento de reservas de hotel. O sistema deve permitir a gestão de quartos, hóspedes e detalhes das reservas. Seu objetivo é criar um banco de dados que seja capaz de armazenar e manipular as informações relacionadas a esses elementos.

## Comandos Utilizados

- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT`
- `SELECT`
- `UPDATE`
- `DELETE`
- `JOIN`

## Passos

### 1. Criar o banco de dados

- Nomeie o banco de dados como `HotelManagementSystem`.

### 2. Criar as tabelas

- **Tabela Hóspedes**: Armazena informações sobre os hóspedes.
  - Campos: `id_hospede` (INT, PK), `nome` (VARCHAR), `telefone` (VARCHAR), `email` (VARCHAR)
  
- **Tabela Quartos**: Armazena informações sobre os quartos disponíveis no hotel.
  - Campos: `id_quarto` (INT, PK), `numero` (INT), `tipo` (VARCHAR), `preco` (DECIMAL)
  
- **Tabela Reservas**: Armazena informações sobre as reservas feitas pelos hóspedes.
  - Campos: `id_reserva` (INT, PK), `id_hospede` (INT, FK), `id_quarto` (INT, FK), `data_checkin` (DATE), `data_checkout` (DATE)

### 3. Inserir dados

- Adicione pelo menos 5 hóspedes, 10 quartos e 5 reservas ao banco de dados.
- Certifique-se de que os dados inseridos sejam realistas e coerentes.

### 4. Consultar dados

- Liste todos os hóspedes com suas reservas, incluindo os detalhes do quarto reservado.
- Liste todos os quartos disponíveis para um determinado período.

### 5. Atualizar dados

- Atualize as informações de contato de um hóspede específico.
- Modifique o preço de um quarto.

### 6. Deletar dados

- Exclua uma reserva específica.
- Remova um hóspede do banco de dados e garanta que todas as reservas associadas também sejam excluídas.
