//-----------------------------LICENSE NOTICE------------------------------------
//  This file is part of CPCtelera: An Amstrad CPC Game Engine
//  Copyright (C) 2015 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//------------------------------------------------------------------------------

#include <cpctelera.h>
#include <stdlib.h>
#include "Personaje.h"
#include "HUD.h"
#include "Enemigo.h"
#include "Musica.h"

//FUNCIONES
void init(personaje *p, enemigo* arr[]);
void pintarElementos(personaje *p,estadoTeclado *t, enemigo* arr[]);

int main(void) {

   personaje *protagonista=(personaje *)malloc(sizeof(personaje));
   estadoTeclado *teclado=(estadoTeclado *)malloc(sizeof(estadoTeclado));
   enemigo* enemigosSala[maxEnemigosSala];
  cpct_disableFirmware();
   cpct_setVideoMode(1);
   cpct_fw2hw(paleta,4);
   cpct_setPalette(paleta, 4);
   cpct_setRandomSeedUniform_u8(7);
   menuInicio();
   //cpct_clearScreen(cpct_px2byteM1(2,2,2,2));
   init(protagonista, enemigosSala);//INICIA LOS DATOS DEL JUEGO
   //BUCLE PRINCIPAL DEL JUEGO
   while (1){
      cpct_waitVSYNC();
      muevePersonaje(protagonista,teclado);
      recibirDanyo(enemigosSala, protagonista);
      ActualizarArr(enemigosSala, protagonista);
      if(protagonista->generaEnemigos){
         generaEnemigos(protagonista->salaActual, enemigosSala);
         protagonista->generaEnemigos=0;
         desactualizar();
      }
         
      cpct_waitVSYNC();
      pintarElementos(protagonista,teclado,enemigosSala);
   }
}

void init(personaje *p, enemigo* arr[]){
   //Mode 0: 160×200 pixels with 16 colors (4 bpp)
   //Mode 1: 320×200 pixels with 4 colors (2 bpp)
   
   //INICIO LOS DATOS DEL PERSONAJE
   p->x=16;
   p->y=16;
   p->vida=5;
   p->tipoSprite=2;
   p->cambiarPaso=0;
   p->salaActual=0;
   p->atacando=0;
   p->cansancioAtaque=0;
   p->ataquePreparado=1;
   p->generaEnemigos=0;
   p->memPtr=cpct_getScreenPtr(video_memory_start,p->x/4,p->y);
   iniciaHud();
   pintarEscenario(p->salaActual);
   generaEnemigos(p->salaActual, arr);

}
void pintarElementos(personaje *p,estadoTeclado *t, enemigo* arr[]){
   pintaVida();
   pintaPersonaje(p,t);
   pintaEnemigos(arr);
}

