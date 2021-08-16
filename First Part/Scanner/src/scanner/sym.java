/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package scanner;

/**
 *
 * @author K!ng
 */
public interface sym {
    
    public static final int EOF = 0; //end of file
    public static final int error = 1; //error
    public static final int IF = 2; //if
    public static final int ELSE = 3; //else
    public static final int WHERE = 4; //where
    public static final int ID = 5; //identifier
    public static final int NUM = 6; //number
    public static final int LT = 7; //<
    public static final int LE = 8; //<=
    public static final int GT = 9; //>
    public static final int GE = 10; //>=
    public static final int EQ = 11; //==
    public static final int NE = 12; //!=
    public static final int HELLO = 13; //!=
    public static final int NICE = 14; //!=
    public static final int PLUS = 15; //!=
    public static final int MINUS = 16; //!=
    public static final int DIV = 17; //!=
    public static final int MULT = 18; //!=
    public static final int FOR = 19; //!=
    
    
    public static final String[] terminalNames = new String[]{
        "EOF",
        "error",
        "IF",
        "ELSE",
        "WHERE",
        "ID",
        "NUM",
        "LT",
        "LE",
        "GT",
        "GE",
        "EQ",
        "NE",
        "HELLO",
        "NICE",
        "PLUS",
        "MINUS",
        "DIV",
        "MULT",
        "FOR"
    };
    
    
    
}
