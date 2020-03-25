package AnalizadorL;
import java_cup.runtime.*;
%%
%{
/*-*
* funciones y variables
*/
private void imprimir(String descripcion, String lexema) {
AnalizadorLexicoPseInt.Anadir(descripcion, lexema);
System.out.println(lexema + " - " + descripcion);
}

private void mandar_error(String texto, String lexema,String linea, String colum) {
AnalizadorLexicoPseInt.MostrarError(texto, lexema,linea,colum);

}


%}
/*-*
* Información sobre la clase generada
*/
%public
%class AnalizadorLexico
%type void
/*-*
* Ajustes regulares
*/
CADENA = \"[^\"]*\"
FUNCION=[F|f][U|u][N|n][C|c][I|i][O|o][N|n]
FIN_FUNCION=[F|f][I|i][N|n][F|f][U|u][N|n][C|c][I|i][O|o][N|n]
PROCESO=[P|p][R|r][O|o][C|c][E|e][S|s][O|o]
FIN_PROCESO=[F|f][I|i][N|n][P|p][R|r][O|o][C|c][E|e][S|s][O|o]
MOSTRAR = [E|e][S|s][C|c][R|r][I|i][B|b][I|i][R|r]
FUNCION_EXP=[E|e][X|x][P|p]
FUN_RC= [R|r][C|c]
FUN_ABS=[A|a][B|b][S|s]
FUN_LN=[L|l][N|n]
FUN_SEN=[S|s][E|e][N|n]
FUN_COS=[C|c][O|o][S|s]
FUN_TAN=[T|t][A|a][N|n]
FUN_ACOS=[A|a][C|c][O|o][S|s]
FUN_ASEN=[A|a][S|s][E|e][N|n]
FUN_ATAN=[A|a][T|t][A|a][N|n]
FUN_TRUNC=[T|t][R|r][U|u][N|n][C|c]
FUN_REDON=[R|r][E|e][D|d][O|o][N|n]
FUN_AZAR=[A|a][Z|z][A|a][R|r]
INGRESAR = [L|l][E|e]{2}[R|r]
INICIALIZAR = [D|d][E|e][F|f][I|i][N|n][I|i][R|r]
COMANDO_COMO = [C|c][O|o][M|m][O|o]
SI=[S|s][I|i]
ENTONCES=[E|e][N|n][T|t][O|o][N|n][C|c][E|e][S|s]
SINO=[S|s][I|i][N|n][O|o]
FINSI=[F|f][I|i][N|n][S|s][I|i]
SEGUN=[S|s][E|e][G|g][U|u][N|n]
HACER=[H|h][A|a][C|c][E|e][R|r]
OTRO_MODO=[D|d][E|e]" "[O|o][T|t][R|r][O|o]" "[M|m][O|o][D|d][O|o]
FIN_SEGUN=[F|f][I|i][N|n][S|s][E|e][G|g][U|u][N|n]
MIENTRAS=[M|m][I|i][E|e][T|t][R|r][A|a][S|s]
FIN_MIENTRAS=[F|f][I|i][N|n][M|m][I|i][E|e][N|n][T|t][R|r][A|a][S|s]
PARA=[P|p][A|a][R|r][A|a]
PASO=[C|c][O|o][N|n]" "[P|p][A|a][S|s][O|o]
FIN_PARA=[F|f][I|i][N|n][P|p][A|a][R|r][A|a]
DIMENSION=[D|d][I|i][M|m][E|e][N|n][S|s][I|i][O|o][N|n]
BOOLEANO = ["V"|"F"]
DIM_INI="["
DIM_FIN="]"
COMENTARIO="//"
ASIGNACION= "<-"
PARENTESIS= "("|")"
FIN= ";"
OTRO= ","
BLOQUE=":"
CARACTER = "'"[^']+"'"
BLANCO = [\n| |\t]
ID = [a-z|A-Z][a-z|A-Z|0-9|"_"]{0,9}
ENTERO = 0|([1-9][0-9]*)|("-"[1-9][0-9]*)
DECIMAL = ("-"[1-9][0-9]*)|([1-9][0-9]*)|0"."[0-9][0-9]*
OPREL =(">"|"<"|"="|"<="|">=")
OPLOG = ("&"|"Y"|"|"|"O"|"~"|([N|n][O|o]))
OPALG = ("+"|"-"|"*"|"/"|"^"|"%"|"MOD")
%%
{FUNCION} { imprimir("Funcion",yytext());}
{FIN_FUNCION} { imprimir("FinFuncion",yytext());}
{PROCESO} { imprimir("InicioProceso",yytext());}
{FIN_PROCESO} { imprimir("FinProceso",yytext());}
{MOSTRAR} {imprimir("Escribir",yytext());}
{FUNCION_EXP} {imprimir("Funcion exponencial",yytext());}
{FUN_RC} {imprimir("Funcion Rc",yytext());}
{FUN_ABS} {imprimir("Funcion Absoluto",yytext());}
{FUN_LN} {imprimir("Funcion Logaritmo",yytext());}
{FUN_SEN} {imprimir("Funcion Seno",yytext());}
{FUN_COS} {imprimir("Funcion Coseno",yytext());}
{FUN_TAN} {imprimir("Funcion tangente",yytext());}
{FUN_ACOS} {imprimir("Funcion Coseno inverso",yytext());}
{FUN_ASEN} {imprimir("Funcion Seno inverso",yytext());}
{FUN_ATAN} {imprimir("Funcion Tangente inversa",yytext());}
{FUN_TRUNC} {imprimir("Funcion Trunc",yytext());}
{FUN_REDON} {imprimir("Funcion Redondear",yytext());}
{FUN_AZAR} {imprimir("Funcion Azar",yytext());}
{INGRESAR} {imprimir("Funcion Leer",yytext());}
{INICIALIZAR} {imprimir("Definir tipo de datos",yytext());}
{COMANDO_COMO} {imprimir("Comando Como",yytext());}
{SI} {imprimir("Control SI",yytext());}
{ENTONCES} {imprimir("Control Entonces",yytext());}
{SINO} {imprimir("Control Sino",yytext());}
{FINSI} {imprimir("Fin Control SI",yytext());}
{SEGUN} {imprimir("Control Segun",yytext());}
{HACER} {imprimir("Control hacer",yytext());}
{OTRO_MODO} {imprimir("Control default",yytext());}
{FIN_SEGUN} {imprimir("Fin Control Segun",yytext());}
{MIENTRAS} {imprimir("Condicional Mientras",yytext());}
{FIN_MIENTRAS} {imprimir("Fin Mientras",yytext());}
{PARA} {imprimir("Loop PARA",yytext());}
{PASO} {imprimir("Paso de loop",yytext());}
{FIN_PARA} {imprimir("Fin Loop",yytext());}
{DIMENSION} {imprimir("Arreglo",yytext());}
{DIM_INI} {imprimir("Inicio dimension",yytext());}
{DIM_FIN} {imprimir("Fin Dimension",yytext());}
{COMENTARIO} {imprimir("Comentario",yytext());}
{BOOLEANO} {imprimir("Booleano",yytext());}
{ASIGNACION} {imprimir("Operador asignacion",yytext());}
{PARENTESIS} {imprimir("Parentesis",yytext());}
{FIN} {imprimir("Fin de instruccion",yytext());}
{OTRO} {imprimir("Coma",yytext());}
{BLOQUE} {imprimir("Descripcion bloque",yytext());}
{BLANCO} {imprimir("Blanco",yytext());}
{ID} {imprimir("Identificador",yytext());}
{ENTERO} {imprimir("Entero",yytext());}
{DECIMAL} {imprimir("Decimal",yytext());}
{CARACTER} {imprimir("Caracter",yytext());}
{CADENA} {imprimir("Cadena",yytext());}
{OPREL} {imprimir("Operador de relacion",yytext());}
{OPLOG} {imprimir("Operador Logico",yytext());}
{OPALG} {imprimir("Operador algebraico",yytext());}
. { mandar_error("Caracter invalido",yytext(),""+yyline,""+yycolumn);}

