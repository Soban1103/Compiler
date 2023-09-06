%{
int c=0,w=0,l=0,space=0;
%}
%%
(" ") {space++;}
[\n] {l++;}
[^ \t \n]+ {w++; c=c+yyleng;}
%%

main()
{
yylex();
printf("char=%d \nwords=%d \nspaces=%d \nlines=%d\n",c,w,space,l);
}
