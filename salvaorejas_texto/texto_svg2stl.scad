// Script para añadir texto a partir de un SVG a una pieza STL
// @Andreas_IBZ (Telegram), 18.05.2020
// Revisión 1
// ========================================================

// Sección Setup - para adaptar a vuestras necesidades!
// el SVG tiene que estar en la misma carpeta que éste Script. Si habéis cambiado el nombre del SVG ponedlo aqui:
archivo_SVG = "texto.svg";
// dimensiones texto
// si una de las dos queda en "0" se ajustará automáticamente al ratio de aspecto cómo en el SVG - si no, se distorsionará; para previsualizar los cambios, usad la tecla F5
width=90; // ancho texto
height=10; // fondo texto
thick_stamp=1; // grosor texto, mejor dejar en 1 (mm)
//
// ========================================================
// Sección Código - no tocar!
// nombre del STL salvaorejas sin texto
archivo_STL = "sin_texto.stl";
translate([0,0,1])
import(archivo_STL, center=true);
//
// rotate([0,0,90]) - si hace falta, podemos girar
// translate([0,0,0]) - si hace falta, podemos trasladar
// extrusion con altura "thick_stamp"
linear_extrude(height = thick_stamp, center=[true,true,false]) 
// redimensionamos con X = width, Y = height, Z no tocamos; al poner "auto" en "true" una medida en "0" se ajustará con el ratio de aspecto, en "false" no 
resize([width,height,thick_stamp], auto=true)
// importamos el SVG y lo centramos
import(archivo_SVG, center=true);
