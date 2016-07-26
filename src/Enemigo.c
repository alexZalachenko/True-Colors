#include "Enemigo.h"


void ActualizarArr(enemigo *arr[], personaje *p){
	u8 cont;
	for(cont=0;cont<maxEnemigosSala;cont++){
		Actualizar(arr[cont],p);
	}

}
void generaEnemigos(u8 sala, enemigo* arr[]){
  u8 cordx, cordy, cont;
  for(cont=0;cont<maxEnemigosSala;cont++){
      do{
        cordx=cpct_getRandomUniform_u8_f(0)%18+1;
        cordy=cpct_getRandomUniform_u8_f(0)%10+1;
      }while(mapas[sala].posiciones[cordy][cordx]!=0);
      initEnemigo(arr[cont], cordx, cordy);
      arr[cont]->danyino=0;
  }
}


void Actualizar(enemigo *e, personaje *p){
    if(e->estado==0){
      Patrulla(e, p);
    }
    else{
      Combate(e,p);// Seguramente haya que pasarle el personaje 
      }
    
  }

  void Patrulla(enemigo *e, personaje *p){
  if(Vision(e,p)==1){
    e->estado=1;

  }
  MoveE(e, p);
}
void MoveE(enemigo *e, personaje *p){
if(ColisionE(e, p)!=0){
  e->direccion++;
  if(e->direccion>3){
    e->direccion=0;
  }
  return;
 }
if(e->direccion==0){
  e->x+=2;
 }
if(e->direccion==1){
  e->y-=2;
 }
if(e->direccion==2){
  e->x-=2;
 }
if(e->direccion==3){
  e->y+=2;
 }
}


u8 ColisionE(enemigo *e, personaje *p){
int posx=e->x; 
u8  posy=e->y;
u8 casX=posy/16, casY=posx/16;
if(e->direccion==0){
 if(posx%16==0){
        if(posy%16==0){

          return mapas[p->salaActual].posiciones[casX][casY+1];
        }
        else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
       
          return 1;
      }   
      return 0;
 }
if(e->direccion==1){
    if(posy%16==0){
        if(posx%16==0){

          return mapas[p->salaActual].posiciones[casX-1][casY];
        }
        else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
          return 1;
      }   
      return 0;
 }
if(e->direccion==2){
    if(posx%16==0){
        if(posy%16==0){

          return mapas[p->salaActual].posiciones[casX][casY-1];

        }
        else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
          return 1;
      }   
      return 0;
 }
if(e->direccion==3){
     if(posy%16==0){
        if(posx%16==0){
 
          return mapas[p->salaActual].posiciones[casX+1][casY];
        }
        else if(mapas[p->salaActual].posiciones[casX+1][casY]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
          return 1;
      }   
      return 0;
 }
return 7;
}


u8 Vision(enemigo *e, personaje *p){
  u8 p1, p11, p12, p2, p21, p22;
  p1=0;
  p11=0;
  p12=0;
  p2=0;
  p21=0;
  p22=0;
  if(e->direccion==0){
    if(p->x>=((e->x)+16))
      p11=1;
    if(p->x<=((e->x)+16*3))
      p12=1;
    if(p11==1&&p12==1)
      p1=1;
    if(p->y>=((e->y)-16))
      p21=1;
    if(p->y<=((e->y)+16))
      p22=1;    
    if(p21==1&&p22==1)
      p2=1;
    if(p1==1&&p2==1)
      return 1;
  }
 if(e->direccion==1){
    if(p->x>=((e->x)-16))
      p11=1;
    if(p->x<=((e->x)+16))
      p12=1;
    if(p11==1&&p12==1)
      p1=1;
    if(p->y<=((e->y)-16))
      p21=1;
    if(p->y>=((e->y)-(16*3)))
      p22=1;    
    if(p21==1&&p22==1)
      p2=1;
    if(p1==1&&p2==1)
      return 1;
  }
   if(e->direccion==2){
    if(p->x<=((e->x)-16))
      p11=1;
    if(p->x>=((e->x)-16*3))
      p12=1;
    if(p11==1&&p12==1)
      p1=1;
    if(p->y>=((e->y)-16))
      p21=1;
    if(p->y<=((e->y)+16))
      p22=1;    
    if(p21==1&&p22==1)
      p2=1;
    if(p1==1&&p2==1)
      return 1;
  }

  if(e->direccion==3){
    if(p->x>=((e->x)-16))
      p11=1;
    if(p->x<=((e->x)+16))
      p12=1;
    if(p11==1&&p12==1)
      p1=1;
    if(p->y>=((e->y)+16))
      p21=1;
    if(p->y<=((e->y)+(16*3)))
      p22=1;    
    if(p21==1&&p22==1)
      p2=1;
    if(p1==1&&p2==1)
      return 1;
  }
  return 0;
}

void Combate(enemigo *e, personaje *p){
  u8 move, p1,p2,p3,p4;
  p1=0;
  p2=0;
  p3=0;
  p4=0;
  move=0;

  if(e->x>p->x+16)
    p1=1;//izqu
  if(e->y<p->y-16)
    p2=1;// bot
  if(e->y>p->y+16)
    p3=1; //top
  if(e->x<p->x-16)
    p4=1; //Derecha

if(e->atacando==0){
  if(p4==1||p1==1){
    if(p4==1){
      e->direccion=0;
    }else{
     e->direccion=2;
    }
    MoveE(e, p);
    move=1;
  }


if(p3==1||p2==1){
    if(p3==1){
      e->direccion=1;
    }else{
     e->direccion=3;
    }
    MoveE(e, p);
    move=1;
  }
}
  if(move==0){
    atacaE(e,p);
 //printf("BANG\n");
    //Quitar vida al pj
  }
  
}

void atacaE(enemigo *e, personaje *p){
  if(e->ataquePreparado){
//     printf("Piun Piun\n");
    e->atacando=1;
    e->cansancioAtaque++;
    if(e->danyino==0){
    	danyo(p);
	}
	e->danyino++;
    if(e->cansancioAtaque==14){
      e->ataquePreparado=0;
    }
  }
  else
    noAtacaE(e);
}
void noAtacaE(enemigo *e){
  e->atacando=0;
  e->cansancioAtaque--;
  if(e->cansancioAtaque==0)
    e->ataquePreparado=1;
	e->danyino=0;
}



void initEnemigo(enemigo *e, u8 x, u8 y){
	//LA X E Y RECIBIDA SON EN COORDENADAS CASILLA
	e->x=x*16;
	e->y=y*16;
	e->orientacion=0;
	e->estado=0;
	e->vida=1;
	e->memPtr=cpct_getScreenPtr(video_memory_start,e->x/4,e->y);

	e->direccion=0;
  	e->atacando=0;
  	e->cansancioAtaque=0;
    e->ataquePreparado=1;

}
void pintaEnemigo(enemigo *e){
	u8 aux=3;
	//BORRO EL ENEMIGO
	cpct_drawSolidBox(e->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
	//CALCULO DONDE PINTAR EL ENEMIGO
	e->memPtr=cpct_getScreenPtr(video_memory_start,e->x/4,e->y);
	//LO PINTO
	if(e->estado)
		aux=0;
	cpct_drawSprite(tilesetEnemigoCAC[e->orientacion+aux],e->memPtr,4,16);
}
void pintaEnemigos(enemigo* arr[]){
  u8 cont;
  for(cont=0;cont<maxEnemigosSala;cont++){
  	if(arr[cont]->vida>0)
  		pintaEnemigo(arr[cont]);
  }
      
}
void quitarVida(enemigo *e){
	e->vida--;

}
void recibirDanyo(enemigo* arr[], personaje *p){
u8 cont;
u8 p1, p2, p3, p4;
p1=0;
p2=0;
p3=0;
p4=0;

	if(p->atacando){
		for(cont=0; cont<maxEnemigosSala;cont++){
			if(arr[cont]->vida>0){
				if(arr[cont]->x>p->x-16)
					p1=1;
				if(arr[cont]->y> p->y-16)
					p2=1;
				if(arr[cont]->x< p->x+16)
					p3=1;
				if(arr[cont]->y<p->y+16)
					p4=1;
				if(p1 && p2 && p3 && p4 ){
					arr[cont]->vida=0;
					cpct_drawSolidBox(arr[cont]->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
				}
				p1=0;
				p2=0;
				p3=0;
				p4=0;
			}

		}
	}

}