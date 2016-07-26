#include "HUD.h"

const u8 vidaMax=5;
      u8 vida;
 	  u8 actualizado;

void iniciaHud(){
	vida=vidaMax;
	actualizado=0;
}
void quitaVida(){
	vida--;
	if(vida==0)
		menuGameOver();
	actualizado=0;
}
void aumentaVida(){
	vida++;
	actualizado=0;
}
void pintaVida(){
	u8 *memPtr;
	u8 cont=0;
	if(!actualizado){
		for(cont;cont<vidaMax;cont++){
			memPtr=cpct_getScreenPtr(video_memory_start,cont*3,191);
			if(cont<vida)
				cpct_drawSprite(CorazonLleno,memPtr,2,8);
			else
				cpct_drawSprite(CorazonVacio,memPtr,2,8);
		}
		actualizado=1;
	}
}

void desactualizar(){
	actualizado=0;
}