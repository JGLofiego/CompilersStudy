
%option noyywrap nodefault yylineno

%{
    #include <string.h>
    int chars = 0;
    int words = 0;
    int lines = 0;
%}
%%
[^ \t\n\r\f\v]+ { words++; chars += strlen(yytext); }
\n { chars++; lines++; }
. { chars++; }
%%
int main(int argc, char **argv) {
    yylex();
    printf("%8d%8d%8d\n", lines, words, chars);
}
