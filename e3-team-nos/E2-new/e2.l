/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno
%{
#include "token.h"

%}

%%

.       { return ERROR; }
%%

int main() {


}




