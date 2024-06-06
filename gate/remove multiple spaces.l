%{
#include<stdio.h>
%}

%%
[\t" "]+ fprintf(yyout," ");
.|\n fprintf(yyout,"%s",yytext);
%%

int yywrap()
{
return 1;
}

int main(void)
{
yyin=fopen("abc.txt","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}