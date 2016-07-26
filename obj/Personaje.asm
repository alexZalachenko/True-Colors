;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:07:49 2015
;--------------------------------------------------------
	.module Personaje
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _quitaVida
	.globl _pintarEscenario
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM1
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _desplazamientoHorizontal
	.globl _desplazamientoVertical
	.globl _muevePersonaje
	.globl _pintaPersonaje
	.globl _comprobarColision
	.globl _comprobarColisionDiagonal
	.globl _cambiarSala
	.globl _ataca
	.globl _noAtaca
	.globl _danyo
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
;src/Personaje.c:6: void muevePersonaje(personaje *p, estadoTeclado *t) {
;	---------------------------------
; Function muevePersonaje
; ---------------------------------
_muevePersonaje::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-19
	add	hl,sp
	ld	sp,hl
;src/Personaje.c:7: u8 s=7;
	ld	-19 (ix),#0x07
;src/Personaje.c:9: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/Personaje.c:10: t->W=cpct_isKeyPressed(Key_W);
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	ld	hl,#0x0807
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	ld	(bc),a
;src/Personaje.c:11: t->A=cpct_isKeyPressed(Key_A);
	ld	hl,#0x0001
	add	hl,bc
	ld	-18 (ix),l
	ld	-17 (ix),h
	push	bc
	ld	hl,#0x2008
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),a
;src/Personaje.c:12: t->S=cpct_isKeyPressed(Key_S);
	ld	hl,#0x0002
	add	hl,bc
	ld	-2 (ix),l
	ld	-1 (ix),h
	push	bc
	ld	hl,#0x1007
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
;src/Personaje.c:13: t->D=cpct_isKeyPressed(Key_D);
	ld	hl,#0x0003
	add	hl,bc
	ld	-16 (ix),l
	ld	-15 (ix),h
	push	bc
	ld	hl,#0x2007
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	(hl),a
;src/Personaje.c:14: t->K=cpct_isKeyPressed(Key_K);
	ld	hl,#0x0004
	add	hl,bc
	push	hl
	push	bc
	ld	hl,#0x2004
	call	_cpct_isKeyPressed
	ld	a,l
	pop	bc
	pop	hl
	ld	(hl),a
;src/Personaje.c:17: if(t->K)
	or	a, a
	jr	Z,00102$
;src/Personaje.c:18: ataca(p);
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_ataca
	pop	af
	pop	bc
	jr	00103$
00102$:
;src/Personaje.c:20: noAtaca(p);
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_noAtaca
	pop	af
	pop	bc
00103$:
;src/Personaje.c:23: if(t->W==0 && t->A==0 && t->S==0 && t->D==0)
	ld	a,(bc)
	or	a, a
	jr	NZ,00105$
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a,(hl)
	or	a, a
	jr	NZ,00105$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	or	a, a
	jr	NZ,00105$
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	or	a, a
;src/Personaje.c:24: return;
	jp	Z,00154$
00105$:
;src/Personaje.c:26: col=comprobarColisionDiagonal(p, t);
	push	bc
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_comprobarColisionDiagonal
	pop	af
	pop	af
	pop	bc
;src/Personaje.c:27: if(col==1)//HAY COLISION
	ld	a,l
	dec	a
	jp	Z,00154$
	jr	00114$
;src/Personaje.c:28: return;
	jp	00154$
00114$:
;src/Personaje.c:29: else if(col==7){//EL MOVIMIENTO NO ES EN DIAGONAL 
	ld	a,l
	sub	a, #0x07
	jr	NZ,00115$
;src/Personaje.c:30: if(comprobarColision(p,t)!=0)//COMPRUEBO LAS COLISIONES EN VERTICAL/HORIZONTAL
	push	bc
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_comprobarColision
	pop	af
	pop	af
	ld	a,l
	pop	bc
	or	a, a
;src/Personaje.c:31: return;
	jp	NZ,00154$
00115$:
;src/Personaje.c:34: if(t->W)
	ld	a,(bc)
	ld	-14 (ix),a
;src/Personaje.c:23: if(t->W==0 && t->A==0 && t->S==0 && t->D==0)
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	a,(hl)
	ld	-18 (ix),a
;src/Personaje.c:36: if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
	ld	a,4 (ix)
	ld	-11 (ix),a
	ld	a,5 (ix)
	ld	-10 (ix),a
	ld	hl,#_desplazamientoHorizontal + 0
	ld	e, (hl)
	ld	-13 (ix),e
	ld	-12 (ix),#0x00
;src/Personaje.c:39: p->y -= desplazamientoVertical;
	ld	a,-11 (ix)
	add	a, #0x02
	ld	-4 (ix),a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
;src/Personaje.c:34: if(t->W)
	ld	a,-14 (ix)
	or	a, a
	jp	Z,00147$
;src/Personaje.c:36: if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
	ld	a,-18 (ix)
	or	a, a
	jr	Z,00120$
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	a,-6 (ix)
	sub	a, -13 (ix)
	ld	-6 (ix),a
	ld	a,-5 (ix)
	sbc	a, -12 (ix)
	ld	-5 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
	ld	-19 (ix),#0x01
	jr	00121$
00120$:
;src/Personaje.c:37: else if(t->D) { p->x += desplazamientoHorizontal; s=0; }
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	ld	-6 (ix), a
	or	a, a
	jr	Z,00117$
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	a,-13 (ix)
	add	a, -6 (ix)
	ld	-6 (ix),a
	ld	a,-12 (ix)
	adc	a, -5 (ix)
	ld	-5 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
	ld	-19 (ix),#0x00
	jr	00121$
00117$:
;src/Personaje.c:38: else          {                                   s=3; }
	ld	-19 (ix),#0x03
00121$:
;src/Personaje.c:39: p->y -= desplazamientoVertical;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	ld	a,(#_desplazamientoVertical + 0)
	ld	-7 (ix),a
	ld	a,-6 (ix)
	sub	a, -7 (ix)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
	jp	00148$
00147$:
	ld	a,(#_desplazamientoVertical + 0)
	ld	-7 (ix),a
;src/Personaje.c:41: else if(t->A)
	ld	a,-18 (ix)
	or	a, a
	jp	Z,00144$
;src/Personaje.c:43: if     (t->W) {  p->y -= desplazamientoVertical; }
	ld	a,-14 (ix)
	or	a, a
	jr	Z,00125$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-6 (ix), a
	sub	a, -7 (ix)
	ld	-6 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	jr	00126$
00125$:
;src/Personaje.c:44: else if(t->S) {  p->y += desplazamientoVertical; }
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-6 (ix), a
	or	a, a
	jr	Z,00126$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	add	a, -7 (ix)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
00126$:
;src/Personaje.c:45: p->x -= desplazamientoHorizontal;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	a,(#_desplazamientoHorizontal + 0)
	ld	-9 (ix),a
	ld	-8 (ix),#0x00
	ld	a,-6 (ix)
	sub	a, -9 (ix)
	ld	-9 (ix),a
	ld	a,-5 (ix)
	sbc	a, -8 (ix)
	ld	-8 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,-9 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-8 (ix)
	ld	(hl),a
;src/Personaje.c:46: s=1;
	ld	-19 (ix),#0x01
	jp	00148$
00144$:
;src/Personaje.c:23: if(t->W==0 && t->A==0 && t->S==0 && t->D==0)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
;src/Personaje.c:48: else if (t->S)
	ld	-9 (ix), a
	or	a, a
	jp	Z,00141$
;src/Personaje.c:50: if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
	ld	a,-18 (ix)
	or	a, a
	jr	Z,00131$
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	a,-6 (ix)
	sub	a, -13 (ix)
	ld	-6 (ix),a
	ld	a,-5 (ix)
	sbc	a, -12 (ix)
	ld	-5 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
	ld	-19 (ix),#0x01
	jr	00132$
00131$:
;src/Personaje.c:51: else if(t->D) { p->x += desplazamientoHorizontal; s=0; }
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	ld	-6 (ix), a
	or	a, a
	jr	Z,00128$
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-5 (ix),a
	ld	a,-13 (ix)
	add	a, -6 (ix)
	ld	-6 (ix),a
	ld	a,-12 (ix)
	adc	a, -5 (ix)
	ld	-5 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-5 (ix)
	ld	(hl),a
	ld	-19 (ix),#0x00
	jr	00132$
00128$:
;src/Personaje.c:52: else          {                                   s=2; }
	ld	-19 (ix),#0x02
00132$:
;src/Personaje.c:53: p->y += desplazamientoVertical;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	h,(hl)
	ld	iy,#_desplazamientoVertical
	ld	l,0 (iy)
	ld	a,h
	add	a, l
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
	jp	00148$
00141$:
;src/Personaje.c:55: else if (t->D)
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	ld	a,(hl)
	or	a, a
	jr	Z,00148$
;src/Personaje.c:57: if     (t->W) { p->y -= desplazamientoVertical; }
	ld	a,-14 (ix)
	or	a, a
	jr	Z,00136$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-6 (ix), a
	sub	a, -7 (ix)
	ld	-6 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
	jr	00137$
00136$:
;src/Personaje.c:58: else if(t->S) { p->y += desplazamientoVertical; }
	ld	a,-9 (ix)
	or	a, a
	jr	Z,00137$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	add	a, -7 (ix)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),a
00137$:
;src/Personaje.c:59: p->x += desplazamientoHorizontal;  
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-9 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-8 (ix),a
	ld	a,(#_desplazamientoHorizontal + 0)
	ld	-6 (ix),a
	ld	-5 (ix),#0x00
	ld	a,-9 (ix)
	add	a, -6 (ix)
	ld	-9 (ix),a
	ld	a,-8 (ix)
	adc	a, -5 (ix)
	ld	-8 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,-9 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-8 (ix)
	ld	(hl),a
;src/Personaje.c:60: s=0;
	ld	-19 (ix),#0x00
00148$:
;src/Personaje.c:63: if(s!=7 && !(s==p->tipoSprite || s+4==p->tipoSprite || s+8==p->tipoSprite)){
	ld	a,-19 (ix)
	sub	a, #0x07
	jr	Z,00154$
	ld	iy,#0x0004
	ld	e,-11 (ix)
	ld	d,-10 (ix)
	add	iy, de
	ld	e, 0 (iy)
	ld	a,-19 (ix)
	sub	a, e
	jr	Z,00154$
	ld	c,-19 (ix)
	ld	b,#0x00
	ld	hl,#0x0004
	add	hl,bc
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	d,#0x00
	ld	a,e
	sub	a, -9 (ix)
	jr	NZ,00258$
	ld	a,d
	sub	a, -8 (ix)
	jr	Z,00154$
00258$:
	ld	hl,#0x0008
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,e
	sub	a, c
	jr	NZ,00259$
	ld	a,d
	sub	a, b
	jr	Z,00154$
00259$:
;src/Personaje.c:64: p->tipoSprite=s;
	ld	a,-19 (ix)
	ld	0 (iy), a
;src/Personaje.c:65: p->cambiarPaso=0;
	ld	a,-11 (ix)
	add	a, #0x05
	ld	l,a
	ld	a,-10 (ix)
	adc	a, #0x00
	ld	h,a
	ld	(hl),#0x00
00154$:
	ld	sp, ix
	pop	ix
	ret
_desplazamientoVertical:
	.db #0x02	; 2
_desplazamientoHorizontal:
	.db #0x02	; 2
;src/Personaje.c:68: void pintaPersonaje(personaje *p, estadoTeclado *t){
;	---------------------------------
; Function pintaPersonaje
; ---------------------------------
_pintaPersonaje::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/Personaje.c:71: cpct_drawSolidBox(p->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
	ld	hl,#0x0202
	push	hl
	ld	l, #0x02
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	d,l
	ld	a,4 (ix)
	ld	-5 (ix),a
	ld	a,5 (ix)
	ld	-4 (ix),a
	ld	a,-5 (ix)
	add	a, #0x0B
	ld	c,a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	b,a
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	hl
	pop	iy
	push	bc
	ld	hl,#0x1004
	push	hl
	push	de
	inc	sp
	push	iy
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/Personaje.c:72: p->memPtr=cpct_getScreenPtr(video_memory_start,p->x/4,p->y);
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-3 (ix),a
	pop	hl
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	h,e
	ld	l,d
	bit	7, d
	jr	Z,00122$
	inc	de
	inc	de
	inc	de
	ld	h,e
	ld	l,d
00122$:
	ld	a, l
	ld	l,h
	ld	h,a
	sra	h
	rr	l
	sra	h
	rr	l
	ld	d,l
	ld	iy,(_video_memory_start)
	push	bc
	ld	a,-3 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	push	iy
	call	_cpct_getScreenPtr
	ld	d,l
	ld	e,h
	pop	bc
	ld	l, c
	ld	h, b
	ld	(hl),d
	inc	hl
	ld	(hl),e
;src/Personaje.c:74: if(t->A==t->W && t->W==t->S && t->S==t->D){//PINTO EL SPRITE DE TIPO PARADO
	ld	e,6 (ix)
	ld	d,7 (ix)
	push	de
	pop	iy
	push	iy
	pop	hl
	inc	hl
	ld	d,(hl)
	ld	e, 0 (iy)
;src/Personaje.c:75: while(p->tipoSprite>3)
	ld	a,-5 (ix)
	add	a, #0x04
	ld	-2 (ix),a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
;src/Personaje.c:74: if(t->A==t->W && t->W==t->S && t->S==t->D){//PINTO EL SPRITE DE TIPO PARADO
	ld	a,d
	sub	a, e
	jr	NZ,00110$
	push	iy
	pop	hl
	inc	hl
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, d
	jr	NZ,00110$
	ld	e,3 (iy)
	ld	a,d
	sub	a, e
	jr	NZ,00110$
;src/Personaje.c:75: while(p->tipoSprite>3)
00101$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	h,(hl)
	ld	a,#0x03
	sub	a, h
	jr	NC,00111$
;src/Personaje.c:76: p->tipoSprite-=4;
	ld	a,h
	add	a,#0xFC
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
	jr	00101$
00110$:
;src/Personaje.c:79: if(p->cambiarPaso==10){
	ld	a,-5 (ix)
	add	a, #0x05
	ld	l,a
	ld	a,-4 (ix)
	adc	a, #0x00
	ld	h,a
	ld	e,(hl)
	ld	a,e
;src/Personaje.c:80: p->cambiarPaso=0;
	sub	a,#0x0A
	jr	NZ,00107$
	ld	(hl),a
;src/Personaje.c:81: p->tipoSprite=(p->tipoSprite+4)%12;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	de,#0x0004
	add	hl,de
	push	bc
	ld	de,#0x000C
	push	de
	push	hl
	call	__modsint
	pop	af
	pop	af
	pop	bc
	ld	d,l
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),d
;src/Personaje.c:82: if(p->tipoSprite<4)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	h,(hl)
	ld	a,d
	sub	a, #0x04
	jr	NC,00111$
;src/Personaje.c:83: p->tipoSprite+=4;
	ld	a,h
	add	a, #0x04
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
	jr	00111$
00107$:
;src/Personaje.c:86: p->cambiarPaso++;
	inc	e
	ld	(hl),e
00111$:
;src/Personaje.c:89: if(p->atacando){
	pop	hl
	push	hl
	ld	de, #0x0007
	add	hl, de
	ld	a,(hl)
;src/Personaje.c:81: p->tipoSprite=(p->tipoSprite+4)%12;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
;src/Personaje.c:89: if(p->atacando){
	or	a, a
	jr	Z,00118$
;src/Personaje.c:90: aux=p->tipoSprite;
;src/Personaje.c:91: while(aux>3)
00114$:
	ld	a,#0x03
	sub	a, e
	jr	NC,00116$
;src/Personaje.c:92: aux-=4;
	ld	a,e
	add	a,#0xFC
	ld	e,a
	jr	00114$
00116$:
;src/Personaje.c:93: aux+=12;
	ld	a,e
	add	a, #0x0C
	ld	d,a
;src/Personaje.c:94: cpct_drawSprite(personaje_tileset[aux],p->memPtr,4,16);
	ld	l, c
	ld	h, b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,d
	ld	h,#0x00
	add	hl, hl
	ld	de,#_personaje_tileset
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
	jr	00120$
00118$:
;src/Personaje.c:97: cpct_drawSprite(personaje_tileset[p->tipoSprite],p->memPtr,4,16);
	ld	l, c
	ld	h, b
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,e
	ld	h,#0x00
	add	hl, hl
	ld	de,#_personaje_tileset
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x1004
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
00120$:
	ld	sp, ix
	pop	ix
	ret
;src/Personaje.c:99: u8 comprobarColision(personaje *p, estadoTeclado *t){
;	---------------------------------
; Function comprobarColision
; ---------------------------------
_comprobarColision::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-36
	add	hl,sp
	ld	sp,hl
;src/Personaje.c:100: int posx=p->x; 
	ld	a,4 (ix)
	ld	-22 (ix),a
	ld	a,5 (ix)
	ld	-21 (ix),a
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	ld	a,(hl)
	ld	-35 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-34 (ix),a
;src/Personaje.c:101: u8  posy=p->y;
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	inc	hl
	inc	hl
	ld	a,(hl)
;src/Personaje.c:102: u8 casX=posy/16, casY=posx/16;
	ld	-32 (ix), a
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	ld	-33 (ix),a
	ld	a,-35 (ix)
	ld	-13 (ix),a
	ld	a,-34 (ix)
	ld	-12 (ix),a
	bit	7, -34 (ix)
	jr	Z,00178$
	ld	a,-35 (ix)
	add	a, #0x0F
	ld	-13 (ix),a
	ld	a,-34 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
00178$:
	sra	-12 (ix)
	rr	-13 (ix)
	sra	-12 (ix)
	rr	-13 (ix)
	sra	-12 (ix)
	rr	-13 (ix)
	sra	-12 (ix)
	rr	-13 (ix)
	ld	a,-13 (ix)
	ld	-31 (ix),a
;src/Personaje.c:104: if     (t->W){
	ld	a,6 (ix)
	ld	-13 (ix),a
	ld	a,7 (ix)
	ld	-12 (ix),a
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	ld	a,(hl)
	ld	-26 (ix),a
;src/Personaje.c:105: if(posy%16==0){
	ld	a,-32 (ix)
	and	a, #0x0F
	ld	-23 (ix),a
;src/Personaje.c:106: if(posx%16==0){
	ld	hl,#0x0010
	push	hl
	ld	l,-35 (ix)
	ld	h,-34 (ix)
	push	hl
;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
	call	__modsint
	pop	af
	pop	af
	ld	-19 (ix),h
	ld	-20 (ix),l
	ld	a,-22 (ix)
	add	a, #0x06
	ld	-4 (ix),a
	ld	a,-21 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
;src/Personaje.c:112: if (casX-1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
	ld	a,-33 (ix)
	ld	-9 (ix),a
	ld	-8 (ix),#0x00
;src/Personaje.c:120: else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
	ld	a,-31 (ix)
	inc	a
	ld	-18 (ix),a
;src/Personaje.c:104: if     (t->W){
	ld	a,-26 (ix)
	or	a, a
	jp	Z,00166$
;src/Personaje.c:105: if(posy%16==0){
	ld	a,-23 (ix)
	or	a, a
	jp	NZ,00114$
;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
	ld	a,-33 (ix)
	add	a,#0xFF
	ld	-26 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,(hl)
	ld	-5 (ix),a
	ld	a,-26 (ix)
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	-26 (ix),a
	ld	a,-5 (ix)
	ld	-7 (ix),a
	ld	-6 (ix),#0x00
	ld	a,-7 (ix)
	ld	-6 (ix),a
	ld	-7 (ix),#0x00
;src/Personaje.c:106: if(posx%16==0){
	ld	a,-19 (ix)
	or	a,-20 (ix)
	jp	NZ,00111$
;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
	ld	a,-7 (ix)
	add	a, #<(_mapas)
	ld	-11 (ix),a
	ld	a,-6 (ix)
	adc	a, #>(_mapas)
	ld	-10 (ix),a
	ld	a,-26 (ix)
	add	a, -11 (ix)
	ld	-11 (ix),a
	ld	a,#0x00
	adc	a, -10 (ix)
	ld	-10 (ix),a
	ld	a,-31 (ix)
	add	a, -11 (ix)
	ld	-11 (ix),a
	ld	a,#0x00
	adc	a, -10 (ix)
	ld	-10 (ix),a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	a,(hl)
	ld	-11 (ix), a
	sub	a, #0x02
	jp	NZ,00106$
;src/Personaje.c:110: for (i = 0; i < 4; ++i)
	ld	a,#<(_mapas)
	add	a, -7 (ix)
	ld	-30 (ix),a
	ld	a,#>(_mapas)
	adc	a, -6 (ix)
	ld	-29 (ix),a
	ld	a,-30 (ix)
	add	a, #0xF0
	ld	-30 (ix),a
	ld	a,-29 (ix)
	adc	a, #0x00
	ld	-29 (ix),a
	ld	-36 (ix),#0x00
00168$:
;src/Personaje.c:112: if (casX-1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
	ld	a,-9 (ix)
	add	a,#0xFF
	ld	-28 (ix),a
	ld	a,-8 (ix)
	adc	a,#0xFF
	ld	-27 (ix),a
	ld	a,-36 (ix)
	add	a, a
	add	a, a
	ld	-5 (ix),a
	ld	a,-30 (ix)
	add	a, -5 (ix)
	ld	-2 (ix),a
	ld	a,-29 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-15 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-14 (ix),a
	ld	a,-15 (ix)
	sub	a, -28 (ix)
	jr	NZ,00169$
	ld	a,-14 (ix)
	sub	a, -27 (ix)
	jr	NZ,00169$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	a,-31 (ix)
	sub	a,(hl)
	jr	NZ,00169$
;src/Personaje.c:113: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	d,(hl)
	ld	a,-32 (ix)
	push	af
	inc	sp
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	push	de
	inc	sp
	call	_cambiarSala
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Personaje.c:114: return 2;
	ld	l,#0x02
	jp	00176$
00169$:
;src/Personaje.c:110: for (i = 0; i < 4; ++i)
	inc	-36 (ix)
	ld	a,-36 (ix)
	sub	a, #0x04
	jp	C,00168$
00106$:
;src/Personaje.c:118: return mapas[p->salaActual].posiciones[casX-1][casY];
	ld	l,-11 (ix)
	jp	00176$
00111$:
;src/Personaje.c:120: else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
	ld	a,-7 (ix)
	add	a, #<(_mapas)
	ld	-15 (ix),a
	ld	a,-6 (ix)
	adc	a, #>(_mapas)
	ld	-14 (ix),a
	ld	a,-26 (ix)
	add	a, -15 (ix)
	ld	-15 (ix),a
	ld	a,#0x00
	adc	a, -14 (ix)
	ld	-14 (ix),a
	ld	a,-31 (ix)
	add	a, -15 (ix)
	ld	-2 (ix),a
	ld	a,#0x00
	adc	a, -14 (ix)
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-2 (ix), a
	or	a, a
	jr	NZ,00107$
	ld	a,-18 (ix)
	add	a, -15 (ix)
	ld	-15 (ix),a
	ld	a,#0x00
	adc	a, -14 (ix)
	ld	-14 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,(hl)
	or	a, a
	jr	Z,00114$
00107$:
;src/Personaje.c:121: return 1;
	ld	l,#0x01
	jp	00176$
00114$:
;src/Personaje.c:123: return 0;
	ld	l,#0x00
	jp	00176$
00166$:
;src/Personaje.c:125: else if(t->A){
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	inc	hl
	ld	d,(hl)
;src/Personaje.c:128: if(mapas[p->salaActual].posiciones[casX][casY-1]==2){
	ld	a,-33 (ix)
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	-15 (ix),a
;src/Personaje.c:133: if (casX==mapas[p->salaActual].puertas[i].x && casY-1==mapas[p->salaActual].puertas[i].y){
	ld	a,-31 (ix)
	ld	-2 (ix),a
	ld	-1 (ix),#0x00
;src/Personaje.c:141: else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
	ld	a,-33 (ix)
	inc	a
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	-28 (ix),a
;src/Personaje.c:125: else if(t->A){
	ld	a,d
	or	a, a
	jp	Z,00163$
;src/Personaje.c:126: if(posx%16==0){
	ld	a,-19 (ix)
	or	a,-20 (ix)
	jp	NZ,00128$
;src/Personaje.c:128: if(mapas[p->salaActual].posiciones[casX][casY-1]==2){
	ld	a,-31 (ix)
	add	a,#0xFF
	ld	-30 (ix),a
;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	h,(hl)
	ld	-10 (ix),h
	ld	-11 (ix),#0x00
;src/Personaje.c:127: if(posy%16==0){
	ld	a,-23 (ix)
	or	a, a
	jp	NZ,00125$
;src/Personaje.c:128: if(mapas[p->salaActual].posiciones[casX][casY-1]==2){
	ld	de,#_mapas+0
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	add	hl,de
	ld	c,-15 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	c,-30 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	a,(hl)
	ld	-7 (ix), a
	sub	a, #0x02
	jp	NZ,00120$
;src/Personaje.c:131: for (i = 0; i < 4; ++i)
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	add	hl,de
	ld	a,l
	add	a, #0xF0
	ld	-25 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-24 (ix),a
	ld	-36 (ix),#0x00
00170$:
;src/Personaje.c:133: if (casX==mapas[p->salaActual].puertas[i].x && casY-1==mapas[p->salaActual].puertas[i].y){
	ld	a,-36 (ix)
	add	a, a
	add	a, a
	ld	h,a
	ld	a,-25 (ix)
	add	a, h
	ld	e,a
	ld	a,-24 (ix)
	adc	a, #0x00
	ld	d,a
	ld	l, e
	ld	h, d
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,-9 (ix)
	sub	a, b
	jr	NZ,00171$
	ld	a,-8 (ix)
	sub	a, c
	jr	NZ,00171$
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	dec	bc
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-17 (ix),a
	ld	-16 (ix),#0x00
	ld	a,c
	sub	a, -17 (ix)
	jr	NZ,00171$
	ld	a,b
	sub	a, -16 (ix)
	jr	NZ,00171$
;src/Personaje.c:134: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	d,(hl)
	ld	a,-32 (ix)
	push	af
	inc	sp
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	push	de
	inc	sp
	call	_cambiarSala
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Personaje.c:135: return 2;
	ld	l,#0x02
	jp	00176$
00171$:
;src/Personaje.c:131: for (i = 0; i < 4; ++i)
	inc	-36 (ix)
	ld	a,-36 (ix)
	sub	a, #0x04
	jr	C,00170$
00120$:
;src/Personaje.c:139: return mapas[p->salaActual].posiciones[casX][casY-1];
	ld	l,-7 (ix)
	jp	00176$
00125$:
;src/Personaje.c:141: else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
	ld	a,#<(_mapas)
	add	a, -11 (ix)
	ld	e,a
	ld	a,#>(_mapas)
	adc	a, -10 (ix)
	ld	d,a
	ld	l,-15 (ix)
	ld	h,#0x00
	add	hl,de
	ld	c,-30 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	a,(hl)
	or	a, a
	jr	NZ,00121$
	ld	l,-28 (ix)
	ld	h,#0x00
	add	hl,de
	ld	e,-30 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00128$
00121$:
;src/Personaje.c:142: return 1;
	ld	l,#0x01
	jp	00176$
00128$:
;src/Personaje.c:144: return 0;
	ld	l,#0x00
	jp	00176$
00163$:
;src/Personaje.c:146: else if(t->S){
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	inc	hl
	inc	hl
	ld	a,(hl)
	or	a, a
	jp	Z,00160$
;src/Personaje.c:147: if(posy%16==0){
	ld	a,-23 (ix)
	or	a, a
	jp	NZ,00142$
;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	d,(hl)
	ld	e,#0x00
;src/Personaje.c:148: if(posx%16==0){
	ld	a,-19 (ix)
	or	a,-20 (ix)
	jp	NZ,00139$
;src/Personaje.c:149: if(mapas[p->salaActual].posiciones[casX+1][casY]==2){
	ld	hl,#_mapas
	add	hl,de
	ld	c,-28 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	c,-31 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	c,(hl)
	ld	a,c
	sub	a, #0x02
	jp	NZ,00134$
;src/Personaje.c:152: for (i = 0; i < 4; ++i)
	ld	hl,#_mapas
	add	hl,de
	ld	a,l
	add	a, #0xF0
	ld	-17 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-16 (ix),a
	ld	e,#0x00
00172$:
;src/Personaje.c:154: if (casX+1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
	ld	a,-9 (ix)
	add	a, #0x01
	ld	-25 (ix),a
	ld	a,-8 (ix)
	adc	a, #0x00
	ld	-24 (ix),a
	ld	a,e
	add	a, a
	add	a, a
	ld	h,a
	ld	a,-17 (ix)
	add	a, h
	ld	-30 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-29 (ix),a
	ld	l,-30 (ix)
	ld	h,-29 (ix)
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,-25 (ix)
	sub	a, d
	jr	NZ,00173$
	ld	a,-24 (ix)
	sub	a, b
	jr	NZ,00173$
	ld	l,-30 (ix)
	ld	h,-29 (ix)
	inc	hl
	inc	hl
	ld	a,-31 (ix)
	sub	a,(hl)
	jr	NZ,00173$
;src/Personaje.c:155: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
	ld	l,-30 (ix)
	ld	h,-29 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	a,-32 (ix)
	push	af
	inc	sp
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	a,e
	push	af
	inc	sp
	call	_cambiarSala
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Personaje.c:156: return 2;
	ld	l,#0x02
	jp	00176$
00173$:
;src/Personaje.c:152: for (i = 0; i < 4; ++i)
	inc	e
	ld	a,e
	sub	a, #0x04
	jr	C,00172$
00134$:
;src/Personaje.c:160: return mapas[p->salaActual].posiciones[casX+1][casY];
	ld	l,c
	jp	00176$
00139$:
;src/Personaje.c:162: else if(mapas[p->salaActual].posiciones[casX+1][casY]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
	ld	hl,#_mapas+0
	add	hl,de
	ld	a,l
	add	a, -28 (ix)
	ld	e,a
	ld	a,h
	adc	a, #0x00
	ld	d,a
	ld	l,-31 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	NZ,00135$
	ld	l,-18 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00142$
00135$:
;src/Personaje.c:163: return 1;
	ld	l,#0x01
	jp	00176$
00142$:
;src/Personaje.c:165: return 0;
	ld	l,#0x00
	jp	00176$
00160$:
;src/Personaje.c:167: else if(t->D){  
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a,(hl)
	or	a, a
	jp	Z,00164$
;src/Personaje.c:168: if(posx%16==0){
	ld	a,-19 (ix)
	or	a,-20 (ix)
	jp	NZ,00156$
;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	d,(hl)
	ld	e,#0x00
;src/Personaje.c:169: if(posy%16==0){
	ld	a,-23 (ix)
	or	a, a
	jp	NZ,00153$
;src/Personaje.c:170: if(mapas[p->salaActual].posiciones[casX][casY+1]==2){
	ld	hl,#_mapas
	add	hl,de
	ld	c,-15 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	c,-18 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	c,(hl)
	ld	a,c
	sub	a, #0x02
	jp	NZ,00148$
;src/Personaje.c:173: for (i = 0; i < 4; ++i)
	ld	hl,#_mapas
	add	hl,de
	ld	a,l
	add	a, #0xF0
	ld	-17 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-16 (ix),a
	ld	e,#0x00
00174$:
;src/Personaje.c:175: if (casX==mapas[p->salaActual].puertas[i].x && casY+1==mapas[p->salaActual].puertas[i].y){
	ld	a,e
	add	a, a
	add	a, a
	ld	h,a
	ld	a,-17 (ix)
	add	a, h
	ld	-25 (ix),a
	ld	a,-16 (ix)
	adc	a, #0x00
	ld	-24 (ix),a
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,-9 (ix)
	sub	a, d
	jr	NZ,00175$
	ld	a,-8 (ix)
	sub	a, b
	jr	NZ,00175$
	ld	a,-2 (ix)
	add	a, #0x01
	ld	-30 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-29 (ix),a
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-11 (ix),a
	ld	-10 (ix),#0x00
	ld	a,-30 (ix)
	sub	a, -11 (ix)
	jr	NZ,00175$
	ld	a,-29 (ix)
	sub	a, -10 (ix)
	jr	NZ,00175$
;src/Personaje.c:176: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	a,-32 (ix)
	push	af
	inc	sp
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	ld	a,e
	push	af
	inc	sp
	call	_cambiarSala
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Personaje.c:177: return 2;
	ld	l,#0x02
	jr	00176$
00175$:
;src/Personaje.c:173: for (i = 0; i < 4; ++i)
	inc	e
	ld	a,e
	sub	a, #0x04
	jp	C,00174$
00148$:
;src/Personaje.c:181: return mapas[p->salaActual].posiciones[casX][casY+1];
	ld	l,c
	jr	00176$
00153$:
;src/Personaje.c:183: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
	ld	hl,#_mapas+0
	add	hl,de
	ex	de,hl
	ld	l,-15 (ix)
	ld	h,#0x00
	add	hl,de
	ld	c,-18 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	a,(hl)
	or	a, a
	jr	NZ,00149$
	ld	l,-28 (ix)
	ld	h,#0x00
	add	hl,de
	ld	e,-18 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00156$
00149$:
;src/Personaje.c:184: return 1;
	ld	l,#0x01
	jr	00176$
00156$:
;src/Personaje.c:186: return 0;
	ld	l,#0x00
	jr	00176$
00164$:
;src/Personaje.c:188: return 7;  
	ld	l,#0x07
00176$:
	ld	sp, ix
	pop	ix
	ret
;src/Personaje.c:190: u8 comprobarColisionDiagonal(personaje *p, estadoTeclado *t){
;	---------------------------------
; Function comprobarColisionDiagonal
; ---------------------------------
_comprobarColisionDiagonal::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;src/Personaje.c:192: u8 casX=p->y/16, casY=p->x/16;
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	ld	a,2 (iy)
	ld	-1 (ix), a
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	ld	-10 (ix),a
	ld	l, c
	ld	h, b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, e
	ld	h, d
	bit	7, d
	jr	Z,00178$
	ld	hl,#0x000F
	add	hl,de
00178$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	-11 (ix),l
;src/Personaje.c:193: if(p->x%16!=0 && p->y%16!=0)
	push	bc
	ld	hl,#0x0010
	push	hl
	push	de
	call	__modsint
	pop	af
	pop	af
	ld	-2 (ix),h
	ld	-3 (ix),l
	pop	bc
	ld	a,-1 (ix)
	and	a, #0x0F
	ld	-1 (ix),a
	ld	a,-2 (ix)
	or	a,-3 (ix)
	jr	Z,00102$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00102$
;src/Personaje.c:194: return 0;
	ld	l,#0x00
	jp	00176$
00102$:
;src/Personaje.c:195: if     (t->W && t->A)
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	a,(de)
	ld	-4 (ix),a
	push	de
	pop	iy
	inc	iy
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00117$
	ld	a, 0 (iy)
	or	a, a
	jr	Z,00117$
;src/Personaje.c:196: direccion=1;
	ld	e,#0x01
	jr	00118$
00117$:
;src/Personaje.c:197: else if(t->W && t->D)
	ld	hl,#0x0003
	add	hl,de
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,-4 (ix)
	or	a, a
	jr	Z,00113$
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a,(hl)
	or	a, a
	jr	Z,00113$
;src/Personaje.c:198: direccion=2;
	ld	e,#0x02
	jr	00118$
00113$:
;src/Personaje.c:199: else if(t->S && t->D)
	ex	de,hl
	inc	hl
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a, a
	jr	Z,00109$
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a,(hl)
	or	a, a
	jr	Z,00109$
;src/Personaje.c:200: direccion=3;
	ld	e,#0x03
	jr	00118$
00109$:
;src/Personaje.c:201: else if(t->S && t->A)
	ld	a,d
	or	a, a
	jr	Z,00105$
	ld	a, 0 (iy)
	or	a, a
	jr	Z,00105$
;src/Personaje.c:202: direccion=4;   
	ld	e,#0x04
	jr	00118$
00105$:
;src/Personaje.c:204: return 7;  
	ld	l,#0x07
	jp	00176$
00118$:
;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
	ld	hl,#0x0006
	add	hl,bc
	ld	c,l
	ld	b,h
	push	de
	ld	a,-10 (ix)
	ld	e,a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, a
	pop	de
	ld	-6 (ix),a
	ld	a,-11 (ix)
	add	a,#0xFF
	ld	-4 (ix),a
;src/Personaje.c:209: mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
	ld	l,-10 (ix)
	inc	l
;src/Personaje.c:213: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
	ld	a,-11 (ix)
	inc	a
	ld	-7 (ix),a
;src/Personaje.c:209: mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
	push	de
	ld	e,l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	pop	de
	ld	-8 (ix),l
;src/Personaje.c:206: if(p->x%16==0 && p->y%16!=0){
	ld	a,-2 (ix)
	or	a,-3 (ix)
	jr	NZ,00131$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00131$
;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
	ld	a,(bc)
	ld	h, a
	ld	l,#0x00
;src/Personaje.c:207: if(direccion==1 || direccion==4){
	ld	a,e
	dec	a
	jr	Z,00126$
	ld	a,e
	sub	a, #0x04
	jr	NZ,00127$
00126$:
;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
	ld	de,#_mapas+0
	add	hl,de
	ex	de,hl
	ld	l,-6 (ix)
	ld	h,#0x00
	add	hl,de
	ld	c,-4 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	a,(hl)
	or	a, a
	jr	NZ,00120$
;src/Personaje.c:209: mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
	ld	l,-8 (ix)
	ld	h,#0x00
	add	hl,de
	ld	e,-4 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00128$
00120$:
;src/Personaje.c:210: return 1;
	ld	l,#0x01
	jp	00176$
00127$:
;src/Personaje.c:213: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
	ld	de,#_mapas+0
	add	hl,de
	ex	de,hl
	ld	l,-8 (ix)
	ld	h,#0x00
	add	hl,de
	ld	c,-7 (ix)
	ld	b,#0x00
	add	hl,bc
	ld	a,(hl)
	or	a, a
	jr	NZ,00123$
;src/Personaje.c:214: mapas[p->salaActual].posiciones[casX][casY+1]!=0)
	ld	l,-6 (ix)
	ld	h,#0x00
	add	hl,de
	ld	e,-7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00128$
00123$:
;src/Personaje.c:215: return 1;
	ld	l,#0x01
	jp	00176$
00128$:
;src/Personaje.c:217: return 0;
	ld	l,#0x00
	jp	00176$
00131$:
;src/Personaje.c:220: switch(direccion){
	ld	a,e
	sub	a, #0x01
	jp	C,00175$
	ld	a,#0x04
	sub	a, e
	jp	C,00175$
	dec	e
;src/Personaje.c:223: if(mapas[p->salaActual].posiciones[casX-1][casY-1]!=0 ||
	ld	a,-10 (ix)
	add	a,#0xFF
;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
	push	af
	ld	a,(bc)
	ld	c,a
	pop	af
;src/Personaje.c:223: if(mapas[p->salaActual].posiciones[casX-1][casY-1]!=0 ||
	push	de
	ld	e,a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, a
	pop	de
	ld	-9 (ix),a
;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
	ld	b,c
	ld	c,#0x00
;src/Personaje.c:220: switch(direccion){
	ld	d,#0x00
	ld	hl,#00326$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00326$:
	jp	00133$
	jp	00145$
	jp	00154$
	jp	00163$
;src/Personaje.c:221: case 1:
00133$:
;src/Personaje.c:222: if(p->x%16==0 && p->y%16==0){//CENTRADO
	ld	a,-2 (ix)
	or	a,-3 (ix)
	jr	NZ,00140$
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00140$
;src/Personaje.c:223: if(mapas[p->salaActual].posiciones[casX-1][casY-1]!=0 ||
	ld	hl,#_mapas+0
	add	hl,bc
	ex	de,hl
	ld	l,-9 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,-4 (ix)
	add	a, l
	ld	l,a
	ld	a,#0x00
	adc	a, h
	ld	h,a
	ld	a,(hl)
	or	a, a
	jr	NZ,00134$
;src/Personaje.c:224: mapas[p->salaActual].posiciones[casX][casY-1]!=0)
	ld	l,-6 (ix)
	ld	h,#0x00
	add	hl,de
	ld	e,-4 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00141$
00134$:
;src/Personaje.c:225: return 1;
	ld	l,#0x01
	jp	00176$
00140$:
;src/Personaje.c:228: if(mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
	ld	hl,#_mapas
	add	hl,bc
	ld	e,-9 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00141$
;src/Personaje.c:229: return 1;
	ld	l,#0x01
	jp	00176$
00141$:
;src/Personaje.c:231: if(mapas[p->salaActual].posiciones[casX-1][casY]!=0)//CASILLAS COMUNES
	ld	hl,#_mapas
	add	hl,bc
	ld	e,-9 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-11 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00144$
;src/Personaje.c:232: return 1;
	ld	l,#0x01
	jp	00176$
00144$:
;src/Personaje.c:233: return 0;
	ld	l,#0x00
	jp	00176$
;src/Personaje.c:236: case 2:
00145$:
;src/Personaje.c:237: if(p->x%16==0 && p->y%16==0){//CENTRADO
	ld	a,-2 (ix)
	or	a,-3 (ix)
	jr	NZ,00149$
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00149$
;src/Personaje.c:238: if(mapas[p->salaActual].posiciones[casX][casY+1]!=0)
	ld	hl,#_mapas
	add	hl,bc
	ld	e,-6 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00149$
;src/Personaje.c:239: return 1;
	ld	l,#0x01
	jp	00176$
00149$:
;src/Personaje.c:241: if(mapas[p->salaActual].posiciones[casX-1][casY+1]!=0 || 
	ld	hl,#_mapas
	add	hl,bc
	ld	a,-9 (ix)
	add	a, l
	ld	e,a
	ld	a,#0x00
	adc	a, h
	ld	d,a
	ld	l,-7 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	NZ,00151$
;src/Personaje.c:242: mapas[p->salaActual].posiciones[casX-1][casY]!=0    )//CASILLAS COMUNES
	ld	l,-11 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00152$
00151$:
;src/Personaje.c:243: return 1;
	ld	l,#0x01
	jp	00176$
00152$:
;src/Personaje.c:244: return 0;
	ld	l,#0x00
	jp	00176$
;src/Personaje.c:247: case 3:
00154$:
;src/Personaje.c:248: if(p->x%16==0 && p->y%16==0){//CENTRADO
	ld	a,-2 (ix)
	or	a,-3 (ix)
	jr	NZ,00158$
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00158$
;src/Personaje.c:249: if(mapas[p->salaActual].posiciones[casX][casY+1]!=0)
	ld	hl,#_mapas
	add	hl,bc
	ld	e,-6 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00158$
;src/Personaje.c:250: return 1;
	ld	l,#0x01
	jp	00176$
00158$:
;src/Personaje.c:252: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
	ld	hl,#_mapas
	add	hl,bc
	ld	a,-8 (ix)
	add	a, l
	ld	e,a
	ld	a,#0x00
	adc	a, h
	ld	d,a
	ld	l,-7 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	NZ,00160$
;src/Personaje.c:253: mapas[p->salaActual].posiciones[casX+1][casY]!=0    )//CASILLAS COMUNES
	ld	l,-11 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00161$
00160$:
;src/Personaje.c:254: return 1;
	ld	l,#0x01
	jp	00176$
00161$:
;src/Personaje.c:255: return 0;
	ld	l,#0x00
	jr	00176$
;src/Personaje.c:258: case 4:
00163$:
;src/Personaje.c:259: if(p->x%16==0 && p->y%16==0){//CENTRADO
	ld	a,-2 (ix)
	or	a,-3 (ix)
	jr	NZ,00170$
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00170$
;src/Personaje.c:260: if(mapas[p->salaActual].posiciones[casX+1][casY-1]!=0 ||
	ld	hl,#_mapas
	add	hl,bc
	ex	de,hl
	ld	l,-8 (ix)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	add	a, -4 (ix)
	ld	l,a
	ld	a,h
	adc	a, #0x00
	ld	h,a
	ld	a,(hl)
	or	a, a
	jr	NZ,00164$
;src/Personaje.c:261: mapas[p->salaActual].posiciones[casX][casY-1]!=0)
	ld	l,-6 (ix)
	ld	h,#0x00
	add	hl,de
	ld	e,-4 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00171$
00164$:
;src/Personaje.c:262: return 1;
	ld	l,#0x01
	jr	00176$
00170$:
;src/Personaje.c:265: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
	ld	hl,#_mapas
	add	hl,bc
	ld	e,-8 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00171$
;src/Personaje.c:266: return 1;
	ld	l,#0x01
	jr	00176$
00171$:
;src/Personaje.c:268: if(mapas[p->salaActual].posiciones[casX+1][casY]!=0)//CASILLAS COMUNES
	ld	hl,#_mapas
	add	hl,bc
	ld	e,-8 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,-11 (ix)
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	or	a, a
	jr	Z,00174$
;src/Personaje.c:269: return 1;
	ld	l,#0x01
	jr	00176$
00174$:
;src/Personaje.c:270: return 0;
	ld	l,#0x00
	jr	00176$
;src/Personaje.c:272: }
00175$:
;src/Personaje.c:273: return 0;
	ld	l,#0x00
00176$:
	ld	sp, ix
	pop	ix
	ret
;src/Personaje.c:275: void cambiarSala(u8 s, personaje *p, int x, u8 y){
;	---------------------------------
; Function cambiarSala
; ---------------------------------
_cambiarSala::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/Personaje.c:276: p->salaActual=s;
	ld	c,5 (ix)
	ld	b,6 (ix)
	ld	hl,#0x0006
	add	hl,bc
	ex	de,hl
	ld	a,4 (ix)
	ld	(de),a
;src/Personaje.c:278: if(x==16)
	ld	a,7 (ix)
	sub	a, #0x10
	jr	NZ,00108$
	ld	a,8 (ix)
	or	a, a
	jr	NZ,00108$
;src/Personaje.c:279: p->x=288;
	ld	l, c
	ld	h, b
	ld	(hl),#0x20
	inc	hl
	ld	(hl),#0x01
	jr	00109$
00108$:
;src/Personaje.c:280: else if(x==288)
	ld	a,7 (ix)
	sub	a, #0x20
	jr	NZ,00105$
	ld	a,8 (ix)
	dec	a
	jr	NZ,00105$
;src/Personaje.c:281: p->x=16;
	ld	l, c
	ld	h, b
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
	jr	00109$
00105$:
;src/Personaje.c:283: p->y=160;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
;src/Personaje.c:282: else if(y==16)
	ld	a,9 (ix)
	sub	a, #0x10
	jr	NZ,00102$
;src/Personaje.c:283: p->y=160;
	ld	(hl),#0xA0
	jr	00109$
00102$:
;src/Personaje.c:285: p->y=16;
	ld	(hl),#0x10
00109$:
;src/Personaje.c:287: p->generaEnemigos=1;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x01
;src/Personaje.c:288: pintarEscenario(p->salaActual);
	ld	a,(de)
	push	af
	inc	sp
	call	_pintarEscenario
	inc	sp
	pop	ix
	ret
;src/Personaje.c:290: void ataca(personaje *p){
;	---------------------------------
; Function ataca
; ---------------------------------
_ataca::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/Personaje.c:291: if(p->ataquePreparado){
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	hl,#0x0009
	add	hl,bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
;src/Personaje.c:292: p->atacando=1;
	ld	hl,#0x0007
	add	hl,bc
	ld	(hl),#0x01
;src/Personaje.c:293: p->cansancioAtaque++;
	ld	hl,#0x0008
	add	hl,bc
	ld	a,(hl)
	inc	a
	ld	(hl),a
;src/Personaje.c:294: if(p->cansancioAtaque==7)
	sub	a, #0x07
	jr	NZ,00106$
;src/Personaje.c:295: p->ataquePreparado=0;
	pop	hl
	push	hl
	ld	(hl),#0x00
	jr	00106$
00104$:
;src/Personaje.c:298: noAtaca(p);
	push	bc
	call	_noAtaca
	pop	af
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/Personaje.c:300: void noAtaca(personaje *p){
;	---------------------------------
; Function noAtaca
; ---------------------------------
_noAtaca::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/Personaje.c:301: p->atacando=0;
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x00
;src/Personaje.c:302: p->cansancioAtaque--;
	ld	hl,#0x0008
	add	hl,de
	ld	a,(hl)
	add	a,#0xFF
	ld	(hl),a
;src/Personaje.c:303: if(p->cansancioAtaque==0)
	or	a, a
	jr	NZ,00103$
;src/Personaje.c:304: p->ataquePreparado=1;
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x01
00103$:
	pop	ix
	ret
;src/Personaje.c:306: void danyo(personaje *p){
;	---------------------------------
; Function danyo
; ---------------------------------
_danyo::
;src/Personaje.c:307: p->vida-=1;
	pop	bc
	pop	de
	push	de
	push	bc
	inc	de
	inc	de
	inc	de
	ld	a,(de)
	add	a,#0xFF
	ld	(de),a
;src/Personaje.c:308: quitaVida();
	jp  _quitaVida
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
