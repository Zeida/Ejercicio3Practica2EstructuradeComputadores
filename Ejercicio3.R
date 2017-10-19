.global _start
_start:

movia r1, 0x10000020 			//Guarda en r1 direccion hex3-hex0 display de 7 segmentos
movia r2, 0x3F					// cargar valor inicial 7-segmentos 

INI:
stwio r2, 0(r1)					// Almacena contenido r2 en la direccion r1.
movia r3, 500000				//Contador temporal 
roli r2, r2, 1					// siguiente cuadro del siete-segmentos // 

Delay:
subi r3, r3, 1 					//Op. contador retardo tmp.
bne r3, r0, Delay 				//Si r3=/r0 vuelve a eje. delay
br INI							//Salta a inicio
.end	
