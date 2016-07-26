#ifndef _PERSONAJE_H_
#define _PERSONAJE_H_

#include <cpctelera.h>
#include <stdio.h>
#include "sprites/SpritePersonajeYelmo.h"
#include "Mapa.h"
#include "HUD.h"


typedef struct {
   int x; //TIENE QUE SER INT PQ CON EL U8 SE SALE DE RANGO SI TE VAS AL EXTREMO DERECHO DE LA PANTALLA
   u8 y; 
   u8 vida;
   u8 tipoSprite;
   u8 cambiarPaso;
   u8 salaActual;
   u8 atacando;
   u8 cansancioAtaque;
   u8 ataquePreparado;
   u8 generaEnemigos;
   u8 *memPtr;
}personaje;

extern const u8 desplazamientoVertical;//SI SE USAN NUMEROS != DE MULTIPLOS DE 2 PROBABLEMENTE HAYAN FALLOS
extern const u8 desplazamientoHorizontal;//SI SE USAN NUMEROS != DE MULTIPLOS DE 2 PROBABLEMENTE HAYAN FALLOS
void muevePersonaje(personaje *p, estadoTeclado *t);
void pintaPersonaje(personaje *p, estadoTeclado *t);
u8 comprobarColision(personaje *p, estadoTeclado *t);
u8 comprobarColisionDiagonal(personaje *p, estadoTeclado *t);
void cambiarSala(u8 s, personaje *p, int x, u8 y);
void ataca(personaje *p);
void noAtaca(personaje *p);
void danyo(personaje *p);
#endif