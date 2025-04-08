/* mywc.l */ 

%option noyywrap nodefault yylineno

%{
%}

%%



%%

int main(int argc, char **argv) {
	yylex();
	printf("%8d%8d%8d\n", lines, words, chars); 
}


