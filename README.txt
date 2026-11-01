COIL FINDER — VERSÃO 3.1.1 — EXCEL + PDF DIGITAL POR HEADERS

ESTADO DESTA VERSÃO
- Mantém integralmente a base funcional da V3.
- Banco antigo segue zerado; listas V1/V2 antigas são descartadas.
- A fonte de verdade passa a ser a lista importada.
- Importação de Excel (.xlsx/.xls), PDF digital, CSV e JSON.
- Excel: a linha de headers é localizada automaticamente; não precisa ser a primeira linha.
- PDF digital: o app extrai o texto diretamente, localiza os headers e usa suas posições para reconstruir as linhas da tabela.
- As colunas Coil Number e BL são identificadas pelo título/header, não por posição fixa de coluna.
- Coil Number aceita conteúdo numérico ou alfanumérico e não exige quantidade fixa de caracteres.
- BL e Coil Number são tratados como texto para consulta.
- A relação é sempre Coil Number -> BL da mesma linha importada.
- PDF escaneado não é o alvo deste importador; conforme o projeto, os PDFs operacionais serão digitais.

COMO ABRIR NO WINDOWS
1. Extraia o ZIP inteiro.
2. Entre na pasta coil-finder.
3. Dê duplo clique em ABRIR_COIL_FINDER.bat.
4. O navegador abrirá automaticamente o Coil Finder.
5. Importe a lista do navio em Excel ou PDF digital em “Listas de outros navios”.

OBSERVAÇÃO
Esta versão continua local e usa bibliotecas carregadas da internet para Excel, PDF e OCR. O OCR permanece apenas para a leitura futura das etiquetas; a importação de PDF digital não usa OCR.

CORREÇÃO 3.1.1
- Corrigido reconhecimento de cabeçalhos como COIL N°, COIL Nº, COIL NO., COIL #, N° COIL e variações equivalentes.
- Ampliado reconhecimento de variações de BL (BL N°, BL NO., Nº BL etc.).
- Cache atualizado para forçar o navegador a carregar a correção.


V3.1.2 — CORREÇÃO DE PERSISTÊNCIA MULTILISTA
- Novas listas são acumuladas no banco; não substituem as anteriores.
- Cada lista mantém suas próprias linhas no localStorage.
- Excluir uma lista remove somente as bobinas pertencentes a ela.
- O contador do banco mostra bobinas únicas disponíveis para consulta.
- Importante: listas cujas linhas já foram perdidas pela V3.1.1 precisam ser importadas novamente uma única vez.


V3.3 - REGISTRO FISICO NFC/QR
- Mantem identificacao por OCR e busca manual.
- Area de anexar listas movida para o final da pagina.
- Apos localizar uma bobina, permite registrar um ID digital unico.
- O mesmo ID pode ser gravado em NFC e gerado como QR.
- NFC/QR apontam para etiqueta.html?id=<ID>.
- O registro de tags fica separado das listas (localStorage coilFinderTagRegistryV1).
- Nesta versao de teste o cadastro e local ao navegador. Antes de uso real em varios aparelhos, a Etiqueta Digital e o registro precisam migrar para um backend/banco central.
