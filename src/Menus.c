#include "Menus.h"

void menuInicio(){
	pintaInicio();
	while(1){
		cpct_scanKeyboard();
		if(cpct_isKeyPressed(Key_1)){
			break;
		}
		else if(cpct_isKeyPressed(Key_2)){
			pintaControles();
		}
		else if(cpct_isKeyPressed(Key_3)){
			pintaCreditos();
		}
		else if(cpct_isKeyPressed(Key_5)){
			pintaInicio();
		}
	}
}
void menuGameOver(){
	u8 *memPtr;
	memPtr=cpct_getScreenPtr(video_memory_start,13,33);
	cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1),52,132);
	memPtr=cpct_getScreenPtr(video_memory_start,26,66);
	cpct_drawStringM1("Has muerto :'(", memPtr, 3, 1);
	memPtr=cpct_getScreenPtr(video_memory_start,26,74);
	cpct_drawStringM1("Pulsa K para jugar", memPtr, 3, 1);
	while(1){
		cpct_scanKeyboard();
		if(cpct_isKeyPressed(Key_K)){
			menuInicio();
			break;
		}
	}
}
void pintaInicio(){
	u8 *memPtr, a;
	char const *s0=" ___ __      _    _  _     _      __  _ ";
	char const *s1="  | |  || | |    |  | ||  | || | |  ||  ";
	char const *s2="  | |__|| | |-   |  | ||  | || | |__||_ ";
	char const *s3="  | | | |_| |_   |_ |_||_ |_||_| | |  _|";
	char const * titulo[]={s0,s1,s2,s3};   //68
	cpct_clearScreen(cpct_px2byteM1(1,1,1,1));
	//PINTO EL MENU
	for(a=0;a<4;a++){
		memPtr=cpct_getScreenPtr(video_memory_start,0,8*a);
		cpct_drawStringM1(titulo[a], memPtr, 0, 1);
	}

	memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
	cpct_drawStringM1("1-JUGAR", memPtr, 3, 1);
	memPtr=cpct_getScreenPtr(video_memory_start,4,8*13);
	cpct_drawStringM1("2-CONTROLES", memPtr, 3, 1);
	memPtr=cpct_getScreenPtr(video_memory_start,4,8*15);
	cpct_drawStringM1("3-CREDITOS", memPtr, 3, 1);
}
void pintaCreditos(){
	u8 *memPtr;
	memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
	cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1), 22, 7*7);
	cpct_drawStringM1("Creado por Alex Verdu y Manuel Gomez", memPtr, 3, 1);
	memPtr=cpct_getScreenPtr(video_memory_start,4,120);
	cpct_drawStringM1("Pulsa 5 para volver al menu principal", memPtr, 3, 1);
}
void pintaControles(){
	u8 *memPtr;
	memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
	cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1), 22, 7*7);
	cpct_drawStringM1("Muevete con W,A,S,D", memPtr, 3, 1);
	memPtr=cpct_getScreenPtr(video_memory_start,4,8*13);
	cpct_drawStringM1("Golpea con K", memPtr, 3, 1);
	memPtr=cpct_getScreenPtr(video_memory_start,4,120);
	cpct_drawStringM1("Pulsa 5 para volver al menu principal", memPtr, 3, 1);
}
