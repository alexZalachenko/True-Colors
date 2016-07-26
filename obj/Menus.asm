;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:07:50 2015
;--------------------------------------------------------
	.module Menus
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_getScreenPtr
	.globl _cpct_drawStringM1
	.globl _cpct_drawSolidBox
	.globl _cpct_px2byteM1
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _menuInicio
	.globl _menuGameOver
	.globl _pintaInicio
	.globl _pintaCreditos
	.globl _pintaControles
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
;src/Menus.c:3: void menuInicio(){
;	---------------------------------
; Function menuInicio
; ---------------------------------
_menuInicio::
;src/Menus.c:4: pintaInicio();
	call	_pintaInicio
;src/Menus.c:5: while(1){
00113$:
;src/Menus.c:6: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/Menus.c:7: if(cpct_isKeyPressed(Key_1)){
	ld	hl,#0x0108
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	NZ
;src/Menus.c:10: else if(cpct_isKeyPressed(Key_2)){
	ld	hl,#0x0208
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00107$
;src/Menus.c:11: pintaControles();
	call	_pintaControles
	jr	00113$
00107$:
;src/Menus.c:13: else if(cpct_isKeyPressed(Key_3)){
	ld	hl,#0x0207
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00104$
;src/Menus.c:14: pintaCreditos();
	call	_pintaCreditos
	jr	00113$
00104$:
;src/Menus.c:16: else if(cpct_isKeyPressed(Key_5)){
	ld	hl,#0x0206
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00113$
;src/Menus.c:17: pintaInicio();
	call	_pintaInicio
	jr	00113$
;src/Menus.c:21: void menuGameOver(){
;	---------------------------------
; Function menuGameOver
; ---------------------------------
_menuGameOver::
;src/Menus.c:23: memPtr=cpct_getScreenPtr(video_memory_start,13,33);
	ld	de,(_video_memory_start)
	ld	hl,#0x210D
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:24: cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1),52,132);
	push	hl
	ld	hl,#0x0101
	push	hl
	ld	l, #0x01
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	b,l
	pop	de
	ld	hl,#0x8434
	push	hl
	push	bc
	inc	sp
	push	de
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
;src/Menus.c:25: memPtr=cpct_getScreenPtr(video_memory_start,26,66);
	ld	de,(_video_memory_start)
	ld	hl,#0x421A
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:26: cpct_drawStringM1("Has muerto :'(", memPtr, 3, 1);
	ex	de,hl
	ld	bc,#___str_0+0
	ld	hl,#0x0103
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Menus.c:27: memPtr=cpct_getScreenPtr(video_memory_start,26,74);
	ld	de,(_video_memory_start)
	ld	hl,#0x4A1A
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:28: cpct_drawStringM1("Pulsa K para jugar", memPtr, 3, 1);
	ex	de,hl
	ld	bc,#___str_1+0
	ld	hl,#0x0103
	push	hl
	push	de
	push	bc
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Menus.c:29: while(1){
00104$:
;src/Menus.c:30: cpct_scanKeyboard();
	call	_cpct_scanKeyboard
;src/Menus.c:31: if(cpct_isKeyPressed(Key_K)){
	ld	hl,#0x2004
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00104$
;src/Menus.c:32: menuInicio();
	call	_menuInicio
;src/Menus.c:33: break;
	ret
___str_0:
	.ascii "Has muerto :'("
	.db 0x00
___str_1:
	.ascii "Pulsa K para jugar"
	.db 0x00
;src/Menus.c:37: void pintaInicio(){
;	---------------------------------
; Function pintaInicio
; ---------------------------------
_pintaInicio::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;src/Menus.c:39: char const *s0=" ___ __      _    _  _     _      __  _ ";
;src/Menus.c:40: char const *s1="  | |  || | |    |  | ||  | || | |  ||  ";
;src/Menus.c:41: char const *s2="  | |__|| | |-   |  | ||  | || | |__||_ ";
;src/Menus.c:42: char const *s3="  | | | |_| |_   |_ |_||_ |_||_| | |  _|";
;src/Menus.c:43: char const * titulo[]={s0,s1,s2,s3};   //68
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	(hl),#<(___str_2)
	inc	hl
	ld	(hl),#>(___str_2)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	(hl),#<(___str_3)
	inc	hl
	ld	(hl),#>(___str_3)
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#<(___str_4)
	inc	hl
	ld	(hl),#>(___str_4)
	ld	hl,#0x0006
	add	hl,de
	ld	(hl),#<(___str_5)
	inc	hl
	ld	(hl),#>(___str_5)
;src/Menus.c:44: cpct_clearScreen(cpct_px2byteM1(1,1,1,1));
	push	de
	ld	hl,#0x0101
	push	hl
	ld	l, #0x01
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	h,l
	ld	bc,#0x4000
	push	bc
	push	hl
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_memset
	pop	de
;src/Menus.c:46: for(a=0;a<4;a++){
	ld	-1 (ix),#0x00
00102$:
;src/Menus.c:47: memPtr=cpct_getScreenPtr(video_memory_start,0,8*a);
	ld	a,-1 (ix)
	rlca
	rlca
	rlca
	and	a,#0xF8
	ld	h,a
	ld	bc,(_video_memory_start)
	push	de
	push	hl
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_cpct_getScreenPtr
	pop	de
	push	hl
	pop	iy
;src/Menus.c:48: cpct_drawStringM1(titulo[a], memPtr, 0, 1);
	ld	l,-1 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl,de
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	de
	ld	hl,#0x0100
	push	hl
	push	iy
	push	bc
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;src/Menus.c:46: for(a=0;a<4;a++){
	inc	-1 (ix)
	ld	a,-1 (ix)
	sub	a, #0x04
	jr	C,00102$
;src/Menus.c:51: memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
	ld	de,(_video_memory_start)
	ld	hl,#0x5804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:52: cpct_drawStringM1("1-JUGAR", memPtr, 3, 1);
	ld	c, l
	ld	b, h
	ld	de,#___str_6
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Menus.c:53: memPtr=cpct_getScreenPtr(video_memory_start,4,8*13);
	ld	de,(_video_memory_start)
	ld	hl,#0x6804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:54: cpct_drawStringM1("2-CONTROLES", memPtr, 3, 1);
	ld	c, l
	ld	b, h
	ld	de,#___str_7
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Menus.c:55: memPtr=cpct_getScreenPtr(video_memory_start,4,8*15);
	ld	de,(_video_memory_start)
	ld	hl,#0x7804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:56: cpct_drawStringM1("3-CREDITOS", memPtr, 3, 1);
	ld	c, l
	ld	b, h
	ld	de,#___str_8
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	sp, ix
	pop	ix
	ret
___str_2:
	.ascii " ___ __      _    _  _     _      __  _ "
	.db 0x00
___str_3:
	.ascii "  | |  || | |    |  | ||  | || | |  ||  "
	.db 0x00
___str_4:
	.ascii "  | |__|| | |-   |  | ||  | || | |__||_ "
	.db 0x00
___str_5:
	.ascii "  | | | |_| |_   |_ |_||_ |_||_| | |  _|"
	.db 0x00
___str_6:
	.ascii "1-JUGAR"
	.db 0x00
___str_7:
	.ascii "2-CONTROLES"
	.db 0x00
___str_8:
	.ascii "3-CREDITOS"
	.db 0x00
;src/Menus.c:58: void pintaCreditos(){
;	---------------------------------
; Function pintaCreditos
; ---------------------------------
_pintaCreditos::
;src/Menus.c:60: memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
	ld	de,(_video_memory_start)
	ld	hl,#0x5804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:61: cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1), 22, 7*7);
	push	hl
	ld	hl,#0x0101
	push	hl
	ld	l, #0x01
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	d,l
	pop	bc
	push	bc
	ld	hl,#0x3116
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/Menus.c:62: cpct_drawStringM1("Creado por Alex Verdu y Manuel Gomez", memPtr, 3, 1);
	ld	de,#___str_9
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Menus.c:63: memPtr=cpct_getScreenPtr(video_memory_start,4,120);
	ld	de,(_video_memory_start)
	ld	hl,#0x7804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:64: cpct_drawStringM1("Pulsa 5 para volver al menu principal", memPtr, 3, 1);
	ld	c, l
	ld	b, h
	ld	de,#___str_10
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
___str_9:
	.ascii "Creado por Alex Verdu y Manuel Gomez"
	.db 0x00
___str_10:
	.ascii "Pulsa 5 para volver al menu principal"
	.db 0x00
;src/Menus.c:66: void pintaControles(){
;	---------------------------------
; Function pintaControles
; ---------------------------------
_pintaControles::
;src/Menus.c:68: memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
	ld	de,(_video_memory_start)
	ld	hl,#0x5804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:69: cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1), 22, 7*7);
	push	hl
	ld	hl,#0x0101
	push	hl
	ld	l, #0x01
	push	hl
	call	_cpct_px2byteM1
	pop	af
	pop	af
	ld	d,l
	pop	bc
	push	bc
	ld	hl,#0x3116
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/Menus.c:70: cpct_drawStringM1("Muevete con W,A,S,D", memPtr, 3, 1);
	ld	de,#___str_11
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Menus.c:71: memPtr=cpct_getScreenPtr(video_memory_start,4,8*13);
	ld	de,(_video_memory_start)
	ld	hl,#0x6804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:72: cpct_drawStringM1("Golpea con K", memPtr, 3, 1);
	ld	c, l
	ld	b, h
	ld	de,#___str_12
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/Menus.c:73: memPtr=cpct_getScreenPtr(video_memory_start,4,120);
	ld	de,(_video_memory_start)
	ld	hl,#0x7804
	push	hl
	push	de
	call	_cpct_getScreenPtr
;src/Menus.c:74: cpct_drawStringM1("Pulsa 5 para volver al menu principal", memPtr, 3, 1);
	ld	c, l
	ld	b, h
	ld	de,#___str_13
	ld	hl,#0x0103
	push	hl
	push	bc
	push	de
	call	_cpct_drawStringM1
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ret
___str_11:
	.ascii "Muevete con W,A,S,D"
	.db 0x00
___str_12:
	.ascii "Golpea con K"
	.db 0x00
___str_13:
	.ascii "Pulsa 5 para volver al menu principal"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
