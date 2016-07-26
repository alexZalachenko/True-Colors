#include "Personaje.h"

const u8 desplazamientoVertical=2;//SI SE USAN NUMEROS != DE MULTIPLOS DE 2 PROBABLEMENTE HAYAN FALLOS
const u8 desplazamientoHorizontal=2;//SI SE USAN NUMEROS != DE MULTIPLOS DE 2 PROBABLEMENTE HAYAN FALLOS

void muevePersonaje(personaje *p, estadoTeclado *t) {
      u8 s=7;
      u8 col;
      cpct_scanKeyboard_f();
      t->W=cpct_isKeyPressed(Key_W);
      t->A=cpct_isKeyPressed(Key_A);
      t->S=cpct_isKeyPressed(Key_S);
      t->D=cpct_isKeyPressed(Key_D);
      t->K=cpct_isKeyPressed(Key_K);

      //COMPRUEBO SI EL PERSONAJE ESTA ATACANDO
      if(t->K)
        ataca(p);
      else
        noAtaca(p);

      //SI NO SE HA PRESIONADO NINGUNA TECLA NO HAGO NADA
      if(t->W==0 && t->A==0 && t->S==0 && t->D==0)
        return;
      //PARA GESTIONAR COLISIONES
      col=comprobarColisionDiagonal(p, t);
      if(col==1)//HAY COLISION
        return;
      else if(col==7){//EL MOVIMIENTO NO ES EN DIAGONAL 
          if(comprobarColision(p,t)!=0)//COMPRUEBO LAS COLISIONES EN VERTICAL/HORIZONTAL
            return;
      }
      //NO HAY COLISION, MODIFICO LA POSICION
      if(t->W)
      {
         if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
         else if(t->D) { p->x += desplazamientoHorizontal; s=0; }
         else          {                                   s=3; }
                         p->y -= desplazamientoVertical;
      }
      else if(t->A)
      {
         if     (t->W) {  p->y -= desplazamientoVertical; }
         else if(t->S) {  p->y += desplazamientoVertical; }
                          p->x -= desplazamientoHorizontal;
                          s=1;
      }
      else if (t->S)
      {
         if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
         else if(t->D) { p->x += desplazamientoHorizontal; s=0; }
         else          {                                   s=2; }
                         p->y += desplazamientoVertical;
      }
      else if (t->D)
      {
         if     (t->W) { p->y -= desplazamientoVertical; }
         else if(t->S) { p->y += desplazamientoVertical; }
                         p->x += desplazamientoHorizontal;  
                         s=0;
      }
      //PARA HACER EL EFECTO DE CAMINAR
      if(s!=7 && !(s==p->tipoSprite || s+4==p->tipoSprite || s+8==p->tipoSprite)){
        p->tipoSprite=s;
        p->cambiarPaso=0;
      }
}
void pintaPersonaje(personaje *p, estadoTeclado *t){
  u8 aux;
  //BORRO AL PERSONAJE
  cpct_drawSolidBox(p->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
  p->memPtr=cpct_getScreenPtr(video_memory_start,p->x/4,p->y);
  //PINTO AL PERSONAJE EN LA NUEVA POSICION
  if(t->A==t->W && t->W==t->S && t->S==t->D){//PINTO EL SPRITE DE TIPO PARADO
    while(p->tipoSprite>3)
      p->tipoSprite-=4;
  }
  else{//PINTO EL SPRITE DE CORRER
    if(p->cambiarPaso==10){
      p->cambiarPaso=0;
      p->tipoSprite=(p->tipoSprite+4)%12;
      if(p->tipoSprite<4)
        p->tipoSprite+=4;
    }
    else
      p->cambiarPaso++;
  }
  //PINTO EL SPRITE DE MOVIMIENTO O EL DE ATAQUE
  if(p->atacando){
    aux=p->tipoSprite;
    while(aux>3)
      aux-=4;
    aux+=12;
    cpct_drawSprite(personaje_tileset[aux],p->memPtr,4,16);
  }
  else
    cpct_drawSprite(personaje_tileset[p->tipoSprite],p->memPtr,4,16);
}
u8 comprobarColision(personaje *p, estadoTeclado *t){
  int posx=p->x; 
  u8  posy=p->y;
  u8 casX=posy/16, casY=posx/16;

  if     (t->W){
      if(posy%16==0){
        if(posx%16==0){
          if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
            //BUSCO QUE PUERTA ES LA QUE HE ABIERTO Y HAGO CAMBIO DE SALA
            u8 i=0;
            for (i = 0; i < 4; ++i)
            {
              if (casX-1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
                cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
                return 2;
              }
            }
          }
          return mapas[p->salaActual].posiciones[casX-1][casY];
        }
        else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
          return 1;
      }   
      return 0;
  }
  else if(t->A){
      if(posx%16==0){
        if(posy%16==0){
          if(mapas[p->salaActual].posiciones[casX][casY-1]==2){
            //BUSCO QUE PUERTA ES LA QUE HE ABIERTO Y HAGO CAMBIO DE SALA
            u8 i=0;
            for (i = 0; i < 4; ++i)
            {
              if (casX==mapas[p->salaActual].puertas[i].x && casY-1==mapas[p->salaActual].puertas[i].y){
                cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
                return 2;
              }
            }
          }
          return mapas[p->salaActual].posiciones[casX][casY-1];
        }
        else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
          return 1;
      }   
      return 0;
  }
  else if(t->S){
      if(posy%16==0){
        if(posx%16==0){
          if(mapas[p->salaActual].posiciones[casX+1][casY]==2){
            //BUSCO QUE PUERTA ES LA QUE HE ABIERTO Y HAGO CAMBIO DE SALA
            u8 i=0;
            for (i = 0; i < 4; ++i)
            {
              if (casX+1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
                cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
                return 2;
              }
            }
          }
          return mapas[p->salaActual].posiciones[casX+1][casY];
        }
        else if(mapas[p->salaActual].posiciones[casX+1][casY]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
          return 1;
      }   
      return 0;
  }
  else if(t->D){  
      if(posx%16==0){
        if(posy%16==0){
          if(mapas[p->salaActual].posiciones[casX][casY+1]==2){
            //BUSCO QUE PUERTA ES LA QUE HE ABIERTO Y HAGO CAMBIO DE SALA
            u8 i=0;
            for (i = 0; i < 4; ++i)
            {
              if (casX==mapas[p->salaActual].puertas[i].x && casY+1==mapas[p->salaActual].puertas[i].y){
                cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
                return 2;
              }
            }
          }
          return mapas[p->salaActual].posiciones[casX][casY+1];
        }
        else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
          return 1;
      }   
      return 0;
  }
  return 7;  
}
u8 comprobarColisionDiagonal(personaje *p, estadoTeclado *t){
  u8 direccion=7;//DEVUELVE 7 SI EL MOVIMIENTO NO ES EN DIAGONAL, 1 SI HAY COLISION O 0 SI HAY VIA LIBRE PARA MOVERTE
  u8 casX=p->y/16, casY=p->x/16;
  if(p->x%16!=0 && p->y%16!=0)
    return 0;
  if     (t->W && t->A)
            direccion=1;
  else if(t->W && t->D)
            direccion=2;
  else if(t->S && t->D)
            direccion=3;
  else if(t->S && t->A)
            direccion=4;   
  else//NO HAY MOVIMIENTO EN DIAGONAL
    return 7;  
  //EL SPRITE ESTA DESPLAZADO EN VERTICAL 
  if(p->x%16==0 && p->y%16!=0){
    if(direccion==1 || direccion==4){
      if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
         mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
            return 1;
    }
    else{//DIRECCION 3 O 2
      if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
         mapas[p->salaActual].posiciones[casX][casY+1]!=0)
            return 1;
    }
    return 0;
  }
  //EL SPRITE ESTA DESPLAZADO EN HORIZONTAL O CENTRADO EN XY
  switch(direccion){
         case 1:
           if(p->x%16==0 && p->y%16==0){//CENTRADO
             if(mapas[p->salaActual].posiciones[casX-1][casY-1]!=0 ||
                mapas[p->salaActual].posiciones[casX][casY-1]!=0)
               return 1;
           }
           else{//DESPLAZADO EN X
             if(mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
               return 1;
           }
           if(mapas[p->salaActual].posiciones[casX-1][casY]!=0)//CASILLAS COMUNES
             return 1;
           return 0;
         break;

        case 2:
           if(p->x%16==0 && p->y%16==0){//CENTRADO
             if(mapas[p->salaActual].posiciones[casX][casY+1]!=0)
                   return 1;
           }
           if(mapas[p->salaActual].posiciones[casX-1][casY+1]!=0 || 
              mapas[p->salaActual].posiciones[casX-1][casY]!=0    )//CASILLAS COMUNES
             return 1;
           return 0;
         break;

        case 3:
           if(p->x%16==0 && p->y%16==0){//CENTRADO
             if(mapas[p->salaActual].posiciones[casX][casY+1]!=0)
                   return 1;
           }
           if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
              mapas[p->salaActual].posiciones[casX+1][casY]!=0    )//CASILLAS COMUNES
             return 1;
           return 0;
         break;

        case 4:
           if(p->x%16==0 && p->y%16==0){//CENTRADO
             if(mapas[p->salaActual].posiciones[casX+1][casY-1]!=0 ||
                mapas[p->salaActual].posiciones[casX][casY-1]!=0)
               return 1;
           }
           else{//DESPLAZADO EN X
             if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
               return 1;
           }
           if(mapas[p->salaActual].posiciones[casX+1][casY]!=0)//CASILLAS COMUNES
             return 1;
           return 0;
         break;
     }
  return 0;
}
void cambiarSala(u8 s, personaje *p, int x, u8 y){
  p->salaActual=s;
  //PONER AL PERSONAJE EN LA POSICION DE LA PUERTA
  if(x==16)
    p->x=288;
  else if(x==288)
    p->x=16;
  else if(y==16)
    p->y=160;
  else
    p->y=16;

  p->generaEnemigos=1;
  pintarEscenario(p->salaActual);
}
void ataca(personaje *p){
  if(p->ataquePreparado){
    p->atacando=1;
    p->cansancioAtaque++;
    if(p->cansancioAtaque==7)
      p->ataquePreparado=0;
  }
  else
    noAtaca(p);
}
void noAtaca(personaje *p){
  p->atacando=0;
  p->cansancioAtaque--;
  if(p->cansancioAtaque==0)
    p->ataquePreparado=1;
}
void danyo(personaje *p){
  p->vida-=1;
 quitaVida();
}

