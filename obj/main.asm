;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:08:17 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ActualizarArr
	.globl _recibirDanyo
	.globl _generaEnemigos
	.globl _pintaEnemigos
	.globl _pintaPersonaje
	.globl _muevePersonaje
	.globl _desactualizar
	.globl _iniciaHud
	.globl _pintaVida
	.globl _menuInicio
	.globl _pintarEscenario
	.globl _malloc
	.globl _cpct_setRandomSeedUniform_u8
	.globl _cpct_getScreenPtr
	.globl _cpct_setPalette
	.globl _cpct_fw2hw
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_disableFirmware
	.globl _init
	.globl _pintarElementos
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
;src/main.c:30: int main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;src/main.c:32: personaje *protagonista=(personaje *)malloc(sizeof(personaje));
	ld	hl,#0x000D
	push	hl
	call	_malloc
;src/main.c:33: estadoTeclado *teclado=(estadoTeclado *)malloc(sizeof(estadoTeclado));
	ex	(sp),hl
	ld	hl,#0x0005
	push	hl
	call	_malloc
	pop	af
	pop	bc
	ld	-4 (ix),l
	ld	-3 (ix),h
;src/main.c:35: cpct_disableFirmware();
	push	bc
	call	_cpct_disableFirmware
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpct_setVideoMode
	inc	sp
	pop	bc
;src/main.c:37: cpct_fw2hw(paleta,4);
	ld	de,#_paleta
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	push	de
	call	_cpct_fw2hw
	pop	af
	inc	sp
	pop	bc
;src/main.c:38: cpct_setPalette(paleta, 4);
	ld	de,#_paleta
	push	bc
	ld	a,#0x04
	push	af
	inc	sp
	push	de
	call	_cpct_setPalette
	pop	af
	inc	sp
	ld	l,#0x07
	call	_cpct_setRandomSeedUniform_u8
	call	_menuInicio
	pop	bc
;src/main.c:42: init(protagonista, enemigosSala);//INICIA LOS DATOS DEL JUEGO
	ld	hl,#0x0000
	add	hl,sp
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	bc
	push	hl
	push	bc
	call	_init
	pop	af
	pop	af
	pop	bc
;src/main.c:44: while (1){
00104$:
;src/main.c:45: cpct_waitVSYNC();
	push	bc
	call	_cpct_waitVSYNC
	pop	bc
;src/main.c:46: muevePersonaje(protagonista,teclado);
	push	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	bc
	call	_muevePersonaje
	pop	af
	pop	af
	pop	bc
;src/main.c:47: recibirDanyo(enemigosSala, protagonista);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	bc
	push	bc
	push	hl
	call	_recibirDanyo
	pop	af
	pop	af
	pop	bc
;src/main.c:48: ActualizarArr(enemigosSala, protagonista);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	bc
	push	bc
	push	hl
	call	_ActualizarArr
	pop	af
	pop	af
	pop	bc
;src/main.c:49: if(protagonista->generaEnemigos){
	ld	hl,#0x000A
	add	hl,bc
	ld	e,l
	ld	d,h
	ld	a,(de)
	or	a, a
	jr	Z,00102$
;src/main.c:50: generaEnemigos(protagonista->salaActual, enemigosSala);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	pop	iy
	ld	l, c
	ld	h, b
	push	bc
	ld	bc, #0x0006
	add	hl, bc
	pop	bc
	ld	h,(hl)
	push	bc
	push	de
	push	iy
	push	hl
	inc	sp
	call	_generaEnemigos
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/main.c:51: protagonista->generaEnemigos=0;
	xor	a, a
	ld	(de),a
;src/main.c:52: desactualizar();
	push	bc
	call	_desactualizar
	pop	bc
00102$:
;src/main.c:55: cpct_waitVSYNC();
	push	bc
	call	_cpct_waitVSYNC
	pop	bc
;src/main.c:56: pintarElementos(protagonista,teclado,enemigosSala);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	bc
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	bc
	call	_pintarElementos
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	bc
	jp	00104$
;src/main.c:60: void init(personaje *p, enemigo* arr[]){
;	---------------------------------
; Function init
; ---------------------------------
_init::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:65: p->x=16;
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	l, e
	ld	h, d
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;src/main.c:66: p->y=16;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a,#0x10
	ld	(bc),a
;src/main.c:67: p->vida=5;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	inc	hl
	ld	(hl),#0x05
;src/main.c:68: p->tipoSprite=2;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x02
;src/main.c:69: p->cambiarPaso=0;
	ld	hl,#0x0005
	add	hl,de
	ld	(hl),#0x00
;src/main.c:70: p->salaActual=0;
	ld	hl,#0x0006
	add	hl,de
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/main.c:71: p->atacando=0;
	ld	hl,#0x0007
	add	hl,de
	ld	(hl),#0x00
;src/main.c:72: p->cansancioAtaque=0;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0x00
;src/main.c:73: p->ataquePreparado=1;
	ld	hl,#0x0009
	add	hl,de
	ld	(hl),#0x01
;src/main.c:74: p->generaEnemigos=0;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0x00
;src/main.c:75: p->memPtr=cpct_getScreenPtr(video_memory_start,p->x/4,p->y);
	ld	hl,#0x000B
	add	hl,de
	ex	(sp), hl
	ld	a,(bc)
	ld	b,a
	ex	de,hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, e
	ld	h, d
	bit	7, d
	jr	Z,00103$
	ex	de,hl
	inc	hl
	inc	hl
	inc	hl
00103$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c,l
	ld	de,(_video_memory_start)
	push	bc
	push	de
	call	_cpct_getScreenPtr
	ld	d,l
	ld	e,h
	pop	hl
	push	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
;src/main.c:76: iniciaHud();
	call	_iniciaHud
;src/main.c:77: pintarEscenario(p->salaActual);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	h,(hl)
	push	hl
	inc	sp
	call	_pintarEscenario
	inc	sp
;src/main.c:78: generaEnemigos(p->salaActual, arr);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	h,(hl)
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	push	hl
	inc	sp
	call	_generaEnemigos
	ld	sp,ix
	pop	ix
	ret
;src/main.c:81: void pintarElementos(personaje *p,estadoTeclado *t, enemigo* arr[]){
;	---------------------------------
; Function pintarElementos
; ---------------------------------
_pintarElementos::
;src/main.c:82: pintaVida();
	call	_pintaVida
;src/main.c:83: pintaPersonaje(p,t);
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
	call	_pintaPersonaje
	pop	af
	pop	af
;src/main.c:84: pintaEnemigos(arr);
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_pintaEnemigos
	pop	af
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
