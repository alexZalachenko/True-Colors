#ifndef _HUD_H_
#define _HUD_H_

#include <cpctelera.h>
#include "sprites/CorazonesVida.h"
#include "Variables.h"
#include "Menus.h"

extern const u8 vidaMax;
extern       u8 vida;
extern		 u8 actualizado;

void pintaVida();
void iniciaHud();
void quitaVida();
void aumentaVida();
void desactualizar();
#endif