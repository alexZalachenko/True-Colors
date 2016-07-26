;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:07:31 2015
;--------------------------------------------------------
	.module Enemigo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _danyo
	.globl _cpct_getRandomUniform_u8_f
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM1
	.globl _ActualizarArr
	.globl _generaEnemigos
	.globl _Actualizar
	.globl _Patrulla
	.globl _MoveE
	.globl _ColisionE
	.globl _Vision
	.globl _Combate
	.globl _atacaE
	.globl _noAtacaE
	.globl _initEnemigo
	.globl _pintaEnemigo
	.globl _pintaEnemigos
	.globl _quitarVida
	.globl _recibirDanyo
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/Enemigo.c:4: void ActualizarArr(enemigo *arr[], personaje *p){
;	---------------------------------
; Function ActualizarArr
; ---------------------------------
_ActualizarArr::
;src/Enemigo.c:6: for(cont=0;cont<maxEnemigosSala;cont++){
	ld	d,#0x00
00102$:
;src/Enemigo.c:7: Actualizar(arr[cont],p);
	ld	l,d
	ld	h,#0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	add	a, c
	ld	c,a
	ld	a,1 (iy)
	adc	a, b
	ld	b,a
	ld	l, c
	ld	h, b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	ld	hl, #6
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	hl
	push	bc
	call	_Actualizar
	pop	af
	pop	af
	pop	de
;src/Enemigo.c:6: for(cont=0;cont<maxEnemigosSala;cont++){
	inc	d
	ld	a,d
	sub	a, #0x03
	jr	C,00102$
	ret
;src/Enemigo.c:11: void generaEnemigos(u8 sala, enemigo* arr[]){
;	---------------------------------
; Function generaEnemigos
; ---------------------------------
_generaEnemigos::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/Enemigo.c:14: do{
	ld	-3 (ix),#0x00
00101$:
;src/Enemigo.c:15: cordx=cpct_getRandomUniform_u8_f(0)%18+1;
	ld	l,#0x00
	call	_cpct_getRandomUniform_u8_f
	ld	d,l
	ld	a,#0x12
	push	af
	inc	sp
	push	de
	inc	sp
	call	__moduchar
	pop	af
	ld	b,l
	inc	b
;src/Enemigo.c:16: cordy=cpct_getRandomUniform_u8_f(0)%10+1;
	push	bc
	ld	l,#0x00
	call	_cpct_getRandomUniform_u8_f
	ld	d,l
	ld	a,#0x0A
	push	af
	inc	sp
	push	de
	inc	sp
	call	__moduchar
	pop	af
	pop	bc
	ld	c,l
	inc	c
;src/Enemigo.c:17: }while(mapas[sala].posiciones[cordy][cordx]!=0);
	ld	d, 4 (ix)
	ld	e,#0x00
	ld	hl,#_mapas
	add	hl,de
	ex	de,hl
	ld	a,c
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	l,a
	ld	h,#0x00
	add	hl,de
	ld	e,b
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	NZ,00101$
;src/Enemigo.c:18: initEnemigo(arr[cont], cordx, cordy);
	ld	l,-3 (ix)
	ld	h,#0x00
	add	hl, hl
	ex	de,hl
	ld	a,5 (ix)
	add	a, e
	ld	-2 (ix),a
	ld	a,6 (ix)
	adc	a, d
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_initEnemigo
	pop	af
	pop	af
;src/Enemigo.c:19: arr[cont]->danyino=0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000C
	add	hl,de
	ld	(hl),#0x00
;src/Enemigo.c:13: for(cont=0;cont<maxEnemigosSala;cont++){
	inc	-3 (ix)
	ld	a,-3 (ix)
	sub	a, #0x03
	jp	C,00101$
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:24: void Actualizar(enemigo *e, personaje *p){
;	---------------------------------
; Function Actualizar
; ---------------------------------
_Actualizar::
;src/Enemigo.c:25: if(e->estado==0){
	pop	bc
	pop	de
	push	de
	push	bc
	push	de
	pop	iy
	ld	a,4 (iy)
	or	a, a
	jr	NZ,00102$
;src/Enemigo.c:26: Patrulla(e, p);
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	push	de
	call	_Patrulla
	pop	af
	pop	af
	ret
00102$:
;src/Enemigo.c:29: Combate(e,p);// Seguramente haya que pasarle el personaje 
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	push	de
	call	_Combate
	pop	af
	pop	af
	ret
;src/Enemigo.c:34: void Patrulla(enemigo *e, personaje *p){
;	---------------------------------
; Function Patrulla
; ---------------------------------
_Patrulla::
;src/Enemigo.c:35: if(Vision(e,p)==1){
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_Vision
	pop	af
	pop	af
	dec	l
	jr	NZ,00102$
;src/Enemigo.c:36: e->estado=1;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc,#0x0004
	add	hl,bc
	ld	(hl),#0x01
00102$:
;src/Enemigo.c:39: MoveE(e, p);
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_MoveE
	pop	af
	pop	af
	ret
;src/Enemigo.c:41: void MoveE(enemigo *e, personaje *p){
;	---------------------------------
; Function MoveE
; ---------------------------------
_MoveE::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/Enemigo.c:42: if(ColisionE(e, p)!=0){
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_ColisionE
	pop	af
	pop	af
	ld	c,l
;src/Enemigo.c:43: e->direccion++;
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	hl,#0x0008
	add	hl,de
	ex	(sp), hl
;src/Enemigo.c:49: if(e->direccion==0){
	pop	hl
	push	hl
	ld	l,(hl)
;src/Enemigo.c:42: if(ColisionE(e, p)!=0){
	ld	a,c
	or	a, a
	jr	Z,00104$
;src/Enemigo.c:43: e->direccion++;
	ld	d,l
	inc	d
	pop	hl
	push	hl
	ld	(hl),d
;src/Enemigo.c:44: if(e->direccion>3){
	ld	a,#0x03
	sub	a, d
	jr	NC,00113$
;src/Enemigo.c:45: e->direccion=0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/Enemigo.c:47: return;
	jr	00113$
00104$:
;src/Enemigo.c:49: if(e->direccion==0){
	ld	a,l
	or	a, a
	jr	NZ,00106$
;src/Enemigo.c:50: e->x+=2;
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	l, e
	ld	h, d
	ld	(hl),c
	inc	hl
	ld	(hl),b
00106$:
;src/Enemigo.c:52: if(e->direccion==1){
	pop	hl
	push	hl
	ld	l,(hl)
;src/Enemigo.c:53: e->y-=2;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
;src/Enemigo.c:52: if(e->direccion==1){
	dec	l
	jr	NZ,00108$
;src/Enemigo.c:53: e->y-=2;
	ld	a,(bc)
	add	a,#0xFE
	ld	(bc),a
00108$:
;src/Enemigo.c:55: if(e->direccion==2){
	pop	hl
	push	hl
	ld	a,(hl)
	sub	a, #0x02
	jr	NZ,00110$
;src/Enemigo.c:56: e->x-=2;
	ld	l, e
	ld	h, d
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	add	a,#0xFE
	ld	-2 (ix),a
	ld	a,l
	adc	a,#0xFF
	ld	-1 (ix),a
	ld	a,-2 (ix)
	ld	(de),a
	inc	de
	ld	a,-1 (ix)
	ld	(de),a
00110$:
;src/Enemigo.c:58: if(e->direccion==3){
	pop	hl
	push	hl
	ld	a,(hl)
	sub	a, #0x03
	jr	NZ,00113$
;src/Enemigo.c:59: e->y+=2;
	ld	a,(bc)
	add	a, #0x02
	ld	(bc),a
00113$:
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:64: u8 ColisionE(enemigo *e, personaje *p){
;	---------------------------------
; Function ColisionE
; ---------------------------------
_ColisionE::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl
;src/Enemigo.c:65: int posx=e->x; 
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	l, c
	ld	h, b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;src/Enemigo.c:66: u8  posy=e->y;
	push	bc
	pop	iy
	ld	a,2 (iy)
;src/Enemigo.c:67: u8 casX=posy/16, casY=posx/16;
	ld	-18 (ix), a
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	ld	-17 (ix),a
	ld	l, e
	ld	h, d
	bit	7, d
	jr	Z,00143$
	ld	hl,#0x000F
	add	hl,de
00143$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	-16 (ix),l
;src/Enemigo.c:68: if(e->direccion==0){
	push	bc
	pop	iy
	ld	a,8 (iy)
	ld	-13 (ix),a
;src/Enemigo.c:69: if(posx%16==0){
	ld	hl,#0x0010
	push	hl
	push	de
;src/Enemigo.c:70: if(posy%16==0){
	call	__modsint
	pop	af
	pop	af
	ld	-14 (ix),h
	ld	-15 (ix),l
	ld	a,-18 (ix)
	and	a, #0x0F
	ld	-11 (ix),a
;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,-17 (ix)
	ld	e,a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, a
	ld	-4 (ix),a
	ld	a,-16 (ix)
	inc	a
	ld	-12 (ix),a
;src/Enemigo.c:74: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
	ld	e,-17 (ix)
	inc	e
;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	hl,#0x0006
	add	hl,bc
	ld	-9 (ix),l
	ld	-8 (ix),h
;src/Enemigo.c:74: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
	ld	a,e
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, a
	ld	-10 (ix),a
;src/Enemigo.c:68: if(e->direccion==0){
	ld	a,-13 (ix)
	or	a, a
	jr	NZ,00110$
;src/Enemigo.c:69: if(posx%16==0){
	ld	a,-14 (ix)
	or	a,-15 (ix)
	jr	NZ,00108$
;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	h, (hl)
	ld	l,#0x00
;src/Enemigo.c:70: if(posy%16==0){
	ld	a,-11 (ix)
	or	a, a
	jr	NZ,00105$
;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	de,#_mapas+0
	add	hl,de
	ld	e,-4 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-12 (ix)
	ld	d,#0x00
	add	hl,de
	ld	l,(hl)
	jp	00141$
00105$:
;src/Enemigo.c:74: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
	ld	de,#_mapas+0
	add	hl,de
	ex	de,hl
	ld	l,-4 (ix)
	ld	h,#0x00
	add	hl,de
	ld	c,-12 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	a,(hl)
	or	a, a
	jr	NZ,00101$
	ld	l,-10 (ix)
	ld	h,#0x00
	add	hl,de
	ld	e,-12 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00108$
00101$:
;src/Enemigo.c:76: return 1;
	ld	l,#0x01
	jp	00141$
00108$:
;src/Enemigo.c:78: return 0;
	ld	l,#0x00
	jp	00141$
00110$:
;src/Enemigo.c:80: if(e->direccion==1){
	ld	a,-13 (ix)
	dec	a
	jp	NZ,00120$
;src/Enemigo.c:81: if(posy%16==0){
	ld	a,-11 (ix)
	or	a, a
	jp	NZ,00118$
;src/Enemigo.c:84: return mapas[p->salaActual].posiciones[casX-1][casY];
	ld	a,-17 (ix)
	add	a,#0xFF
	ld	-5 (ix), a
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	-5 (ix),a
;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	a,(hl)
	ld	-1 (ix), a
	ld	-3 (ix),a
	ld	-2 (ix),#0x00
	ld	a,-3 (ix)
	ld	-2 (ix),a
	ld	-3 (ix),#0x00
;src/Enemigo.c:82: if(posx%16==0){
	ld	a,-14 (ix)
	or	a,-15 (ix)
	jr	NZ,00115$
;src/Enemigo.c:84: return mapas[p->salaActual].posiciones[casX-1][casY];
	ld	a,-3 (ix)
	add	a, #<(_mapas)
	ld	-7 (ix),a
	ld	a,-2 (ix)
	adc	a, #>(_mapas)
	ld	-6 (ix),a
	ld	a,-7 (ix)
	add	a, -5 (ix)
	ld	-7 (ix),a
	ld	a,-6 (ix)
	adc	a, #0x00
	ld	-6 (ix),a
	ld	a,-7 (ix)
	add	a, -16 (ix)
	ld	-7 (ix),a
	ld	a,-6 (ix)
	adc	a, #0x00
	ld	-6 (ix),a
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	l,(hl)
	jp	00141$
00115$:
;src/Enemigo.c:86: else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
	ld	hl,#_mapas+0
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	add	hl,de
	ld	a,l
	add	a, -5 (ix)
	ld	e,a
	ld	a,h
	adc	a, #0x00
	ld	d,a
	ld	l,-16 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	NZ,00111$
	ld	l,-12 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00118$
00111$:
;src/Enemigo.c:87: return 1;
	ld	l,#0x01
	jp	00141$
00118$:
;src/Enemigo.c:89: return 0;
	ld	l,#0x00
	jp	00141$
00120$:
;src/Enemigo.c:91: if(e->direccion==2){
	ld	a,-13 (ix)
	sub	a, #0x02
	jr	NZ,00130$
;src/Enemigo.c:92: if(posx%16==0){
	ld	a,-14 (ix)
	or	a,-15 (ix)
	jr	NZ,00128$
;src/Enemigo.c:95: return mapas[p->salaActual].posiciones[casX][casY-1];
	ld	e,-16 (ix)
	dec	e
;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	h, (hl)
	ld	l,#0x00
;src/Enemigo.c:93: if(posy%16==0){
	ld	a,-11 (ix)
	or	a, a
	jr	NZ,00125$
;src/Enemigo.c:95: return mapas[p->salaActual].posiciones[casX][casY-1];
	ld	bc,#_mapas+0
	add	hl,bc
	ld	c,-4 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	d,#0x00
	add	hl,de
	ld	l,(hl)
	jp	00141$
00125$:
;src/Enemigo.c:98: else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
	ld	bc,#_mapas+0
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l,-4 (ix)
	ld	h,#0x00
	add	hl,bc
	ld	d,#0x00
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	NZ,00121$
	ld	l,-10 (ix)
	ld	h,#0x00
	add	hl,bc
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00128$
00121$:
;src/Enemigo.c:99: return 1;
	ld	l,#0x01
	jr	00141$
00128$:
;src/Enemigo.c:101: return 0;
	ld	l,#0x00
	jr	00141$
00130$:
;src/Enemigo.c:103: if(e->direccion==3){
	ld	a,-13 (ix)
	sub	a, #0x03
	jr	NZ,00140$
;src/Enemigo.c:104: if(posy%16==0){
	ld	a,-11 (ix)
	or	a, a
	jr	NZ,00138$
;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	h, (hl)
	ld	l,#0x00
;src/Enemigo.c:105: if(posx%16==0){
	ld	a,-14 (ix)
	or	a,-15 (ix)
	jr	NZ,00135$
;src/Enemigo.c:107: return mapas[p->salaActual].posiciones[casX+1][casY];
	ld	de,#_mapas+0
	add	hl,de
	ld	e,-10 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-16 (ix)
	ld	d,#0x00
	add	hl,de
	ld	l,(hl)
	jr	00141$
00135$:
;src/Enemigo.c:109: else if(mapas[p->salaActual].posiciones[casX+1][casY]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
	ld	de,#_mapas+0
	add	hl,de
	ld	a,-10 (ix)
	add	a, l
	ld	e,a
	ld	a,#0x00
	adc	a, h
	ld	d,a
	ld	l,-16 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	NZ,00131$
	ld	l,-12 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00138$
00131$:
;src/Enemigo.c:110: return 1;
	ld	l,#0x01
	jr	00141$
00138$:
;src/Enemigo.c:112: return 0;
	ld	l,#0x00
	jr	00141$
00140$:
;src/Enemigo.c:114: return 7;
	ld	l,#0x07
00141$:
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:118: u8 Vision(enemigo *e, personaje *p){
;	---------------------------------
; Function Vision
; ---------------------------------
_Vision::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-17
	add	hl,sp
	ld	sp,hl
;src/Enemigo.c:120: p1=0;
	ld	c,#0x00
;src/Enemigo.c:121: p11=0;
	ld	e,#0x00
;src/Enemigo.c:122: p12=0;
	ld	-17 (ix),#0x00
;src/Enemigo.c:123: p2=0;
	ld	-14 (ix),#0x00
;src/Enemigo.c:124: p21=0;
	ld	-15 (ix),#0x00
;src/Enemigo.c:125: p22=0;
	ld	-16 (ix),#0x00
;src/Enemigo.c:126: if(e->direccion==0){
	ld	a,4 (ix)
	ld	-13 (ix),a
	ld	a,5 (ix)
	ld	-12 (ix),a
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	a,8 (iy)
	ld	-1 (ix),a
;src/Enemigo.c:127: if(p->x>=((e->x)+16))
	ld	a,6 (ix)
	ld	-3 (ix),a
	ld	a,7 (ix)
	ld	-2 (ix),a
;src/Enemigo.c:133: if(p->y>=((e->y)-16))
	ld	a,-13 (ix)
	add	a, #0x02
	ld	-5 (ix),a
	ld	a,-12 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
	ld	a,-3 (ix)
	add	a, #0x02
	ld	-7 (ix),a
	ld	a,-2 (ix)
	adc	a, #0x00
	ld	-6 (ix),a
;src/Enemigo.c:126: if(e->direccion==0){
	ld	a,-1 (ix)
	or	a, a
	jp	NZ,00119$
;src/Enemigo.c:127: if(p->x>=((e->x)+16))
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,(hl)
	ld	-11 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-10 (ix),a
	ld	a,-11 (ix)
	add	a, #0x10
	ld	h,a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	l,a
	ld	a,-9 (ix)
	sub	a, h
	ld	a,-8 (ix)
	sbc	a, l
	jp	PO, 00355$
	xor	a, #0x80
00355$:
	jp	M,00102$
;src/Enemigo.c:128: p11=1;
	ld	e,#0x01
00102$:
;src/Enemigo.c:129: if(p->x<=((e->x)+16*3))
	ld	a,-11 (ix)
	add	a, #0x30
	ld	h,a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	l,a
	ld	a,h
	sub	a, -9 (ix)
	ld	a,l
	sbc	a, -8 (ix)
	jp	PO, 00356$
	xor	a, #0x80
00356$:
	jp	M,00104$
;src/Enemigo.c:130: p12=1;
	ld	-17 (ix),#0x01
00104$:
;src/Enemigo.c:131: if(p11==1&&p12==1)
	ld	a,e
	dec	a
	jr	NZ,00106$
	ld	a,-17 (ix)
	dec	a
	jr	NZ,00106$
;src/Enemigo.c:132: p1=1;
	ld	c,#0x01
00106$:
;src/Enemigo.c:133: if(p->y>=((e->y)-16))
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	b,(hl)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	a,l
	add	a,#0xF0
	ld	-11 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-10 (ix),a
	ld	d,#0x00
	ld	a,b
	sub	a, -11 (ix)
	ld	a,d
	sbc	a, -10 (ix)
	jp	PO, 00361$
	xor	a, #0x80
00361$:
	jp	M,00109$
;src/Enemigo.c:134: p21=1;
	ld	-15 (ix),#0x01
00109$:
;src/Enemigo.c:135: if(p->y<=((e->y)+16))
	push	de
	ld	de,#0x0010
	add	hl, de
	pop	de
	ld	a,l
	sub	a, b
	ld	a,h
	sbc	a, d
	jp	PO, 00362$
	xor	a, #0x80
00362$:
	jp	M,00111$
;src/Enemigo.c:136: p22=1;    
	ld	-16 (ix),#0x01
00111$:
;src/Enemigo.c:137: if(p21==1&&p22==1)
	ld	a,-15 (ix)
	dec	a
	jr	NZ,00113$
	ld	a,-16 (ix)
	dec	a
	jr	NZ,00113$
;src/Enemigo.c:138: p2=1;
	ld	-14 (ix),#0x01
00113$:
;src/Enemigo.c:139: if(p1==1&&p2==1)
	ld	a,c
	dec	a
	jr	NZ,00119$
	ld	a,-14 (ix)
	dec	a
	jr	NZ,00119$
;src/Enemigo.c:140: return 1;
	ld	l,#0x01
	jp	00177$
00119$:
;src/Enemigo.c:142: if(e->direccion==1){
	ld	a,-1 (ix)
	dec	a
	jp	NZ,00138$
;src/Enemigo.c:143: if(p->x>=((e->x)-16))
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	a,#0xF0
	ld	-11 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-10 (ix),a
	ld	a,b
	sub	a, -11 (ix)
	ld	a,d
	sbc	a, -10 (ix)
	jp	PO, 00373$
	xor	a, #0x80
00373$:
	jp	M,00121$
;src/Enemigo.c:144: p11=1;
	ld	e,#0x01
00121$:
;src/Enemigo.c:145: if(p->x<=((e->x)+16))
	push	de
	ld	de,#0x0010
	add	hl, de
	pop	de
	ld	a,l
	sub	a, b
	ld	a,h
	sbc	a, d
	jp	PO, 00374$
	xor	a, #0x80
00374$:
	jp	M,00123$
;src/Enemigo.c:146: p12=1;
	ld	-17 (ix),#0x01
00123$:
;src/Enemigo.c:147: if(p11==1&&p12==1)
	ld	a,e
	dec	a
	jr	NZ,00125$
	ld	a,-17 (ix)
	dec	a
	jr	NZ,00125$
;src/Enemigo.c:148: p1=1;
	ld	c,#0x01
00125$:
;src/Enemigo.c:149: if(p->y<=((e->y)-16))
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	b,(hl)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	a,l
	add	a,#0xF0
	ld	-11 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-10 (ix),a
	ld	d,#0x00
	ld	a,-11 (ix)
	sub	a, b
	ld	a,-10 (ix)
	sbc	a, d
	jp	PO, 00379$
	xor	a, #0x80
00379$:
	jp	M,00128$
;src/Enemigo.c:150: p21=1;
	ld	-15 (ix),#0x01
00128$:
;src/Enemigo.c:151: if(p->y>=((e->y)-(16*3)))
	ld	a,l
	add	a,#0xD0
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	h,a
	ld	a,b
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00380$
	xor	a, #0x80
00380$:
	jp	M,00130$
;src/Enemigo.c:152: p22=1;    
	ld	-16 (ix),#0x01
00130$:
;src/Enemigo.c:153: if(p21==1&&p22==1)
	ld	a,-15 (ix)
	dec	a
	jr	NZ,00132$
	ld	a,-16 (ix)
	dec	a
	jr	NZ,00132$
;src/Enemigo.c:154: p2=1;
	ld	-14 (ix),#0x01
00132$:
;src/Enemigo.c:155: if(p1==1&&p2==1)
	ld	a,c
	dec	a
	jr	NZ,00138$
	ld	a,-14 (ix)
	dec	a
	jr	NZ,00138$
;src/Enemigo.c:156: return 1;
	ld	l,#0x01
	jp	00177$
00138$:
;src/Enemigo.c:158: if(e->direccion==2){
	ld	a,-1 (ix)
	sub	a, #0x02
	jp	NZ,00157$
;src/Enemigo.c:159: if(p->x<=((e->x)-16))
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a, (hl)
	inc	hl
	ld	l,(hl)
	ld	h,a
	add	a,#0xF0
	ld	-11 (ix),a
	ld	a,l
	adc	a,#0xFF
	ld	-10 (ix),a
	ld	a,-11 (ix)
	sub	a, b
	ld	a,-10 (ix)
	sbc	a, d
	jp	PO, 00391$
	xor	a, #0x80
00391$:
	jp	M,00140$
;src/Enemigo.c:160: p11=1;
	ld	e,#0x01
00140$:
;src/Enemigo.c:161: if(p->x>=((e->x)-16*3))
	ld	a,h
	add	a,#0xD0
	ld	h,a
	ld	a,l
	adc	a,#0xFF
	ld	l,a
	ld	a,b
	sub	a, h
	ld	a,d
	sbc	a, l
	jp	PO, 00392$
	xor	a, #0x80
00392$:
	jp	M,00142$
;src/Enemigo.c:162: p12=1;
	ld	-17 (ix),#0x01
00142$:
;src/Enemigo.c:163: if(p11==1&&p12==1)
	ld	a,e
	dec	a
	jr	NZ,00144$
	ld	a,-17 (ix)
	dec	a
	jr	NZ,00144$
;src/Enemigo.c:164: p1=1;
	ld	c,#0x01
00144$:
;src/Enemigo.c:165: if(p->y>=((e->y)-16))
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	d,(hl)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	a,l
	add	a,#0xF0
	ld	-11 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-10 (ix),a
	ld	b,#0x00
	ld	a,d
	sub	a, -11 (ix)
	ld	a,b
	sbc	a, -10 (ix)
	jp	PO, 00397$
	xor	a, #0x80
00397$:
	jp	M,00147$
;src/Enemigo.c:166: p21=1;
	ld	-15 (ix),#0x01
00147$:
;src/Enemigo.c:167: if(p->y<=((e->y)+16))
	push	de
	ld	de,#0x0010
	add	hl, de
	pop	de
	ld	a,l
	sub	a, d
	ld	a,h
	sbc	a, b
	jp	PO, 00398$
	xor	a, #0x80
00398$:
	jp	M,00149$
;src/Enemigo.c:168: p22=1;    
	ld	-16 (ix),#0x01
00149$:
;src/Enemigo.c:169: if(p21==1&&p22==1)
	ld	a,-15 (ix)
	dec	a
	jr	NZ,00151$
	ld	a,-16 (ix)
	dec	a
	jr	NZ,00151$
;src/Enemigo.c:170: p2=1;
	ld	-14 (ix),#0x01
00151$:
;src/Enemigo.c:171: if(p1==1&&p2==1)
	ld	a,c
	dec	a
	jr	NZ,00157$
	ld	a,-14 (ix)
	dec	a
	jr	NZ,00157$
;src/Enemigo.c:172: return 1;
	ld	l,#0x01
	jp	00177$
00157$:
;src/Enemigo.c:175: if(e->direccion==3){
	ld	a,-1 (ix)
	sub	a, #0x03
	jp	NZ,00176$
;src/Enemigo.c:176: if(p->x>=((e->x)-16))
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	a,#0xF0
	ld	-11 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-10 (ix),a
	ld	a,b
	sub	a, -11 (ix)
	ld	a,d
	sbc	a, -10 (ix)
	jp	PO, 00409$
	xor	a, #0x80
00409$:
	jp	M,00159$
;src/Enemigo.c:177: p11=1;
	ld	e,#0x01
00159$:
;src/Enemigo.c:178: if(p->x<=((e->x)+16))
	push	de
	ld	de,#0x0010
	add	hl, de
	pop	de
	ld	a,l
	sub	a, b
	ld	a,h
	sbc	a, d
	jp	PO, 00410$
	xor	a, #0x80
00410$:
	jp	M,00161$
;src/Enemigo.c:179: p12=1;
	ld	-17 (ix),#0x01
00161$:
;src/Enemigo.c:180: if(p11==1&&p12==1)
	dec	e
	jr	NZ,00163$
	ld	a,-17 (ix)
	dec	a
	jr	NZ,00163$
;src/Enemigo.c:181: p1=1;
	ld	c,#0x01
00163$:
;src/Enemigo.c:182: if(p->y>=((e->y)+16))
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	ld	b,(hl)
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x0010
	add	hl,de
	ld	-11 (ix),b
	ld	-10 (ix),#0x00
	ld	a,-11 (ix)
	sub	a, l
	ld	a,-10 (ix)
	sbc	a, h
	jp	PO, 00415$
	xor	a, #0x80
00415$:
	jp	M,00166$
;src/Enemigo.c:183: p21=1;
	ld	-15 (ix),#0x01
00166$:
;src/Enemigo.c:184: if(p->y<=((e->y)+(16*3)))
	ld	hl,#0x0030
	add	hl,de
	ld	a,l
	sub	a, -11 (ix)
	ld	a,h
	sbc	a, -10 (ix)
	jp	PO, 00416$
	xor	a, #0x80
00416$:
	jp	M,00168$
;src/Enemigo.c:185: p22=1;    
	ld	-16 (ix),#0x01
00168$:
;src/Enemigo.c:186: if(p21==1&&p22==1)
	ld	a,-15 (ix)
	dec	a
	jr	NZ,00170$
	ld	a,-16 (ix)
	dec	a
	jr	NZ,00170$
;src/Enemigo.c:187: p2=1;
	ld	-14 (ix),#0x01
00170$:
;src/Enemigo.c:188: if(p1==1&&p2==1)
	dec	c
	jr	NZ,00176$
	ld	a,-14 (ix)
	dec	a
	jr	NZ,00176$
;src/Enemigo.c:189: return 1;
	ld	l,#0x01
	jr	00177$
00176$:
;src/Enemigo.c:191: return 0;
	ld	l,#0x00
00177$:
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:194: void Combate(enemigo *e, personaje *p){
;	---------------------------------
; Function Combate
; ---------------------------------
_Combate::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;src/Enemigo.c:196: p1=0;
	ld	-14 (ix),#0x00
;src/Enemigo.c:197: p2=0;
	ld	c,#0x00
;src/Enemigo.c:198: p3=0;
	ld	-11 (ix),#0x00
;src/Enemigo.c:199: p4=0;
	ld	-12 (ix),#0x00
;src/Enemigo.c:200: move=0;
	ld	-13 (ix),#0x00
;src/Enemigo.c:202: if(e->x>p->x+16)
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-4 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-3 (ix),a
	ld	a,6 (ix)
	ld	-10 (ix),a
	ld	a,7 (ix)
	ld	-9 (ix),a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0010
	add	hl,de
	ld	a,l
	sub	a, -4 (ix)
	ld	a,h
	sbc	a, -3 (ix)
	jp	PO, 00167$
	xor	a, #0x80
00167$:
	jp	P,00102$
;src/Enemigo.c:203: p1=1;//izqu
	ld	-14 (ix),#0x01
00102$:
;src/Enemigo.c:204: if(e->y<p->y-16)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	b,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
	inc	hl
	ld	l,(hl)
	ld	h,#0x00
	ld	a,l
	add	a,#0xF0
	ld	-6 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-5 (ix),a
	ld	-8 (ix),b
	ld	-7 (ix),#0x00
	ld	a,-8 (ix)
	sub	a, -6 (ix)
	ld	a,-7 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00168$
	xor	a, #0x80
00168$:
	jp	P,00104$
;src/Enemigo.c:205: p2=1;// bot
	ld	c,#0x01
00104$:
;src/Enemigo.c:206: if(e->y>p->y+16)
	push	de
	ld	de,#0x0010
	add	hl, de
	pop	de
	ld	a,l
	sub	a, -8 (ix)
	ld	a,h
	sbc	a, -7 (ix)
	jp	PO, 00169$
	xor	a, #0x80
00169$:
	jp	P,00106$
;src/Enemigo.c:207: p3=1; //top
	ld	-11 (ix),#0x01
00106$:
;src/Enemigo.c:208: if(e->x<p->x-16)
	ld	a,e
	add	a,#0xF0
	ld	h,a
	ld	a,d
	adc	a,#0xFF
	ld	l,a
	ld	a,-4 (ix)
	sub	a, h
	ld	a,-3 (ix)
	sbc	a, l
	jp	PO, 00170$
	xor	a, #0x80
00170$:
	jp	P,00108$
;src/Enemigo.c:209: p4=1; //Derecha
	ld	-12 (ix),#0x01
00108$:
;src/Enemigo.c:211: if(e->atacando==0){
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	de, #0x0009
	add	hl, de
	ld	a,(hl)
	or	a, a
	jp	NZ,00122$
;src/Enemigo.c:212: if(p4==1||p1==1){
	ld	a,-12 (ix)
	dec	a
	jr	NZ,00171$
	ld	a,#0x01
	jr	00172$
00171$:
	xor	a,a
00172$:
	ld	h,a
;src/Enemigo.c:214: e->direccion=0;
	ld	a,-2 (ix)
	add	a, #0x08
	ld	e,a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	d,a
;src/Enemigo.c:212: if(p4==1||p1==1){
	ld	a,h
	or	a, a
	jr	NZ,00112$
	ld	a,-14 (ix)
	dec	a
	jr	NZ,00113$
00112$:
;src/Enemigo.c:213: if(p4==1){
	ld	a,h
	or	a, a
	jr	Z,00110$
;src/Enemigo.c:214: e->direccion=0;
	xor	a, a
	ld	(de),a
	jr	00111$
00110$:
;src/Enemigo.c:216: e->direccion=2;
	ld	a,#0x02
	ld	(de),a
00111$:
;src/Enemigo.c:218: MoveE(e, p);
	push	bc
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_MoveE
	pop	af
	pop	af
	pop	de
	pop	bc
;src/Enemigo.c:219: move=1;
	ld	-13 (ix),#0x01
00113$:
;src/Enemigo.c:223: if(p3==1||p2==1){
	ld	a,-11 (ix)
	dec	a
	jr	NZ,00175$
	ld	a,#0x01
	jr	00176$
00175$:
	xor	a,a
00176$:
	ld	h,a
	or	a, a
	jr	NZ,00118$
	dec	c
	jr	NZ,00122$
00118$:
;src/Enemigo.c:224: if(p3==1){
	ld	a,h
	or	a, a
	jr	Z,00116$
;src/Enemigo.c:225: e->direccion=1;
	ld	a,#0x01
	ld	(de),a
	jr	00117$
00116$:
;src/Enemigo.c:227: e->direccion=3;
	ld	a,#0x03
	ld	(de),a
00117$:
;src/Enemigo.c:229: MoveE(e, p);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_MoveE
	pop	af
	pop	af
;src/Enemigo.c:230: move=1;
	ld	-13 (ix),#0x01
00122$:
;src/Enemigo.c:233: if(move==0){
	ld	a,-13 (ix)
	or	a, a
	jr	NZ,00125$
;src/Enemigo.c:234: atacaE(e,p);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_atacaE
	pop	af
	pop	af
00125$:
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:241: void atacaE(enemigo *e, personaje *p){
;	---------------------------------
; Function atacaE
; ---------------------------------
_atacaE::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/Enemigo.c:242: if(e->ataquePreparado){
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	hl,#0x000B
	add	hl,bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00106$
;src/Enemigo.c:244: e->atacando=1;
	ld	hl,#0x0009
	add	hl,bc
	ld	(hl),#0x01
;src/Enemigo.c:245: e->cansancioAtaque++;
	ld	hl,#0x000A
	add	hl,bc
	ex	de,hl
	ld	a,(de)
	inc	a
	ld	(de),a
;src/Enemigo.c:246: if(e->danyino==0){
	ld	hl,#0x000C
	add	hl,bc
	ld	a,(hl)
	or	a, a
	jr	NZ,00102$
;src/Enemigo.c:247: danyo(p);
	push	hl
	push	de
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	call	_danyo
	pop	af
	pop	de
	pop	hl
00102$:
;src/Enemigo.c:249: e->danyino++;
	inc	(hl)
;src/Enemigo.c:250: if(e->cansancioAtaque==14){
	ld	a,(de)
	sub	a, #0x0E
	jr	NZ,00108$
;src/Enemigo.c:251: e->ataquePreparado=0;
	pop	hl
	push	hl
	ld	(hl),#0x00
	jr	00108$
00106$:
;src/Enemigo.c:255: noAtacaE(e);
	push	bc
	call	_noAtacaE
	pop	af
00108$:
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:257: void noAtacaE(enemigo *e){
;	---------------------------------
; Function noAtacaE
; ---------------------------------
_noAtacaE::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/Enemigo.c:258: e->atacando=0;
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x00
;src/Enemigo.c:259: e->cansancioAtaque--;
	ld	hl,#0x000A
	add	hl,de
	ld	a,(hl)
	add	a,#0xFF
	ld	(hl),a
;src/Enemigo.c:260: if(e->cansancioAtaque==0)
	or	a, a
	jr	NZ,00102$
;src/Enemigo.c:261: e->ataquePreparado=1;
	ld	hl,#0x000B
	add	hl,de
	ld	(hl),#0x01
00102$:
;src/Enemigo.c:262: e->danyino=0;
	ld	hl,#0x000C
	add	hl,de
	ld	(hl),#0x00
	pop	ix
	ret
;src/Enemigo.c:267: void initEnemigo(enemigo *e, u8 x, u8 y){
;	---------------------------------
; Function initEnemigo
; ---------------------------------
_initEnemigo::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/Enemigo.c:269: e->x=x*16;
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	l,6 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l, e
	ld	h, d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;src/Enemigo.c:270: e->y=y*16;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,7 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	(hl),a
;src/Enemigo.c:271: e->orientacion=0;
	push	de
	pop	iy
	inc	iy
	inc	iy
	inc	iy
	ld	0 (iy), #0x00
;src/Enemigo.c:272: e->estado=0;
	ld	iy,#0x0004
	add	iy, de
	ld	0 (iy), #0x00
;src/Enemigo.c:273: e->vida=1;
	ld	iy,#0x0005
	add	iy, de
	ld	0 (iy), #0x01
;src/Enemigo.c:274: e->memPtr=cpct_getScreenPtr(video_memory_start,e->x/4,e->y);
	ld	a,e
	add	a, #0x06
	ld	-2 (ix),a
	ld	a,d
	adc	a, #0x00
	ld	-1 (ix),a
	ld	a,(hl)
	ld	-3 (ix),a
	ld	h,c
	ld	l,b
	bit	7, b
	jr	Z,00103$
	inc	bc
	inc	bc
	inc	bc
	ld	h,c
	ld	l,b
00103$:
	ld	c, h
	ld	b, l
	sra	b
	rr	c
	sra	b
	rr	c
	ld	iy,(_video_memory_start)
	push	de
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	push	iy
	call	_cpct_getScreenPtr
	ld	b,l
	ld	c,h
	pop	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),c
;src/Enemigo.c:276: e->direccion=0;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0x00
;src/Enemigo.c:277: e->atacando=0;
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x00
;src/Enemigo.c:278: e->cansancioAtaque=0;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0x00
;src/Enemigo.c:279: e->ataquePreparado=1;
	ld	hl,#0x000B
	add	hl,de
	ld	(hl),#0x01
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:282: void pintaEnemigo(enemigo *e){
;	---------------------------------
; Function pintaEnemigo
; ---------------------------------
_pintaEnemigo::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/Enemigo.c:283: u8 aux=3;
	ld	-4 (ix),#0x03
;src/Enemigo.c:285: cpct_drawSolidBox(e->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
	ld	hl,#0x0202
	push	hl
	ld	l, #0x02
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	b,l
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	hl,#0x0006
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	iy
	push	de
	ld	hl,#0x1004
	push	hl
	push	bc
	inc	sp
	push	iy
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	de
;src/Enemigo.c:287: e->memPtr=cpct_getScreenPtr(video_memory_start,e->x/4,e->y);
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-3 (ix),a
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	h,c
	ld	l,b
	bit	7, b
	jr	Z,00105$
	inc	bc
	inc	bc
	inc	bc
	ld	h,c
	ld	l,b
00105$:
	ld	c, h
	ld	b, l
	sra	b
	rr	c
	sra	b
	rr	c
	ld	iy,(_video_memory_start)
	push	de
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	a,c
	push	af
	inc	sp
	push	iy
	call	_cpct_getScreenPtr
	ld	b,l
	ld	c,h
	pop	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),c
;src/Enemigo.c:289: if(e->estado)
	push	de
	pop	iy
	ld	a,4 (iy)
	or	a, a
	jr	Z,00102$
;src/Enemigo.c:290: aux=0;
	ld	-4 (ix),#0x00
00102$:
;src/Enemigo.c:291: cpct_drawSprite(tilesetEnemigoCAC[e->orientacion+aux],e->memPtr,4,16);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	pop	iy
	ld	a, 3 (iy)
	add	a, -4 (ix)
	ld	l,a
	ld	h,#0x00
	add	hl, hl
	ld	de,#_tilesetEnemigoCAC
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
	ld	sp, ix
	pop	ix
	ret
;src/Enemigo.c:293: void pintaEnemigos(enemigo* arr[]){
;	---------------------------------
; Function pintaEnemigos
; ---------------------------------
_pintaEnemigos::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/Enemigo.c:295: for(cont=0;cont<maxEnemigosSala;cont++){
	ld	-1 (ix),#0x00
00104$:
;src/Enemigo.c:296: if(arr[cont]->vida>0)
	ld	l,-1 (ix)
	ld	h,#0x00
	add	hl, hl
	ex	de,hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	bc
	pop	iy
	ld	a,5 (iy)
	or	a, a
	jr	Z,00105$
;src/Enemigo.c:297: pintaEnemigo(arr[cont]);
	push	bc
	call	_pintaEnemigo
	pop	af
00105$:
;src/Enemigo.c:295: for(cont=0;cont<maxEnemigosSala;cont++){
	inc	-1 (ix)
	ld	a,-1 (ix)
	sub	a, #0x03
	jr	C,00104$
	inc	sp
	pop	ix
	ret
;src/Enemigo.c:301: void quitarVida(enemigo *e){
;	---------------------------------
; Function quitarVida
; ---------------------------------
_quitarVida::
;src/Enemigo.c:302: e->vida--;
	pop	bc
	pop	de
	push	de
	push	bc
	inc	de
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	add	a,#0xFF
	ld	(de),a
	ret
;src/Enemigo.c:305: void recibirDanyo(enemigo* arr[], personaje *p){
;	---------------------------------
; Function recibirDanyo
; ---------------------------------
_recibirDanyo::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-19
	add	hl,sp
	ld	sp,hl
;src/Enemigo.c:308: p1=0;
	ld	-16 (ix),#0x00
;src/Enemigo.c:309: p2=0;
	ld	-17 (ix),#0x00
;src/Enemigo.c:310: p3=0;
	ld	-18 (ix),#0x00
;src/Enemigo.c:311: p4=0;
	ld	-19 (ix),#0x00
;src/Enemigo.c:313: if(p->atacando){
	ld	a,6 (ix)
	ld	-8 (ix),a
	ld	a,7 (ix)
	ld	-7 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	de, #0x0007
	add	hl, de
	ld	c,(hl)
	ld	a,c
	or	a, a
	jp	Z,00121$
;src/Enemigo.c:314: for(cont=0; cont<maxEnemigosSala;cont++){
	ld	a,-8 (ix)
	add	a, #0x02
	ld	-12 (ix),a
	ld	a,-7 (ix)
	adc	a, #0x00
	ld	-11 (ix),a
	ld	-15 (ix),#0x00
00119$:
;src/Enemigo.c:315: if(arr[cont]->vida>0){
	ld	a,-15 (ix)
	ld	-6 (ix),a
	ld	-5 (ix),#0x00
	sla	-6 (ix)
	rl	-5 (ix)
	ld	a,4 (ix)
	add	a, -6 (ix)
	ld	-6 (ix),a
	ld	a,5 (ix)
	adc	a, -5 (ix)
	ld	-5 (ix),a
;src/Enemigo.c:318: if(arr[cont]->y> p->y-16)
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
;src/Enemigo.c:315: if(arr[cont]->vida>0){
	ld	a,-2 (ix)
	add	a, #0x05
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	or	a, a
	jp	Z,00120$
;src/Enemigo.c:316: if(arr[cont]->x>p->x-16)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-10 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-9 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	ld	-14 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-13 (ix),a
	ld	a,-14 (ix)
	add	a,#0xF0
	ld	h,a
	ld	a,-13 (ix)
	adc	a,#0xFF
	ld	l,a
	ld	a,h
	sub	a, -10 (ix)
	ld	a,l
	sbc	a, -9 (ix)
	jp	PO, 00170$
	xor	a, #0x80
00170$:
	jp	P,00102$
;src/Enemigo.c:317: p1=1;
	ld	-16 (ix),#0x01
00102$:
;src/Enemigo.c:318: if(arr[cont]->y> p->y-16)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	a,l
	add	a,#0xF0
	ld	c,a
	ld	a,h
	adc	a,#0xFF
	ld	b,a
	ld	d,#0x00
	ld	a,c
	sub	a, e
	ld	a,b
	sbc	a, d
	jp	PO, 00171$
	xor	a, #0x80
00171$:
	jp	P,00104$
;src/Enemigo.c:319: p2=1;
	ld	-17 (ix),#0x01
00104$:
;src/Enemigo.c:320: if(arr[cont]->x< p->x+16)
	ld	a,-14 (ix)
	add	a, #0x10
	ld	c,a
	ld	a,-13 (ix)
	adc	a, #0x00
	ld	b,a
	ld	a,-10 (ix)
	sub	a, c
	ld	a,-9 (ix)
	sbc	a, b
	jp	PO, 00172$
	xor	a, #0x80
00172$:
	jp	P,00106$
;src/Enemigo.c:321: p3=1;
	ld	-18 (ix),#0x01
00106$:
;src/Enemigo.c:322: if(arr[cont]->y<p->y+16)
	ld	bc,#0x0010
	add	hl,bc
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00173$
	xor	a, #0x80
00173$:
	jp	P,00108$
;src/Enemigo.c:323: p4=1;
	ld	-19 (ix),#0x01
00108$:
;src/Enemigo.c:324: if(p1 && p2 && p3 && p4 ){
	ld	a,-16 (ix)
	or	a, a
	jr	Z,00110$
	ld	a,-17 (ix)
	or	a, a
	jr	Z,00110$
	ld	a,-18 (ix)
	or	a, a
	jr	Z,00110$
	ld	a,-19 (ix)
	or	a, a
	jr	Z,00110$
;src/Enemigo.c:325: arr[cont]->vida=0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
;src/Enemigo.c:326: cpct_drawSolidBox(arr[cont]->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
	ld	hl,#0x0202
	push	hl
	ld	l, #0x02
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	-14 (ix),l
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a,(hl)
	ld	-10 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-9 (ix),a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	de, #0x0006
	add	hl, de
	ld	a,(hl)
	ld	-10 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-9 (ix),a
	ld	hl,#0x1004
	push	hl
	ld	a,-14 (ix)
	push	af
	inc	sp
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00110$:
;src/Enemigo.c:328: p1=0;
	ld	-16 (ix),#0x00
;src/Enemigo.c:329: p2=0;
	ld	-17 (ix),#0x00
;src/Enemigo.c:330: p3=0;
	ld	-18 (ix),#0x00
;src/Enemigo.c:331: p4=0;
	ld	-19 (ix),#0x00
00120$:
;src/Enemigo.c:314: for(cont=0; cont<maxEnemigosSala;cont++){
	inc	-15 (ix)
	ld	a,-15 (ix)
	sub	a, #0x03
	jp	C,00119$
00121$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
