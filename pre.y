********************** pre.y ***********************
%{
#include<stdio.h>
int yylex(void);
%}
%union
{
 int dval;
}
%token <dval> NUMBER
%left '+' '-'
%left '*' '/'
%nonassoc UMINUS
%type <dval> exp
%%
state : exp {printf("n Prefix Expression...");}
 ;
exp : NUMBER
 | '+' exp exp {}
 | '-' exp exp {}
 | '*' exp exp {}
 | '/' exp exp {}
 ;
%%