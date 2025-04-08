%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}`

%%
[ \n\t\r]+                                  /* Skip whitespace */
\/\/[^\n]*\n                                /* Skip comments */

\"[^"\n]*\"                                 { return STR; }
[0-9]+                                      { return NUM; }
\'.\'|\'\\.\'                               { return CHAR; }

"array"                                     { return ARR; }
"boolean"                                   { return BOOL; }
"char"                                      { return CHAR; }
"else"                                      { return ELSE; }
"false"                                     { return FALSE; }
"for"                                       { return FOR; }
"function"                                  { return FUNCTION; }
"if"                                        { return IF; }
"integer"                                   { return INT; }
"print"                                     { return PRINT; }
"return"                                    { return RETURN; }
"string"                                    { return STR; }
"true"                                      { return TRUE; }
"void"                                      { return VOID; }
"while"                                     { return WHILE; }
[a-zA-Z][a-zA-Z0-9\_]*                      { return ID; }
"<="                                        { return LEQ; }
">="                                        { return GEQ; }
"=="                                        { return EQUAL; }
"!="                                        { return NEQ; }
"&&"                                        { return AND; }
"||"                                        { return OR; }
\+                                          { return PLUS; }
\-                                          { return MINUS; }
\*                                          { return MUL; }
\/                                          { return DIV; }
\%                                          { return REST; }
\!                                          { return NOT; }
\<                                          { return LESS; }
\>                                          { return GREAT; }
\=                                          { return EQS; }
\:                                          { return COLON; }
\;                                          { return SCOLON; }
\,                                          { return COMMA; }
\(                                          { return LPAREN; }
\)                                          { return RPAREN; }
\[                                          { return LBRACK; }
\]                                          { return RBRACK; }
\{                                          { return LBRACE; }
\}                                          { return RBRACE; }
\\                                          { return BSLASH; }

. 				                            { return ERROR; }
%%