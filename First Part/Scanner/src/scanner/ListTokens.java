/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package scanner;

import java.io.FileReader;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Scanner;

/**
 *
 * @author K!ng
 * data/input.txt
 */
public class ListTokens {
    
    public static void main(String[] args){
        String filePath;
        
        if(args.length == 0){ //get the file from input
            System.out.print("Enter a file path to process: ");
            Scanner scan = new Scanner(System.in);
            filePath = scan.next();
            System.out.println(filePath);
            System.out.println();
        }
        else{
            filePath = args[0];
        }
        
        try{
            Lexer lex = new Lexer(new FileReader(filePath));
            
            Token token;
            while((token = lex.nextToken()) != null)
                System.out.println(token);
        }
        catch (IOException ex){
            Logger.getLogger(ListTokens.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
}
