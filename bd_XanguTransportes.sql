USE db_XanguTransportes

--DROP TABLE tbl_Veiculos;
--DROP TABLE tbl_Funcionarios;
--DROP TABLE tbl_Manutencao;
--DROP TABLE tbl_Complience;
--DROP TABLE tbl_Documentacao;
--DROP TABLE tbl_Clientes;
--DROP TABLE tbl_Rotas;

create table tbl_Veiculos
(ID_Veiculo int primary key identity,
Placa varchar(7),
Modelo varchar(30),
Ano int,
tipo varchar(50))

create table tbl_Funcionarios
(ID_Motorista int primary key identity,
ID_Veiculo int,
foreign key (ID_Veiculo) references tbl_Veiculos(ID_Veiculo),
Nome varchar(30),
Aniversario date)

create table tbl_Manutencao
(ID_Manutencao int primary key identity(1000,1),
ID_Veiculo int,
foreign key (ID_Veiculo) references tbl_Veiculos(ID_Veiculo),
Tipo varchar(30),
[Data] date,
Custos decimal)

create table tbl_Complience
(ID_Complience int primary key identity(2000,1),
ID_Veiculo int,
foreign key (ID_Veiculo) references tbl_Veiculos(ID_Veiculo),
Tipo Varchar(30),
Descricao varchar(50),
[Status] varchar(50))

create table tbl_Documentacao
(ID_Document int primary key identity(3000,1),
ID_Veiculo int,
foreign key (ID_Veiculo) references tbl_Veiculos(ID_Veiculo),
Tipo Varchar(30),
Descricao varchar(70),
Vencimento date)

create table tbl_Clientes
(ID_Cliente int primary key identity(4000,1),
Nome Varchar(50),
CNPJ real,
Endereco Varchar(100))

create table tbl_Rotas
(ID_Rota int primary key identity(5000,1),
ID_Cliente int,
foreign key (ID_Cliente) references tbl_Clientes(ID_Cliente),
ID_Veiculo int,
foreign key (ID_Veiculo) references tbl_Veiculos(ID_Veiculo),
Origem varchar(70),
Destino varchar(70),
Tempo varchar(70))

INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('QRS7890', 'Mercedes-Benz Actros', 2020, 'Tanque');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('TUV1234', 'MAN TGX', 2022, 'Ba� Refrigerado');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('WXY5678', 'Volvo FH16', 2018, 'Graneleiro');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('ZAB9012', 'Scania R450', 2021, 'Carga Seca');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('BCD3456', 'Mercedes-Benz Actros', 2019, 'Tanque');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('EFG7890', 'MAN TGX', 2020, 'Ba� Refrigerado'); 
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('KLM9012', 'Volvo FH16', 2021, 'Graneleiro');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('NOP3456', 'Scania R450', 2019, 'Carga Seca');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('EFG1234', 'Mercedes-Benz Actros', 2022, 'Tanque');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('HIJ5678', 'MAN TGX', 2018, 'Ba� Refrigerado');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('BCD7890', 'Scania R450', 2020, 'Carga Seca');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('VWX9012', 'MAN TGX', 2021, 'Ba� Refrigerado');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('YZA3456', 'Volvo FH16', 2019, 'Graneleiro');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('MNO7890', 'Volvo FH16', 2022, 'Graneleiro');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('PQR1234', 'Scania R450', 2018, 'Carga Seca');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('STU5678', 'Mercedes-Benz Actros', 2020, 'Tanque');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('JKL3456', 'MAN TGX', 2019, 'Ba� Refrigerado');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('ABC1234', 'Volvo FH16', 2021, 'Graneleiro');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('DEF5678', 'Scania R450', 2020, 'Carga Seca');  
INSERT INTO tbl_Veiculos (Placa, Modelo, Ano, Tipo) VALUES ('GHI9012', 'Mercedes-Benz Actros', 2022, 'Tanque');

INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (1, 'Troca de �leo', '2023-01-15', 150.00);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (2, 'Reparo no Motor', '2023-02-20', 300.50);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (3, 'Troca de Pneus', '2023-03-10', 500.75);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (4, 'Revis�o Geral', '2023-04-05', 800.00);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (5, 'Alinhamento e Balanceamento', '2023-05-12', 120.25);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (6, 'Troca de Filtro de Ar', '2023-06-18', 60.50);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (7, 'Substitui��o da Bateria', '2023-07-22', 200.00);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (8, 'Reparo no Sistema El�trico', '2023-08-30', 350.75);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (9, 'Troca de Correias', '2023-09-14', 180.25);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (10, 'Manuten��o no Freio', '2023-10-05', 420.00);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (11, 'Revis�o da Suspens�o', '2023-11-19', 300.50);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (12, 'Troca de �leo', '2023-12-22', 150.00);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (13, 'Reparo no Motor', '2024-01-25', 300.50);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (14, 'Troca de Pneus', '2024-02-08', 500.75);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (15, 'Revis�o Geral', '2024-03-15', 800.00);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (16, 'Alinhamento e Balanceamento', '2024-04-20', 120.25);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (17, 'Troca de Filtro de Ar', '2024-05-22', 60.50);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (18, 'Substitui��o da Bateria', '2024-06-28', 200.00);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (19, 'Reparo no Sistema El�trico', '2024-07-30', 350.75);
INSERT INTO tbl_Manutencao (ID_Veiculo, Tipo, [Data], Custos) VALUES (20, 'Troca de Correias', '2024-08-14', 180.25);

INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (1, 'Jo�o Silva', '1985-03-15');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (2, 'Maria Oliveira', '1990-05-20');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (3, 'Carlos Santos', '1988-12-10');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (4, 'Ana Souza', '1995-07-02');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (5, 'Fernando Lima', '1987-09-18');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (6, 'Mariana Rocha', '1992-11-30');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (7, 'Rodrigo Almeida', '1984-04-12');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (8, 'Carla Pereira', '1993-06-25');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (9, 'Ricardo Oliveira', '1986-08-14');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (10, 'Juliana Santos', '1991-01-08');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (11, 'Eduardo Lima', '1989-02-22');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (12, 'Patr�cia Rocha', '1994-10-05');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (13, 'Gabriel Almeida', '1983-07-19');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (14, 'Isabela Pereira', '1996-09-28');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (15, 'Lucas Oliveira', '1985-11-14');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (16, 'Beatriz Santos', '1990-12-31');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (17, 'Andr� Lima', '1987-03-05');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (18, 'Camila Rocha', '1992-06-17');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (19, 'Marcos Almeida', '1984-08-23');
INSERT INTO tbl_Funcionarios (ID_Veiculo, Nome, Aniversario) VALUES (20, 'Sara Pereira', '1993-01-15');

INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (1, 'Seguran�a', 'Inspe��o de Freios', 'Em Andamento');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (2, 'Licenciamento', 'Renova��o Anual', 'Conclu�do');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (3, 'Seguran�a', 'Verifica��o de Pneus', 'Pendente');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (4, 'Licenciamento', 'Vistoria T�cnica', 'Em Andamento');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (5, 'Seguran�a', 'Inspe��o de Luzes', 'Conclu�do');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (6, 'Licenciamento', 'Emiss�o de Documentos', 'Pendente');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (7, 'Seguran�a', 'Verifica��o de Cintos', 'Em Andamento');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (8, 'Licenciamento', 'Pagamento de Taxas', 'Conclu�do');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (9, 'Seguran�a', 'Inspe��o de Suspens�o', 'Pendente');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (10, 'Licenciamento', 'Regulariza��o de Multas', 'Em Andamento');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (11, 'Seguran�a', 'Verifica��o de Extintores', 'Conclu�do');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (12, 'Licenciamento', 'Atualiza��o de Cadastro', 'Pendente');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (13, 'Seguran�a', 'Inspe��o de Eixos', 'Em Andamento');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (14, 'Licenciamento', 'Regulariza��o de D�bitos', 'Conclu�do');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (15, 'Seguran�a', 'Verifica��o de Emerg�ncia', 'Pendente');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (16, 'Licenciamento', 'Comprova��o de Seguro', 'Em Andamento');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (17, 'Seguran�a', 'Inspe��o de Dire��o', 'Conclu�do');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (18, 'Licenciamento', 'Renova��o de CNH', 'Pendente');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (19, 'Seguran�a', 'Verifica��o de Buzina', 'Em Andamento');
INSERT INTO tbl_Complience (ID_Veiculo, Tipo, Descricao, [Status]) VALUES (20, 'Licenciamento', 'Atualiza��o de GPS', 'Conclu�do');

INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (1, 'Seguro', 'Ap�lice de Seguro', '2023-05-15');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (2, 'Licenciamento', 'Documento de Licenciamento', '2023-06-20');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (3, 'Inspe��o', 'Certificado de Inspe��o Veicular', '2023-07-10');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (4, 'IPVA', 'Comprovante de Pagamento do IPVA', '2023-08-05');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (5, 'Seguro', 'Renova��o de Seguro', '2023-09-12');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (6, 'Licenciamento', 'Licenciamento Anual', '2023-10-18');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (7, 'Inspe��o', 'Inspe��o Ambiental Veicular', '2023-11-22');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (8, 'IPVA', 'Pagamento do IPVA', '2023-12-30');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (9, 'Seguro', 'Seguro de Responsabilidade Civil', '2024-01-14');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (10, 'Licenciamento', 'Renova��o de Licen�a', '2024-02-08');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (11, 'Inspe��o', 'Certificado de Inspe��o', '2024-03-25');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (12, 'IPVA', 'Comprovante de Pagamento de IPVA', '2024-04-09');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (13, 'Seguro', 'Renova��o de Seguro Automotivo', '2024-05-15');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (14, 'Licenciamento', 'Documento de Licenciamento Anual', '2024-06-20');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (15, 'Inspe��o', 'Certificado de Inspe��o Veicular', '2024-07-12');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (16, 'IPVA', 'Pagamento de IPVA', '2024-08-28');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (17, 'Seguro', 'Seguro de Danos Pr�prios', '2024-09-14');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (18, 'Licenciamento', 'Renova��o Anual de Licen�a', '2024-10-08');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (19, 'Inspe��o', 'Certificado de Inspe��o de Emiss�es', '2024-11-25');
INSERT INTO tbl_Documentacao (ID_Veiculo, Tipo, Descricao, Vencimento) VALUES (20, 'IPVA', 'Comprovante de Pagamento de IPVA', '2024-12-05');

INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Gerdau S.A.', 12345678901234, 'Av. Farrapos, 1811 - Floresta, Porto Alegre, RS');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Braskem S.A.', 56789012345678, 'Rua Eteno, 1561 - Polo Petroqu�mico, Triunfo, RS');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Cosan S.A.', 90123456789012, 'Av. Brigadeiro Faria Lima, 4509 - Itaim Bibi, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('WEG S.A.', 34567890123456, 'Rua Ven�ncio da Silva Porto, 400 - Vila Arens, Jaragu� do Sul, SC');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Ra�zen S.A.', 78901234567890, 'Av. Brigadeiro Lu�s Ant�nio, 1343 - Bela Vista, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Embraer S.A.', 12345678901234, 'Av. Brigadeiro Faria Lima, 2170 - Jardim Europa, S�o Jos� dos Campos, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('CPFL Energia S.A.', 56789012345678, 'Rua Gomes de Carvalho, 1510 - Vila Ol�mpia, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Natura & Co.', 90123456789012, 'Av. Alexandre Colares, 1188 - Jabaquara, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Marcopolo S.A.', 34567890123456, 'Av. Rio Branco, 4881 - Ana Rech, Caxias do Sul, RS');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Suzano S.A.', 78901234567890, 'Av. Pres. Juscelino Kubitschek, 1830 - Vila Olimpia, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Klabin S.A.', 12345098765432, 'Rua Fid�ncio Ramos, 302 - Vila Ol�mpia, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Votorantim S.A.', 56789012345098, 'Av. das Na��es Unidas, 14171 - 9� Andar - Brooklin, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Usiminas S.A.', 90123456789012, 'Pra�a da Liberdade, 700 - Funcion�rios, Belo Horizonte, MG');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Amaggi S.A.', 34567890123456, 'Av. Senador Metelo, 791 - Centro, Cuiab�, MT');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Grupo Tigre', 78901234567890, 'Rua Marcos Grillo, 158 - Barra Funda, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Randon S.A.', 12345098765432, 'Rua At�lio Andreazza, 570 - Interlagos, Caxias do Sul, RS');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Grupo Embalixo', 56789012345098, 'Av. Santos Dumont, 176 - Jardim Aeroporto, Campinas, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Tupy S.A.', 90123456789012, 'Rua Albano Schmidt, 3400 - Boa Vista, Joinville, SC');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Grupo JSL', 34567890123456, 'Rua Jos� Vicente, 265 - Jaguar�, S�o Paulo, SP');
INSERT INTO tbl_Clientes (Nome, CNPJ, Endereco) VALUES ('Porto Seguro S.A.', 78901234567890, 'Alameda Bar�o de Piracicaba, 651 - Campos El�seos, S�o Paulo, SP');

INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4001, 1, 'Centro de Distribui��o Porto Alegre, RS', 'Centro de Distribui��o Caxias do Sul, RS', '26 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4002, 2, 'Centro de Distribui��o Florian�polis, SC', 'Centro de Distribui��o Curitiba, PR', '23 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4003, 3, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Campinas, SP', '20 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4004, 4, 'Centro de Distribui��o Santos, SP', 'Centro de Distribui��o Guaruj�, SP', '18 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4005, 5, 'Centro de Distribui��o Rio de Janeiro, RJ', 'Centro de Distribui��o Niter�i, RJ', '22 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4006, 6, 'Centro de Distribui��o Belo Horizonte, MG', 'Centro de Distribui��o Contagem, MG', '25 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4007, 7, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o S�o Bernardo do Campo, SP', '21 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4008, 8, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Sorocaba, SP', '24 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4009, 9, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Jundia�, SP', '27 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4010, 10, 'Centro de Distribui��o Campinas, SP', 'Centro de Distribui��o S�o Paulo, SP', '32 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4011, 11, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Santos, SP', '28 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4012, 12, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Guarulhos, SP', '29 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4013, 13, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Osasco, SP', '26 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4014, 14, 'Centro de Distribui��o Porto Alegre, RS', 'Centro de Distribui��o Caxias do Sul, RS', '24 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4015, 15, 'Centro de Distribui��o Florian�polis, SC', 'Centro de Distribui��o Curitiba, PR', '29 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4016, 16, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Belo Horizonte, MG', '30 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4017, 17, 'Centro de Distribui��o Santos, SP', 'Centro de Distribui��o S�o Paulo, SP', '17 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4018, 18, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Sorocaba, SP', '22 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4019, 19, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Jundia�, SP', '23 horas');
INSERT INTO tbl_Rotas (ID_Cliente, ID_Veiculo, Origem, Destino, Tempo) VALUES (4000, 20, 'Centro de Distribui��o S�o Paulo, SP', 'Centro de Distribui��o Florian�polis, SC', '28 horas');

--Primeiro Filtro: Esse filtro permite encontrar ve�culos com base no modelo e ano.

SELECT * FROM tbl_Veiculos WHERE Modelo = 'Volvo FH16' AND Ano = 2018;

--Segundo Filtro: Esse filtro permite encontrar ve�culos de um tipo espec�fico.

SELECT * FROM tbl_Veiculos WHERE Tipo = 'Tanque';

--Terceiro Filtro: Esse filtro permite encontrar motoristas que fazem anivers�rio dentro de um intervalo.

SELECT * FROM tbl_Funcionarios WHERE Aniversario BETWEEN '1990' AND '2000';

--Quarto Filtro: Esse filtro permite encontrar registros de manuten��o com base em um intervalo de custos.

SELECT * FROM tbl_Manutencao WHERE Custos BETWEEN 500 AND 1000;

--Quinto Filtro: Esse filtro permite encontrar registros de compliance com base no status do compliance.

SELECT * FROM tbl_Complience WHERE [Status] = 'Pendente';

--Sexto Filtro: Esse filtro permite encontrar registros de documentos que j� venceram.

SELECT * FROM tbl_Documentacao WHERE Vencimento < GETDATE();

--Setimo Filtro: Esse filtro permite encontrar rotas associadas a um cliente espec�fico e com um destino espec�fico.

SELECT r.*, c.Nome, c.CNPJ, c.Endereco
FROM tbl_Rotas r
INNER JOIN tbl_Clientes c ON r.ID_Cliente = c.ID_Cliente
WHERE c.Nome LIKE '%Marco%' AND r.Destino Like '%SP%';

--Oitavo Filtro: Esse filtro permite encontrar registros de clientes com base no nome.

SELECT * FROM tbl_Clientes WHERE Nome LIKE '%Grupo%';

--Nono Filtro: Esse filtro permite encontrar rotas com base na cidade de destino.

SELECT * FROM tbl_Rotas WHERE Destino LIKE '%RJ%';

--Decimo Filtro: Esse filtro permite encontrar ve�culos com base no modelo e sem status de conformidade.

SELECT v.*, c.Tipo, c.Descricao, c.[Status]
FROM tbl_Veiculos v
INNER JOIN tbl_Complience c ON v.ID_Veiculo = c.ID_Veiculo
WHERE v.Modelo LIKE '%scania%' AND c.[Status] LIKE '%pendente%';