********************** in.y ***********************
%{
#include<stdio.h>
int yylex(void);
%}
%union
{
 float dval;
}
%token <dval> NUMBER
%left '+' '-'
%left '*' '/'
%nonassoc UMINUS
%type <dval> exp
%%
state : exp {printf("n Infix Expression...");}
 ;
exp : NUMBER
 | exp '+' exp {}
 | exp '-' exp {}
 | exp '*' exp {}
 | exp '/' exp {}
 ;
%%