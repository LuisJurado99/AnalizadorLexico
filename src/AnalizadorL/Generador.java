package AnalizadorL;

import java.io.File;

/**
 *
 * @author anmijurane
 */
public class Generador {
    public static void main(String[] args) {
        
        // TODO Auto-generated method stub
		String path="C:/Users/Andres Jurado/Documents/NetBeansProjects/AnalizadorLexicoOK/src/AnalizadorL/lenguaje.lex";                        
		String archivo = path + "lenguaje.lex";		
		File file = new File(archivo);
		jflex.Main.generate(file);
        
    }
    
}
