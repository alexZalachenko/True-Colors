;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:09:26 2015
;--------------------------------------------------------
	.module HUD
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _menuGameOver
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSprite
	.globl _actualizado
	.globl _vida
	.globl _vidaMax
	.globl _iniciaHud
	.globl _quitaVida
	.globl _aumentaVida
	.globl _pintaVida
	.globl _desactualizar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_vida::
	.ds 1
_actualizado::
	.ds 1
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
;src/HUD.c:7: void iniciaHud(){
;	---------------------------------
; Function iniciaHud
; ---------------------------------
_iniciaHud::
;src/HUD.c:8: vida=vidaMax;
	ld	a,(#_vidaMax + 0)
	ld	(#_vida + 0),a
;src/HUD.c:9: actualizado=0;
	ld	hl,#_actualizado + 0
	ld	(hl), #0x00
	ret
_vidaMax:
	.db #0x05	; 5
;src/HUD.c:11: void quitaVida(){
;	---------------------------------
; Function quitaVida
; ---------------------------------
_quitaVida::
;src/HUD.c:12: vida--;
	ld	hl, #_vida+0
	dec	(hl)
;src/HUD.c:13: if(vida==0)
	ld	a,(#_vida + 0)
	or	a, a
	jr	NZ,00102$
;src/HUD.c:14: menuGameOver();
	call	_menuGameOver
00102$:
;src/HUD.c:15: actualizado=0;
	ld	hl,#_actualizado + 0
	ld	(hl), #0x00
	ret
;src/HUD.c:17: void aumentaVida(){
;	---------------------------------
; Function aumentaVida
; ---------------------------------
_aumentaVida::
;src/HUD.c:18: vida++;
	ld	hl, #_vida+0
	inc	(hl)
;src/HUD.c:19: actualizado=0;
	ld	hl,#_actualizado + 0
	ld	(hl), #0x00
	ret
;src/HUD.c:21: void pintaVida(){
;	---------------------------------
; Function pintaVida
; ---------------------------------
_pintaVida::
;src/HUD.c:24: if(!actualizado){
	ld	a,(#_actualizado + 0)
	or	a, a
	ret	NZ
;src/HUD.c:25: for(cont;cont<vidaMax;cont++){
	ld	bc,#0x0000
00108$:
	ld	hl,#_vidaMax + 0
	ld	h, (hl)
	ld	a,c
	sub	a, h
	jr	NC,00104$
;src/HUD.c:26: memPtr=cpct_getScreenPtr(video_memory_start,cont*3,191);
	ld	de,(_video_memory_start)
	push	bc
	ld	a,#0xBF
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	call	_cpct_getScreenPtr
	pop	bc
;src/HUD.c:28: cpct_drawSprite(CorazonLleno,memPtr,2,8);
	ex	de,hl
;src/HUD.c:27: if(cont<vida)
	ld	hl,#_vida
	ld	a,c
	sub	a, (hl)
	jr	NC,00102$
;src/HUD.c:28: cpct_drawSprite(CorazonLleno,memPtr,2,8);
	push	bc
	ld	hl,#0x0802
	push	hl
	push	de
	ld	hl,#_CorazonLleno
	push	hl
	call	_cpct_drawSprite
	pop	bc
	jr	00109$
00102$:
;src/HUD.c:30: cpct_drawSprite(CorazonVacio,memPtr,2,8);
	push	bc
	ld	hl,#0x0802
	push	hl
	push	de
	ld	hl,#_CorazonVacio
	push	hl
	call	_cpct_drawSprite
	pop	bc
00109$:
;src/HUD.c:25: for(cont;cont<vidaMax;cont++){
	inc	b
	inc	b
	inc	b
	inc	c
	jr	00108$
00104$:
;src/HUD.c:32: actualizado=1;
	ld	hl,#_actualizado + 0
	ld	(hl), #0x01
	ret
;src/HUD.c:36: void desactualizar(){
;	---------------------------------
; Function desactualizar
; ---------------------------------
_desactualizar::
;src/HUD.c:37: actualizado=0;
	ld	hl,#_actualizado + 0
	ld	(hl), #0x00
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
