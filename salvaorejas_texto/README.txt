OpenSCAD
Script para añadir texto a partir de un SVG a una pieza STL
@Andreas_IBZ (Telegram), 29.04.2020

El Script "texto_svg2stl.scad" de OpenSCAD en esta carpeta sirve para facilitar/automatizar el proceso de añadir un texto a las salvaorejas. Hace falta OpenSCAD (https://www.openscad.org/) y un editor de gráficos vectoriales cómo Inkscape (https://inkscape.org/) o Adobe Illustrator. Os recomendo que os haceís una carpeta para cada versión.

1. Abrimos el archivo "texto.svg" en Inkscape: veaís el texto "SOIS GRANDES" cómo ejemplo ya convertido en un trayecto - por eso no se puede cambiar. Marcamos y borramos todo (supr) y con la tecla F8 podeís crear un texto con estilo que queraís, teniendo siempre en mente de que no debe de tener piezas sueltos! El tamaño da igual dado que de eso se ocupa luego OpenSCAD. 
2. Teneís que convertir el texto (objeto) a un trayecto para que OpenSCAD luego lo reconoce cómo gráfica vectorial - veáse el "screenshot_Inkscape_Objeto_a_Trayecto.jpg" (teclas Mayus + Ctrl + C)
3. Guardamos el archivo SVG
4. Abrimos el Script de OpenSCAD: texto_svg2stl.scad - veáse el "screenshot_OpenSCAD.jpg"
5. Si no habeís cambiado el nombre del archivo SVG inicial ("texto.svg") ya debe de aperecer el salvaorejas con vuestro texto - al contrario teneís que poner el nombre del punto 3 a la linea 7 del Script (archivo_SVG ="..."). Podeís jugar con los parámetros "width" y "height" para ajustar el texto a vuestro gusto. El grosor del salvaorejas original es de 1 mm, así el "thick" no tocamos
6. pulsamos la tecla F5 (previsión) - si todo se ve bien seguimos con el siguente punto. Al contrario volvemos a abrir el SVG del punto 3 y cambiamos lo que no sale bien. A veces los fuentes se convierten en trayectos cruzados y eso luego no le gusta al Slicer.
7. pulsamos la tecla F6 (renderizar STL - tarda un rato) - sequido de F7 (guardar STL final)
8. guardamos el STL - y listo para imprimir!
