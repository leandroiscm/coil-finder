# Testes de importação — V3.1

1. Abrir o app e confirmar banco zerado.
2. Importar `LISTAGEM DE BOBINAS - ALFA COMERCIAL.xlsx` e conferir Coil/BL.
3. Importar o PDF digital `LISTAGEM DE BOBINAS - MV APIRADEE NAREE - AMART.pdf`.
4. Conferir, no PDF, por exemplo: `00340326060029900` -> `AN26235PSFS005`.
5. Conferir bobinas de páginas posteriores do PDF para garantir continuidade entre páginas.
6. Confirmar que o importador procura `BL` e `COIL N°` pelo cabeçalho e não por coluna fixa.
7. Confirmar que Coil Number alfanumérico e de comprimento variável continua aceito no Excel.
8. Confirmar que exclusão de uma lista remove apenas as bobinas daquela importação.
9. Confirmar que duplicatas não sobrescrevem a primeira ocorrência já carregada.
10. Testar a busca manual após importar cada formato.

11. Importar três listas de navios diferentes em sequência e confirmar que coils das três continuam pesquisáveis.
12. Fechar/reabrir o app e confirmar que as três listas e suas bobinas permanecem no banco.
13. Excluir apenas a segunda lista e confirmar que a primeira e a terceira continuam pesquisáveis.
