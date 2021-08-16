/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package scanner;

import java_cup.runtime.Symbol;

/**
 *
 * @author K!ng
 */
public class Token extends Symbol {
    
    public Token(int id){
        super(id);
    }
    
    public Token(int id, Object o){
        super(id,o);
    }
    
    @Override
    public String toString(){
        if(this.value != null)
            return "Token{"
                + "Type=" + scanner.sym.terminalNames[this.sym]
                + ", Value=" + this.value + "}";
        else
            return "Token{"
                + "Type=" +scanner.sym.terminalNames[this.sym] + "}";
        }
    
    
    
    
}
