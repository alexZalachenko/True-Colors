#ifndef _ENEMIGO_H_
#define _ENEMIGO_H_

#include <cpctelera.h>
#include <stdlib.h>
#include <stdio.h>
#include "Variables.h"
#include "sprites/SpriteEnemigoCAC.h"
#include "Mapa.h"
#include "Personaje.h"
#include "HUD.h"
/*
typedef struct {
   int x; //TIENE QUE SER INT PQ CON EL U8 SE SALE DE RANGO SI TE VAS AL EXTREMO DERECHO DE LA PANTALLA
   u8 y; 
   u8 orientacion;//0=MIRA IZQUIERDA 1=MIRA DERECHA 2=MIRA ARRIBA
   u8 estado;//1=ATACANDO/ALERTA 0=PATRULLA
   u8 vida;
   u8 *memPtr;//POSICION DE LA MEMORIA DE VIDEO DONDE ESTA EL ENEMIGO
}enemigo;
*/

typedef struct {
   int x; //TIENE QUE SER INT PQ CON EL U8 SE SALE DE RANGO SI TE VAS AL EXTREMO DERECHO DE LA PANTALLA
    u8 y; 
    u8 orientacion;//Orientacion
    u8 estado;
    u8 vida;
    u8 *memPtr;
  	u8 direccion;
  	u8 atacando;
   	u8 cansancioAtaque;
   	u8 ataquePreparado;
   	u8 danyino;

}enemigo;


void initEnemigo(enemigo *e, u8 x, u8 y);
void Actualizar(enemigo *e, personaje *p);
void Patrulla(enemigo *e, personaje *p);
void MoveE(enemigo *e, personaje *p);
u8 ColisionE(enemigo *e, personaje *p);
u8 Vision(enemigo *e, personaje*p);
void Combate(enemigo *e, personaje *p);
void pintaEnemigo(enemigo *e);
void pintaEnemigos(enemigo* arr[]);
void quitarVida(enemigo *e);
void generaEnemigos(u8 sala, enemigo* arr[]);
void recibirDanyo(enemigo *arr[], personaje *p);
void atacaE(enemigo *e, personaje *p);
void noAtacaE(enemigo *e);
void ActualizarArr(enemigo *arr[], personaje *p);
void setDanyino(enemigo *e);
#endif