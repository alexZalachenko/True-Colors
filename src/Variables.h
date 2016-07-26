#ifndef _VARIABLES_H_
#define _VARIABLES_H_

#include <cpctelera.h>

typedef struct {
   u8 W; 
   u8 A; 
   u8 S;
   u8 D;
   u8 K;
}estadoTeclado;

extern const u8 paleta[];
extern u8* const video_memory_start;

#endif