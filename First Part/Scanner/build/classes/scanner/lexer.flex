
package scanner;
import java_cup.runtime.*;


%%

/*Options */
%class Lexer
%unicode
%line
%column
%function nextToken
%type Token

%{
        private Token token(int type){
            return  new Token(type);
        }
        
        private Token token(int type , Object value){
            return new Token(type, value);
        }
%}

 /* Regular Definitions */
LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace = {LineTerminator} | [ \t\f]
Letter = [A-Za-z]
Digit = [0-9]
Id = {Letter}({Letter}|{Digit})*
Num = {Digit}+

/* Comments */
Comment = {TraditionalComment} | {EndOfLineComment} | {DocumentationComment}

TraditionalComment = "/*" [^*] ~"*/" | "/*" "*"+ "/"
// Comment can be the last line of the file, without line terminator.
EndOfLineComment = "//" {InputCharacter}* {LineTerminator}?
DocumentationComment = "/**" {CommentContent} "*"+ "/"
CommentContent =  ( [^*] | \* + [^/*] )*

%%

/* Lexical rules */

<YYINITIAL> {
    
    /* keywords */
    "if"              { return token(sym.IF);}
    "else"            { return token(sym.ELSE);}
    "where"            { return token(sym.WHERE);}
    "for"               { return token(sym.FOR);}

    /* Identifiers */
    
    {Id}              { return token(sym.ID, yytext());}
    
    /* Literals */
    {Num}             {return token(sym.NUM, yytext());}

    /* Operators */
    "+"               { return token(sym.PLUS);}
    "-"               { return token(sym.MINUS);}
    "*"               { return token(sym.MULT);}
    "/"               { return token(sym.DIV);}
    "<"               { return token(sym.LT);}
    "<="              { return token(sym.LE);}
    ">"               { return token(sym.GT);}
    ">="              { return token(sym.GE);}
    "=="              { return token(sym.EQ);}
    "!="              { return token(sym.NE);}

    /* dummy words */
    "Hello" { return token(sym.HELLO);}
    "Nice"  { return token(sym.NICE);}
    
    /* Comments */
    {Comment}       { /* throw it away */ }

    /* Whitespace */
    {WhiteSpace}    { /* throw it away */ }

    . {System.out.printf("UNKNOWN SYMBOL(%s)\n",   yytext());}  

}

