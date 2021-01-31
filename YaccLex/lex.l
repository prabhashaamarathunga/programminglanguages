%{

#include<stdio.h>
#include "y.tab.h"

%}

%%
int[] return INTEGERARRAY;

main return MAIN;

"[]" return OPSBCLSB;

"["  return OPSB;

"]" return CLSB;

"()" return OPBCLB;

"{" return OPBRAC;

"}" return CLBRAC;

[0-9]* return NUM;

return return END;

print return PRINTING;

";" return SEMICOLON;
%%

int yywrap(void)
{

    return 1;

}