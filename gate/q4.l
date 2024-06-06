%{
    #include<stdio.h>
%}

%%
auto|double|int|break|else|long|switch|case|enum|register|typedef|char|extern|return|goto|union|continue|for|signed|void|do|if|static|while|default|sizeof|volatile|const|float|short {printf("Keyword\n");}
[{},()] {printf("Separator\n");}
[%+-/=] {printf("Operator\n");}
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("Identifiers\n");}
[0-9]+ {printf("Digits\n");}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter anything- ");
    yylex();
    return 0;
}