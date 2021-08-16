package scannerfinal;

import java_cup.runtime.Symbol;
%%

%public
%class Lexer


DIGIT=[0-9]
LETTER=[a-zA-Z]
IDENTIFIER=("_"|{LETTER})("_"|{LETTER}|{DIGIT})*
%cup
%%
"+" { return new Symbol(sym.PLUS); }
"-" { return new Symbol(sym.MINUS); }
"*" { return new Symbol(sym.MULT); }
"/" { return new Symbol(sym.DIV); }
";" { return new Symbol(sym.SEMI); }
"{" { return new Symbol(sym.LBRACE);}
"}" { return new Symbol(sym.RBRACE);}
"while" {return new Symbol(sym.WHILE);}
"for" {return new Symbol(sym.FOR);}
"if" {return new Symbol(sym.IF);}
"else" {return new Symbol(sym.ELSE);}
"where" {return new Symbol(sym.WHERE);}
"begin" {return new Symbol(sym.BEGIN);}
"end" {return new Symbol(sym.END);}
"until" {return new Symbol(sym.UNTIL);}
"print" {return new Symbol(sym.PRINT);}
"=" {return new Symbol(sym.ASS_OP);}
">" { return new Symbol(sym.GREATER_THAN);}
"<" { return new Symbol(sym.LESS_THAN);}
"==" { return new Symbol(sym.EQUAL_TO);}
"(" { return new Symbol(sym.LPAREN); }
")" { return new Symbol(sym.RPAREN); }
[0-9]+ { return new Symbol(sym.NUMBER, new Integer(yytext())); }
{IDENTIFIER} { return new Symbol(sym.ID); }
[ \t\r\n\f] { /* ignore white space. */ }
. { System.err.println("Illegal character: "+yytext()); }
