%{
    #include<stdio.h>
%}

%%
-[0-9]+ printf("negative");
^[0-9]+ printf("integer");
^[0-9]*.[0-9]+ printf("float");
.* printf("neither integer not float");
%%

void main(){
    printf("Enter number to check- ");
    yylex();
}

int yywrap(){
    return 1;
}