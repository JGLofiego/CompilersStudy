/* e5.y */

%{
#include <stdio.h>
#include <stdlib.h>

/* interface to the lexer */
 
extern int yylineno; /* from lexer */
void yyerror(char *s, ...);
int yylex();
%}

/* declare tokens */ 
%token INT
%token PLUS
%token MINUS
%token MUL
%token DIV
%token LPAREN
%token RPAREN
%token EOL
%token ERROR

%start program

%%
program : expr EOL { return 1 ;};

expr : expr PLUS term
| expr MINUS term
| term
;

term : term MUL factor
| term DIV factor
| factor
;

factor: MINUS factor
| LPAREN expr RPAREN
| INT
;

%%

