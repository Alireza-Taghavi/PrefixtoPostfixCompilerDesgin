********************** in.l ***********************
%{
#include<stdio.h>
#include"y.tab.h"
#include<math.h>
%}
%%
[0-9] {yylval.dval=atoi(yytext);return NUM;}
[t];
n return 0;
. {return yytext[0];}
%%
void yyerror(char * str)
{
 printf("n Invalid Expression...");
}
int main()
{
 printf("n ENter Expression => ");
 yyparse();
 return(0);
}