#ifndef _MAPA_H_
#define _MAPA_H_

#include <cpctelera.h>
#include "sprites/tilesetMapa.h"
#include "Variables.h"

#define maxEnemigosSala 3
#define numSalas 4
typedef struct {
   int x; 
   u8 y; 
   u8 salaDestino;
}puertaSala;

typedef struct {
   u8 posiciones[12][20]; 
   puertaSala puertas[4]; 
}mapa;

extern const mapa  mapas[numSalas];
void pintarEscenario(u8 sala);
#endif