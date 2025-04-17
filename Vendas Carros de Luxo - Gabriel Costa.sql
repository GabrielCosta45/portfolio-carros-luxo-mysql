CREATE DATABASE VendasCarrosLuxo;

USE vendascarrosluxo;

CREATE TABLE Marcas (
    id_marca INT NOT NULL AUTO_INCREMENT, 
    nome_marca VARCHAR(50) NOT NULL,     
    PRIMARY KEY (id_marca)               
);

CREATE TABLE vendedores (
    id_vendedor INT NOT NULL AUTO_INCREMENT,
    nome_vendedor VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_vendedor)
);

CREATE TABLE produtos (
    id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    cor VARCHAR(50),
    modelo VARCHAR(50),
    marca_id INT,                                
    PRIMARY KEY (id_produto),
    FOREIGN KEY (marca_id) REFERENCES marcas(id_marca)
);

CREATE TABLE vendas (
    id_venda INT NOT NULL AUTO_INCREMENT,      
    data_venda DATE,                            
    produto_id INT,                            
    vendedor_id INT,                            
    quantidade INT,                             
    valor_total DECIMAL(10, 2),                
    PRIMARY KEY (id_venda),                     
    FOREIGN KEY (produto_id) REFERENCES produtos(id_produto),
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id_vendedor)
);


-- INSERT INTO
INSERT INTO Marcas (ID_Marca, Nome_Marca) VALUES (1, 'Ferrari');
INSERT INTO Marcas (ID_Marca, Nome_Marca) VALUES (2, 'Lamborghini');
INSERT INTO Marcas (ID_Marca, Nome_Marca) VALUES (3, 'Porsche');
INSERT INTO Marcas (ID_Marca, Nome_Marca) VALUES (4, 'Maserati');
INSERT INTO Marcas (ID_Marca, Nome_Marca) VALUES (5, 'Bugatti');
INSERT INTO Vendedores (ID_Vendedor, Nome_Vendedor) VALUES (1, 'Carlos Silva');
INSERT INTO Vendedores (ID_Vendedor, Nome_Vendedor) VALUES (2, 'Ana Oliveira');
INSERT INTO Vendedores (ID_Vendedor, Nome_Vendedor) VALUES (3, 'João Souza');
INSERT INTO Vendedores (ID_Vendedor, Nome_Vendedor) VALUES (4, 'Mariana Costa');
INSERT INTO Vendedores (ID_Vendedor, Nome_Vendedor) VALUES (5, 'Lucas Almeida');
INSERT INTO Produtos (ID_Produto, Nome_Produto, Cor, Modelo, Marca_ID) VALUES (1, 'Ferrari Roma', 'Vermelho', '2023', 1);
INSERT INTO Produtos (ID_Produto, Nome_Produto, Cor, Modelo, Marca_ID) VALUES (2, 'Lamborghini Huracan', 'Amarelo', '2022', 2);
INSERT INTO Produtos (ID_Produto, Nome_Produto, Cor, Modelo, Marca_ID) VALUES (3, 'Porsche 911', 'Preto', '2021', 3);
INSERT INTO Produtos (ID_Produto, Nome_Produto, Cor, Modelo, Marca_ID) VALUES (4, 'Maserati Quattroporte', 'Branco', '2020', 4);
INSERT INTO Produtos (ID_Produto, Nome_Produto, Cor, Modelo, Marca_ID) VALUES (5, 'Bugatti Chiron', 'Azul', '2023', 5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (1, '2023-01-27', 2, 3, 8, 55300.34);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (2, '2023-07-02', 1, 2, 9, 124616.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (3, '2023-02-21', 4, 1, 5, 100701.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (4, '2024-04-25', 4, 2, 9, 143450.34);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (5, '2023-06-17', 3, 1, 2, 148590.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (6, '2024-11-24', 5, 2, 8, 127065.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (7, '2024-03-17', 1, 4, 7, 75164.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (8, '2023-07-23', 5, 4, 9, 69536.73);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (9, '2023-05-17', 4, 3, 6, 106280.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (10, '2023-11-10', 3, 5, 3, 85289.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (11, '2023-08-11', 3, 5, 9, 198138.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (12, '2023-11-08', 1, 3, 5, 62015.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (13, '2023-11-26', 4, 1, 8, 154725.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (14, '2024-02-03', 1, 5, 1, 102167.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (15, '2023-10-04', 1, 5, 8, 155136.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (16, '2024-06-10', 1, 2, 7, 106632.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (17, '2023-11-16', 1, 3, 1, 187976.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (18, '2023-02-03', 2, 4, 8, 111726.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (19, '2024-08-25', 1, 2, 1, 151705.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (20, '2023-09-27', 4, 3, 10, 113654.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (21, '2024-01-08', 1, 4, 1, 98541.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (22, '2023-11-17', 2, 5, 9, 95524.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (23, '2023-08-12', 1, 4, 4, 143738.89);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (24, '2023-08-07', 5, 5, 6, 106269.49);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (25, '2024-01-20', 2, 5, 5, 57760.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (26, '2023-11-21', 5, 3, 6, 52641.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (27, '2024-06-12', 4, 3, 2, 60044.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (28, '2024-09-12', 5, 2, 9, 80080.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (29, '2023-11-16', 3, 4, 7, 149154.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (30, '2024-06-02', 2, 4, 3, 83143.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (31, '2023-01-31', 5, 1, 1, 121666.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (32, '2023-04-23', 5, 3, 10, 155835.03);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (33, '2023-04-15', 3, 1, 5, 155030.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (34, '2024-09-10', 3, 2, 1, 199523.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (35, '2024-09-23', 1, 4, 7, 184787.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (36, '2024-04-13', 5, 3, 3, 90223.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (37, '2023-05-16', 1, 3, 4, 58930.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (38, '2024-05-10', 1, 1, 4, 63681.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (39, '2023-08-19', 5, 3, 4, 98047.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (40, '2024-02-08', 5, 5, 1, 93814.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (41, '2023-01-20', 1, 2, 10, 191776.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (42, '2024-05-29', 5, 4, 5, 144986.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (43, '2023-05-19', 1, 1, 8, 87275.41);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (44, '2024-10-11', 3, 3, 8, 68094.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (45, '2023-01-27', 4, 4, 3, 126593.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (46, '2024-10-19', 5, 1, 5, 129090.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (47, '2024-11-22', 5, 5, 6, 146962.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (48, '2023-07-29', 3, 4, 6, 152168.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (49, '2023-01-17', 4, 4, 4, 78457.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (50, '2023-12-18', 2, 2, 3, 197570.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (51, '2023-12-11', 5, 1, 10, 185244.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (52, '2024-04-20', 2, 1, 10, 156218.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (53, '2023-07-28', 3, 3, 6, 68160.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (54, '2024-01-25', 1, 5, 7, 70713.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (55, '2023-10-13', 4, 2, 3, 133687.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (56, '2023-07-04', 3, 3, 9, 168873.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (57, '2024-08-20', 4, 1, 9, 164112.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (58, '2023-06-14', 1, 1, 6, 148201.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (59, '2023-06-21', 3, 2, 5, 135632.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (60, '2023-02-13', 1, 4, 2, 175053.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (61, '2024-07-12', 4, 4, 8, 179350.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (62, '2024-09-04', 4, 4, 3, 132852.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (63, '2023-02-08', 5, 2, 1, 50710.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (64, '2023-11-12', 3, 1, 5, 183685.6);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (65, '2024-08-03', 1, 2, 6, 99866.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (66, '2023-10-28', 5, 5, 3, 86892.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (67, '2024-06-23', 1, 4, 1, 134857.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (68, '2024-10-28', 4, 5, 3, 119801.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (69, '2023-12-21', 2, 1, 10, 179554.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (70, '2024-08-04', 5, 5, 3, 139505.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (71, '2023-03-07', 2, 1, 6, 81009.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (72, '2023-10-12', 1, 3, 4, 78234.12);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (73, '2024-08-31', 4, 3, 2, 158878.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (74, '2023-11-15', 1, 2, 2, 185328.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (75, '2024-04-14', 1, 4, 6, 157654.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (76, '2023-10-29', 2, 3, 9, 118474.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (77, '2024-10-29', 1, 4, 6, 107620.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (78, '2023-07-09', 1, 2, 8, 68267.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (79, '2023-04-20', 5, 5, 3, 103845.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (80, '2024-08-25', 5, 4, 2, 98547.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (81, '2023-04-03', 4, 4, 8, 180860.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (82, '2024-06-23', 5, 5, 6, 130954.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (83, '2024-05-23', 5, 1, 1, 148275.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (84, '2024-08-20', 5, 4, 8, 98631.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (85, '2023-05-14', 5, 1, 7, 150047.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (86, '2024-05-22', 1, 4, 1, 147106.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (87, '2024-11-10', 1, 5, 8, 165092.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (88, '2023-09-10', 3, 2, 4, 143412.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (89, '2023-04-14', 1, 5, 1, 147936.89);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (90, '2023-06-30', 1, 3, 4, 180092.73);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (91, '2023-01-09', 3, 4, 1, 87189.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (92, '2024-05-26', 2, 2, 4, 53071.85);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (93, '2023-12-08', 4, 1, 9, 72126.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (94, '2023-08-16', 2, 3, 2, 66303.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (95, '2024-01-16', 3, 3, 4, 78235.58);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (96, '2024-06-08', 5, 4, 10, 97771.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (97, '2024-05-22', 5, 1, 5, 197797.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (98, '2023-12-02', 2, 2, 4, 190274.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (99, '2023-01-10', 3, 5, 1, 159412.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (100, '2023-11-06', 1, 5, 8, 131141.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (101, '2024-02-05', 2, 5, 6, 177609.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (102, '2024-07-09', 2, 4, 10, 72238.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (103, '2024-08-31', 2, 2, 3, 79354.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (104, '2023-08-15', 3, 3, 2, 193226.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (105, '2024-08-16', 3, 3, 2, 165749.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (106, '2024-07-31', 5, 1, 7, 154771.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (107, '2024-06-30', 3, 2, 6, 66981.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (108, '2023-01-23', 5, 2, 1, 146256.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (109, '2023-02-15', 1, 4, 9, 144423.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (110, '2024-09-01', 2, 2, 10, 141823.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (111, '2023-03-30', 1, 3, 10, 136266.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (112, '2024-11-28', 1, 3, 3, 77760.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (113, '2024-04-05', 1, 4, 2, 131158.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (114, '2024-11-18', 2, 2, 10, 78545.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (115, '2023-10-12', 4, 3, 3, 58566.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (116, '2023-05-27', 3, 2, 5, 132554.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (117, '2023-08-14', 2, 3, 1, 59338.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (118, '2024-08-29', 5, 4, 2, 96204.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (119, '2024-04-25', 5, 1, 5, 173498.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (120, '2024-09-23', 5, 2, 1, 168637.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (121, '2023-09-03', 2, 5, 3, 136970.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (122, '2023-06-16', 3, 5, 7, 123889.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (123, '2023-04-16', 5, 1, 5, 151950.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (124, '2023-05-07', 1, 3, 10, 179623.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (125, '2024-04-19', 3, 4, 8, 164785.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (126, '2023-02-19', 3, 5, 7, 93821.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (127, '2023-03-22', 4, 2, 10, 154656.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (128, '2023-04-09', 2, 2, 1, 104157.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (129, '2023-03-10', 3, 1, 9, 102629.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (130, '2023-08-26', 4, 3, 7, 52328.42);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (131, '2024-07-26', 2, 4, 5, 158373.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (132, '2024-08-30', 2, 5, 5, 173688.58);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (133, '2023-06-24', 5, 4, 8, 118595.58);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (134, '2023-08-13', 2, 5, 10, 92161.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (135, '2023-06-06', 2, 1, 5, 110071.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (136, '2024-05-21', 2, 2, 4, 196861.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (137, '2023-04-14', 3, 1, 2, 114979.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (138, '2024-04-20', 3, 1, 5, 115244.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (139, '2024-04-29', 4, 1, 1, 148169.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (140, '2024-10-17', 5, 1, 6, 149160.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (141, '2023-06-25', 1, 3, 8, 189558.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (142, '2024-09-18', 5, 3, 6, 198927.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (143, '2023-06-20', 3, 2, 1, 124988.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (144, '2024-05-10', 4, 1, 2, 123002.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (145, '2023-09-08', 3, 5, 3, 127879.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (146, '2023-12-17', 1, 2, 3, 85811.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (147, '2024-10-30', 4, 1, 10, 175327.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (148, '2024-03-27', 4, 2, 4, 50534.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (149, '2023-10-03', 2, 4, 1, 74110.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (150, '2023-06-18', 4, 1, 3, 168223.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (151, '2023-02-17', 3, 4, 9, 88142.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (152, '2024-02-22', 5, 4, 9, 69540.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (153, '2024-04-25', 3, 1, 10, 169642.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (154, '2023-01-16', 1, 1, 1, 71051.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (155, '2023-12-02', 3, 1, 4, 160225.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (156, '2024-09-16', 3, 1, 2, 172408.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (157, '2024-10-14', 4, 3, 6, 81297.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (158, '2023-10-30', 3, 4, 8, 107437.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (159, '2023-10-17', 1, 2, 9, 178577.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (160, '2024-11-04', 1, 4, 1, 117690.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (161, '2024-04-23', 5, 4, 10, 57606.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (162, '2024-04-02', 1, 2, 2, 152931.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (163, '2023-12-04', 5, 1, 1, 166688.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (164, '2023-02-10', 3, 5, 6, 95901.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (165, '2023-01-17', 3, 4, 6, 129340.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (166, '2024-01-23', 2, 3, 10, 161007.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (167, '2023-03-04', 2, 5, 10, 108832.12);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (168, '2024-03-23', 4, 1, 1, 147146.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (169, '2023-01-29', 4, 1, 10, 65407.6);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (170, '2024-05-16', 2, 3, 7, 180658.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (171, '2024-07-05', 5, 4, 1, 106486.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (172, '2023-02-20', 3, 1, 9, 138565.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (173, '2024-04-22', 4, 5, 4, 52252.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (174, '2023-09-25', 2, 4, 4, 167065.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (175, '2023-01-18', 2, 3, 4, 169261.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (176, '2023-02-21', 3, 5, 6, 71525.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (177, '2023-10-26', 1, 4, 1, 127305.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (178, '2024-08-09', 5, 4, 6, 116857.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (179, '2024-08-20', 2, 5, 4, 99933.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (180, '2023-09-05', 5, 2, 10, 54251.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (181, '2023-03-12', 4, 4, 10, 107780.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (182, '2023-08-18', 5, 1, 9, 157163.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (183, '2023-02-27', 2, 5, 3, 195487.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (184, '2023-06-22', 2, 5, 9, 174042.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (185, '2023-12-31', 5, 5, 4, 156144.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (186, '2023-11-25', 3, 3, 10, 199190.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (187, '2023-03-31', 5, 3, 3, 71614.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (188, '2024-07-22', 4, 2, 3, 195484.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (189, '2024-08-06', 3, 1, 7, 151726.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (190, '2024-11-21', 1, 1, 4, 161850.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (191, '2024-09-20', 3, 4, 8, 132057.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (192, '2024-02-08', 4, 2, 1, 93274.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (193, '2023-10-18', 5, 2, 9, 132340.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (194, '2023-06-04', 5, 3, 7, 129751.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (195, '2023-08-22', 2, 2, 7, 160017.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (196, '2024-02-26', 1, 1, 5, 191931.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (197, '2023-08-31', 5, 2, 3, 104996.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (198, '2024-07-07', 5, 5, 7, 151647.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (199, '2024-10-03', 5, 1, 6, 139199.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (200, '2023-09-02', 5, 2, 5, 97724.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (201, '2024-05-06', 5, 2, 4, 109686.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (202, '2024-07-15', 2, 4, 9, 199081.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (203, '2024-09-25', 5, 3, 5, 123575.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (204, '2024-04-01', 1, 4, 9, 75918.89);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (205, '2023-02-25', 1, 1, 9, 161645.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (206, '2024-02-27', 2, 1, 10, 58880.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (207, '2024-03-25', 5, 2, 2, 182327.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (208, '2023-01-04', 5, 2, 5, 184433.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (209, '2023-03-16', 5, 4, 2, 59392.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (210, '2023-10-09', 5, 3, 5, 190240.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (211, '2024-08-30', 5, 2, 9, 87850.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (212, '2023-08-01', 3, 4, 2, 150864.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (213, '2024-09-24', 1, 3, 8, 124549.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (214, '2023-12-01', 4, 3, 9, 175944.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (215, '2023-08-04', 2, 1, 10, 58789.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (216, '2023-02-28', 5, 4, 7, 180357.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (217, '2023-08-31', 1, 2, 8, 180360.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (218, '2024-10-09', 3, 5, 10, 129669.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (219, '2024-04-05', 3, 4, 6, 108949.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (220, '2023-03-29', 3, 1, 9, 183238.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (221, '2024-11-15', 3, 1, 1, 119774.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (222, '2023-10-24', 3, 5, 7, 94723.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (223, '2023-09-26', 3, 2, 7, 143693.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (224, '2024-11-04', 5, 1, 3, 57220.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (225, '2023-12-01', 4, 1, 9, 153247.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (226, '2023-01-14', 4, 4, 4, 69843.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (227, '2023-11-16', 2, 1, 10, 69513.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (228, '2024-03-18', 2, 5, 7, 182237.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (229, '2023-03-21', 5, 5, 7, 160774.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (230, '2024-11-13', 2, 4, 7, 93127.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (231, '2024-04-11', 2, 5, 4, 130751.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (232, '2023-07-25', 1, 2, 3, 170278.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (233, '2024-11-28', 2, 1, 7, 184601.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (234, '2023-04-18', 1, 5, 8, 197158.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (235, '2023-04-21', 3, 4, 6, 162526.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (236, '2023-01-05', 4, 2, 4, 125656.98);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (237, '2024-03-17', 5, 5, 2, 53973.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (238, '2023-02-13', 5, 3, 9, 88005.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (239, '2024-11-20', 4, 3, 3, 152659.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (240, '2023-05-25', 2, 1, 4, 159297.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (241, '2023-10-05', 5, 1, 5, 175199.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (242, '2023-04-22', 2, 3, 10, 55596.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (243, '2023-07-17', 4, 1, 5, 170567.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (244, '2024-08-09', 1, 2, 9, 113228.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (245, '2024-07-23', 4, 5, 6, 182576.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (246, '2023-03-29', 1, 2, 3, 60163.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (247, '2023-05-14', 4, 3, 6, 175194.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (248, '2024-05-03', 3, 3, 9, 50934.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (249, '2024-10-31', 4, 3, 9, 185911.49);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (250, '2023-10-30', 3, 4, 1, 78100.42);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (251, '2023-09-02', 4, 2, 6, 82487.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (252, '2024-04-11', 5, 5, 7, 177398.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (253, '2024-05-23', 5, 5, 4, 122778.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (254, '2024-10-31', 4, 5, 6, 185329.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (255, '2024-09-19', 1, 3, 1, 57571.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (256, '2024-08-20', 5, 5, 6, 92635.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (257, '2024-01-23', 3, 2, 9, 172642.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (258, '2024-05-21', 3, 5, 2, 74523.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (259, '2024-04-07', 2, 4, 6, 139262.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (260, '2024-10-13', 2, 1, 4, 71499.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (261, '2023-03-17', 1, 3, 10, 125750.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (262, '2023-06-05', 2, 4, 1, 54456.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (263, '2023-11-18', 3, 5, 10, 69757.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (264, '2024-11-16', 3, 2, 1, 50554.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (265, '2024-05-14', 2, 3, 7, 120791.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (266, '2024-10-11', 3, 1, 8, 83763.96);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (267, '2023-10-18', 3, 3, 3, 155715.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (268, '2024-04-20', 3, 2, 8, 197526.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (269, '2023-09-30', 3, 5, 2, 114119.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (270, '2023-11-29', 4, 1, 7, 134940.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (271, '2024-05-12', 4, 3, 3, 90424.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (272, '2023-08-07', 1, 3, 3, 65849.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (273, '2023-04-05', 4, 5, 1, 115532.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (274, '2023-12-16', 3, 4, 6, 139863.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (275, '2023-07-26', 3, 1, 5, 151759.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (276, '2024-06-14', 3, 2, 7, 122210.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (277, '2023-05-04', 1, 4, 1, 88676.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (278, '2024-09-06', 2, 5, 3, 137985.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (279, '2024-04-19', 1, 4, 1, 120398.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (280, '2023-06-05', 5, 3, 8, 126623.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (281, '2024-01-24', 2, 5, 6, 144650.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (282, '2023-06-14', 2, 1, 9, 181223.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (283, '2023-07-11', 5, 1, 6, 78553.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (284, '2023-06-26', 5, 5, 4, 139517.96);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (285, '2023-01-13', 5, 4, 6, 184034.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (286, '2024-03-21', 1, 1, 2, 134451.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (287, '2023-05-03', 4, 3, 4, 148141.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (288, '2024-01-27', 4, 1, 7, 150361.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (289, '2024-04-06', 4, 3, 2, 119472.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (290, '2024-10-26', 5, 4, 2, 175045.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (291, '2023-09-30', 3, 1, 2, 69517.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (292, '2023-12-12', 3, 4, 8, 198798.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (293, '2024-03-15', 1, 4, 6, 172132.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (294, '2024-01-12', 3, 4, 5, 145713.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (295, '2024-07-29', 1, 5, 2, 179984.46);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (296, '2024-08-03', 4, 4, 10, 102549.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (297, '2023-11-25', 2, 2, 9, 109724.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (298, '2024-10-29', 2, 4, 6, 89224.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (299, '2024-11-05', 4, 3, 2, 135714.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (300, '2024-02-18', 4, 4, 4, 111606.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (301, '2024-01-13', 2, 4, 10, 54650.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (302, '2023-02-19', 1, 1, 7, 194487.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (303, '2023-08-09', 5, 2, 5, 102236.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (304, '2023-05-31', 2, 1, 5, 110385.65);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (305, '2023-09-19', 4, 4, 10, 191832.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (306, '2024-06-25', 2, 5, 8, 181802.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (307, '2023-06-04', 5, 4, 8, 187408.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (308, '2023-04-28', 3, 3, 10, 143261.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (309, '2024-05-15', 4, 4, 4, 57053.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (310, '2024-11-14', 5, 1, 6, 135976.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (311, '2023-01-15', 3, 3, 2, 154378.85);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (312, '2023-08-14', 5, 1, 5, 162867.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (313, '2023-08-11', 2, 1, 3, 132543.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (314, '2024-07-24', 2, 3, 10, 110322.45);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (315, '2023-01-30', 5, 1, 5, 104261.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (316, '2023-12-03', 2, 4, 6, 141891.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (317, '2023-12-17', 5, 4, 4, 162572.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (318, '2024-07-13', 1, 5, 4, 171579.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (319, '2024-04-20', 3, 5, 2, 121750.6);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (320, '2024-04-15', 1, 5, 3, 167025.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (321, '2023-10-13', 1, 4, 1, 160869.89);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (322, '2024-09-29', 3, 3, 10, 166512.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (323, '2023-05-27', 5, 2, 1, 95224.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (324, '2024-02-04', 4, 1, 4, 88833.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (325, '2024-04-17', 5, 3, 7, 131241.03);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (326, '2023-05-14', 1, 3, 10, 76028.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (327, '2024-02-18', 1, 3, 2, 196023.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (328, '2023-12-13', 1, 4, 9, 69974.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (329, '2024-05-16', 5, 4, 9, 126883.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (330, '2023-11-18', 1, 5, 7, 73522.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (331, '2023-10-11', 1, 2, 8, 109774.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (332, '2023-12-03', 3, 5, 1, 159639.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (333, '2023-01-11', 5, 5, 2, 63166.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (334, '2024-08-19', 5, 2, 5, 51047.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (335, '2023-04-01', 2, 2, 10, 58357.71);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (336, '2024-05-04', 4, 3, 4, 153862.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (337, '2024-07-31', 4, 1, 4, 104844.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (338, '2023-07-19', 4, 2, 5, 181449.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (339, '2023-06-16', 1, 4, 3, 197185.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (340, '2023-08-09', 2, 1, 7, 152456.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (341, '2024-01-24', 4, 4, 10, 54264.41);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (342, '2023-08-13', 3, 5, 8, 135062.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (343, '2024-03-12', 2, 1, 3, 194293.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (344, '2023-06-14', 2, 5, 2, 66626.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (345, '2024-01-26', 4, 4, 3, 168470.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (346, '2023-05-30', 3, 5, 4, 194098.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (347, '2023-01-11', 4, 4, 7, 116580.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (348, '2023-04-05', 3, 2, 10, 79438.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (349, '2023-06-25', 5, 2, 9, 104764.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (350, '2023-10-17', 3, 5, 7, 105098.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (351, '2023-11-10', 3, 3, 6, 176585.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (352, '2024-06-18', 2, 5, 2, 165671.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (353, '2023-12-08', 2, 3, 9, 171200.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (354, '2023-12-05', 1, 2, 9, 82296.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (355, '2024-03-10', 4, 4, 7, 119615.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (356, '2023-02-13', 5, 2, 8, 124735.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (357, '2023-10-02', 3, 4, 4, 115190.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (358, '2024-11-09', 4, 1, 2, 170707.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (359, '2023-03-01', 5, 5, 5, 122398.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (360, '2024-06-22', 4, 4, 1, 172528.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (361, '2024-10-20', 1, 3, 3, 133880.27);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (362, '2024-02-03', 2, 3, 8, 161484.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (363, '2023-08-16', 5, 4, 6, 132428.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (364, '2024-08-25', 2, 1, 4, 97115.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (365, '2024-01-25', 3, 3, 2, 171673.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (366, '2024-01-08', 4, 5, 1, 190717.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (367, '2023-04-22', 5, 4, 5, 95918.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (368, '2023-01-31', 1, 4, 4, 179963.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (369, '2024-03-22', 2, 1, 9, 70997.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (370, '2024-10-29', 1, 5, 2, 190228.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (371, '2024-01-10', 5, 1, 5, 159607.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (372, '2024-03-24', 2, 2, 6, 85451.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (373, '2024-07-13', 5, 5, 6, 125419.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (374, '2023-10-14', 3, 1, 3, 70681.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (375, '2023-10-27', 3, 3, 2, 160164.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (376, '2023-12-12', 3, 3, 10, 169877.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (377, '2024-06-02', 3, 1, 10, 102717.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (378, '2024-06-10', 2, 1, 3, 64031.12);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (379, '2023-11-12', 3, 5, 1, 74237.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (380, '2024-07-24', 5, 3, 5, 142705.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (381, '2024-07-10', 5, 2, 4, 80374.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (382, '2023-07-12', 2, 5, 8, 142567.96);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (383, '2024-07-26', 1, 2, 5, 118549.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (384, '2024-04-20', 4, 4, 6, 173787.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (385, '2023-12-19', 1, 3, 2, 99382.42);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (386, '2023-12-12', 2, 3, 5, 121650.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (387, '2023-11-12', 2, 1, 4, 63648.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (388, '2023-08-20', 3, 4, 3, 185903.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (389, '2024-05-23', 1, 1, 9, 74689.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (390, '2023-02-11', 2, 3, 6, 92946.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (391, '2023-07-29', 2, 4, 6, 81410.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (392, '2023-06-05', 2, 4, 7, 195806.49);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (393, '2024-06-17', 5, 1, 10, 159297.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (394, '2023-07-16', 3, 3, 4, 164743.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (395, '2023-02-14', 4, 5, 3, 128620.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (396, '2024-10-19', 3, 2, 1, 195721.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (397, '2024-07-29', 1, 1, 4, 86616.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (398, '2023-09-06', 3, 4, 7, 182674.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (399, '2023-07-20', 2, 3, 7, 155785.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (400, '2023-08-03', 5, 1, 7, 56293.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (401, '2024-11-25', 2, 4, 8, 149983.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (402, '2023-11-29', 5, 5, 3, 101684.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (403, '2024-08-22', 5, 1, 2, 142948.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (404, '2024-11-23', 4, 2, 10, 165899.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (405, '2023-07-11', 1, 3, 2, 165050.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (406, '2024-02-08', 5, 3, 5, 54918.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (407, '2023-02-28', 1, 1, 4, 173453.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (408, '2024-03-31', 5, 1, 10, 51939.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (409, '2024-10-23', 1, 3, 1, 65018.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (410, '2023-04-14', 2, 4, 2, 134275.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (411, '2023-02-05', 4, 1, 7, 138037.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (412, '2023-06-08', 5, 3, 1, 78773.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (413, '2023-06-18', 5, 4, 10, 98056.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (414, '2024-05-19', 3, 5, 5, 119020.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (415, '2024-09-24', 1, 3, 10, 95162.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (416, '2024-05-11', 2, 5, 10, 65986.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (417, '2023-05-13', 2, 2, 1, 66228.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (418, '2024-02-01', 2, 1, 3, 180710.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (419, '2024-10-09', 4, 2, 10, 127267.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (420, '2023-06-25', 2, 5, 3, 185736.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (421, '2024-02-18', 5, 5, 2, 68703.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (422, '2024-03-09', 3, 1, 2, 175024.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (423, '2024-01-21', 3, 2, 3, 102091.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (424, '2023-02-20', 3, 5, 4, 94776.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (425, '2023-09-04', 2, 4, 8, 176140.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (426, '2024-01-03', 5, 1, 9, 94428.27);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (427, '2024-03-14', 4, 1, 5, 64911.71);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (428, '2024-01-02', 2, 4, 6, 105942.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (429, '2023-02-15', 1, 2, 6, 165482.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (430, '2023-11-27', 5, 2, 1, 151525.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (431, '2024-01-03', 2, 4, 9, 125826.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (432, '2024-08-14', 1, 1, 8, 94788.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (433, '2023-11-05', 4, 1, 5, 84536.73);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (434, '2023-07-19', 1, 5, 2, 119713.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (435, '2023-09-14', 3, 4, 1, 166583.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (436, '2023-04-06', 1, 5, 9, 171484.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (437, '2023-02-05', 1, 3, 5, 199340.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (438, '2024-11-23', 2, 5, 9, 191893.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (439, '2024-03-04', 3, 5, 10, 180522.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (440, '2023-10-12', 5, 5, 9, 151118.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (441, '2024-09-19', 1, 2, 6, 136449.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (442, '2024-09-17', 2, 4, 4, 122943.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (443, '2024-11-15', 3, 1, 6, 182624.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (444, '2023-05-18', 3, 1, 5, 114573.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (445, '2023-10-14', 4, 1, 7, 172571.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (446, '2024-11-30', 4, 1, 1, 153096.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (447, '2024-11-28', 4, 5, 7, 130466.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (448, '2023-05-18', 1, 1, 7, 123831.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (449, '2024-05-28', 3, 3, 8, 164078.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (450, '2023-10-10', 2, 5, 7, 198108.03);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (451, '2024-04-04', 3, 5, 8, 105034.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (452, '2023-08-31', 4, 2, 3, 151599.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (453, '2024-07-24', 3, 3, 7, 179090.71);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (454, '2023-06-02', 1, 4, 10, 98864.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (455, '2024-02-18', 1, 2, 4, 171754.73);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (456, '2024-08-24', 3, 4, 4, 128685.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (457, '2023-11-30', 3, 2, 3, 193269.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (458, '2024-07-26', 4, 4, 2, 164406.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (459, '2023-03-31', 5, 4, 10, 132066.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (460, '2024-06-17', 4, 3, 5, 176486.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (461, '2023-09-05', 4, 3, 4, 64729.85);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (462, '2023-01-08', 1, 2, 7, 188669.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (463, '2024-01-25', 2, 1, 4, 148679.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (464, '2024-10-07', 4, 3, 8, 112512.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (465, '2023-07-25', 1, 5, 2, 184285.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (466, '2024-10-28', 5, 4, 9, 146422.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (467, '2024-01-28', 2, 4, 8, 125530.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (468, '2024-10-02', 5, 4, 3, 145749.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (469, '2023-07-05', 4, 4, 3, 137679.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (470, '2024-06-15', 2, 3, 5, 71645.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (471, '2023-08-24', 5, 4, 3, 111235.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (472, '2024-05-01', 1, 3, 9, 153026.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (473, '2024-05-07', 2, 4, 4, 107611.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (474, '2023-06-06', 2, 5, 8, 56842.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (475, '2024-06-09', 2, 1, 9, 162348.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (476, '2024-10-12', 2, 2, 10, 151960.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (477, '2023-08-13', 5, 3, 4, 173273.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (478, '2023-08-16', 1, 2, 10, 59081.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (479, '2023-02-23', 1, 2, 6, 140334.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (480, '2023-10-26', 1, 2, 2, 129832.27);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (481, '2023-06-08', 2, 5, 10, 124680.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (482, '2023-07-06', 2, 2, 3, 187254.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (483, '2023-06-13', 5, 1, 10, 93188.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (484, '2023-10-03', 3, 3, 1, 158795.34);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (485, '2024-01-29', 3, 1, 5, 199346.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (486, '2023-04-02', 1, 4, 7, 81521.58);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (487, '2023-01-21', 4, 1, 6, 121498.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (488, '2024-03-03', 4, 3, 1, 138678.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (489, '2024-01-02', 1, 4, 9, 106804.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (490, '2023-03-20', 1, 5, 2, 121001.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (491, '2024-07-01', 3, 3, 7, 109299.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (492, '2024-07-30', 4, 2, 9, 121235.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (493, '2023-06-11', 2, 1, 4, 180322.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (494, '2024-10-20', 5, 3, 6, 199688.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (495, '2023-07-24', 4, 4, 6, 53258.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (496, '2024-05-23', 5, 5, 10, 126799.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (497, '2023-05-28', 2, 1, 7, 175177.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (498, '2023-10-13', 2, 4, 4, 114401.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (499, '2023-01-06', 2, 3, 10, 171489.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (500, '2023-04-10', 4, 5, 7, 158408.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (501, '2024-11-12', 3, 4, 7, 182992.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (502, '2023-10-06', 1, 3, 1, 122898.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (503, '2023-10-22', 3, 2, 9, 72881.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (504, '2024-11-16', 3, 4, 1, 65332.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (505, '2024-05-11', 1, 1, 8, 110739.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (506, '2024-05-09', 1, 5, 6, 141498.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (507, '2023-07-17', 3, 3, 7, 145948.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (508, '2023-03-08', 1, 4, 2, 147749.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (509, '2024-11-07', 1, 3, 8, 138650.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (510, '2023-10-14', 5, 1, 6, 145978.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (511, '2023-08-19', 1, 4, 4, 182662.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (512, '2023-05-18', 4, 2, 4, 71167.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (513, '2023-04-09', 1, 4, 3, 76676.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (514, '2023-09-04', 1, 3, 6, 167558.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (515, '2023-08-09', 1, 5, 8, 112503.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (516, '2023-07-10', 4, 3, 5, 150675.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (517, '2023-09-25', 4, 5, 8, 114746.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (518, '2023-05-14', 1, 4, 9, 175585.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (519, '2024-09-23', 4, 5, 9, 139257.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (520, '2024-04-23', 3, 5, 8, 95594.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (521, '2024-08-08', 2, 4, 6, 181043.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (522, '2023-01-30', 2, 2, 4, 196901.49);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (523, '2023-10-14', 3, 2, 3, 76168.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (524, '2024-06-16', 2, 3, 7, 96994.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (525, '2023-01-10', 4, 4, 7, 178105.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (526, '2024-05-10', 5, 1, 6, 183709.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (527, '2024-11-19', 4, 3, 5, 166505.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (528, '2024-06-07', 3, 4, 5, 171247.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (529, '2023-05-15', 1, 4, 8, 66066.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (530, '2024-09-26', 4, 4, 7, 147442.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (531, '2023-06-10', 1, 1, 6, 196332.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (532, '2023-09-28', 1, 4, 3, 93146.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (533, '2023-07-16', 5, 5, 10, 198516.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (534, '2023-01-20', 4, 4, 9, 52975.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (535, '2023-09-20', 4, 3, 6, 92307.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (536, '2023-01-12', 4, 1, 1, 128403.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (537, '2024-08-14', 1, 5, 4, 136048.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (538, '2024-11-02', 4, 5, 2, 95898.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (539, '2023-02-25', 1, 2, 2, 161720.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (540, '2024-11-02', 2, 1, 4, 84923.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (541, '2023-01-04', 2, 3, 9, 143942.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (542, '2024-02-11', 5, 3, 10, 81283.73);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (543, '2024-07-30', 5, 4, 1, 154159.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (544, '2024-10-23', 4, 2, 2, 185174.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (545, '2024-02-02', 4, 1, 10, 83659.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (546, '2024-09-08', 4, 1, 8, 142621.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (547, '2023-07-28', 5, 1, 7, 101206.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (548, '2023-04-07', 3, 3, 3, 69517.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (549, '2023-08-17', 4, 1, 9, 148868.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (550, '2023-08-15', 3, 2, 6, 144805.6);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (551, '2024-10-18', 3, 1, 8, 59263.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (552, '2023-12-18', 3, 4, 1, 80253.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (553, '2023-03-04', 2, 3, 6, 151731.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (554, '2024-07-12', 2, 4, 2, 137898.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (555, '2023-07-16', 1, 4, 2, 172021.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (556, '2023-05-08', 1, 4, 2, 156110.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (557, '2024-11-21', 3, 3, 9, 60457.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (558, '2023-04-20', 2, 3, 3, 115901.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (559, '2024-09-12', 1, 3, 3, 140557.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (560, '2023-11-23', 1, 3, 9, 60935.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (561, '2024-06-10', 1, 2, 1, 125769.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (562, '2024-02-25', 4, 3, 10, 187298.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (563, '2024-04-19', 1, 1, 10, 169286.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (564, '2024-03-23', 4, 5, 8, 77754.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (565, '2023-10-10', 2, 4, 7, 88753.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (566, '2024-01-17', 5, 5, 7, 198107.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (567, '2023-04-09', 5, 5, 3, 105297.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (568, '2024-02-04', 1, 3, 2, 82128.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (569, '2023-01-17', 5, 4, 7, 155072.12);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (570, '2024-04-20', 2, 1, 8, 139844.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (571, '2024-10-08', 4, 1, 2, 199462.34);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (572, '2024-03-29', 3, 5, 3, 158737.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (573, '2024-01-17', 2, 3, 7, 187122.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (574, '2024-05-23', 5, 2, 7, 72534.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (575, '2024-10-06', 2, 1, 5, 195215.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (576, '2024-06-16', 1, 4, 8, 92156.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (577, '2023-02-11', 5, 3, 9, 170615.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (578, '2024-07-25', 4, 3, 3, 90023.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (579, '2024-11-04', 1, 3, 5, 73926.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (580, '2024-07-07', 5, 5, 2, 96478.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (581, '2024-07-25', 5, 2, 1, 83687.45);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (582, '2023-12-31', 1, 4, 7, 52619.46);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (583, '2023-02-12', 5, 3, 2, 59344.85);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (584, '2023-02-12', 2, 2, 5, 100314.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (585, '2023-02-26', 5, 4, 9, 130649.46);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (586, '2023-11-26', 5, 5, 6, 148903.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (587, '2023-06-14', 5, 2, 5, 60779.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (588, '2023-11-10', 5, 2, 7, 84107.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (589, '2023-01-31', 1, 3, 7, 157116.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (590, '2023-08-07', 1, 3, 6, 163235.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (591, '2024-03-02', 3, 4, 5, 190638.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (592, '2023-12-08', 1, 3, 3, 110715.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (593, '2024-08-03', 1, 5, 4, 177444.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (594, '2024-08-11', 3, 4, 1, 198862.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (595, '2023-10-18', 4, 3, 1, 146455.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (596, '2023-04-07', 2, 1, 5, 151775.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (597, '2024-03-06', 4, 2, 5, 161565.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (598, '2023-10-03', 1, 4, 5, 135997.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (599, '2023-11-29', 5, 4, 3, 96420.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (600, '2024-10-28', 5, 5, 8, 119676.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (601, '2024-05-24', 2, 1, 9, 55458.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (602, '2023-04-21', 1, 2, 9, 190495.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (603, '2024-09-16', 3, 3, 1, 144358.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (604, '2023-10-27', 5, 2, 1, 87748.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (605, '2024-08-17', 1, 5, 8, 181631.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (606, '2024-10-12', 2, 5, 3, 113168.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (607, '2024-08-06', 2, 3, 3, 186074.27);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (608, '2023-07-27', 1, 5, 2, 163987.58);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (609, '2024-09-18', 4, 5, 3, 187439.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (610, '2024-08-14', 4, 2, 10, 121796.89);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (611, '2024-10-26', 1, 5, 7, 114840.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (612, '2023-06-17', 2, 1, 4, 113717.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (613, '2023-11-30', 5, 4, 6, 149074.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (614, '2024-05-26', 5, 4, 6, 151750.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (615, '2023-01-15', 5, 3, 10, 97121.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (616, '2024-06-24', 1, 5, 10, 126906.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (617, '2024-11-09', 5, 5, 3, 184827.95);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (618, '2023-11-22', 1, 2, 5, 130715.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (619, '2024-03-06', 1, 1, 10, 183542.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (620, '2024-05-18', 5, 5, 3, 68315.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (621, '2023-01-28', 5, 4, 3, 170552.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (622, '2023-03-19', 1, 5, 8, 169544.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (623, '2024-05-09', 4, 3, 6, 103350.45);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (624, '2024-06-07', 4, 3, 8, 80205.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (625, '2023-09-12', 4, 3, 4, 85709.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (626, '2024-04-11', 1, 4, 6, 70674.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (627, '2023-06-19', 1, 4, 9, 151851.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (628, '2024-03-19', 4, 5, 1, 157120.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (629, '2024-07-09', 5, 1, 10, 115615.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (630, '2024-09-30', 2, 3, 8, 182453.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (631, '2024-09-22', 1, 4, 4, 58124.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (632, '2024-06-06', 3, 4, 9, 167335.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (633, '2023-09-05', 4, 3, 2, 196841.03);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (634, '2023-02-27', 1, 3, 9, 64022.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (635, '2023-03-19', 4, 5, 4, 88990.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (636, '2023-12-16', 2, 2, 5, 193292.65);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (637, '2023-02-18', 3, 2, 2, 127163.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (638, '2023-04-08', 4, 5, 5, 153056.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (639, '2024-02-04', 3, 2, 1, 125716.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (640, '2023-10-28', 5, 2, 4, 96300.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (641, '2023-09-08', 2, 2, 4, 106022.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (642, '2023-02-04', 4, 1, 2, 121663.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (643, '2023-11-06', 5, 2, 7, 120785.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (644, '2024-08-13', 1, 3, 3, 133070.12);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (645, '2024-07-12', 4, 3, 2, 133350.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (646, '2024-11-22', 3, 4, 8, 129166.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (647, '2024-09-11', 2, 5, 1, 97855.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (648, '2023-02-08', 2, 5, 9, 88566.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (649, '2024-04-06', 5, 2, 8, 144668.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (650, '2024-02-16', 4, 5, 5, 87315.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (651, '2023-03-28', 2, 1, 7, 110684.46);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (652, '2023-11-13', 3, 2, 1, 97353.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (653, '2024-11-08', 2, 3, 5, 85805.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (654, '2023-12-29', 2, 4, 10, 145664.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (655, '2024-11-23', 4, 2, 5, 140188.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (656, '2024-02-17', 1, 2, 2, 176745.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (657, '2024-02-25', 4, 3, 6, 128141.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (658, '2024-09-13', 3, 5, 5, 73687.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (659, '2023-01-01', 5, 4, 6, 105043.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (660, '2024-04-12', 4, 1, 9, 56316.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (661, '2024-02-11', 5, 2, 6, 167849.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (662, '2024-07-12', 4, 5, 6, 148402.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (663, '2024-11-22', 2, 2, 6, 95063.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (664, '2024-06-26', 1, 1, 8, 58936.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (665, '2024-08-17', 3, 1, 6, 139649.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (666, '2024-10-24', 3, 5, 10, 85829.42);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (667, '2023-06-24', 2, 3, 10, 86145.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (668, '2023-09-27', 2, 1, 4, 115293.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (669, '2024-07-22', 2, 3, 6, 117360.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (670, '2024-01-29', 5, 2, 3, 161564.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (671, '2023-09-08', 4, 4, 6, 119788.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (672, '2024-07-31', 4, 2, 8, 80516.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (673, '2023-04-23', 3, 5, 5, 55692.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (674, '2024-04-12', 1, 5, 7, 122896.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (675, '2023-05-18', 5, 1, 5, 68958.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (676, '2024-02-01', 4, 2, 8, 172897.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (677, '2024-11-01', 4, 5, 5, 132277.85);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (678, '2024-10-11', 1, 3, 4, 84367.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (679, '2024-02-01', 3, 5, 4, 157625.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (680, '2024-04-07', 3, 1, 5, 50370.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (681, '2024-11-01', 2, 4, 8, 65559.71);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (682, '2023-02-26', 4, 5, 10, 87390.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (683, '2023-02-26', 4, 1, 2, 73529.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (684, '2024-11-19', 2, 3, 5, 170542.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (685, '2023-02-12', 3, 3, 1, 155597.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (686, '2023-08-06', 3, 2, 10, 141021.34);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (687, '2024-07-16', 1, 3, 4, 114758.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (688, '2024-02-01', 2, 1, 3, 127575.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (689, '2023-12-01', 5, 1, 9, 180303.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (690, '2023-09-04', 4, 4, 4, 112009.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (691, '2023-06-28', 1, 1, 7, 88877.92);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (692, '2024-04-26', 5, 4, 6, 87325.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (693, '2023-05-11', 3, 4, 9, 159457.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (694, '2023-08-05', 2, 2, 2, 98959.12);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (695, '2023-06-09', 1, 1, 7, 116125.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (696, '2023-08-28', 1, 3, 9, 146262.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (697, '2023-05-29', 2, 3, 1, 52640.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (698, '2023-08-13', 1, 1, 3, 108966.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (699, '2024-09-04', 3, 5, 1, 174233.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (700, '2024-02-11', 3, 3, 6, 85861.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (701, '2023-06-28', 2, 4, 5, 63063.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (702, '2024-05-21', 5, 2, 10, 114595.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (703, '2023-02-01', 3, 4, 7, 94503.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (704, '2023-11-13', 2, 2, 10, 156360.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (705, '2023-03-10', 1, 4, 5, 164065.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (706, '2024-08-18', 4, 4, 1, 91805.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (707, '2024-03-13', 1, 2, 5, 189604.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (708, '2024-01-31', 1, 1, 5, 131153.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (709, '2023-09-15', 1, 3, 1, 87900.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (710, '2023-12-11', 2, 2, 3, 184204.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (711, '2024-11-10', 5, 5, 7, 73526.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (712, '2023-01-20', 4, 5, 1, 170664.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (713, '2023-11-22', 2, 2, 7, 87737.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (714, '2023-03-23', 4, 3, 1, 50439.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (715, '2023-09-04', 3, 3, 5, 130898.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (716, '2023-07-28', 2, 2, 3, 70112.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (717, '2024-11-30', 3, 1, 1, 174775.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (718, '2023-08-04', 2, 3, 8, 111430.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (719, '2024-03-31', 5, 3, 6, 118526.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (720, '2024-06-30', 3, 4, 7, 111956.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (721, '2024-09-28', 5, 1, 1, 78269.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (722, '2023-09-02', 3, 1, 5, 87024.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (723, '2024-10-08', 2, 2, 7, 118766.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (724, '2023-09-16', 3, 3, 5, 127818.78);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (725, '2023-09-14', 2, 5, 10, 184365.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (726, '2023-11-17', 1, 2, 5, 135627.45);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (727, '2024-05-06', 1, 3, 6, 194023.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (728, '2024-08-06', 5, 2, 8, 101702.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (729, '2023-08-29', 3, 2, 1, 198890.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (730, '2023-11-15', 1, 3, 8, 149292.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (731, '2024-03-31', 4, 1, 6, 170509.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (732, '2024-10-20', 5, 4, 5, 106812.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (733, '2023-01-07', 3, 4, 1, 194242.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (734, '2023-05-11', 4, 2, 10, 197086.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (735, '2024-11-22', 2, 4, 7, 50231.65);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (736, '2023-08-26', 3, 2, 9, 140063.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (737, '2024-11-11', 1, 5, 5, 79410.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (738, '2024-02-01', 4, 2, 10, 92955.45);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (739, '2024-08-21', 3, 5, 6, 141971.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (740, '2023-09-21', 3, 1, 6, 146410.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (741, '2024-04-28', 1, 3, 10, 56857.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (742, '2024-07-10', 1, 2, 8, 158631.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (743, '2024-10-20', 4, 5, 7, 157170.2);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (744, '2023-04-21', 4, 2, 7, 83134.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (745, '2023-03-15', 5, 5, 1, 97336.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (746, '2024-10-09', 2, 3, 9, 122863.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (747, '2024-06-07', 4, 4, 8, 135789.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (748, '2023-07-01', 3, 3, 8, 89561.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (749, '2023-09-17', 4, 1, 3, 193323.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (750, '2024-04-25', 4, 1, 2, 148383.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (751, '2023-09-18', 4, 5, 3, 68907.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (752, '2024-08-28', 2, 4, 7, 73225.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (753, '2024-04-26', 2, 2, 2, 195223.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (754, '2024-08-25', 5, 2, 10, 77294.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (755, '2023-07-22', 5, 2, 4, 117332.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (756, '2024-10-19', 1, 4, 2, 160157.06);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (757, '2023-12-21', 1, 4, 5, 96306.46);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (758, '2024-02-21', 3, 4, 6, 79280.71);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (759, '2024-08-06', 3, 2, 1, 145735.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (760, '2024-01-06', 3, 5, 5, 85271.37);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (761, '2024-10-20', 1, 2, 2, 185275.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (762, '2024-11-29', 5, 1, 3, 187316.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (763, '2023-02-09', 4, 5, 1, 184588.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (764, '2023-09-29', 3, 5, 2, 51919.69);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (765, '2023-02-16', 2, 2, 4, 89184.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (766, '2024-06-02', 4, 2, 3, 65212.42);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (767, '2024-03-13', 1, 5, 8, 101099.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (768, '2023-04-02', 2, 1, 9, 93271.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (769, '2023-12-03', 5, 4, 8, 190493.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (770, '2024-04-12', 2, 5, 5, 172397.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (771, '2023-05-22', 5, 2, 6, 131749.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (772, '2023-04-12', 3, 5, 3, 172749.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (773, '2024-06-19', 4, 4, 9, 143261.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (774, '2023-10-02', 3, 4, 9, 142798.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (775, '2023-04-14', 1, 4, 5, 77162.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (776, '2023-05-01', 1, 5, 2, 68734.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (777, '2023-06-17', 2, 5, 5, 156716.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (778, '2024-08-29', 1, 4, 8, 82509.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (779, '2024-04-24', 2, 3, 10, 186551.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (780, '2024-10-24', 5, 2, 10, 192179.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (781, '2024-03-17', 4, 1, 10, 147231.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (782, '2023-04-18', 2, 4, 3, 89897.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (783, '2023-05-23', 1, 4, 6, 100167.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (784, '2023-09-11', 3, 4, 4, 141646.03);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (785, '2024-08-08', 4, 4, 2, 108174.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (786, '2024-09-27', 2, 2, 8, 176443.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (787, '2023-11-16', 2, 3, 8, 57231.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (788, '2024-01-10', 2, 3, 5, 92189.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (789, '2023-12-28', 1, 2, 8, 112852.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (790, '2024-11-16', 4, 2, 8, 147854.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (791, '2023-11-25', 5, 5, 10, 127060.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (792, '2024-03-19', 3, 1, 5, 157662.49);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (793, '2024-10-27', 5, 3, 10, 138100.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (794, '2024-01-06', 4, 5, 2, 119451.89);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (795, '2024-08-11', 3, 2, 8, 55339.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (796, '2023-08-08', 1, 5, 3, 87098.6);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (797, '2023-09-05', 1, 2, 3, 111540.41);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (798, '2023-03-10', 3, 1, 6, 187275.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (799, '2024-06-09', 1, 5, 1, 151207.73);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (800, '2023-04-16', 5, 5, 1, 141438.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (801, '2023-09-26', 3, 1, 9, 129995.05);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (802, '2024-11-06', 4, 5, 10, 155664.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (803, '2024-09-10', 2, 1, 8, 177584.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (804, '2024-04-21', 1, 1, 5, 151006.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (805, '2023-12-31', 3, 1, 4, 112396.54);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (806, '2023-01-07', 1, 5, 3, 163155.34);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (807, '2023-03-04', 3, 5, 1, 138366.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (808, '2023-10-12', 4, 3, 8, 81970.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (809, '2024-07-24', 4, 5, 1, 98183.66);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (810, '2023-01-02', 1, 3, 5, 68915.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (811, '2023-11-14', 2, 2, 1, 146434.76);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (812, '2024-05-14', 2, 2, 6, 84589.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (813, '2024-02-23', 3, 1, 2, 96461.35);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (814, '2024-09-21', 1, 2, 3, 164750.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (815, '2023-11-25', 1, 5, 3, 169498.11);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (816, '2024-09-17', 5, 5, 1, 108327.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (817, '2024-08-15', 4, 2, 7, 142303.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (818, '2024-10-04', 1, 5, 1, 138294.98);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (819, '2023-03-25', 2, 5, 2, 145479.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (820, '2024-03-12', 1, 5, 9, 81211.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (821, '2024-09-23', 4, 3, 8, 89287.58);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (822, '2024-08-01', 3, 3, 7, 128394.38);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (823, '2024-09-18', 1, 2, 3, 174275.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (824, '2024-02-19', 1, 5, 3, 136608.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (825, '2024-02-09', 4, 3, 7, 61121.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (826, '2023-05-20', 4, 4, 10, 135621.25);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (827, '2023-07-22', 4, 4, 3, 97419.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (828, '2023-01-05', 1, 5, 4, 118340.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (829, '2024-01-09', 3, 2, 3, 141394.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (830, '2023-09-22', 1, 3, 9, 60182.53);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (831, '2023-09-09', 3, 2, 4, 76481.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (832, '2023-11-17', 5, 2, 7, 77011.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (833, '2024-11-12', 1, 2, 7, 192396.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (834, '2024-11-27', 5, 3, 3, 170946.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (835, '2024-06-29', 1, 1, 7, 123040.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (836, '2024-09-22', 3, 5, 6, 190884.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (837, '2023-10-02', 1, 2, 1, 133504.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (838, '2023-11-25', 1, 3, 4, 99942.41);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (839, '2024-07-06', 5, 1, 1, 133936.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (840, '2023-07-08', 3, 2, 1, 102397.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (841, '2023-06-30', 1, 4, 1, 78981.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (842, '2023-02-04', 2, 5, 5, 168734.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (843, '2024-02-12', 3, 2, 5, 197772.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (844, '2024-11-23', 2, 1, 3, 142618.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (845, '2024-03-04', 2, 5, 10, 108697.32);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (846, '2023-05-03', 1, 2, 6, 85148.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (847, '2023-05-22', 4, 1, 2, 188827.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (848, '2024-06-10', 1, 3, 5, 190075.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (849, '2023-05-18', 3, 4, 2, 129306.33);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (850, '2024-05-24', 4, 1, 4, 179523.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (851, '2023-02-02', 2, 1, 9, 106038.45);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (852, '2023-03-14', 3, 1, 5, 143244.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (853, '2024-09-12', 3, 5, 7, 55844.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (854, '2024-08-20', 5, 2, 5, 93513.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (855, '2023-09-15', 4, 2, 6, 63278.39);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (856, '2024-03-02', 5, 2, 6, 88371.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (857, '2023-12-23', 4, 3, 1, 161876.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (858, '2023-02-24', 3, 4, 3, 143947.65);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (859, '2024-04-04', 3, 2, 1, 85031.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (860, '2023-03-30', 4, 1, 1, 128730.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (861, '2024-03-03', 4, 1, 8, 168717.46);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (862, '2024-11-09', 1, 3, 5, 142126.94);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (863, '2023-09-11', 5, 3, 3, 101258.23);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (864, '2024-10-28', 2, 4, 9, 59734.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (865, '2023-09-25', 4, 1, 9, 147215.98);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (866, '2024-05-13', 5, 1, 7, 98893.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (867, '2024-02-22', 5, 1, 9, 180328.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (868, '2024-11-04', 5, 1, 3, 157592.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (869, '2023-11-20', 4, 2, 2, 65250.98);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (870, '2023-09-28', 3, 4, 2, 158470.49);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (871, '2024-10-26', 3, 2, 10, 154933.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (872, '2023-10-04', 1, 1, 4, 68156.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (873, '2024-08-18', 5, 3, 6, 151835.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (874, '2024-01-13', 2, 1, 7, 113187.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (875, '2023-02-13', 4, 3, 9, 90869.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (876, '2023-08-11', 5, 5, 7, 70196.42);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (877, '2023-12-13', 2, 3, 8, 143235.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (878, '2023-06-16', 5, 4, 6, 118796.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (879, '2023-12-04', 4, 3, 7, 83826.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (880, '2023-06-15', 2, 5, 7, 60562.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (881, '2023-12-12', 5, 3, 8, 54695.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (882, '2023-07-05', 4, 4, 2, 143317.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (883, '2024-06-25', 5, 5, 4, 195249.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (884, '2023-11-04', 4, 4, 7, 174498.62);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (885, '2024-01-13', 3, 1, 7, 163326.85);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (886, '2023-06-26', 3, 3, 2, 95704.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (887, '2024-11-21', 5, 1, 6, 110182.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (888, '2023-04-07', 2, 5, 8, 54289.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (889, '2024-08-19', 1, 3, 3, 104640.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (890, '2024-11-14', 4, 2, 9, 93262.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (891, '2024-02-21', 5, 3, 7, 107081.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (892, '2024-05-16', 4, 2, 8, 71816.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (893, '2024-10-14', 5, 4, 6, 111731.77);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (894, '2023-11-29', 1, 4, 4, 90517.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (895, '2024-11-24', 3, 4, 3, 61055.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (896, '2024-09-01', 5, 5, 9, 52028.22);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (897, '2024-02-27', 1, 2, 7, 118876.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (898, '2023-06-25', 1, 5, 2, 136954.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (899, '2024-04-26', 2, 3, 4, 163703.01);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (900, '2024-04-04', 1, 5, 4, 180925.55);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (901, '2023-02-18', 1, 1, 6, 118079.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (902, '2023-06-12', 5, 2, 3, 124298.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (903, '2023-08-15', 5, 4, 6, 164383.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (904, '2023-05-28', 2, 3, 6, 197211.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (905, '2023-04-28', 3, 2, 4, 173403.64);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (906, '2023-09-25', 4, 4, 6, 52337.81);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (907, '2024-05-30', 1, 2, 10, 154504.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (908, '2023-04-28', 4, 3, 9, 181479.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (909, '2024-08-05', 5, 2, 6, 60261.96);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (910, '2024-02-26', 3, 3, 9, 99852.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (911, '2023-10-03', 5, 3, 4, 177465.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (912, '2024-06-05', 5, 2, 6, 194172.12);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (913, '2023-07-08', 3, 5, 3, 118952.4);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (914, '2024-07-12', 3, 4, 5, 135341.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (915, '2023-10-17', 4, 5, 10, 145577.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (916, '2024-01-18', 1, 2, 7, 126736.91);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (917, '2023-06-12', 5, 1, 7, 74526.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (918, '2024-06-16', 3, 3, 1, 166425.18);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (919, '2023-11-27', 4, 2, 8, 92711.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (920, '2024-02-09', 3, 1, 9, 77989.44);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (921, '2024-06-17', 1, 2, 9, 81325.43);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (922, '2023-07-28', 3, 1, 4, 134572.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (923, '2024-09-21', 2, 5, 10, 100413.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (924, '2023-06-17', 5, 3, 4, 119346.82);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (925, '2023-01-30', 4, 3, 10, 63893.75);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (926, '2024-01-09', 4, 5, 4, 54917.26);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (927, '2024-05-01', 3, 4, 9, 132201.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (928, '2024-06-07', 5, 4, 5, 152589.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (929, '2023-04-10', 3, 1, 1, 175789.85);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (930, '2024-02-19', 4, 3, 9, 190996.31);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (931, '2023-12-28', 1, 2, 8, 92595.72);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (932, '2023-03-22', 5, 3, 2, 59706.86);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (933, '2024-01-30', 3, 5, 3, 161353.24);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (934, '2024-04-09', 5, 1, 1, 107091.98);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (935, '2024-09-13', 2, 3, 3, 147444.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (936, '2024-11-23', 3, 4, 1, 104268.04);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (937, '2024-11-25', 1, 3, 10, 80628.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (938, '2024-06-28', 5, 2, 3, 184830.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (939, '2024-09-26', 4, 1, 9, 149387.08);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (940, '2023-12-12', 1, 5, 1, 127080.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (941, '2023-10-16', 2, 1, 10, 194367.02);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (942, '2023-08-21', 1, 4, 5, 189922.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (943, '2023-06-07', 3, 4, 1, 139290.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (944, '2024-07-11', 4, 2, 3, 92855.71);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (945, '2023-12-01', 1, 1, 8, 133034.3);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (946, '2023-04-25', 3, 3, 10, 171140.79);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (947, '2023-10-30', 2, 4, 7, 99640.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (948, '2023-02-07', 5, 3, 9, 106805.51);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (949, '2023-12-21', 4, 4, 1, 168401.57);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (950, '2024-08-28', 2, 2, 3, 172849.83);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (951, '2024-09-16', 5, 3, 8, 143209.8);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (952, '2023-07-19', 1, 2, 6, 155174.99);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (953, '2024-07-28', 1, 4, 4, 59317.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (954, '2024-05-02', 3, 5, 3, 65859.48);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (955, '2024-02-06', 5, 2, 8, 161179.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (956, '2023-05-06', 2, 2, 10, 114799.1);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (957, '2024-04-01', 4, 2, 8, 167665.58);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (958, '2024-10-08', 2, 1, 7, 153825.73);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (959, '2023-06-12', 1, 1, 3, 122098.7);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (960, '2023-10-03', 5, 3, 9, 140932.63);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (961, '2024-04-24', 1, 5, 4, 74994.84);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (962, '2024-07-07', 4, 3, 6, 176072.67);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (963, '2024-08-31', 5, 2, 8, 123221.71);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (964, '2023-10-08', 5, 1, 10, 181836.47);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (965, '2023-03-07', 5, 2, 1, 194427.68);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (966, '2023-12-24', 3, 5, 9, 136329.21);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (967, '2023-11-20', 1, 4, 7, 107577.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (968, '2024-03-01', 3, 3, 10, 121894.36);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (969, '2024-08-05', 5, 1, 2, 164443.03);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (970, '2024-06-17', 4, 2, 10, 141959.56);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (971, '2023-10-28', 5, 3, 6, 53839.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (972, '2023-04-13', 4, 5, 5, 179686.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (973, '2023-10-05', 5, 1, 8, 51381.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (974, '2023-02-25', 3, 1, 3, 107910.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (975, '2023-02-20', 5, 3, 5, 120049.41);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (976, '2023-08-18', 1, 1, 10, 168141.0);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (977, '2024-02-09', 4, 5, 5, 73260.59);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (978, '2024-04-21', 1, 3, 8, 57710.07);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (979, '2024-09-07', 5, 4, 5, 162029.14);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (980, '2023-02-15', 4, 4, 2, 95821.87);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (981, '2023-02-22', 2, 4, 7, 198829.88);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (982, '2024-08-18', 2, 4, 7, 88500.15);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (983, '2023-04-01', 1, 4, 1, 116727.16);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (984, '2023-12-25', 3, 3, 2, 197116.29);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (985, '2023-02-26', 3, 4, 10, 71236.09);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (986, '2023-08-19', 3, 5, 8, 191302.52);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (987, '2023-10-09', 2, 3, 3, 135765.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (988, '2024-08-25', 3, 1, 7, 156369.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (989, '2023-04-08', 5, 1, 9, 90837.74);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (990, '2023-07-24', 4, 1, 8, 196231.93);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (991, '2024-10-11', 4, 3, 3, 84002.61);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (992, '2024-07-23', 3, 4, 4, 57799.13);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (993, '2023-02-13', 2, 1, 4, 198658.28);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (994, '2024-05-07', 1, 1, 1, 187320.19);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (995, '2023-02-20', 3, 3, 4, 164810.17);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (996, '2024-08-01', 4, 4, 3, 82047.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (997, '2023-03-20', 4, 1, 7, 121007.97);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (998, '2023-12-05', 1, 1, 10, 179352.9);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (999, '2023-06-07', 3, 4, 7, 118305.5);
INSERT INTO Vendas (ID_Venda, Data_Venda, Produto_ID, Vendedor_ID, Quantidade, Valor_Total) VALUES (1000, '2023-11-23', 4, 1, 5, 76139.64);

-- AULA 14: CRIAÇÃO DE 5 VIEWS

-- 1. Vendas por Marca
CREATE VIEW VendasPorMarca AS
SELECT 
    m.nome_marca AS Marca,
    COUNT(v.id_venda) AS Total_Vendas,
    SUM(v.valor_total) AS Receita_Total
FROM vendas v
JOIN produtos p ON v.produto_id = p.id_produto
JOIN marcas m ON p.marca_id = m.id_marca
GROUP BY m.nome_marca;

-- 2. Desempenho dos Vendedores
CREATE VIEW DesempenhoVendedores AS
SELECT 
    v.nome_vendedor AS Vendedor,
    COUNT(vd.id_venda) AS Total_Vendas,
    SUM(vd.valor_total) AS Receita_Total
FROM vendedores v
JOIN vendas vd ON v.id_vendedor = vd.vendedor_id
GROUP BY v.nome_vendedor;

-- 3. Estoque de Produtos
CREATE VIEW EstoqueProdutos AS
SELECT 
    p.id_produto AS ID_Produto,
    p.nome_produto AS Nome,
    p.cor AS Cor,
    p.modelo AS Modelo,
    m.nome_marca AS Marca
FROM produtos p
LEFT JOIN marcas m ON p.marca_id = m.id_marca;

-- 4. Histórico de Vendas
CREATE VIEW HistoricoVendas AS
SELECT 
    vd.id_venda AS ID_Venda,
    vd.data_venda AS Data,
    p.nome_produto AS Produto,
    v.nome_vendedor AS Vendedor,
    vd.quantidade AS Quantidade,
    vd.valor_total AS Valor_Total
FROM vendas vd
JOIN produtos p ON vd.produto_id = p.id_produto
JOIN vendedores v ON vd.vendedor_id = v.id_vendedor;

-- 5. Produtos mais Vendidos
CREATE VIEW ProdutosMaisVendidos AS
SELECT 
    p.nome_produto AS Produto,
    SUM(vd.quantidade) AS Quantidade_Total,
    SUM(vd.valor_total) AS Receita_Total
FROM vendas vd
JOIN produtos p ON vd.produto_id = p.id_produto
GROUP BY p.nome_produto
ORDER BY Quantidade_Total DESC;

-- AULA 15: CRIAÇÃO DE 2 FUNÇÕES

-- 1. Função para Calcular Receita Total de uma Marca
DELIMITER //
CREATE FUNCTION ReceitaTotalPorMarca(marcaID INT) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(v.valor_total) INTO total
    FROM vendas v
    JOIN produtos p ON v.produto_id = p.id_produto
    WHERE p.marca_id = marcaID;
    RETURN IFNULL(total, 0);
END //
DELIMITER ;

-- 2. Função para Calcular Vendas de um Vendedor em um Período
DELIMITER //
CREATE FUNCTION VendasPorVendedorEPeriodo(vendedorID INT, dataInicio DATE, dataFim DATE) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalVendas INT;
    SELECT COUNT(*) INTO totalVendas
    FROM vendas
    WHERE vendedor_id = vendedorID
      AND data_venda BETWEEN dataInicio AND dataFim;
    RETURN IFNULL(totalVendas, 0);
END //
DELIMITER ;

-- AULA 16: CRIAÇÃO DE 2 STORED PROCEDURES

-- 1. Stored Procedure para Listar Tabelas com Ordenação Dinâmica
-- Esta procedure permite ordenar os registros de uma tabela com base em um campo especificado e escolher a ordem (ASC ou DESC).
-- Uso: CALL ListarComOrdenacao('nome_da_tabela', 'campo_de_ordenacao', 'ASC');
DELIMITER //
CREATE PROCEDURE ListarComOrdenacao(
    IN nomeTabela VARCHAR(50), 
    IN campoOrdenacao VARCHAR(50), 
    IN ordem VARCHAR(4)
)
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', nomeTabela, ' ORDER BY ', campoOrdenacao, ' ', ordem);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- 2. Stored Procedure para Inserir ou Deletar Registros em uma Tabela
-- Esta procedure permite inserir ou deletar registros em uma tabela com base nos parâmetros fornecidos.
-- Uso para Inserção: CALL GerenciarRegistro('INSERT', 'nome_da_tabela', 'coluna1=valor1,coluna2=valor2');
-- Uso para Deleção: CALL GerenciarRegistro('DELETE', 'nome_da_tabela', 'condicao_para_delecao');
DELIMITER //
CREATE PROCEDURE GerenciarRegistro(
    IN acao VARCHAR(10), 
    IN nomeTabela VARCHAR(50), 
    IN parametros TEXT
)
BEGIN
    IF acao = 'INSERT' THEN
        SET @sql = CONCAT('INSERT INTO ', nomeTabela, ' SET ', parametros);
    ELSEIF acao = 'DELETE' THEN
        SET @sql = CONCAT('DELETE FROM ', nomeTabela, ' WHERE ', parametros);
    END IF;
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;


-- AULA 17: CRIAÇÃO DE 2 TABELAS DE LOG E DE 2 TRIGGERS

-- Tabelas de Log
-- 1. Tabela de Log para a tabela "vendas"
CREATE TABLE LogVendas (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    acao VARCHAR(10),
    usuario VARCHAR(50),
    data_operacao DATE,
    hora_operacao TIME
);

-- 2. Tabela de Log para a tabela "produtos"
CREATE TABLE LogProdutos (
    id_log INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    acao VARCHAR(10),
    usuario VARCHAR(50),
    data_operacao DATE,
    hora_operacao TIME
);

-- Triggers para a tabela "vendas"
-- BEFORE INSERT Trigger
-- Este trigger é executado antes de um novo registro ser inserido na tabela "vendas".
-- Ele verifica se os dados básicos estão preenchidos e registra a operação na tabela de log.
DELIMITER //
CREATE TRIGGER BeforeInsertVendas
BEFORE INSERT ON vendas
FOR EACH ROW
BEGIN
    -- Verifica se o valor total é maior que zero
    IF NEW.valor_total <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'O valor total deve ser maior que zero.';
    END IF;
    -- Registro no log (usuario deve ser configurado como CURRENT_USER para este exemplo)
    INSERT INTO LogVendas (id_venda, acao, usuario, data_operacao, hora_operacao)
    VALUES (NEW.id_venda, 'INSERT', CURRENT_USER(), CURDATE(), CURTIME());
END //
DELIMITER ;

-- AFTER UPDATE Trigger
-- Este trigger é executado após um registro ser atualizado na tabela "vendas".
-- Ele registra a operação na tabela de log.
DELIMITER //
CREATE TRIGGER AfterUpdateVendas
AFTER UPDATE ON vendas
FOR EACH ROW
BEGIN
    INSERT INTO LogVendas (id_venda, acao, usuario, data_operacao, hora_operacao)
    VALUES (NEW.id_venda, 'UPDATE', CURRENT_USER(), CURDATE(), CURTIME());
END //
DELIMITER ;

-- Triggers para a tabela "produtos"
-- BEFORE DELETE Trigger
-- Este trigger é executado antes de um registro ser excluído da tabela "produtos".
-- Ele registra a operação na tabela de log.
DELIMITER //
CREATE TRIGGER BeforeDeleteProdutos
BEFORE DELETE ON produtos
FOR EACH ROW
BEGIN
    INSERT INTO LogProdutos (id_produto, acao, usuario, data_operacao, hora_operacao)
    VALUES (OLD.id_produto, 'DELETE', CURRENT_USER(), CURDATE(), CURTIME());
END //
DELIMITER ;

-- AFTER INSERT Trigger
-- Este trigger é executado após um novo registro ser inserido na tabela "produtos".
-- Ele registra a operação na tabela de log.
DELIMITER //
CREATE TRIGGER AfterInsertProdutos
AFTER INSERT ON produtos
FOR EACH ROW
BEGIN
    INSERT INTO LogProdutos (id_produto, acao, usuario, data_operacao, hora_operacao)
    VALUES (NEW.id_produto, 'INSERT', CURRENT_USER(), CURDATE(), CURTIME());
END //
DELIMITER ;


-- AULA 19: CRIAÇÃO DA SUBLINGUAGEM DCL

-- Criação de Usuários e Concessão de Permissões

-- 1. Criar usuário com permissões de leitura em todas as tabelas
-- Este usuário terá acesso apenas para consultar os dados (SELECT) de todas as tabelas do banco de dados.
CREATE USER 'usuario_leitura'@'%' IDENTIFIED BY 'senha_forte';
GRANT SELECT ON vendascarrosluxo.* TO 'usuario_leitura'@'%'; -- Concede permissões de leitura para todas as tabelas no banco "vendascarrosluxo"

-- 2. Criar usuário com permissões de leitura, inserção e modificação de dados
-- Este usuário terá acesso para consultar (SELECT), inserir (INSERT) e atualizar (UPDATE) dados, mas não poderá excluir registros.
CREATE USER 'usuario_dados'@'%' IDENTIFIED BY 'senha_segura';
GRANT SELECT, INSERT, UPDATE ON vendascarrosluxo.* TO 'usuario_dados'@'%'; -- Concede permissões de leitura, inserção e modificação para todas as tabelas no banco "vendascarrosluxo"

-- OBS:
-- '%' permite acesso de qualquer host. Para restringir, substitua por um host específico (ex.: 'localhost').
-- Substitua 'senha_forte' e 'senha_segura' por senhas seguras adequadas ao seu ambiente.
-- As permissões concedidas podem ser alteradas posteriormente com comandos REVOKE se necessário.


-- AULA 20: SUBLINGUAGEM TCL

-- Controle de Transações

-- Operações na Primeira Tabela (exemplo: "vendas")
START TRANSACTION; -- Inicia a transação

-- Verifica se há registros para decidir entre eliminar ou inserir
-- Se houver registros, elimina os primeiros 3 registros
DELETE FROM vendas WHERE id_venda IN (1, 2, 3); -- Exclui registros específicos

-- Sentença para reverter a exclusão, caso necessário
-- INSERT INTO vendas (id_venda, data_venda, produto_id, vendedor_id, quantidade, valor_total) VALUES (1, '2023-01-01', 1, 1, 10, 1000.00);
-- INSERT INTO vendas (id_venda, data_venda, produto_id, vendedor_id, quantidade, valor_total) VALUES (2, '2023-01-02', 2, 2, 5, 500.00);
-- INSERT INTO vendas (id_venda, data_venda, produto_id, vendedor_id, quantidade, valor_total) VALUES (3, '2023-01-03', 3, 3, 15, 1500.00);

-- ROLLBACK; -- Desfaz as alterações realizadas na transação
-- COMMIT; -- Confirma as alterações realizadas na transação

-- Se não houver registros, insere 3 registros na tabela
INSERT INTO vendas (data_venda, produto_id, vendedor_id, quantidade, valor_total) VALUES ('2023-01-01', 1, 1, 10, 1000.00);
INSERT INTO vendas (data_venda, produto_id, vendedor_id, quantidade, valor_total) VALUES ('2023-01-02', 2, 2, 5, 500.00);
INSERT INTO vendas (data_venda, produto_id, vendedor_id, quantidade, valor_total) VALUES ('2023-01-03', 3, 3, 15, 1500.00);

-- ROLLBACK;
COMMIT;

-- Operações na Segunda Tabela (exemplo: "produtos")
START TRANSACTION; -- Inicia a transação

-- Insere 8 novos registros na tabela "produtos"
INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 1', 'Vermelho', 'Modelo A', 1);
INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 2', 'Azul', 'Modelo B', 2);
INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 3', 'Preto', 'Modelo C', 3);
INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 4', 'Branco', 'Modelo D', 4);
SAVEPOINT Savepoint_4; -- Savepoint após o registro #4

INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 5', 'Amarelo', 'Modelo E', 5);
INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 6', 'Cinza', 'Modelo F', 6);
INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 7', 'Verde', 'Modelo G', 7);
INSERT INTO produtos (nome_produto, cor, modelo, marca_id) VALUES ('Produto 8', 'Laranja', 'Modelo H', 8);
SAVEPOINT Savepoint_8; -- Savepoint após o registro #8

-- ROLLBACK TO Savepoint_4 -- Desfaz as alterações feitas após o registro #4 (se necessário)
-- RELEASE SAVEPOINT Savepoint_4 -- Elimina o savepoint dos primeiros 4 registros

COMMIT; -- Confirma as alterações realizadas na transação
