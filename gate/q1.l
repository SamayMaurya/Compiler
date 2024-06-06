%{
#include<stdio.h>
#include<stdlib.h>
int lcount=0,tcount=0,space=0,charCount=0,word=0;
%}
%%
[\n] {lcount++,word++;}
[\t] {tcount++; word++;}
[^\t" "\n] {charCount++;}
[" "] {space++; word++;}
%%
int main()
{
printf("Enter : ");
yylex();
printf("Lines = %d Space=%d Tab=%d Char=%d Word=%d",lcount,space,tcount,charCount,word);
return 0;
}

int yywrap()
{
return 1;
}