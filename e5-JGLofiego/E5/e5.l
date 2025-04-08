/* e5.l */
/* recognize tokens for the calculator */ 

%option noyywrap nodefault yylineno
%{
#include "e5.tab.h"

void yyerror(char *s, ...);
%}

%%
[ \t]
[0-9]+  { return INT; }
\+ 	    { return PLUS; }
\- 	    { return MINUS; }
\* 	    { return MUL; }
\/   	{ return DIV; }
\( 	    { return LPAREN; }
\) 	    { return RPAREN; }
\n      { return EOL; }
.   	{ return ERROR; }

%%
