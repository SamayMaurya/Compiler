%{
#include<stdio.h>
int t_char=0, word =0, space =0, line=0;
%}

%%
[\n] {line++,word++;}
[" "] { space++, word++;}
[a-z A-Z 0-9] { t_char++; }
[\n\t] { word++; }
%%

void main()
{
yyin = fopen("abc.txt","r");
yylex();
 printf("Number of characters:%d\n", t_char);
 printf("Number of words: %d\n", word);
 printf("Number of white spaces: %d\n", space);
 printf("Number of lines: %d\n", line);
 }

int yywrap()
{
return 1;
}