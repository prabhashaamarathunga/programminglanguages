%{
#include<stdio.h>

int yylex(void);

void yyerror(char *);

%}

%token INTEGERARRAY MAIN OPSBCLSB OPSB CLSB OPBRAC CLBRAC OPBCLB NUM VAR END PRINTING SEMICOLON

%%
PROG : MAINFUNC;

MAINFUNC : STATMAIN OPBRAC FUNC CLBRAC;

STATMAIN : INTEGER MAIN OPBCLB;

FUNC:INTEGERARRAY '=' OPBRAC NUM CLBRAC SEMICOLON

%%
void yyerror(char *s)
{

fprintf(stderr,"%s \n",s);

}
int main(void){

yyparse();
return 0;

}
