CREATE TABLE categoria_produto (
  id_categoria INTEGER PRIMARY KEY NOT NULL,
  categoria VARCHAR(30) NOT NULL
);

INSERT INTO categoria_produto VALUES (
    1,
    'ração'
);

INSERT INTO categoria_produto VALUES (
    2,
    'pestiscos'
);
    
INSERT INTO categoria_produto VALUES (
    3,
    'acessorios'
);

CREATE TABLE produtos_pets (
    id_produto INTEGER PRIMARY KEY NOT NULL,
    nome_produto VARCHAR(30) NOT NULL,
    id_categoria INTEGER NOT NULL,
    FOREIGN KEY(id_categoria) REFERENCES categoria_produto (id_categoria)
);

INSERT INTO produtos_pets VALUES (
    1,
    'Special Cat',
    1
);

INSERT INTO produtos_pets VALUES (
    2,
    'Special Dog',
    1
);

INSERT INTO produtos_pets VALUES (
    3,
    'Wiska',
    2
);

INSERT INTO produtos_pets VALUES (
    4,
    'Coleira',
    3
);

INSERT INTO produtos_pets VALUES (
    5,
    'Laço',
    3
);

SELECT * FROM categoria_produto;
SELECT * FROM produtos_pets;
