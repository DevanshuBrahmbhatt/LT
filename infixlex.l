%{
	#include "infix.tab.h"
	#include <stdio.h>
%}
ALPHA [A-Z a-z] 
DIGIT [0-9] 
%option noyywrap

/* Rule Section */
%% 
{ALPHA}({ALPHA}|{DIGIT})* return ID; 
{DIGIT}+				 {yylval=atoi(yytext); return ID;} 
[\n \t]				 yyterminate(); 
.						 return yytext[0]; 
%% 
