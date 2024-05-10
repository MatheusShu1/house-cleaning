/* CREATE */
CREATE TABLE faxineira (
    id_faxineira INT PRIMARY NOT NULL,
    email VARCHAR(255) NOT NULL,
    nome VARCHAR(255),
    sobrenome VARCHAR(255), 
    cpf VARCHAR(14),
);


/* DELETE */
DELETE FROM faxineira WHERE id_faxineira > 0;

/* READ */
SELECT * FROM faxineira

/* INSERT */
INSERT INTO 
    faxineira (nome, sobrenome, cpf)
VALUES 
    ('', '', '');

/* UPDATE */
UPDATE faxineira
    SET 
        nome = '', 
        sobrenome = '', 
        cpf = ''
WHERE id_faxineira > 0;