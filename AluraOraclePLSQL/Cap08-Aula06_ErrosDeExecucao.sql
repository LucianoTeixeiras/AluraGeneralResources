--Erros de Execu��o
SELECT
    *
FROM
    cliente;

--Testa o erro n�o tratado

EXEC atualizar_cli_seg_mercado(4,1);

--Associando Erro a Situa��o de Update de Cliente que N�o Existe

CREATE OR REPLACE PROCEDURE atualizar_cli_seg_mercado (
    p_id              IN cliente.id%TYPE,
    p_segmercado_id   IN cliente.segmercado_id%TYPE
) IS
    e_cliente_id_inexistente EXCEPTION;
BEGIN
    UPDATE cliente
    SET
        segmercado_id = p_segmercado_id
    WHERE
        id = p_id;

    IF
        SQL%notfound
    THEN
        RAISE e_cliente_id_inexistente;
    END IF;
    COMMIT;
EXCEPTION
    WHEN e_cliente_id_inexistente THEN
        raise_application_error(-20100,'Cliente Inexistente!!!');
END;

--Testa o erro Tratado

EXEC atualizar_cli_seg_mercado(4,1);