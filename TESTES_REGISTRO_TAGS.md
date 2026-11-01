# Testes V3.3 — Registro NFC/QR

1. Importe 3 listas e confirme que todas continuam pesquisáveis.
2. Localize uma bobina por busca manual.
3. Abra “Registrar tag desta bobina”.
4. Gere o QR; confirme que aparece um ID digital e o QR.
5. Leia o QR no mesmo aparelho/navegador: deve abrir etiqueta.html e mostrar Coil/BL.
6. Reabra o Coil Finder, procure a mesma bobina e confirme que o registro permanece.
7. Em Android + Chrome + HTTPS, grave uma tag NFC e depois aproxime-a para abrir a URL.
8. Confirme que importar nova lista não apaga os registros de tags.
9. Confirme que a área “Anexar listas de navios” está no final da página.

Observação: nesta fase o cadastro ainda fica no localStorage do navegador. Abrir o QR/NFC em outro aparelho não recuperará os dados até a futura migração para um backend/banco central.
