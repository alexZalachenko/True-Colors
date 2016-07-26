                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:09:26 2015
                              5 ;--------------------------------------------------------
                              6 	.module HUD
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _menuGameOver
                             13 	.globl _cpct_getScreenPtr
                             14 	.globl _cpct_drawSprite
                             15 	.globl _actualizado
                             16 	.globl _vida
                             17 	.globl _vidaMax
                             18 	.globl _iniciaHud
                             19 	.globl _quitaVida
                             20 	.globl _aumentaVida
                             21 	.globl _pintaVida
                             22 	.globl _desactualizar
                             23 ;--------------------------------------------------------
                             24 ; special function registers
                             25 ;--------------------------------------------------------
                             26 ;--------------------------------------------------------
                             27 ; ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DATA
   7750                      30 _vida::
   7750                      31 	.ds 1
   7751                      32 _actualizado::
   7751                      33 	.ds 1
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _INITIALIZED
                             38 ;--------------------------------------------------------
                             39 ; absolute external ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DABS (ABS)
                             42 ;--------------------------------------------------------
                             43 ; global & static initialisations
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _GSINIT
                             47 	.area _GSFINAL
                             48 	.area _GSINIT
                             49 ;--------------------------------------------------------
                             50 ; Home
                             51 ;--------------------------------------------------------
                             52 	.area _HOME
                             53 	.area _HOME
                             54 ;--------------------------------------------------------
                             55 ; code
                             56 ;--------------------------------------------------------
                             57 	.area _CODE
                             58 ;src/HUD.c:7: void iniciaHud(){
                             59 ;	---------------------------------
                             60 ; Function iniciaHud
                             61 ; ---------------------------------
   547D                      62 _iniciaHud::
                             63 ;src/HUD.c:8: vida=vidaMax;
   547D 3A 89 54      [13]   64 	ld	a,(#_vidaMax + 0)
   5480 32 50 77      [13]   65 	ld	(#_vida + 0),a
                             66 ;src/HUD.c:9: actualizado=0;
   5483 21 51 77      [10]   67 	ld	hl,#_actualizado + 0
   5486 36 00         [10]   68 	ld	(hl), #0x00
   5488 C9            [10]   69 	ret
   5489                      70 _vidaMax:
   5489 05                   71 	.db #0x05	; 5
                             72 ;src/HUD.c:11: void quitaVida(){
                             73 ;	---------------------------------
                             74 ; Function quitaVida
                             75 ; ---------------------------------
   548A                      76 _quitaVida::
                             77 ;src/HUD.c:12: vida--;
   548A 21 50 77      [10]   78 	ld	hl, #_vida+0
   548D 35            [11]   79 	dec	(hl)
                             80 ;src/HUD.c:13: if(vida==0)
   548E 3A 50 77      [13]   81 	ld	a,(#_vida + 0)
   5491 B7            [ 4]   82 	or	a, a
   5492 20 03         [12]   83 	jr	NZ,00102$
                             84 ;src/HUD.c:14: menuGameOver();
   5494 CD 43 66      [17]   85 	call	_menuGameOver
   5497                      86 00102$:
                             87 ;src/HUD.c:15: actualizado=0;
   5497 21 51 77      [10]   88 	ld	hl,#_actualizado + 0
   549A 36 00         [10]   89 	ld	(hl), #0x00
   549C C9            [10]   90 	ret
                             91 ;src/HUD.c:17: void aumentaVida(){
                             92 ;	---------------------------------
                             93 ; Function aumentaVida
                             94 ; ---------------------------------
   549D                      95 _aumentaVida::
                             96 ;src/HUD.c:18: vida++;
   549D 21 50 77      [10]   97 	ld	hl, #_vida+0
   54A0 34            [11]   98 	inc	(hl)
                             99 ;src/HUD.c:19: actualizado=0;
   54A1 21 51 77      [10]  100 	ld	hl,#_actualizado + 0
   54A4 36 00         [10]  101 	ld	(hl), #0x00
   54A6 C9            [10]  102 	ret
                            103 ;src/HUD.c:21: void pintaVida(){
                            104 ;	---------------------------------
                            105 ; Function pintaVida
                            106 ; ---------------------------------
   54A7                     107 _pintaVida::
                            108 ;src/HUD.c:24: if(!actualizado){
   54A7 3A 51 77      [13]  109 	ld	a,(#_actualizado + 0)
   54AA B7            [ 4]  110 	or	a, a
   54AB C0            [11]  111 	ret	NZ
                            112 ;src/HUD.c:25: for(cont;cont<vidaMax;cont++){
   54AC 01 00 00      [10]  113 	ld	bc,#0x0000
   54AF                     114 00108$:
   54AF 21 89 54      [10]  115 	ld	hl,#_vidaMax + 0
   54B2 66            [ 7]  116 	ld	h, (hl)
   54B3 79            [ 4]  117 	ld	a,c
   54B4 94            [ 4]  118 	sub	a, h
   54B5 30 3C         [12]  119 	jr	NC,00104$
                            120 ;src/HUD.c:26: memPtr=cpct_getScreenPtr(video_memory_start,cont*3,191);
   54B7 ED 5B 25 42   [20]  121 	ld	de,(_video_memory_start)
   54BB C5            [11]  122 	push	bc
   54BC 3E BF         [ 7]  123 	ld	a,#0xBF
   54BE F5            [11]  124 	push	af
   54BF 33            [ 6]  125 	inc	sp
   54C0 C5            [11]  126 	push	bc
   54C1 33            [ 6]  127 	inc	sp
   54C2 D5            [11]  128 	push	de
   54C3 CD E8 76      [17]  129 	call	_cpct_getScreenPtr
   54C6 C1            [10]  130 	pop	bc
                            131 ;src/HUD.c:28: cpct_drawSprite(CorazonLleno,memPtr,2,8);
   54C7 EB            [ 4]  132 	ex	de,hl
                            133 ;src/HUD.c:27: if(cont<vida)
   54C8 21 50 77      [10]  134 	ld	hl,#_vida
   54CB 79            [ 4]  135 	ld	a,c
   54CC 96            [ 7]  136 	sub	a, (hl)
   54CD 30 10         [12]  137 	jr	NC,00102$
                            138 ;src/HUD.c:28: cpct_drawSprite(CorazonLleno,memPtr,2,8);
   54CF C5            [11]  139 	push	bc
   54D0 21 02 08      [10]  140 	ld	hl,#0x0802
   54D3 E5            [11]  141 	push	hl
   54D4 D5            [11]  142 	push	de
   54D5 21 A5 71      [10]  143 	ld	hl,#_CorazonLleno
   54D8 E5            [11]  144 	push	hl
   54D9 CD 86 72      [17]  145 	call	_cpct_drawSprite
   54DC C1            [10]  146 	pop	bc
   54DD 18 0E         [12]  147 	jr	00109$
   54DF                     148 00102$:
                            149 ;src/HUD.c:30: cpct_drawSprite(CorazonVacio,memPtr,2,8);
   54DF C5            [11]  150 	push	bc
   54E0 21 02 08      [10]  151 	ld	hl,#0x0802
   54E3 E5            [11]  152 	push	hl
   54E4 D5            [11]  153 	push	de
   54E5 21 B5 71      [10]  154 	ld	hl,#_CorazonVacio
   54E8 E5            [11]  155 	push	hl
   54E9 CD 86 72      [17]  156 	call	_cpct_drawSprite
   54EC C1            [10]  157 	pop	bc
   54ED                     158 00109$:
                            159 ;src/HUD.c:25: for(cont;cont<vidaMax;cont++){
   54ED 04            [ 4]  160 	inc	b
   54EE 04            [ 4]  161 	inc	b
   54EF 04            [ 4]  162 	inc	b
   54F0 0C            [ 4]  163 	inc	c
   54F1 18 BC         [12]  164 	jr	00108$
   54F3                     165 00104$:
                            166 ;src/HUD.c:32: actualizado=1;
   54F3 21 51 77      [10]  167 	ld	hl,#_actualizado + 0
   54F6 36 01         [10]  168 	ld	(hl), #0x01
   54F8 C9            [10]  169 	ret
                            170 ;src/HUD.c:36: void desactualizar(){
                            171 ;	---------------------------------
                            172 ; Function desactualizar
                            173 ; ---------------------------------
   54F9                     174 _desactualizar::
                            175 ;src/HUD.c:37: actualizado=0;
   54F9 21 51 77      [10]  176 	ld	hl,#_actualizado + 0
   54FC 36 00         [10]  177 	ld	(hl), #0x00
   54FE C9            [10]  178 	ret
                            179 	.area _CODE
                            180 	.area _INITIALIZER
                            181 	.area _CABS (ABS)
