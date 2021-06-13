package analyzer;
import static rules.Tokens.*;
%%
%class rules
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
s=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
int |
if |
else |
while {lexeme=yytext(); return reservadas;}
{s} {/*Ignore*/}
"//".* {/*Ignore*/}
"=" {return igual;}
"+" {return suma;}
"-" {return resta;}
"*" {return multiplicacion;}
"/" {return division;}
{L}({L}|{D})* {lexeme=yytext(); return identificador;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return numero;}
 . {return ERROR;}


