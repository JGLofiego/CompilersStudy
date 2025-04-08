/* e6.y */

%{
#include <stdio.h>
#include <stdlib.h>

/* interface to the lexer */
 
extern int yylineno; /* from lexer */
void yyerror(char *s, ...){
 fprintf(stderr, "%s\n",s);
}

int yylex();
int parser_result;
%}

/* declare tokens */ 
%token EOL
%token PLUS
%token MINUS
%token MUL
%token DIV
%token LPAREN
%token RPAREN
%token ERROR
%token NUMBER


%start program

%%
program : expr EOL { parser_result = $1; return 0;}
;
expr : expr PLUS term { $$ = $1 + $3; }
| expr MINUS term { $$ = $1 - $3; }
| term { $$ = $1; }
;
term : term MUL factor { $$ = $1 * $3; }
| factor { $$ = $1; }
;
factor
: LPAREN expr RPAREN { $$ = $2; }
| NUMBER { $$ = $1; }
;
%%

int yywrap(void) {
    return 1;
}