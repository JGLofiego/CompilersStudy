%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}`

%%
[ \n\t\r]+                                                                                              /* Skip whitespace */
\/\/[^\n]*\n                                                                                            /* Skip comments */

\"[^"]*\"                                                                                               { return STR; }
[0-9]+                                                                                                  { return NUM; }
\'.\'|\'\\.\'                                                                                           { return CHAR; }

(array|boolean|char|else|false|for|function|if|integer|print|return|string|true|void|while)             { return KEY; }
[a-zA-Z][a-zA-Z0-9\_]*                                                                                  { return ID; }
("<="|">="|"=="|"!="|"&&"|"||")                                                                         { return SYMC; }
[\+\-\*\/\%\!\<\>\=\:\;\,\(\)\[\]\{\}\\]                                                                { return SYM; }

. 				                                                                                            { return ERROR; }
%%