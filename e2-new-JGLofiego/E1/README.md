# Exercício E1 - Aquecimento com Flex - 2024.1

- Ler o capítulo 1 do livro flex & bison (está no Google Classroom, atividade E1).

a) mywc (atenção: não é um analisador léxico!)

1. Implemente o "Example 1-1. Word count fb1-1.l" (página 3, livro do Levine). 
O código-fonte deve ser colocado em um arquivo chamado de mywc.l;
2. Rode o Flex (sem diretivas), gerando o arquivo lex.yy.c;
3. Compile (c ou c++) o arquivo lex.yy.c e gere um executável chamdo de "mywc";
4. Mostre as saídas para a) e b) no arquivo mywc.output
   - a) Teste seu programa mywc, usando como entrada seu arquivo wc.l;
   - b) Teste o wc do linux, usando como entrada seu arquivo mywc.l;
5. Mostre as saídas para c) e d) no arquivo README.output
- Teste seu programa mywc, usando como entrada o arquivo README.md;
- Teste o wc do linux, usando como entrada o arquivo README.md;
6. Por que há diferença entre as saídas?

b) mywc-linux

7. Copie mywc.l para mywc-linux.l;
8. Modifique mywc-linux.l para que a saída gerada sera a mesma do wc do linux.
Repita os passos 2-5 acima, usando o mywc-linux.l e com o mywc-linux executável.


