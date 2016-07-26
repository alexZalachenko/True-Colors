                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:07:49 2015
                              5 ;--------------------------------------------------------
                              6 	.module Personaje
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _quitaVida
                             13 	.globl _pintarEscenario
                             14 	.globl _cpct_getScreenPtr
                             15 	.globl _cpct_drawSolidBox
                             16 	.globl _cpct_drawSprite
                             17 	.globl _cpct_px2byteM1
                             18 	.globl _cpct_isKeyPressed
                             19 	.globl _cpct_scanKeyboard_f
                             20 	.globl _desplazamientoHorizontal
                             21 	.globl _desplazamientoVertical
                             22 	.globl _muevePersonaje
                             23 	.globl _pintaPersonaje
                             24 	.globl _comprobarColision
                             25 	.globl _comprobarColisionDiagonal
                             26 	.globl _cambiarSala
                             27 	.globl _ataca
                             28 	.globl _noAtaca
                             29 	.globl _danyo
                             30 ;--------------------------------------------------------
                             31 ; special function registers
                             32 ;--------------------------------------------------------
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _DATA
                             37 ;--------------------------------------------------------
                             38 ; ram data
                             39 ;--------------------------------------------------------
                             40 	.area _INITIALIZED
                             41 ;--------------------------------------------------------
                             42 ; absolute external ram data
                             43 ;--------------------------------------------------------
                             44 	.area _DABS (ABS)
                             45 ;--------------------------------------------------------
                             46 ; global & static initialisations
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _GSINIT
                             50 	.area _GSFINAL
                             51 	.area _GSINIT
                             52 ;--------------------------------------------------------
                             53 ; Home
                             54 ;--------------------------------------------------------
                             55 	.area _HOME
                             56 	.area _HOME
                             57 ;--------------------------------------------------------
                             58 ; code
                             59 ;--------------------------------------------------------
                             60 	.area _CODE
                             61 ;src/Personaje.c:6: void muevePersonaje(personaje *p, estadoTeclado *t) {
                             62 ;	---------------------------------
                             63 ; Function muevePersonaje
                             64 ; ---------------------------------
   54FF                      65 _muevePersonaje::
   54FF DD E5         [15]   66 	push	ix
   5501 DD 21 00 00   [14]   67 	ld	ix,#0
   5505 DD 39         [15]   68 	add	ix,sp
   5507 21 ED FF      [10]   69 	ld	hl,#-19
   550A 39            [11]   70 	add	hl,sp
   550B F9            [ 6]   71 	ld	sp,hl
                             72 ;src/Personaje.c:7: u8 s=7;
   550C DD 36 ED 07   [19]   73 	ld	-19 (ix),#0x07
                             74 ;src/Personaje.c:9: cpct_scanKeyboard_f();
   5510 CD FA 71      [17]   75 	call	_cpct_scanKeyboard_f
                             76 ;src/Personaje.c:10: t->W=cpct_isKeyPressed(Key_W);
   5513 DD 4E 06      [19]   77 	ld	c,6 (ix)
   5516 DD 46 07      [19]   78 	ld	b,7 (ix)
   5519 C5            [11]   79 	push	bc
   551A 21 07 08      [10]   80 	ld	hl,#0x0807
   551D CD EE 71      [17]   81 	call	_cpct_isKeyPressed
   5520 7D            [ 4]   82 	ld	a,l
   5521 C1            [10]   83 	pop	bc
   5522 02            [ 7]   84 	ld	(bc),a
                             85 ;src/Personaje.c:11: t->A=cpct_isKeyPressed(Key_A);
   5523 21 01 00      [10]   86 	ld	hl,#0x0001
   5526 09            [11]   87 	add	hl,bc
   5527 DD 75 EE      [19]   88 	ld	-18 (ix),l
   552A DD 74 EF      [19]   89 	ld	-17 (ix),h
   552D C5            [11]   90 	push	bc
   552E 21 08 20      [10]   91 	ld	hl,#0x2008
   5531 CD EE 71      [17]   92 	call	_cpct_isKeyPressed
   5534 7D            [ 4]   93 	ld	a,l
   5535 C1            [10]   94 	pop	bc
   5536 DD 6E EE      [19]   95 	ld	l,-18 (ix)
   5539 DD 66 EF      [19]   96 	ld	h,-17 (ix)
   553C 77            [ 7]   97 	ld	(hl),a
                             98 ;src/Personaje.c:12: t->S=cpct_isKeyPressed(Key_S);
   553D 21 02 00      [10]   99 	ld	hl,#0x0002
   5540 09            [11]  100 	add	hl,bc
   5541 DD 75 FE      [19]  101 	ld	-2 (ix),l
   5544 DD 74 FF      [19]  102 	ld	-1 (ix),h
   5547 C5            [11]  103 	push	bc
   5548 21 07 10      [10]  104 	ld	hl,#0x1007
   554B CD EE 71      [17]  105 	call	_cpct_isKeyPressed
   554E 7D            [ 4]  106 	ld	a,l
   554F C1            [10]  107 	pop	bc
   5550 DD 6E FE      [19]  108 	ld	l,-2 (ix)
   5553 DD 66 FF      [19]  109 	ld	h,-1 (ix)
   5556 77            [ 7]  110 	ld	(hl),a
                            111 ;src/Personaje.c:13: t->D=cpct_isKeyPressed(Key_D);
   5557 21 03 00      [10]  112 	ld	hl,#0x0003
   555A 09            [11]  113 	add	hl,bc
   555B DD 75 F0      [19]  114 	ld	-16 (ix),l
   555E DD 74 F1      [19]  115 	ld	-15 (ix),h
   5561 C5            [11]  116 	push	bc
   5562 21 07 20      [10]  117 	ld	hl,#0x2007
   5565 CD EE 71      [17]  118 	call	_cpct_isKeyPressed
   5568 7D            [ 4]  119 	ld	a,l
   5569 C1            [10]  120 	pop	bc
   556A DD 6E F0      [19]  121 	ld	l,-16 (ix)
   556D DD 66 F1      [19]  122 	ld	h,-15 (ix)
   5570 77            [ 7]  123 	ld	(hl),a
                            124 ;src/Personaje.c:14: t->K=cpct_isKeyPressed(Key_K);
   5571 21 04 00      [10]  125 	ld	hl,#0x0004
   5574 09            [11]  126 	add	hl,bc
   5575 E5            [11]  127 	push	hl
   5576 C5            [11]  128 	push	bc
   5577 21 04 20      [10]  129 	ld	hl,#0x2004
   557A CD EE 71      [17]  130 	call	_cpct_isKeyPressed
   557D 7D            [ 4]  131 	ld	a,l
   557E C1            [10]  132 	pop	bc
   557F E1            [10]  133 	pop	hl
   5580 77            [ 7]  134 	ld	(hl),a
                            135 ;src/Personaje.c:17: if(t->K)
   5581 B7            [ 4]  136 	or	a, a
   5582 28 0F         [12]  137 	jr	Z,00102$
                            138 ;src/Personaje.c:18: ataca(p);
   5584 C5            [11]  139 	push	bc
   5585 DD 6E 04      [19]  140 	ld	l,4 (ix)
   5588 DD 66 05      [19]  141 	ld	h,5 (ix)
   558B E5            [11]  142 	push	hl
   558C CD CD 63      [17]  143 	call	_ataca
   558F F1            [10]  144 	pop	af
   5590 C1            [10]  145 	pop	bc
   5591 18 0D         [12]  146 	jr	00103$
   5593                     147 00102$:
                            148 ;src/Personaje.c:20: noAtaca(p);
   5593 C5            [11]  149 	push	bc
   5594 DD 6E 04      [19]  150 	ld	l,4 (ix)
   5597 DD 66 05      [19]  151 	ld	h,5 (ix)
   559A E5            [11]  152 	push	hl
   559B CD 08 64      [17]  153 	call	_noAtaca
   559E F1            [10]  154 	pop	af
   559F C1            [10]  155 	pop	bc
   55A0                     156 00103$:
                            157 ;src/Personaje.c:23: if(t->W==0 && t->A==0 && t->S==0 && t->D==0)
   55A0 0A            [ 7]  158 	ld	a,(bc)
   55A1 B7            [ 4]  159 	or	a, a
   55A2 20 1F         [12]  160 	jr	NZ,00105$
   55A4 DD 6E EE      [19]  161 	ld	l,-18 (ix)
   55A7 DD 66 EF      [19]  162 	ld	h,-17 (ix)
   55AA 7E            [ 7]  163 	ld	a,(hl)
   55AB B7            [ 4]  164 	or	a, a
   55AC 20 15         [12]  165 	jr	NZ,00105$
   55AE DD 6E FE      [19]  166 	ld	l,-2 (ix)
   55B1 DD 66 FF      [19]  167 	ld	h,-1 (ix)
   55B4 7E            [ 7]  168 	ld	a,(hl)
   55B5 B7            [ 4]  169 	or	a, a
   55B6 20 0B         [12]  170 	jr	NZ,00105$
   55B8 DD 6E F0      [19]  171 	ld	l,-16 (ix)
   55BB DD 66 F1      [19]  172 	ld	h,-15 (ix)
   55BE 7E            [ 7]  173 	ld	a,(hl)
   55BF B7            [ 4]  174 	or	a, a
                            175 ;src/Personaje.c:24: return;
   55C0 CA E9 58      [10]  176 	jp	Z,00154$
   55C3                     177 00105$:
                            178 ;src/Personaje.c:26: col=comprobarColisionDiagonal(p, t);
   55C3 C5            [11]  179 	push	bc
   55C4 C5            [11]  180 	push	bc
   55C5 DD 6E 04      [19]  181 	ld	l,4 (ix)
   55C8 DD 66 05      [19]  182 	ld	h,5 (ix)
   55CB E5            [11]  183 	push	hl
   55CC CD 26 60      [17]  184 	call	_comprobarColisionDiagonal
   55CF F1            [10]  185 	pop	af
   55D0 F1            [10]  186 	pop	af
   55D1 C1            [10]  187 	pop	bc
                            188 ;src/Personaje.c:27: if(col==1)//HAY COLISION
   55D2 7D            [ 4]  189 	ld	a,l
   55D3 3D            [ 4]  190 	dec	a
   55D4 CA E9 58      [10]  191 	jp	Z,00154$
   55D7 18 03         [12]  192 	jr	00114$
                            193 ;src/Personaje.c:28: return;
   55D9 C3 E9 58      [10]  194 	jp	00154$
   55DC                     195 00114$:
                            196 ;src/Personaje.c:29: else if(col==7){//EL MOVIMIENTO NO ES EN DIAGONAL 
   55DC 7D            [ 4]  197 	ld	a,l
   55DD D6 07         [ 7]  198 	sub	a, #0x07
   55DF 20 14         [12]  199 	jr	NZ,00115$
                            200 ;src/Personaje.c:30: if(comprobarColision(p,t)!=0)//COMPRUEBO LAS COLISIONES EN VERTICAL/HORIZONTAL
   55E1 C5            [11]  201 	push	bc
   55E2 C5            [11]  202 	push	bc
   55E3 DD 6E 04      [19]  203 	ld	l,4 (ix)
   55E6 DD 66 05      [19]  204 	ld	h,5 (ix)
   55E9 E5            [11]  205 	push	hl
   55EA CD 6B 5A      [17]  206 	call	_comprobarColision
   55ED F1            [10]  207 	pop	af
   55EE F1            [10]  208 	pop	af
   55EF 7D            [ 4]  209 	ld	a,l
   55F0 C1            [10]  210 	pop	bc
   55F1 B7            [ 4]  211 	or	a, a
                            212 ;src/Personaje.c:31: return;
   55F2 C2 E9 58      [10]  213 	jp	NZ,00154$
   55F5                     214 00115$:
                            215 ;src/Personaje.c:34: if(t->W)
   55F5 0A            [ 7]  216 	ld	a,(bc)
   55F6 DD 77 F2      [19]  217 	ld	-14 (ix),a
                            218 ;src/Personaje.c:23: if(t->W==0 && t->A==0 && t->S==0 && t->D==0)
   55F9 DD 6E EE      [19]  219 	ld	l,-18 (ix)
   55FC DD 66 EF      [19]  220 	ld	h,-17 (ix)
   55FF 7E            [ 7]  221 	ld	a,(hl)
   5600 DD 77 EE      [19]  222 	ld	-18 (ix),a
                            223 ;src/Personaje.c:36: if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
   5603 DD 7E 04      [19]  224 	ld	a,4 (ix)
   5606 DD 77 F5      [19]  225 	ld	-11 (ix),a
   5609 DD 7E 05      [19]  226 	ld	a,5 (ix)
   560C DD 77 F6      [19]  227 	ld	-10 (ix),a
   560F 21 EF 58      [10]  228 	ld	hl,#_desplazamientoHorizontal + 0
   5612 5E            [ 7]  229 	ld	e, (hl)
   5613 DD 73 F3      [19]  230 	ld	-13 (ix),e
   5616 DD 36 F4 00   [19]  231 	ld	-12 (ix),#0x00
                            232 ;src/Personaje.c:39: p->y -= desplazamientoVertical;
   561A DD 7E F5      [19]  233 	ld	a,-11 (ix)
   561D C6 02         [ 7]  234 	add	a, #0x02
   561F DD 77 FC      [19]  235 	ld	-4 (ix),a
   5622 DD 7E F6      [19]  236 	ld	a,-10 (ix)
   5625 CE 00         [ 7]  237 	adc	a, #0x00
   5627 DD 77 FD      [19]  238 	ld	-3 (ix),a
                            239 ;src/Personaje.c:34: if(t->W)
   562A DD 7E F2      [19]  240 	ld	a,-14 (ix)
   562D B7            [ 4]  241 	or	a, a
   562E CA D4 56      [10]  242 	jp	Z,00147$
                            243 ;src/Personaje.c:36: if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
   5631 DD 7E EE      [19]  244 	ld	a,-18 (ix)
   5634 B7            [ 4]  245 	or	a, a
   5635 28 36         [12]  246 	jr	Z,00120$
   5637 DD 6E F5      [19]  247 	ld	l,-11 (ix)
   563A DD 66 F6      [19]  248 	ld	h,-10 (ix)
   563D 7E            [ 7]  249 	ld	a,(hl)
   563E DD 77 FA      [19]  250 	ld	-6 (ix),a
   5641 23            [ 6]  251 	inc	hl
   5642 7E            [ 7]  252 	ld	a,(hl)
   5643 DD 77 FB      [19]  253 	ld	-5 (ix),a
   5646 DD 7E FA      [19]  254 	ld	a,-6 (ix)
   5649 DD 96 F3      [19]  255 	sub	a, -13 (ix)
   564C DD 77 FA      [19]  256 	ld	-6 (ix),a
   564F DD 7E FB      [19]  257 	ld	a,-5 (ix)
   5652 DD 9E F4      [19]  258 	sbc	a, -12 (ix)
   5655 DD 77 FB      [19]  259 	ld	-5 (ix),a
   5658 DD 6E F5      [19]  260 	ld	l,-11 (ix)
   565B DD 66 F6      [19]  261 	ld	h,-10 (ix)
   565E DD 7E FA      [19]  262 	ld	a,-6 (ix)
   5661 77            [ 7]  263 	ld	(hl),a
   5662 23            [ 6]  264 	inc	hl
   5663 DD 7E FB      [19]  265 	ld	a,-5 (ix)
   5666 77            [ 7]  266 	ld	(hl),a
   5667 DD 36 ED 01   [19]  267 	ld	-19 (ix),#0x01
   566B 18 47         [12]  268 	jr	00121$
   566D                     269 00120$:
                            270 ;src/Personaje.c:37: else if(t->D) { p->x += desplazamientoHorizontal; s=0; }
   566D DD 6E F0      [19]  271 	ld	l,-16 (ix)
   5670 DD 66 F1      [19]  272 	ld	h,-15 (ix)
   5673 7E            [ 7]  273 	ld	a,(hl)
   5674 DD 77 FA      [19]  274 	ld	-6 (ix), a
   5677 B7            [ 4]  275 	or	a, a
   5678 28 36         [12]  276 	jr	Z,00117$
   567A DD 6E F5      [19]  277 	ld	l,-11 (ix)
   567D DD 66 F6      [19]  278 	ld	h,-10 (ix)
   5680 7E            [ 7]  279 	ld	a,(hl)
   5681 DD 77 FA      [19]  280 	ld	-6 (ix),a
   5684 23            [ 6]  281 	inc	hl
   5685 7E            [ 7]  282 	ld	a,(hl)
   5686 DD 77 FB      [19]  283 	ld	-5 (ix),a
   5689 DD 7E F3      [19]  284 	ld	a,-13 (ix)
   568C DD 86 FA      [19]  285 	add	a, -6 (ix)
   568F DD 77 FA      [19]  286 	ld	-6 (ix),a
   5692 DD 7E F4      [19]  287 	ld	a,-12 (ix)
   5695 DD 8E FB      [19]  288 	adc	a, -5 (ix)
   5698 DD 77 FB      [19]  289 	ld	-5 (ix),a
   569B DD 6E F5      [19]  290 	ld	l,-11 (ix)
   569E DD 66 F6      [19]  291 	ld	h,-10 (ix)
   56A1 DD 7E FA      [19]  292 	ld	a,-6 (ix)
   56A4 77            [ 7]  293 	ld	(hl),a
   56A5 23            [ 6]  294 	inc	hl
   56A6 DD 7E FB      [19]  295 	ld	a,-5 (ix)
   56A9 77            [ 7]  296 	ld	(hl),a
   56AA DD 36 ED 00   [19]  297 	ld	-19 (ix),#0x00
   56AE 18 04         [12]  298 	jr	00121$
   56B0                     299 00117$:
                            300 ;src/Personaje.c:38: else          {                                   s=3; }
   56B0 DD 36 ED 03   [19]  301 	ld	-19 (ix),#0x03
   56B4                     302 00121$:
                            303 ;src/Personaje.c:39: p->y -= desplazamientoVertical;
   56B4 DD 6E FC      [19]  304 	ld	l,-4 (ix)
   56B7 DD 66 FD      [19]  305 	ld	h,-3 (ix)
   56BA 7E            [ 7]  306 	ld	a,(hl)
   56BB DD 77 FA      [19]  307 	ld	-6 (ix),a
   56BE 3A EE 58      [13]  308 	ld	a,(#_desplazamientoVertical + 0)
   56C1 DD 77 F9      [19]  309 	ld	-7 (ix),a
   56C4 DD 7E FA      [19]  310 	ld	a,-6 (ix)
   56C7 DD 96 F9      [19]  311 	sub	a, -7 (ix)
   56CA DD 6E FC      [19]  312 	ld	l,-4 (ix)
   56CD DD 66 FD      [19]  313 	ld	h,-3 (ix)
   56D0 77            [ 7]  314 	ld	(hl),a
   56D1 C3 8E 58      [10]  315 	jp	00148$
   56D4                     316 00147$:
   56D4 3A EE 58      [13]  317 	ld	a,(#_desplazamientoVertical + 0)
   56D7 DD 77 F9      [19]  318 	ld	-7 (ix),a
                            319 ;src/Personaje.c:41: else if(t->A)
   56DA DD 7E EE      [19]  320 	ld	a,-18 (ix)
   56DD B7            [ 4]  321 	or	a, a
   56DE CA 62 57      [10]  322 	jp	Z,00144$
                            323 ;src/Personaje.c:43: if     (t->W) {  p->y -= desplazamientoVertical; }
   56E1 DD 7E F2      [19]  324 	ld	a,-14 (ix)
   56E4 B7            [ 4]  325 	or	a, a
   56E5 28 1C         [12]  326 	jr	Z,00125$
   56E7 DD 6E FC      [19]  327 	ld	l,-4 (ix)
   56EA DD 66 FD      [19]  328 	ld	h,-3 (ix)
   56ED 7E            [ 7]  329 	ld	a,(hl)
   56EE DD 77 FA      [19]  330 	ld	-6 (ix), a
   56F1 DD 96 F9      [19]  331 	sub	a, -7 (ix)
   56F4 DD 77 FA      [19]  332 	ld	-6 (ix),a
   56F7 DD 6E FC      [19]  333 	ld	l,-4 (ix)
   56FA DD 66 FD      [19]  334 	ld	h,-3 (ix)
   56FD DD 7E FA      [19]  335 	ld	a,-6 (ix)
   5700 77            [ 7]  336 	ld	(hl),a
   5701 18 1E         [12]  337 	jr	00126$
   5703                     338 00125$:
                            339 ;src/Personaje.c:44: else if(t->S) {  p->y += desplazamientoVertical; }
   5703 DD 6E FE      [19]  340 	ld	l,-2 (ix)
   5706 DD 66 FF      [19]  341 	ld	h,-1 (ix)
   5709 7E            [ 7]  342 	ld	a,(hl)
   570A DD 77 FA      [19]  343 	ld	-6 (ix), a
   570D B7            [ 4]  344 	or	a, a
   570E 28 11         [12]  345 	jr	Z,00126$
   5710 DD 6E FC      [19]  346 	ld	l,-4 (ix)
   5713 DD 66 FD      [19]  347 	ld	h,-3 (ix)
   5716 7E            [ 7]  348 	ld	a, (hl)
   5717 DD 86 F9      [19]  349 	add	a, -7 (ix)
   571A DD 6E FC      [19]  350 	ld	l,-4 (ix)
   571D DD 66 FD      [19]  351 	ld	h,-3 (ix)
   5720 77            [ 7]  352 	ld	(hl),a
   5721                     353 00126$:
                            354 ;src/Personaje.c:45: p->x -= desplazamientoHorizontal;
   5721 DD 6E F5      [19]  355 	ld	l,-11 (ix)
   5724 DD 66 F6      [19]  356 	ld	h,-10 (ix)
   5727 7E            [ 7]  357 	ld	a,(hl)
   5728 DD 77 FA      [19]  358 	ld	-6 (ix),a
   572B 23            [ 6]  359 	inc	hl
   572C 7E            [ 7]  360 	ld	a,(hl)
   572D DD 77 FB      [19]  361 	ld	-5 (ix),a
   5730 3A EF 58      [13]  362 	ld	a,(#_desplazamientoHorizontal + 0)
   5733 DD 77 F7      [19]  363 	ld	-9 (ix),a
   5736 DD 36 F8 00   [19]  364 	ld	-8 (ix),#0x00
   573A DD 7E FA      [19]  365 	ld	a,-6 (ix)
   573D DD 96 F7      [19]  366 	sub	a, -9 (ix)
   5740 DD 77 F7      [19]  367 	ld	-9 (ix),a
   5743 DD 7E FB      [19]  368 	ld	a,-5 (ix)
   5746 DD 9E F8      [19]  369 	sbc	a, -8 (ix)
   5749 DD 77 F8      [19]  370 	ld	-8 (ix),a
   574C DD 6E F5      [19]  371 	ld	l,-11 (ix)
   574F DD 66 F6      [19]  372 	ld	h,-10 (ix)
   5752 DD 7E F7      [19]  373 	ld	a,-9 (ix)
   5755 77            [ 7]  374 	ld	(hl),a
   5756 23            [ 6]  375 	inc	hl
   5757 DD 7E F8      [19]  376 	ld	a,-8 (ix)
   575A 77            [ 7]  377 	ld	(hl),a
                            378 ;src/Personaje.c:46: s=1;
   575B DD 36 ED 01   [19]  379 	ld	-19 (ix),#0x01
   575F C3 8E 58      [10]  380 	jp	00148$
   5762                     381 00144$:
                            382 ;src/Personaje.c:23: if(t->W==0 && t->A==0 && t->S==0 && t->D==0)
   5762 DD 6E FE      [19]  383 	ld	l,-2 (ix)
   5765 DD 66 FF      [19]  384 	ld	h,-1 (ix)
   5768 7E            [ 7]  385 	ld	a,(hl)
                            386 ;src/Personaje.c:48: else if (t->S)
   5769 DD 77 F7      [19]  387 	ld	-9 (ix), a
   576C B7            [ 4]  388 	or	a, a
   576D CA 0D 58      [10]  389 	jp	Z,00141$
                            390 ;src/Personaje.c:50: if     (t->A) { p->x -= desplazamientoHorizontal; s=1; }
   5770 DD 7E EE      [19]  391 	ld	a,-18 (ix)
   5773 B7            [ 4]  392 	or	a, a
   5774 28 36         [12]  393 	jr	Z,00131$
   5776 DD 6E F5      [19]  394 	ld	l,-11 (ix)
   5779 DD 66 F6      [19]  395 	ld	h,-10 (ix)
   577C 7E            [ 7]  396 	ld	a,(hl)
   577D DD 77 FA      [19]  397 	ld	-6 (ix),a
   5780 23            [ 6]  398 	inc	hl
   5781 7E            [ 7]  399 	ld	a,(hl)
   5782 DD 77 FB      [19]  400 	ld	-5 (ix),a
   5785 DD 7E FA      [19]  401 	ld	a,-6 (ix)
   5788 DD 96 F3      [19]  402 	sub	a, -13 (ix)
   578B DD 77 FA      [19]  403 	ld	-6 (ix),a
   578E DD 7E FB      [19]  404 	ld	a,-5 (ix)
   5791 DD 9E F4      [19]  405 	sbc	a, -12 (ix)
   5794 DD 77 FB      [19]  406 	ld	-5 (ix),a
   5797 DD 6E F5      [19]  407 	ld	l,-11 (ix)
   579A DD 66 F6      [19]  408 	ld	h,-10 (ix)
   579D DD 7E FA      [19]  409 	ld	a,-6 (ix)
   57A0 77            [ 7]  410 	ld	(hl),a
   57A1 23            [ 6]  411 	inc	hl
   57A2 DD 7E FB      [19]  412 	ld	a,-5 (ix)
   57A5 77            [ 7]  413 	ld	(hl),a
   57A6 DD 36 ED 01   [19]  414 	ld	-19 (ix),#0x01
   57AA 18 47         [12]  415 	jr	00132$
   57AC                     416 00131$:
                            417 ;src/Personaje.c:51: else if(t->D) { p->x += desplazamientoHorizontal; s=0; }
   57AC DD 6E F0      [19]  418 	ld	l,-16 (ix)
   57AF DD 66 F1      [19]  419 	ld	h,-15 (ix)
   57B2 7E            [ 7]  420 	ld	a,(hl)
   57B3 DD 77 FA      [19]  421 	ld	-6 (ix), a
   57B6 B7            [ 4]  422 	or	a, a
   57B7 28 36         [12]  423 	jr	Z,00128$
   57B9 DD 6E F5      [19]  424 	ld	l,-11 (ix)
   57BC DD 66 F6      [19]  425 	ld	h,-10 (ix)
   57BF 7E            [ 7]  426 	ld	a,(hl)
   57C0 DD 77 FA      [19]  427 	ld	-6 (ix),a
   57C3 23            [ 6]  428 	inc	hl
   57C4 7E            [ 7]  429 	ld	a,(hl)
   57C5 DD 77 FB      [19]  430 	ld	-5 (ix),a
   57C8 DD 7E F3      [19]  431 	ld	a,-13 (ix)
   57CB DD 86 FA      [19]  432 	add	a, -6 (ix)
   57CE DD 77 FA      [19]  433 	ld	-6 (ix),a
   57D1 DD 7E F4      [19]  434 	ld	a,-12 (ix)
   57D4 DD 8E FB      [19]  435 	adc	a, -5 (ix)
   57D7 DD 77 FB      [19]  436 	ld	-5 (ix),a
   57DA DD 6E F5      [19]  437 	ld	l,-11 (ix)
   57DD DD 66 F6      [19]  438 	ld	h,-10 (ix)
   57E0 DD 7E FA      [19]  439 	ld	a,-6 (ix)
   57E3 77            [ 7]  440 	ld	(hl),a
   57E4 23            [ 6]  441 	inc	hl
   57E5 DD 7E FB      [19]  442 	ld	a,-5 (ix)
   57E8 77            [ 7]  443 	ld	(hl),a
   57E9 DD 36 ED 00   [19]  444 	ld	-19 (ix),#0x00
   57ED 18 04         [12]  445 	jr	00132$
   57EF                     446 00128$:
                            447 ;src/Personaje.c:52: else          {                                   s=2; }
   57EF DD 36 ED 02   [19]  448 	ld	-19 (ix),#0x02
   57F3                     449 00132$:
                            450 ;src/Personaje.c:53: p->y += desplazamientoVertical;
   57F3 DD 6E FC      [19]  451 	ld	l,-4 (ix)
   57F6 DD 66 FD      [19]  452 	ld	h,-3 (ix)
   57F9 66            [ 7]  453 	ld	h,(hl)
   57FA FD 21 EE 58   [14]  454 	ld	iy,#_desplazamientoVertical
   57FE FD 6E 00      [19]  455 	ld	l,0 (iy)
   5801 7C            [ 4]  456 	ld	a,h
   5802 85            [ 4]  457 	add	a, l
   5803 DD 6E FC      [19]  458 	ld	l,-4 (ix)
   5806 DD 66 FD      [19]  459 	ld	h,-3 (ix)
   5809 77            [ 7]  460 	ld	(hl),a
   580A C3 8E 58      [10]  461 	jp	00148$
   580D                     462 00141$:
                            463 ;src/Personaje.c:55: else if (t->D)
   580D DD 6E F0      [19]  464 	ld	l,-16 (ix)
   5810 DD 66 F1      [19]  465 	ld	h,-15 (ix)
   5813 7E            [ 7]  466 	ld	a,(hl)
   5814 B7            [ 4]  467 	or	a, a
   5815 28 77         [12]  468 	jr	Z,00148$
                            469 ;src/Personaje.c:57: if     (t->W) { p->y -= desplazamientoVertical; }
   5817 DD 7E F2      [19]  470 	ld	a,-14 (ix)
   581A B7            [ 4]  471 	or	a, a
   581B 28 1C         [12]  472 	jr	Z,00136$
   581D DD 6E FC      [19]  473 	ld	l,-4 (ix)
   5820 DD 66 FD      [19]  474 	ld	h,-3 (ix)
   5823 7E            [ 7]  475 	ld	a,(hl)
   5824 DD 77 FA      [19]  476 	ld	-6 (ix), a
   5827 DD 96 F9      [19]  477 	sub	a, -7 (ix)
   582A DD 77 FA      [19]  478 	ld	-6 (ix),a
   582D DD 6E FC      [19]  479 	ld	l,-4 (ix)
   5830 DD 66 FD      [19]  480 	ld	h,-3 (ix)
   5833 DD 7E FA      [19]  481 	ld	a,-6 (ix)
   5836 77            [ 7]  482 	ld	(hl),a
   5837 18 17         [12]  483 	jr	00137$
   5839                     484 00136$:
                            485 ;src/Personaje.c:58: else if(t->S) { p->y += desplazamientoVertical; }
   5839 DD 7E F7      [19]  486 	ld	a,-9 (ix)
   583C B7            [ 4]  487 	or	a, a
   583D 28 11         [12]  488 	jr	Z,00137$
   583F DD 6E FC      [19]  489 	ld	l,-4 (ix)
   5842 DD 66 FD      [19]  490 	ld	h,-3 (ix)
   5845 7E            [ 7]  491 	ld	a, (hl)
   5846 DD 86 F9      [19]  492 	add	a, -7 (ix)
   5849 DD 6E FC      [19]  493 	ld	l,-4 (ix)
   584C DD 66 FD      [19]  494 	ld	h,-3 (ix)
   584F 77            [ 7]  495 	ld	(hl),a
   5850                     496 00137$:
                            497 ;src/Personaje.c:59: p->x += desplazamientoHorizontal;  
   5850 DD 6E F5      [19]  498 	ld	l,-11 (ix)
   5853 DD 66 F6      [19]  499 	ld	h,-10 (ix)
   5856 7E            [ 7]  500 	ld	a,(hl)
   5857 DD 77 F7      [19]  501 	ld	-9 (ix),a
   585A 23            [ 6]  502 	inc	hl
   585B 7E            [ 7]  503 	ld	a,(hl)
   585C DD 77 F8      [19]  504 	ld	-8 (ix),a
   585F 3A EF 58      [13]  505 	ld	a,(#_desplazamientoHorizontal + 0)
   5862 DD 77 FA      [19]  506 	ld	-6 (ix),a
   5865 DD 36 FB 00   [19]  507 	ld	-5 (ix),#0x00
   5869 DD 7E F7      [19]  508 	ld	a,-9 (ix)
   586C DD 86 FA      [19]  509 	add	a, -6 (ix)
   586F DD 77 F7      [19]  510 	ld	-9 (ix),a
   5872 DD 7E F8      [19]  511 	ld	a,-8 (ix)
   5875 DD 8E FB      [19]  512 	adc	a, -5 (ix)
   5878 DD 77 F8      [19]  513 	ld	-8 (ix),a
   587B DD 6E F5      [19]  514 	ld	l,-11 (ix)
   587E DD 66 F6      [19]  515 	ld	h,-10 (ix)
   5881 DD 7E F7      [19]  516 	ld	a,-9 (ix)
   5884 77            [ 7]  517 	ld	(hl),a
   5885 23            [ 6]  518 	inc	hl
   5886 DD 7E F8      [19]  519 	ld	a,-8 (ix)
   5889 77            [ 7]  520 	ld	(hl),a
                            521 ;src/Personaje.c:60: s=0;
   588A DD 36 ED 00   [19]  522 	ld	-19 (ix),#0x00
   588E                     523 00148$:
                            524 ;src/Personaje.c:63: if(s!=7 && !(s==p->tipoSprite || s+4==p->tipoSprite || s+8==p->tipoSprite)){
   588E DD 7E ED      [19]  525 	ld	a,-19 (ix)
   5891 D6 07         [ 7]  526 	sub	a, #0x07
   5893 28 54         [12]  527 	jr	Z,00154$
   5895 FD 21 04 00   [14]  528 	ld	iy,#0x0004
   5899 DD 5E F5      [19]  529 	ld	e,-11 (ix)
   589C DD 56 F6      [19]  530 	ld	d,-10 (ix)
   589F FD 19         [15]  531 	add	iy, de
   58A1 FD 5E 00      [19]  532 	ld	e, 0 (iy)
   58A4 DD 7E ED      [19]  533 	ld	a,-19 (ix)
   58A7 93            [ 4]  534 	sub	a, e
   58A8 28 3F         [12]  535 	jr	Z,00154$
   58AA DD 4E ED      [19]  536 	ld	c,-19 (ix)
   58AD 06 00         [ 7]  537 	ld	b,#0x00
   58AF 21 04 00      [10]  538 	ld	hl,#0x0004
   58B2 09            [11]  539 	add	hl,bc
   58B3 DD 75 F7      [19]  540 	ld	-9 (ix),l
   58B6 DD 74 F8      [19]  541 	ld	-8 (ix),h
   58B9 16 00         [ 7]  542 	ld	d,#0x00
   58BB 7B            [ 4]  543 	ld	a,e
   58BC DD 96 F7      [19]  544 	sub	a, -9 (ix)
   58BF 20 06         [12]  545 	jr	NZ,00258$
   58C1 7A            [ 4]  546 	ld	a,d
   58C2 DD 96 F8      [19]  547 	sub	a, -8 (ix)
   58C5 28 22         [12]  548 	jr	Z,00154$
   58C7                     549 00258$:
   58C7 21 08 00      [10]  550 	ld	hl,#0x0008
   58CA 09            [11]  551 	add	hl,bc
   58CB 4D            [ 4]  552 	ld	c,l
   58CC 44            [ 4]  553 	ld	b,h
   58CD 7B            [ 4]  554 	ld	a,e
   58CE 91            [ 4]  555 	sub	a, c
   58CF 20 04         [12]  556 	jr	NZ,00259$
   58D1 7A            [ 4]  557 	ld	a,d
   58D2 90            [ 4]  558 	sub	a, b
   58D3 28 14         [12]  559 	jr	Z,00154$
   58D5                     560 00259$:
                            561 ;src/Personaje.c:64: p->tipoSprite=s;
   58D5 DD 7E ED      [19]  562 	ld	a,-19 (ix)
   58D8 FD 77 00      [19]  563 	ld	0 (iy), a
                            564 ;src/Personaje.c:65: p->cambiarPaso=0;
   58DB DD 7E F5      [19]  565 	ld	a,-11 (ix)
   58DE C6 05         [ 7]  566 	add	a, #0x05
   58E0 6F            [ 4]  567 	ld	l,a
   58E1 DD 7E F6      [19]  568 	ld	a,-10 (ix)
   58E4 CE 00         [ 7]  569 	adc	a, #0x00
   58E6 67            [ 4]  570 	ld	h,a
   58E7 36 00         [10]  571 	ld	(hl),#0x00
   58E9                     572 00154$:
   58E9 DD F9         [10]  573 	ld	sp, ix
   58EB DD E1         [14]  574 	pop	ix
   58ED C9            [10]  575 	ret
   58EE                     576 _desplazamientoVertical:
   58EE 02                  577 	.db #0x02	; 2
   58EF                     578 _desplazamientoHorizontal:
   58EF 02                  579 	.db #0x02	; 2
                            580 ;src/Personaje.c:68: void pintaPersonaje(personaje *p, estadoTeclado *t){
                            581 ;	---------------------------------
                            582 ; Function pintaPersonaje
                            583 ; ---------------------------------
   58F0                     584 _pintaPersonaje::
   58F0 DD E5         [15]  585 	push	ix
   58F2 DD 21 00 00   [14]  586 	ld	ix,#0
   58F6 DD 39         [15]  587 	add	ix,sp
   58F8 F5            [11]  588 	push	af
   58F9 F5            [11]  589 	push	af
   58FA 3B            [ 6]  590 	dec	sp
                            591 ;src/Personaje.c:71: cpct_drawSolidBox(p->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
   58FB 21 02 02      [10]  592 	ld	hl,#0x0202
   58FE E5            [11]  593 	push	hl
   58FF 2E 02         [ 7]  594 	ld	l, #0x02
   5901 E5            [11]  595 	push	hl
   5902 CD B9 75      [17]  596 	call	_cpct_px2byteM1
   5905 F1            [10]  597 	pop	af
   5906 F1            [10]  598 	pop	af
   5907 55            [ 4]  599 	ld	d,l
   5908 DD 7E 04      [19]  600 	ld	a,4 (ix)
   590B DD 77 FB      [19]  601 	ld	-5 (ix),a
   590E DD 7E 05      [19]  602 	ld	a,5 (ix)
   5911 DD 77 FC      [19]  603 	ld	-4 (ix),a
   5914 DD 7E FB      [19]  604 	ld	a,-5 (ix)
   5917 C6 0B         [ 7]  605 	add	a, #0x0B
   5919 4F            [ 4]  606 	ld	c,a
   591A DD 7E FC      [19]  607 	ld	a,-4 (ix)
   591D CE 00         [ 7]  608 	adc	a, #0x00
   591F 47            [ 4]  609 	ld	b,a
   5920 69            [ 4]  610 	ld	l, c
   5921 60            [ 4]  611 	ld	h, b
   5922 7E            [ 7]  612 	ld	a, (hl)
   5923 23            [ 6]  613 	inc	hl
   5924 66            [ 7]  614 	ld	h,(hl)
   5925 6F            [ 4]  615 	ld	l,a
   5926 E5            [11]  616 	push	hl
   5927 FD E1         [14]  617 	pop	iy
   5929 C5            [11]  618 	push	bc
   592A 21 04 10      [10]  619 	ld	hl,#0x1004
   592D E5            [11]  620 	push	hl
   592E D5            [11]  621 	push	de
   592F 33            [ 6]  622 	inc	sp
   5930 FD E5         [15]  623 	push	iy
   5932 CD E6 75      [17]  624 	call	_cpct_drawSolidBox
   5935 F1            [10]  625 	pop	af
   5936 F1            [10]  626 	pop	af
   5937 33            [ 6]  627 	inc	sp
   5938 C1            [10]  628 	pop	bc
                            629 ;src/Personaje.c:72: p->memPtr=cpct_getScreenPtr(video_memory_start,p->x/4,p->y);
   5939 E1            [10]  630 	pop	hl
   593A E5            [11]  631 	push	hl
   593B 23            [ 6]  632 	inc	hl
   593C 23            [ 6]  633 	inc	hl
   593D 7E            [ 7]  634 	ld	a,(hl)
   593E DD 77 FD      [19]  635 	ld	-3 (ix),a
   5941 E1            [10]  636 	pop	hl
   5942 E5            [11]  637 	push	hl
   5943 5E            [ 7]  638 	ld	e,(hl)
   5944 23            [ 6]  639 	inc	hl
   5945 56            [ 7]  640 	ld	d,(hl)
   5946 63            [ 4]  641 	ld	h,e
   5947 6A            [ 4]  642 	ld	l,d
   5948 CB 7A         [ 8]  643 	bit	7, d
   594A 28 05         [12]  644 	jr	Z,00122$
   594C 13            [ 6]  645 	inc	de
   594D 13            [ 6]  646 	inc	de
   594E 13            [ 6]  647 	inc	de
   594F 63            [ 4]  648 	ld	h,e
   5950 6A            [ 4]  649 	ld	l,d
   5951                     650 00122$:
   5951 7D            [ 4]  651 	ld	a, l
   5952 6C            [ 4]  652 	ld	l,h
   5953 67            [ 4]  653 	ld	h,a
   5954 CB 2C         [ 8]  654 	sra	h
   5956 CB 1D         [ 8]  655 	rr	l
   5958 CB 2C         [ 8]  656 	sra	h
   595A CB 1D         [ 8]  657 	rr	l
   595C 55            [ 4]  658 	ld	d,l
   595D FD 2A 25 42   [20]  659 	ld	iy,(_video_memory_start)
   5961 C5            [11]  660 	push	bc
   5962 DD 7E FD      [19]  661 	ld	a,-3 (ix)
   5965 F5            [11]  662 	push	af
   5966 33            [ 6]  663 	inc	sp
   5967 D5            [11]  664 	push	de
   5968 33            [ 6]  665 	inc	sp
   5969 FD E5         [15]  666 	push	iy
   596B CD E8 76      [17]  667 	call	_cpct_getScreenPtr
   596E 55            [ 4]  668 	ld	d,l
   596F 5C            [ 4]  669 	ld	e,h
   5970 C1            [10]  670 	pop	bc
   5971 69            [ 4]  671 	ld	l, c
   5972 60            [ 4]  672 	ld	h, b
   5973 72            [ 7]  673 	ld	(hl),d
   5974 23            [ 6]  674 	inc	hl
   5975 73            [ 7]  675 	ld	(hl),e
                            676 ;src/Personaje.c:74: if(t->A==t->W && t->W==t->S && t->S==t->D){//PINTO EL SPRITE DE TIPO PARADO
   5976 DD 5E 06      [19]  677 	ld	e,6 (ix)
   5979 DD 56 07      [19]  678 	ld	d,7 (ix)
   597C D5            [11]  679 	push	de
   597D FD E1         [14]  680 	pop	iy
   597F FD E5         [15]  681 	push	iy
   5981 E1            [10]  682 	pop	hl
   5982 23            [ 6]  683 	inc	hl
   5983 56            [ 7]  684 	ld	d,(hl)
   5984 FD 5E 00      [19]  685 	ld	e, 0 (iy)
                            686 ;src/Personaje.c:75: while(p->tipoSprite>3)
   5987 DD 7E FB      [19]  687 	ld	a,-5 (ix)
   598A C6 04         [ 7]  688 	add	a, #0x04
   598C DD 77 FE      [19]  689 	ld	-2 (ix),a
   598F DD 7E FC      [19]  690 	ld	a,-4 (ix)
   5992 CE 00         [ 7]  691 	adc	a, #0x00
   5994 DD 77 FF      [19]  692 	ld	-1 (ix),a
                            693 ;src/Personaje.c:74: if(t->A==t->W && t->W==t->S && t->S==t->D){//PINTO EL SPRITE DE TIPO PARADO
   5997 7A            [ 4]  694 	ld	a,d
   5998 93            [ 4]  695 	sub	a, e
   5999 20 29         [12]  696 	jr	NZ,00110$
   599B FD E5         [15]  697 	push	iy
   599D E1            [10]  698 	pop	hl
   599E 23            [ 6]  699 	inc	hl
   599F 23            [ 6]  700 	inc	hl
   59A0 56            [ 7]  701 	ld	d,(hl)
   59A1 7B            [ 4]  702 	ld	a,e
   59A2 92            [ 4]  703 	sub	a, d
   59A3 20 1F         [12]  704 	jr	NZ,00110$
   59A5 FD 5E 03      [19]  705 	ld	e,3 (iy)
   59A8 7A            [ 4]  706 	ld	a,d
   59A9 93            [ 4]  707 	sub	a, e
   59AA 20 18         [12]  708 	jr	NZ,00110$
                            709 ;src/Personaje.c:75: while(p->tipoSprite>3)
   59AC                     710 00101$:
   59AC DD 6E FE      [19]  711 	ld	l,-2 (ix)
   59AF DD 66 FF      [19]  712 	ld	h,-1 (ix)
   59B2 66            [ 7]  713 	ld	h,(hl)
   59B3 3E 03         [ 7]  714 	ld	a,#0x03
   59B5 94            [ 4]  715 	sub	a, h
   59B6 30 5A         [12]  716 	jr	NC,00111$
                            717 ;src/Personaje.c:76: p->tipoSprite-=4;
   59B8 7C            [ 4]  718 	ld	a,h
   59B9 C6 FC         [ 7]  719 	add	a,#0xFC
   59BB DD 6E FE      [19]  720 	ld	l,-2 (ix)
   59BE DD 66 FF      [19]  721 	ld	h,-1 (ix)
   59C1 77            [ 7]  722 	ld	(hl),a
   59C2 18 E8         [12]  723 	jr	00101$
   59C4                     724 00110$:
                            725 ;src/Personaje.c:79: if(p->cambiarPaso==10){
   59C4 DD 7E FB      [19]  726 	ld	a,-5 (ix)
   59C7 C6 05         [ 7]  727 	add	a, #0x05
   59C9 6F            [ 4]  728 	ld	l,a
   59CA DD 7E FC      [19]  729 	ld	a,-4 (ix)
   59CD CE 00         [ 7]  730 	adc	a, #0x00
   59CF 67            [ 4]  731 	ld	h,a
   59D0 5E            [ 7]  732 	ld	e,(hl)
   59D1 7B            [ 4]  733 	ld	a,e
                            734 ;src/Personaje.c:80: p->cambiarPaso=0;
   59D2 D6 0A         [ 7]  735 	sub	a,#0x0A
   59D4 20 3A         [12]  736 	jr	NZ,00107$
   59D6 77            [ 7]  737 	ld	(hl),a
                            738 ;src/Personaje.c:81: p->tipoSprite=(p->tipoSprite+4)%12;
   59D7 DD 6E FE      [19]  739 	ld	l,-2 (ix)
   59DA DD 66 FF      [19]  740 	ld	h,-1 (ix)
   59DD 6E            [ 7]  741 	ld	l,(hl)
   59DE 26 00         [ 7]  742 	ld	h,#0x00
   59E0 11 04 00      [10]  743 	ld	de,#0x0004
   59E3 19            [11]  744 	add	hl,de
   59E4 C5            [11]  745 	push	bc
   59E5 11 0C 00      [10]  746 	ld	de,#0x000C
   59E8 D5            [11]  747 	push	de
   59E9 E5            [11]  748 	push	hl
   59EA CD AB 76      [17]  749 	call	__modsint
   59ED F1            [10]  750 	pop	af
   59EE F1            [10]  751 	pop	af
   59EF C1            [10]  752 	pop	bc
   59F0 55            [ 4]  753 	ld	d,l
   59F1 DD 6E FE      [19]  754 	ld	l,-2 (ix)
   59F4 DD 66 FF      [19]  755 	ld	h,-1 (ix)
   59F7 72            [ 7]  756 	ld	(hl),d
                            757 ;src/Personaje.c:82: if(p->tipoSprite<4)
   59F8 DD 6E FE      [19]  758 	ld	l,-2 (ix)
   59FB DD 66 FF      [19]  759 	ld	h,-1 (ix)
   59FE 66            [ 7]  760 	ld	h,(hl)
   59FF 7A            [ 4]  761 	ld	a,d
   5A00 D6 04         [ 7]  762 	sub	a, #0x04
   5A02 30 0E         [12]  763 	jr	NC,00111$
                            764 ;src/Personaje.c:83: p->tipoSprite+=4;
   5A04 7C            [ 4]  765 	ld	a,h
   5A05 C6 04         [ 7]  766 	add	a, #0x04
   5A07 DD 6E FE      [19]  767 	ld	l,-2 (ix)
   5A0A DD 66 FF      [19]  768 	ld	h,-1 (ix)
   5A0D 77            [ 7]  769 	ld	(hl),a
   5A0E 18 02         [12]  770 	jr	00111$
   5A10                     771 00107$:
                            772 ;src/Personaje.c:86: p->cambiarPaso++;
   5A10 1C            [ 4]  773 	inc	e
   5A11 73            [ 7]  774 	ld	(hl),e
   5A12                     775 00111$:
                            776 ;src/Personaje.c:89: if(p->atacando){
   5A12 E1            [10]  777 	pop	hl
   5A13 E5            [11]  778 	push	hl
   5A14 11 07 00      [10]  779 	ld	de, #0x0007
   5A17 19            [11]  780 	add	hl, de
   5A18 7E            [ 7]  781 	ld	a,(hl)
                            782 ;src/Personaje.c:81: p->tipoSprite=(p->tipoSprite+4)%12;
   5A19 DD 6E FE      [19]  783 	ld	l,-2 (ix)
   5A1C DD 66 FF      [19]  784 	ld	h,-1 (ix)
   5A1F 5E            [ 7]  785 	ld	e,(hl)
                            786 ;src/Personaje.c:89: if(p->atacando){
   5A20 B7            [ 4]  787 	or	a, a
   5A21 28 2A         [12]  788 	jr	Z,00118$
                            789 ;src/Personaje.c:90: aux=p->tipoSprite;
                            790 ;src/Personaje.c:91: while(aux>3)
   5A23                     791 00114$:
   5A23 3E 03         [ 7]  792 	ld	a,#0x03
   5A25 93            [ 4]  793 	sub	a, e
   5A26 30 06         [12]  794 	jr	NC,00116$
                            795 ;src/Personaje.c:92: aux-=4;
   5A28 7B            [ 4]  796 	ld	a,e
   5A29 C6 FC         [ 7]  797 	add	a,#0xFC
   5A2B 5F            [ 4]  798 	ld	e,a
   5A2C 18 F5         [12]  799 	jr	00114$
   5A2E                     800 00116$:
                            801 ;src/Personaje.c:93: aux+=12;
   5A2E 7B            [ 4]  802 	ld	a,e
   5A2F C6 0C         [ 7]  803 	add	a, #0x0C
   5A31 57            [ 4]  804 	ld	d,a
                            805 ;src/Personaje.c:94: cpct_drawSprite(personaje_tileset[aux],p->memPtr,4,16);
   5A32 69            [ 4]  806 	ld	l, c
   5A33 60            [ 4]  807 	ld	h, b
   5A34 4E            [ 7]  808 	ld	c,(hl)
   5A35 23            [ 6]  809 	inc	hl
   5A36 46            [ 7]  810 	ld	b,(hl)
   5A37 6A            [ 4]  811 	ld	l,d
   5A38 26 00         [ 7]  812 	ld	h,#0x00
   5A3A 29            [11]  813 	add	hl, hl
   5A3B 11 F9 6B      [10]  814 	ld	de,#_personaje_tileset
   5A3E 19            [11]  815 	add	hl,de
   5A3F 5E            [ 7]  816 	ld	e,(hl)
   5A40 23            [ 6]  817 	inc	hl
   5A41 56            [ 7]  818 	ld	d,(hl)
   5A42 21 04 10      [10]  819 	ld	hl,#0x1004
   5A45 E5            [11]  820 	push	hl
   5A46 C5            [11]  821 	push	bc
   5A47 D5            [11]  822 	push	de
   5A48 CD 86 72      [17]  823 	call	_cpct_drawSprite
   5A4B 18 19         [12]  824 	jr	00120$
   5A4D                     825 00118$:
                            826 ;src/Personaje.c:97: cpct_drawSprite(personaje_tileset[p->tipoSprite],p->memPtr,4,16);
   5A4D 69            [ 4]  827 	ld	l, c
   5A4E 60            [ 4]  828 	ld	h, b
   5A4F 4E            [ 7]  829 	ld	c,(hl)
   5A50 23            [ 6]  830 	inc	hl
   5A51 46            [ 7]  831 	ld	b,(hl)
   5A52 6B            [ 4]  832 	ld	l,e
   5A53 26 00         [ 7]  833 	ld	h,#0x00
   5A55 29            [11]  834 	add	hl, hl
   5A56 11 F9 6B      [10]  835 	ld	de,#_personaje_tileset
   5A59 19            [11]  836 	add	hl,de
   5A5A 5E            [ 7]  837 	ld	e,(hl)
   5A5B 23            [ 6]  838 	inc	hl
   5A5C 56            [ 7]  839 	ld	d,(hl)
   5A5D 21 04 10      [10]  840 	ld	hl,#0x1004
   5A60 E5            [11]  841 	push	hl
   5A61 C5            [11]  842 	push	bc
   5A62 D5            [11]  843 	push	de
   5A63 CD 86 72      [17]  844 	call	_cpct_drawSprite
   5A66                     845 00120$:
   5A66 DD F9         [10]  846 	ld	sp, ix
   5A68 DD E1         [14]  847 	pop	ix
   5A6A C9            [10]  848 	ret
                            849 ;src/Personaje.c:99: u8 comprobarColision(personaje *p, estadoTeclado *t){
                            850 ;	---------------------------------
                            851 ; Function comprobarColision
                            852 ; ---------------------------------
   5A6B                     853 _comprobarColision::
   5A6B DD E5         [15]  854 	push	ix
   5A6D DD 21 00 00   [14]  855 	ld	ix,#0
   5A71 DD 39         [15]  856 	add	ix,sp
   5A73 21 DC FF      [10]  857 	ld	hl,#-36
   5A76 39            [11]  858 	add	hl,sp
   5A77 F9            [ 6]  859 	ld	sp,hl
                            860 ;src/Personaje.c:100: int posx=p->x; 
   5A78 DD 7E 04      [19]  861 	ld	a,4 (ix)
   5A7B DD 77 EA      [19]  862 	ld	-22 (ix),a
   5A7E DD 7E 05      [19]  863 	ld	a,5 (ix)
   5A81 DD 77 EB      [19]  864 	ld	-21 (ix),a
   5A84 DD 6E EA      [19]  865 	ld	l,-22 (ix)
   5A87 DD 66 EB      [19]  866 	ld	h,-21 (ix)
   5A8A 7E            [ 7]  867 	ld	a,(hl)
   5A8B DD 77 DD      [19]  868 	ld	-35 (ix),a
   5A8E 23            [ 6]  869 	inc	hl
   5A8F 7E            [ 7]  870 	ld	a,(hl)
   5A90 DD 77 DE      [19]  871 	ld	-34 (ix),a
                            872 ;src/Personaje.c:101: u8  posy=p->y;
   5A93 DD 6E EA      [19]  873 	ld	l,-22 (ix)
   5A96 DD 66 EB      [19]  874 	ld	h,-21 (ix)
   5A99 23            [ 6]  875 	inc	hl
   5A9A 23            [ 6]  876 	inc	hl
   5A9B 7E            [ 7]  877 	ld	a,(hl)
                            878 ;src/Personaje.c:102: u8 casX=posy/16, casY=posx/16;
   5A9C DD 77 E0      [19]  879 	ld	-32 (ix), a
   5A9F 07            [ 4]  880 	rlca
   5AA0 07            [ 4]  881 	rlca
   5AA1 07            [ 4]  882 	rlca
   5AA2 07            [ 4]  883 	rlca
   5AA3 E6 0F         [ 7]  884 	and	a,#0x0F
   5AA5 DD 77 DF      [19]  885 	ld	-33 (ix),a
   5AA8 DD 7E DD      [19]  886 	ld	a,-35 (ix)
   5AAB DD 77 F3      [19]  887 	ld	-13 (ix),a
   5AAE DD 7E DE      [19]  888 	ld	a,-34 (ix)
   5AB1 DD 77 F4      [19]  889 	ld	-12 (ix),a
   5AB4 DD CB DE 7E   [20]  890 	bit	7, -34 (ix)
   5AB8 28 10         [12]  891 	jr	Z,00178$
   5ABA DD 7E DD      [19]  892 	ld	a,-35 (ix)
   5ABD C6 0F         [ 7]  893 	add	a, #0x0F
   5ABF DD 77 F3      [19]  894 	ld	-13 (ix),a
   5AC2 DD 7E DE      [19]  895 	ld	a,-34 (ix)
   5AC5 CE 00         [ 7]  896 	adc	a, #0x00
   5AC7 DD 77 F4      [19]  897 	ld	-12 (ix),a
   5ACA                     898 00178$:
   5ACA DD CB F4 2E   [23]  899 	sra	-12 (ix)
   5ACE DD CB F3 1E   [23]  900 	rr	-13 (ix)
   5AD2 DD CB F4 2E   [23]  901 	sra	-12 (ix)
   5AD6 DD CB F3 1E   [23]  902 	rr	-13 (ix)
   5ADA DD CB F4 2E   [23]  903 	sra	-12 (ix)
   5ADE DD CB F3 1E   [23]  904 	rr	-13 (ix)
   5AE2 DD CB F4 2E   [23]  905 	sra	-12 (ix)
   5AE6 DD CB F3 1E   [23]  906 	rr	-13 (ix)
   5AEA DD 7E F3      [19]  907 	ld	a,-13 (ix)
   5AED DD 77 E1      [19]  908 	ld	-31 (ix),a
                            909 ;src/Personaje.c:104: if     (t->W){
   5AF0 DD 7E 06      [19]  910 	ld	a,6 (ix)
   5AF3 DD 77 F3      [19]  911 	ld	-13 (ix),a
   5AF6 DD 7E 07      [19]  912 	ld	a,7 (ix)
   5AF9 DD 77 F4      [19]  913 	ld	-12 (ix),a
   5AFC DD 6E F3      [19]  914 	ld	l,-13 (ix)
   5AFF DD 66 F4      [19]  915 	ld	h,-12 (ix)
   5B02 7E            [ 7]  916 	ld	a,(hl)
   5B03 DD 77 E6      [19]  917 	ld	-26 (ix),a
                            918 ;src/Personaje.c:105: if(posy%16==0){
   5B06 DD 7E E0      [19]  919 	ld	a,-32 (ix)
   5B09 E6 0F         [ 7]  920 	and	a, #0x0F
   5B0B DD 77 E9      [19]  921 	ld	-23 (ix),a
                            922 ;src/Personaje.c:106: if(posx%16==0){
   5B0E 21 10 00      [10]  923 	ld	hl,#0x0010
   5B11 E5            [11]  924 	push	hl
   5B12 DD 6E DD      [19]  925 	ld	l,-35 (ix)
   5B15 DD 66 DE      [19]  926 	ld	h,-34 (ix)
   5B18 E5            [11]  927 	push	hl
                            928 ;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
   5B19 CD AB 76      [17]  929 	call	__modsint
   5B1C F1            [10]  930 	pop	af
   5B1D F1            [10]  931 	pop	af
   5B1E DD 74 ED      [19]  932 	ld	-19 (ix),h
   5B21 DD 75 EC      [19]  933 	ld	-20 (ix),l
   5B24 DD 7E EA      [19]  934 	ld	a,-22 (ix)
   5B27 C6 06         [ 7]  935 	add	a, #0x06
   5B29 DD 77 FC      [19]  936 	ld	-4 (ix),a
   5B2C DD 7E EB      [19]  937 	ld	a,-21 (ix)
   5B2F CE 00         [ 7]  938 	adc	a, #0x00
   5B31 DD 77 FD      [19]  939 	ld	-3 (ix),a
                            940 ;src/Personaje.c:112: if (casX-1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
   5B34 DD 7E DF      [19]  941 	ld	a,-33 (ix)
   5B37 DD 77 F7      [19]  942 	ld	-9 (ix),a
   5B3A DD 36 F8 00   [19]  943 	ld	-8 (ix),#0x00
                            944 ;src/Personaje.c:120: else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
   5B3E DD 7E E1      [19]  945 	ld	a,-31 (ix)
   5B41 3C            [ 4]  946 	inc	a
   5B42 DD 77 EE      [19]  947 	ld	-18 (ix),a
                            948 ;src/Personaje.c:104: if     (t->W){
   5B45 DD 7E E6      [19]  949 	ld	a,-26 (ix)
   5B48 B7            [ 4]  950 	or	a, a
   5B49 CA E8 5C      [10]  951 	jp	Z,00166$
                            952 ;src/Personaje.c:105: if(posy%16==0){
   5B4C DD 7E E9      [19]  953 	ld	a,-23 (ix)
   5B4F B7            [ 4]  954 	or	a, a
   5B50 C2 E3 5C      [10]  955 	jp	NZ,00114$
                            956 ;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
   5B53 DD 7E DF      [19]  957 	ld	a,-33 (ix)
   5B56 C6 FF         [ 7]  958 	add	a,#0xFF
   5B58 DD 77 E6      [19]  959 	ld	-26 (ix),a
   5B5B DD 6E FC      [19]  960 	ld	l,-4 (ix)
   5B5E DD 66 FD      [19]  961 	ld	h,-3 (ix)
   5B61 7E            [ 7]  962 	ld	a,(hl)
   5B62 DD 77 FB      [19]  963 	ld	-5 (ix),a
   5B65 DD 7E E6      [19]  964 	ld	a,-26 (ix)
   5B68 4F            [ 4]  965 	ld	c,a
   5B69 87            [ 4]  966 	add	a, a
   5B6A 87            [ 4]  967 	add	a, a
   5B6B 81            [ 4]  968 	add	a, c
   5B6C 87            [ 4]  969 	add	a, a
   5B6D 87            [ 4]  970 	add	a, a
   5B6E DD 77 E6      [19]  971 	ld	-26 (ix),a
   5B71 DD 7E FB      [19]  972 	ld	a,-5 (ix)
   5B74 DD 77 F9      [19]  973 	ld	-7 (ix),a
   5B77 DD 36 FA 00   [19]  974 	ld	-6 (ix),#0x00
   5B7B DD 7E F9      [19]  975 	ld	a,-7 (ix)
   5B7E DD 77 FA      [19]  976 	ld	-6 (ix),a
   5B81 DD 36 F9 00   [19]  977 	ld	-7 (ix),#0x00
                            978 ;src/Personaje.c:106: if(posx%16==0){
   5B85 DD 7E ED      [19]  979 	ld	a,-19 (ix)
   5B88 DD B6 EC      [19]  980 	or	a,-20 (ix)
   5B8B C2 84 5C      [10]  981 	jp	NZ,00111$
                            982 ;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
   5B8E DD 7E F9      [19]  983 	ld	a,-7 (ix)
   5B91 C6 7D         [ 7]  984 	add	a, #<(_mapas)
   5B93 DD 77 F5      [19]  985 	ld	-11 (ix),a
   5B96 DD 7E FA      [19]  986 	ld	a,-6 (ix)
   5B99 CE 50         [ 7]  987 	adc	a, #>(_mapas)
   5B9B DD 77 F6      [19]  988 	ld	-10 (ix),a
   5B9E DD 7E E6      [19]  989 	ld	a,-26 (ix)
   5BA1 DD 86 F5      [19]  990 	add	a, -11 (ix)
   5BA4 DD 77 F5      [19]  991 	ld	-11 (ix),a
   5BA7 3E 00         [ 7]  992 	ld	a,#0x00
   5BA9 DD 8E F6      [19]  993 	adc	a, -10 (ix)
   5BAC DD 77 F6      [19]  994 	ld	-10 (ix),a
   5BAF DD 7E E1      [19]  995 	ld	a,-31 (ix)
   5BB2 DD 86 F5      [19]  996 	add	a, -11 (ix)
   5BB5 DD 77 F5      [19]  997 	ld	-11 (ix),a
   5BB8 3E 00         [ 7]  998 	ld	a,#0x00
   5BBA DD 8E F6      [19]  999 	adc	a, -10 (ix)
   5BBD DD 77 F6      [19] 1000 	ld	-10 (ix),a
   5BC0 DD 6E F5      [19] 1001 	ld	l,-11 (ix)
   5BC3 DD 66 F6      [19] 1002 	ld	h,-10 (ix)
   5BC6 7E            [ 7] 1003 	ld	a,(hl)
   5BC7 DD 77 F5      [19] 1004 	ld	-11 (ix), a
   5BCA D6 02         [ 7] 1005 	sub	a, #0x02
   5BCC C2 7E 5C      [10] 1006 	jp	NZ,00106$
                           1007 ;src/Personaje.c:110: for (i = 0; i < 4; ++i)
   5BCF 3E 7D         [ 7] 1008 	ld	a,#<(_mapas)
   5BD1 DD 86 F9      [19] 1009 	add	a, -7 (ix)
   5BD4 DD 77 E2      [19] 1010 	ld	-30 (ix),a
   5BD7 3E 50         [ 7] 1011 	ld	a,#>(_mapas)
   5BD9 DD 8E FA      [19] 1012 	adc	a, -6 (ix)
   5BDC DD 77 E3      [19] 1013 	ld	-29 (ix),a
   5BDF DD 7E E2      [19] 1014 	ld	a,-30 (ix)
   5BE2 C6 F0         [ 7] 1015 	add	a, #0xF0
   5BE4 DD 77 E2      [19] 1016 	ld	-30 (ix),a
   5BE7 DD 7E E3      [19] 1017 	ld	a,-29 (ix)
   5BEA CE 00         [ 7] 1018 	adc	a, #0x00
   5BEC DD 77 E3      [19] 1019 	ld	-29 (ix),a
   5BEF DD 36 DC 00   [19] 1020 	ld	-36 (ix),#0x00
   5BF3                    1021 00168$:
                           1022 ;src/Personaje.c:112: if (casX-1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
   5BF3 DD 7E F7      [19] 1023 	ld	a,-9 (ix)
   5BF6 C6 FF         [ 7] 1024 	add	a,#0xFF
   5BF8 DD 77 E4      [19] 1025 	ld	-28 (ix),a
   5BFB DD 7E F8      [19] 1026 	ld	a,-8 (ix)
   5BFE CE FF         [ 7] 1027 	adc	a,#0xFF
   5C00 DD 77 E5      [19] 1028 	ld	-27 (ix),a
   5C03 DD 7E DC      [19] 1029 	ld	a,-36 (ix)
   5C06 87            [ 4] 1030 	add	a, a
   5C07 87            [ 4] 1031 	add	a, a
   5C08 DD 77 FB      [19] 1032 	ld	-5 (ix),a
   5C0B DD 7E E2      [19] 1033 	ld	a,-30 (ix)
   5C0E DD 86 FB      [19] 1034 	add	a, -5 (ix)
   5C11 DD 77 FE      [19] 1035 	ld	-2 (ix),a
   5C14 DD 7E E3      [19] 1036 	ld	a,-29 (ix)
   5C17 CE 00         [ 7] 1037 	adc	a, #0x00
   5C19 DD 77 FF      [19] 1038 	ld	-1 (ix),a
   5C1C DD 6E FE      [19] 1039 	ld	l,-2 (ix)
   5C1F DD 66 FF      [19] 1040 	ld	h,-1 (ix)
   5C22 7E            [ 7] 1041 	ld	a,(hl)
   5C23 DD 77 F1      [19] 1042 	ld	-15 (ix),a
   5C26 23            [ 6] 1043 	inc	hl
   5C27 7E            [ 7] 1044 	ld	a,(hl)
   5C28 DD 77 F2      [19] 1045 	ld	-14 (ix),a
   5C2B DD 7E F1      [19] 1046 	ld	a,-15 (ix)
   5C2E DD 96 E4      [19] 1047 	sub	a, -28 (ix)
   5C31 20 40         [12] 1048 	jr	NZ,00169$
   5C33 DD 7E F2      [19] 1049 	ld	a,-14 (ix)
   5C36 DD 96 E5      [19] 1050 	sub	a, -27 (ix)
   5C39 20 38         [12] 1051 	jr	NZ,00169$
   5C3B DD 6E FE      [19] 1052 	ld	l,-2 (ix)
   5C3E DD 66 FF      [19] 1053 	ld	h,-1 (ix)
   5C41 23            [ 6] 1054 	inc	hl
   5C42 23            [ 6] 1055 	inc	hl
   5C43 DD 7E E1      [19] 1056 	ld	a,-31 (ix)
   5C46 96            [ 7] 1057 	sub	a,(hl)
   5C47 20 2A         [12] 1058 	jr	NZ,00169$
                           1059 ;src/Personaje.c:113: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
   5C49 DD 6E FE      [19] 1060 	ld	l,-2 (ix)
   5C4C DD 66 FF      [19] 1061 	ld	h,-1 (ix)
   5C4F 23            [ 6] 1062 	inc	hl
   5C50 23            [ 6] 1063 	inc	hl
   5C51 23            [ 6] 1064 	inc	hl
   5C52 56            [ 7] 1065 	ld	d,(hl)
   5C53 DD 7E E0      [19] 1066 	ld	a,-32 (ix)
   5C56 F5            [11] 1067 	push	af
   5C57 33            [ 6] 1068 	inc	sp
   5C58 C1            [10] 1069 	pop	bc
   5C59 E1            [10] 1070 	pop	hl
   5C5A E5            [11] 1071 	push	hl
   5C5B C5            [11] 1072 	push	bc
   5C5C E5            [11] 1073 	push	hl
   5C5D DD 6E EA      [19] 1074 	ld	l,-22 (ix)
   5C60 DD 66 EB      [19] 1075 	ld	h,-21 (ix)
   5C63 E5            [11] 1076 	push	hl
   5C64 D5            [11] 1077 	push	de
   5C65 33            [ 6] 1078 	inc	sp
   5C66 CD 69 63      [17] 1079 	call	_cambiarSala
   5C69 21 06 00      [10] 1080 	ld	hl,#6
   5C6C 39            [11] 1081 	add	hl,sp
   5C6D F9            [ 6] 1082 	ld	sp,hl
                           1083 ;src/Personaje.c:114: return 2;
   5C6E 2E 02         [ 7] 1084 	ld	l,#0x02
   5C70 C3 21 60      [10] 1085 	jp	00176$
   5C73                    1086 00169$:
                           1087 ;src/Personaje.c:110: for (i = 0; i < 4; ++i)
   5C73 DD 34 DC      [23] 1088 	inc	-36 (ix)
   5C76 DD 7E DC      [19] 1089 	ld	a,-36 (ix)
   5C79 D6 04         [ 7] 1090 	sub	a, #0x04
   5C7B DA F3 5B      [10] 1091 	jp	C,00168$
   5C7E                    1092 00106$:
                           1093 ;src/Personaje.c:118: return mapas[p->salaActual].posiciones[casX-1][casY];
   5C7E DD 6E F5      [19] 1094 	ld	l,-11 (ix)
   5C81 C3 21 60      [10] 1095 	jp	00176$
   5C84                    1096 00111$:
                           1097 ;src/Personaje.c:120: else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
   5C84 DD 7E F9      [19] 1098 	ld	a,-7 (ix)
   5C87 C6 7D         [ 7] 1099 	add	a, #<(_mapas)
   5C89 DD 77 F1      [19] 1100 	ld	-15 (ix),a
   5C8C DD 7E FA      [19] 1101 	ld	a,-6 (ix)
   5C8F CE 50         [ 7] 1102 	adc	a, #>(_mapas)
   5C91 DD 77 F2      [19] 1103 	ld	-14 (ix),a
   5C94 DD 7E E6      [19] 1104 	ld	a,-26 (ix)
   5C97 DD 86 F1      [19] 1105 	add	a, -15 (ix)
   5C9A DD 77 F1      [19] 1106 	ld	-15 (ix),a
   5C9D 3E 00         [ 7] 1107 	ld	a,#0x00
   5C9F DD 8E F2      [19] 1108 	adc	a, -14 (ix)
   5CA2 DD 77 F2      [19] 1109 	ld	-14 (ix),a
   5CA5 DD 7E E1      [19] 1110 	ld	a,-31 (ix)
   5CA8 DD 86 F1      [19] 1111 	add	a, -15 (ix)
   5CAB DD 77 FE      [19] 1112 	ld	-2 (ix),a
   5CAE 3E 00         [ 7] 1113 	ld	a,#0x00
   5CB0 DD 8E F2      [19] 1114 	adc	a, -14 (ix)
   5CB3 DD 77 FF      [19] 1115 	ld	-1 (ix),a
   5CB6 DD 6E FE      [19] 1116 	ld	l,-2 (ix)
   5CB9 DD 66 FF      [19] 1117 	ld	h,-1 (ix)
   5CBC 7E            [ 7] 1118 	ld	a,(hl)
   5CBD DD 77 FE      [19] 1119 	ld	-2 (ix), a
   5CC0 B7            [ 4] 1120 	or	a, a
   5CC1 20 1B         [12] 1121 	jr	NZ,00107$
   5CC3 DD 7E EE      [19] 1122 	ld	a,-18 (ix)
   5CC6 DD 86 F1      [19] 1123 	add	a, -15 (ix)
   5CC9 DD 77 F1      [19] 1124 	ld	-15 (ix),a
   5CCC 3E 00         [ 7] 1125 	ld	a,#0x00
   5CCE DD 8E F2      [19] 1126 	adc	a, -14 (ix)
   5CD1 DD 77 F2      [19] 1127 	ld	-14 (ix),a
   5CD4 DD 6E F1      [19] 1128 	ld	l,-15 (ix)
   5CD7 DD 66 F2      [19] 1129 	ld	h,-14 (ix)
   5CDA 7E            [ 7] 1130 	ld	a,(hl)
   5CDB B7            [ 4] 1131 	or	a, a
   5CDC 28 05         [12] 1132 	jr	Z,00114$
   5CDE                    1133 00107$:
                           1134 ;src/Personaje.c:121: return 1;
   5CDE 2E 01         [ 7] 1135 	ld	l,#0x01
   5CE0 C3 21 60      [10] 1136 	jp	00176$
   5CE3                    1137 00114$:
                           1138 ;src/Personaje.c:123: return 0;
   5CE3 2E 00         [ 7] 1139 	ld	l,#0x00
   5CE5 C3 21 60      [10] 1140 	jp	00176$
   5CE8                    1141 00166$:
                           1142 ;src/Personaje.c:125: else if(t->A){
   5CE8 DD 6E F3      [19] 1143 	ld	l,-13 (ix)
   5CEB DD 66 F4      [19] 1144 	ld	h,-12 (ix)
   5CEE 23            [ 6] 1145 	inc	hl
   5CEF 56            [ 7] 1146 	ld	d,(hl)
                           1147 ;src/Personaje.c:128: if(mapas[p->salaActual].posiciones[casX][casY-1]==2){
   5CF0 DD 7E DF      [19] 1148 	ld	a,-33 (ix)
   5CF3 4F            [ 4] 1149 	ld	c,a
   5CF4 87            [ 4] 1150 	add	a, a
   5CF5 87            [ 4] 1151 	add	a, a
   5CF6 81            [ 4] 1152 	add	a, c
   5CF7 87            [ 4] 1153 	add	a, a
   5CF8 87            [ 4] 1154 	add	a, a
   5CF9 DD 77 F1      [19] 1155 	ld	-15 (ix),a
                           1156 ;src/Personaje.c:133: if (casX==mapas[p->salaActual].puertas[i].x && casY-1==mapas[p->salaActual].puertas[i].y){
   5CFC DD 7E E1      [19] 1157 	ld	a,-31 (ix)
   5CFF DD 77 FE      [19] 1158 	ld	-2 (ix),a
   5D02 DD 36 FF 00   [19] 1159 	ld	-1 (ix),#0x00
                           1160 ;src/Personaje.c:141: else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
   5D06 DD 7E DF      [19] 1161 	ld	a,-33 (ix)
   5D09 3C            [ 4] 1162 	inc	a
   5D0A 4F            [ 4] 1163 	ld	c,a
   5D0B 87            [ 4] 1164 	add	a, a
   5D0C 87            [ 4] 1165 	add	a, a
   5D0D 81            [ 4] 1166 	add	a, c
   5D0E 87            [ 4] 1167 	add	a, a
   5D0F 87            [ 4] 1168 	add	a, a
   5D10 DD 77 E4      [19] 1169 	ld	-28 (ix),a
                           1170 ;src/Personaje.c:125: else if(t->A){
   5D13 7A            [ 4] 1171 	ld	a,d
   5D14 B7            [ 4] 1172 	or	a, a
   5D15 CA 21 5E      [10] 1173 	jp	Z,00163$
                           1174 ;src/Personaje.c:126: if(posx%16==0){
   5D18 DD 7E ED      [19] 1175 	ld	a,-19 (ix)
   5D1B DD B6 EC      [19] 1176 	or	a,-20 (ix)
   5D1E C2 1C 5E      [10] 1177 	jp	NZ,00128$
                           1178 ;src/Personaje.c:128: if(mapas[p->salaActual].posiciones[casX][casY-1]==2){
   5D21 DD 7E E1      [19] 1179 	ld	a,-31 (ix)
   5D24 C6 FF         [ 7] 1180 	add	a,#0xFF
   5D26 DD 77 E2      [19] 1181 	ld	-30 (ix),a
                           1182 ;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
   5D29 DD 6E FC      [19] 1183 	ld	l,-4 (ix)
   5D2C DD 66 FD      [19] 1184 	ld	h,-3 (ix)
   5D2F 66            [ 7] 1185 	ld	h,(hl)
   5D30 DD 74 F6      [19] 1186 	ld	-10 (ix),h
   5D33 DD 36 F5 00   [19] 1187 	ld	-11 (ix),#0x00
                           1188 ;src/Personaje.c:127: if(posy%16==0){
   5D37 DD 7E E9      [19] 1189 	ld	a,-23 (ix)
   5D3A B7            [ 4] 1190 	or	a, a
   5D3B C2 EB 5D      [10] 1191 	jp	NZ,00125$
                           1192 ;src/Personaje.c:128: if(mapas[p->salaActual].posiciones[casX][casY-1]==2){
   5D3E 11 7D 50      [10] 1193 	ld	de,#_mapas+0
   5D41 DD 6E F5      [19] 1194 	ld	l,-11 (ix)
   5D44 DD 66 F6      [19] 1195 	ld	h,-10 (ix)
   5D47 19            [11] 1196 	add	hl,de
   5D48 DD 4E F1      [19] 1197 	ld	c,-15 (ix)
   5D4B 06 00         [ 7] 1198 	ld	b,#0x00
   5D4D 09            [11] 1199 	add	hl,bc
   5D4E DD 4E E2      [19] 1200 	ld	c,-30 (ix)
   5D51 06 00         [ 7] 1201 	ld	b,#0x00
   5D53 09            [11] 1202 	add	hl,bc
   5D54 7E            [ 7] 1203 	ld	a,(hl)
   5D55 DD 77 F9      [19] 1204 	ld	-7 (ix), a
   5D58 D6 02         [ 7] 1205 	sub	a, #0x02
   5D5A C2 E5 5D      [10] 1206 	jp	NZ,00120$
                           1207 ;src/Personaje.c:131: for (i = 0; i < 4; ++i)
   5D5D DD 6E F5      [19] 1208 	ld	l,-11 (ix)
   5D60 DD 66 F6      [19] 1209 	ld	h,-10 (ix)
   5D63 19            [11] 1210 	add	hl,de
   5D64 7D            [ 4] 1211 	ld	a,l
   5D65 C6 F0         [ 7] 1212 	add	a, #0xF0
   5D67 DD 77 E7      [19] 1213 	ld	-25 (ix),a
   5D6A 7C            [ 4] 1214 	ld	a,h
   5D6B CE 00         [ 7] 1215 	adc	a, #0x00
   5D6D DD 77 E8      [19] 1216 	ld	-24 (ix),a
   5D70 DD 36 DC 00   [19] 1217 	ld	-36 (ix),#0x00
   5D74                    1218 00170$:
                           1219 ;src/Personaje.c:133: if (casX==mapas[p->salaActual].puertas[i].x && casY-1==mapas[p->salaActual].puertas[i].y){
   5D74 DD 7E DC      [19] 1220 	ld	a,-36 (ix)
   5D77 87            [ 4] 1221 	add	a, a
   5D78 87            [ 4] 1222 	add	a, a
   5D79 67            [ 4] 1223 	ld	h,a
   5D7A DD 7E E7      [19] 1224 	ld	a,-25 (ix)
   5D7D 84            [ 4] 1225 	add	a, h
   5D7E 5F            [ 4] 1226 	ld	e,a
   5D7F DD 7E E8      [19] 1227 	ld	a,-24 (ix)
   5D82 CE 00         [ 7] 1228 	adc	a, #0x00
   5D84 57            [ 4] 1229 	ld	d,a
   5D85 6B            [ 4] 1230 	ld	l, e
   5D86 62            [ 4] 1231 	ld	h, d
   5D87 46            [ 7] 1232 	ld	b,(hl)
   5D88 23            [ 6] 1233 	inc	hl
   5D89 4E            [ 7] 1234 	ld	c,(hl)
   5D8A DD 7E F7      [19] 1235 	ld	a,-9 (ix)
   5D8D 90            [ 4] 1236 	sub	a, b
   5D8E 20 4B         [12] 1237 	jr	NZ,00171$
   5D90 DD 7E F8      [19] 1238 	ld	a,-8 (ix)
   5D93 91            [ 4] 1239 	sub	a, c
   5D94 20 45         [12] 1240 	jr	NZ,00171$
   5D96 DD 4E FE      [19] 1241 	ld	c,-2 (ix)
   5D99 DD 46 FF      [19] 1242 	ld	b,-1 (ix)
   5D9C 0B            [ 6] 1243 	dec	bc
   5D9D 6B            [ 4] 1244 	ld	l, e
   5D9E 62            [ 4] 1245 	ld	h, d
   5D9F 23            [ 6] 1246 	inc	hl
   5DA0 23            [ 6] 1247 	inc	hl
   5DA1 7E            [ 7] 1248 	ld	a,(hl)
   5DA2 DD 77 EF      [19] 1249 	ld	-17 (ix),a
   5DA5 DD 36 F0 00   [19] 1250 	ld	-16 (ix),#0x00
   5DA9 79            [ 4] 1251 	ld	a,c
   5DAA DD 96 EF      [19] 1252 	sub	a, -17 (ix)
   5DAD 20 2C         [12] 1253 	jr	NZ,00171$
   5DAF 78            [ 4] 1254 	ld	a,b
   5DB0 DD 96 F0      [19] 1255 	sub	a, -16 (ix)
   5DB3 20 26         [12] 1256 	jr	NZ,00171$
                           1257 ;src/Personaje.c:134: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
   5DB5 6B            [ 4] 1258 	ld	l, e
   5DB6 62            [ 4] 1259 	ld	h, d
   5DB7 23            [ 6] 1260 	inc	hl
   5DB8 23            [ 6] 1261 	inc	hl
   5DB9 23            [ 6] 1262 	inc	hl
   5DBA 56            [ 7] 1263 	ld	d,(hl)
   5DBB DD 7E E0      [19] 1264 	ld	a,-32 (ix)
   5DBE F5            [11] 1265 	push	af
   5DBF 33            [ 6] 1266 	inc	sp
   5DC0 C1            [10] 1267 	pop	bc
   5DC1 E1            [10] 1268 	pop	hl
   5DC2 E5            [11] 1269 	push	hl
   5DC3 C5            [11] 1270 	push	bc
   5DC4 E5            [11] 1271 	push	hl
   5DC5 DD 6E EA      [19] 1272 	ld	l,-22 (ix)
   5DC8 DD 66 EB      [19] 1273 	ld	h,-21 (ix)
   5DCB E5            [11] 1274 	push	hl
   5DCC D5            [11] 1275 	push	de
   5DCD 33            [ 6] 1276 	inc	sp
   5DCE CD 69 63      [17] 1277 	call	_cambiarSala
   5DD1 21 06 00      [10] 1278 	ld	hl,#6
   5DD4 39            [11] 1279 	add	hl,sp
   5DD5 F9            [ 6] 1280 	ld	sp,hl
                           1281 ;src/Personaje.c:135: return 2;
   5DD6 2E 02         [ 7] 1282 	ld	l,#0x02
   5DD8 C3 21 60      [10] 1283 	jp	00176$
   5DDB                    1284 00171$:
                           1285 ;src/Personaje.c:131: for (i = 0; i < 4; ++i)
   5DDB DD 34 DC      [23] 1286 	inc	-36 (ix)
   5DDE DD 7E DC      [19] 1287 	ld	a,-36 (ix)
   5DE1 D6 04         [ 7] 1288 	sub	a, #0x04
   5DE3 38 8F         [12] 1289 	jr	C,00170$
   5DE5                    1290 00120$:
                           1291 ;src/Personaje.c:139: return mapas[p->salaActual].posiciones[casX][casY-1];
   5DE5 DD 6E F9      [19] 1292 	ld	l,-7 (ix)
   5DE8 C3 21 60      [10] 1293 	jp	00176$
   5DEB                    1294 00125$:
                           1295 ;src/Personaje.c:141: else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
   5DEB 3E 7D         [ 7] 1296 	ld	a,#<(_mapas)
   5DED DD 86 F5      [19] 1297 	add	a, -11 (ix)
   5DF0 5F            [ 4] 1298 	ld	e,a
   5DF1 3E 50         [ 7] 1299 	ld	a,#>(_mapas)
   5DF3 DD 8E F6      [19] 1300 	adc	a, -10 (ix)
   5DF6 57            [ 4] 1301 	ld	d,a
   5DF7 DD 6E F1      [19] 1302 	ld	l,-15 (ix)
   5DFA 26 00         [ 7] 1303 	ld	h,#0x00
   5DFC 19            [11] 1304 	add	hl,de
   5DFD DD 4E E2      [19] 1305 	ld	c,-30 (ix)
   5E00 06 00         [ 7] 1306 	ld	b,#0x00
   5E02 09            [11] 1307 	add	hl,bc
   5E03 7E            [ 7] 1308 	ld	a,(hl)
   5E04 B7            [ 4] 1309 	or	a, a
   5E05 20 10         [12] 1310 	jr	NZ,00121$
   5E07 DD 6E E4      [19] 1311 	ld	l,-28 (ix)
   5E0A 26 00         [ 7] 1312 	ld	h,#0x00
   5E0C 19            [11] 1313 	add	hl,de
   5E0D DD 5E E2      [19] 1314 	ld	e,-30 (ix)
   5E10 16 00         [ 7] 1315 	ld	d,#0x00
   5E12 19            [11] 1316 	add	hl,de
   5E13 7E            [ 7] 1317 	ld	a,(hl)
   5E14 B7            [ 4] 1318 	or	a, a
   5E15 28 05         [12] 1319 	jr	Z,00128$
   5E17                    1320 00121$:
                           1321 ;src/Personaje.c:142: return 1;
   5E17 2E 01         [ 7] 1322 	ld	l,#0x01
   5E19 C3 21 60      [10] 1323 	jp	00176$
   5E1C                    1324 00128$:
                           1325 ;src/Personaje.c:144: return 0;
   5E1C 2E 00         [ 7] 1326 	ld	l,#0x00
   5E1E C3 21 60      [10] 1327 	jp	00176$
   5E21                    1328 00163$:
                           1329 ;src/Personaje.c:146: else if(t->S){
   5E21 DD 6E F3      [19] 1330 	ld	l,-13 (ix)
   5E24 DD 66 F4      [19] 1331 	ld	h,-12 (ix)
   5E27 23            [ 6] 1332 	inc	hl
   5E28 23            [ 6] 1333 	inc	hl
   5E29 7E            [ 7] 1334 	ld	a,(hl)
   5E2A B7            [ 4] 1335 	or	a, a
   5E2B CA 16 5F      [10] 1336 	jp	Z,00160$
                           1337 ;src/Personaje.c:147: if(posy%16==0){
   5E2E DD 7E E9      [19] 1338 	ld	a,-23 (ix)
   5E31 B7            [ 4] 1339 	or	a, a
   5E32 C2 11 5F      [10] 1340 	jp	NZ,00142$
                           1341 ;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
   5E35 DD 6E FC      [19] 1342 	ld	l,-4 (ix)
   5E38 DD 66 FD      [19] 1343 	ld	h,-3 (ix)
   5E3B 56            [ 7] 1344 	ld	d,(hl)
   5E3C 1E 00         [ 7] 1345 	ld	e,#0x00
                           1346 ;src/Personaje.c:148: if(posx%16==0){
   5E3E DD 7E ED      [19] 1347 	ld	a,-19 (ix)
   5E41 DD B6 EC      [19] 1348 	or	a,-20 (ix)
   5E44 C2 EB 5E      [10] 1349 	jp	NZ,00139$
                           1350 ;src/Personaje.c:149: if(mapas[p->salaActual].posiciones[casX+1][casY]==2){
   5E47 21 7D 50      [10] 1351 	ld	hl,#_mapas
   5E4A 19            [11] 1352 	add	hl,de
   5E4B DD 4E E4      [19] 1353 	ld	c,-28 (ix)
   5E4E 06 00         [ 7] 1354 	ld	b,#0x00
   5E50 09            [11] 1355 	add	hl,bc
   5E51 DD 4E E1      [19] 1356 	ld	c,-31 (ix)
   5E54 06 00         [ 7] 1357 	ld	b,#0x00
   5E56 09            [11] 1358 	add	hl,bc
   5E57 4E            [ 7] 1359 	ld	c,(hl)
   5E58 79            [ 4] 1360 	ld	a,c
   5E59 D6 02         [ 7] 1361 	sub	a, #0x02
   5E5B C2 E7 5E      [10] 1362 	jp	NZ,00134$
                           1363 ;src/Personaje.c:152: for (i = 0; i < 4; ++i)
   5E5E 21 7D 50      [10] 1364 	ld	hl,#_mapas
   5E61 19            [11] 1365 	add	hl,de
   5E62 7D            [ 4] 1366 	ld	a,l
   5E63 C6 F0         [ 7] 1367 	add	a, #0xF0
   5E65 DD 77 EF      [19] 1368 	ld	-17 (ix),a
   5E68 7C            [ 4] 1369 	ld	a,h
   5E69 CE 00         [ 7] 1370 	adc	a, #0x00
   5E6B DD 77 F0      [19] 1371 	ld	-16 (ix),a
   5E6E 1E 00         [ 7] 1372 	ld	e,#0x00
   5E70                    1373 00172$:
                           1374 ;src/Personaje.c:154: if (casX+1==mapas[p->salaActual].puertas[i].x && casY==mapas[p->salaActual].puertas[i].y){
   5E70 DD 7E F7      [19] 1375 	ld	a,-9 (ix)
   5E73 C6 01         [ 7] 1376 	add	a, #0x01
   5E75 DD 77 E7      [19] 1377 	ld	-25 (ix),a
   5E78 DD 7E F8      [19] 1378 	ld	a,-8 (ix)
   5E7B CE 00         [ 7] 1379 	adc	a, #0x00
   5E7D DD 77 E8      [19] 1380 	ld	-24 (ix),a
   5E80 7B            [ 4] 1381 	ld	a,e
   5E81 87            [ 4] 1382 	add	a, a
   5E82 87            [ 4] 1383 	add	a, a
   5E83 67            [ 4] 1384 	ld	h,a
   5E84 DD 7E EF      [19] 1385 	ld	a,-17 (ix)
   5E87 84            [ 4] 1386 	add	a, h
   5E88 DD 77 E2      [19] 1387 	ld	-30 (ix),a
   5E8B DD 7E F0      [19] 1388 	ld	a,-16 (ix)
   5E8E CE 00         [ 7] 1389 	adc	a, #0x00
   5E90 DD 77 E3      [19] 1390 	ld	-29 (ix),a
   5E93 DD 6E E2      [19] 1391 	ld	l,-30 (ix)
   5E96 DD 66 E3      [19] 1392 	ld	h,-29 (ix)
   5E99 56            [ 7] 1393 	ld	d,(hl)
   5E9A 23            [ 6] 1394 	inc	hl
   5E9B 46            [ 7] 1395 	ld	b,(hl)
   5E9C DD 7E E7      [19] 1396 	ld	a,-25 (ix)
   5E9F 92            [ 4] 1397 	sub	a, d
   5EA0 20 3F         [12] 1398 	jr	NZ,00173$
   5EA2 DD 7E E8      [19] 1399 	ld	a,-24 (ix)
   5EA5 90            [ 4] 1400 	sub	a, b
   5EA6 20 39         [12] 1401 	jr	NZ,00173$
   5EA8 DD 6E E2      [19] 1402 	ld	l,-30 (ix)
   5EAB DD 66 E3      [19] 1403 	ld	h,-29 (ix)
   5EAE 23            [ 6] 1404 	inc	hl
   5EAF 23            [ 6] 1405 	inc	hl
   5EB0 DD 7E E1      [19] 1406 	ld	a,-31 (ix)
   5EB3 96            [ 7] 1407 	sub	a,(hl)
   5EB4 20 2B         [12] 1408 	jr	NZ,00173$
                           1409 ;src/Personaje.c:155: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
   5EB6 DD 6E E2      [19] 1410 	ld	l,-30 (ix)
   5EB9 DD 66 E3      [19] 1411 	ld	h,-29 (ix)
   5EBC 23            [ 6] 1412 	inc	hl
   5EBD 23            [ 6] 1413 	inc	hl
   5EBE 23            [ 6] 1414 	inc	hl
   5EBF 5E            [ 7] 1415 	ld	e,(hl)
   5EC0 DD 7E E0      [19] 1416 	ld	a,-32 (ix)
   5EC3 F5            [11] 1417 	push	af
   5EC4 33            [ 6] 1418 	inc	sp
   5EC5 C1            [10] 1419 	pop	bc
   5EC6 E1            [10] 1420 	pop	hl
   5EC7 E5            [11] 1421 	push	hl
   5EC8 C5            [11] 1422 	push	bc
   5EC9 E5            [11] 1423 	push	hl
   5ECA DD 6E EA      [19] 1424 	ld	l,-22 (ix)
   5ECD DD 66 EB      [19] 1425 	ld	h,-21 (ix)
   5ED0 E5            [11] 1426 	push	hl
   5ED1 7B            [ 4] 1427 	ld	a,e
   5ED2 F5            [11] 1428 	push	af
   5ED3 33            [ 6] 1429 	inc	sp
   5ED4 CD 69 63      [17] 1430 	call	_cambiarSala
   5ED7 21 06 00      [10] 1431 	ld	hl,#6
   5EDA 39            [11] 1432 	add	hl,sp
   5EDB F9            [ 6] 1433 	ld	sp,hl
                           1434 ;src/Personaje.c:156: return 2;
   5EDC 2E 02         [ 7] 1435 	ld	l,#0x02
   5EDE C3 21 60      [10] 1436 	jp	00176$
   5EE1                    1437 00173$:
                           1438 ;src/Personaje.c:152: for (i = 0; i < 4; ++i)
   5EE1 1C            [ 4] 1439 	inc	e
   5EE2 7B            [ 4] 1440 	ld	a,e
   5EE3 D6 04         [ 7] 1441 	sub	a, #0x04
   5EE5 38 89         [12] 1442 	jr	C,00172$
   5EE7                    1443 00134$:
                           1444 ;src/Personaje.c:160: return mapas[p->salaActual].posiciones[casX+1][casY];
   5EE7 69            [ 4] 1445 	ld	l,c
   5EE8 C3 21 60      [10] 1446 	jp	00176$
   5EEB                    1447 00139$:
                           1448 ;src/Personaje.c:162: else if(mapas[p->salaActual].posiciones[casX+1][casY]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
   5EEB 21 7D 50      [10] 1449 	ld	hl,#_mapas+0
   5EEE 19            [11] 1450 	add	hl,de
   5EEF 7D            [ 4] 1451 	ld	a,l
   5EF0 DD 86 E4      [19] 1452 	add	a, -28 (ix)
   5EF3 5F            [ 4] 1453 	ld	e,a
   5EF4 7C            [ 4] 1454 	ld	a,h
   5EF5 CE 00         [ 7] 1455 	adc	a, #0x00
   5EF7 57            [ 4] 1456 	ld	d,a
   5EF8 DD 6E E1      [19] 1457 	ld	l,-31 (ix)
   5EFB 26 00         [ 7] 1458 	ld	h,#0x00
   5EFD 19            [11] 1459 	add	hl,de
   5EFE 7E            [ 7] 1460 	ld	a,(hl)
   5EFF B7            [ 4] 1461 	or	a, a
   5F00 20 0A         [12] 1462 	jr	NZ,00135$
   5F02 DD 6E EE      [19] 1463 	ld	l,-18 (ix)
   5F05 26 00         [ 7] 1464 	ld	h,#0x00
   5F07 19            [11] 1465 	add	hl,de
   5F08 7E            [ 7] 1466 	ld	a,(hl)
   5F09 B7            [ 4] 1467 	or	a, a
   5F0A 28 05         [12] 1468 	jr	Z,00142$
   5F0C                    1469 00135$:
                           1470 ;src/Personaje.c:163: return 1;
   5F0C 2E 01         [ 7] 1471 	ld	l,#0x01
   5F0E C3 21 60      [10] 1472 	jp	00176$
   5F11                    1473 00142$:
                           1474 ;src/Personaje.c:165: return 0;
   5F11 2E 00         [ 7] 1475 	ld	l,#0x00
   5F13 C3 21 60      [10] 1476 	jp	00176$
   5F16                    1477 00160$:
                           1478 ;src/Personaje.c:167: else if(t->D){  
   5F16 DD 6E F3      [19] 1479 	ld	l,-13 (ix)
   5F19 DD 66 F4      [19] 1480 	ld	h,-12 (ix)
   5F1C 23            [ 6] 1481 	inc	hl
   5F1D 23            [ 6] 1482 	inc	hl
   5F1E 23            [ 6] 1483 	inc	hl
   5F1F 7E            [ 7] 1484 	ld	a,(hl)
   5F20 B7            [ 4] 1485 	or	a, a
   5F21 CA 1F 60      [10] 1486 	jp	Z,00164$
                           1487 ;src/Personaje.c:168: if(posx%16==0){
   5F24 DD 7E ED      [19] 1488 	ld	a,-19 (ix)
   5F27 DD B6 EC      [19] 1489 	or	a,-20 (ix)
   5F2A C2 1B 60      [10] 1490 	jp	NZ,00156$
                           1491 ;src/Personaje.c:107: if(mapas[p->salaActual].posiciones[casX-1][casY]==2){
   5F2D DD 6E FC      [19] 1492 	ld	l,-4 (ix)
   5F30 DD 66 FD      [19] 1493 	ld	h,-3 (ix)
   5F33 56            [ 7] 1494 	ld	d,(hl)
   5F34 1E 00         [ 7] 1495 	ld	e,#0x00
                           1496 ;src/Personaje.c:169: if(posy%16==0){
   5F36 DD 7E E9      [19] 1497 	ld	a,-23 (ix)
   5F39 B7            [ 4] 1498 	or	a, a
   5F3A C2 F2 5F      [10] 1499 	jp	NZ,00153$
                           1500 ;src/Personaje.c:170: if(mapas[p->salaActual].posiciones[casX][casY+1]==2){
   5F3D 21 7D 50      [10] 1501 	ld	hl,#_mapas
   5F40 19            [11] 1502 	add	hl,de
   5F41 DD 4E F1      [19] 1503 	ld	c,-15 (ix)
   5F44 06 00         [ 7] 1504 	ld	b,#0x00
   5F46 09            [11] 1505 	add	hl,bc
   5F47 DD 4E EE      [19] 1506 	ld	c,-18 (ix)
   5F4A 06 00         [ 7] 1507 	ld	b,#0x00
   5F4C 09            [11] 1508 	add	hl,bc
   5F4D 4E            [ 7] 1509 	ld	c,(hl)
   5F4E 79            [ 4] 1510 	ld	a,c
   5F4F D6 02         [ 7] 1511 	sub	a, #0x02
   5F51 C2 EF 5F      [10] 1512 	jp	NZ,00148$
                           1513 ;src/Personaje.c:173: for (i = 0; i < 4; ++i)
   5F54 21 7D 50      [10] 1514 	ld	hl,#_mapas
   5F57 19            [11] 1515 	add	hl,de
   5F58 7D            [ 4] 1516 	ld	a,l
   5F59 C6 F0         [ 7] 1517 	add	a, #0xF0
   5F5B DD 77 EF      [19] 1518 	ld	-17 (ix),a
   5F5E 7C            [ 4] 1519 	ld	a,h
   5F5F CE 00         [ 7] 1520 	adc	a, #0x00
   5F61 DD 77 F0      [19] 1521 	ld	-16 (ix),a
   5F64 1E 00         [ 7] 1522 	ld	e,#0x00
   5F66                    1523 00174$:
                           1524 ;src/Personaje.c:175: if (casX==mapas[p->salaActual].puertas[i].x && casY+1==mapas[p->salaActual].puertas[i].y){
   5F66 7B            [ 4] 1525 	ld	a,e
   5F67 87            [ 4] 1526 	add	a, a
   5F68 87            [ 4] 1527 	add	a, a
   5F69 67            [ 4] 1528 	ld	h,a
   5F6A DD 7E EF      [19] 1529 	ld	a,-17 (ix)
   5F6D 84            [ 4] 1530 	add	a, h
   5F6E DD 77 E7      [19] 1531 	ld	-25 (ix),a
   5F71 DD 7E F0      [19] 1532 	ld	a,-16 (ix)
   5F74 CE 00         [ 7] 1533 	adc	a, #0x00
   5F76 DD 77 E8      [19] 1534 	ld	-24 (ix),a
   5F79 DD 6E E7      [19] 1535 	ld	l,-25 (ix)
   5F7C DD 66 E8      [19] 1536 	ld	h,-24 (ix)
   5F7F 56            [ 7] 1537 	ld	d,(hl)
   5F80 23            [ 6] 1538 	inc	hl
   5F81 46            [ 7] 1539 	ld	b,(hl)
   5F82 DD 7E F7      [19] 1540 	ld	a,-9 (ix)
   5F85 92            [ 4] 1541 	sub	a, d
   5F86 20 60         [12] 1542 	jr	NZ,00175$
   5F88 DD 7E F8      [19] 1543 	ld	a,-8 (ix)
   5F8B 90            [ 4] 1544 	sub	a, b
   5F8C 20 5A         [12] 1545 	jr	NZ,00175$
   5F8E DD 7E FE      [19] 1546 	ld	a,-2 (ix)
   5F91 C6 01         [ 7] 1547 	add	a, #0x01
   5F93 DD 77 E2      [19] 1548 	ld	-30 (ix),a
   5F96 DD 7E FF      [19] 1549 	ld	a,-1 (ix)
   5F99 CE 00         [ 7] 1550 	adc	a, #0x00
   5F9B DD 77 E3      [19] 1551 	ld	-29 (ix),a
   5F9E DD 6E E7      [19] 1552 	ld	l,-25 (ix)
   5FA1 DD 66 E8      [19] 1553 	ld	h,-24 (ix)
   5FA4 23            [ 6] 1554 	inc	hl
   5FA5 23            [ 6] 1555 	inc	hl
   5FA6 7E            [ 7] 1556 	ld	a,(hl)
   5FA7 DD 77 F5      [19] 1557 	ld	-11 (ix),a
   5FAA DD 36 F6 00   [19] 1558 	ld	-10 (ix),#0x00
   5FAE DD 7E E2      [19] 1559 	ld	a,-30 (ix)
   5FB1 DD 96 F5      [19] 1560 	sub	a, -11 (ix)
   5FB4 20 32         [12] 1561 	jr	NZ,00175$
   5FB6 DD 7E E3      [19] 1562 	ld	a,-29 (ix)
   5FB9 DD 96 F6      [19] 1563 	sub	a, -10 (ix)
   5FBC 20 2A         [12] 1564 	jr	NZ,00175$
                           1565 ;src/Personaje.c:176: cambiarSala(mapas[p->salaActual].puertas[i].salaDestino, p, posx, posy);
   5FBE DD 6E E7      [19] 1566 	ld	l,-25 (ix)
   5FC1 DD 66 E8      [19] 1567 	ld	h,-24 (ix)
   5FC4 23            [ 6] 1568 	inc	hl
   5FC5 23            [ 6] 1569 	inc	hl
   5FC6 23            [ 6] 1570 	inc	hl
   5FC7 5E            [ 7] 1571 	ld	e,(hl)
   5FC8 DD 7E E0      [19] 1572 	ld	a,-32 (ix)
   5FCB F5            [11] 1573 	push	af
   5FCC 33            [ 6] 1574 	inc	sp
   5FCD C1            [10] 1575 	pop	bc
   5FCE E1            [10] 1576 	pop	hl
   5FCF E5            [11] 1577 	push	hl
   5FD0 C5            [11] 1578 	push	bc
   5FD1 E5            [11] 1579 	push	hl
   5FD2 DD 6E EA      [19] 1580 	ld	l,-22 (ix)
   5FD5 DD 66 EB      [19] 1581 	ld	h,-21 (ix)
   5FD8 E5            [11] 1582 	push	hl
   5FD9 7B            [ 4] 1583 	ld	a,e
   5FDA F5            [11] 1584 	push	af
   5FDB 33            [ 6] 1585 	inc	sp
   5FDC CD 69 63      [17] 1586 	call	_cambiarSala
   5FDF 21 06 00      [10] 1587 	ld	hl,#6
   5FE2 39            [11] 1588 	add	hl,sp
   5FE3 F9            [ 6] 1589 	ld	sp,hl
                           1590 ;src/Personaje.c:177: return 2;
   5FE4 2E 02         [ 7] 1591 	ld	l,#0x02
   5FE6 18 39         [12] 1592 	jr	00176$
   5FE8                    1593 00175$:
                           1594 ;src/Personaje.c:173: for (i = 0; i < 4; ++i)
   5FE8 1C            [ 4] 1595 	inc	e
   5FE9 7B            [ 4] 1596 	ld	a,e
   5FEA D6 04         [ 7] 1597 	sub	a, #0x04
   5FEC DA 66 5F      [10] 1598 	jp	C,00174$
   5FEF                    1599 00148$:
                           1600 ;src/Personaje.c:181: return mapas[p->salaActual].posiciones[casX][casY+1];
   5FEF 69            [ 4] 1601 	ld	l,c
   5FF0 18 2F         [12] 1602 	jr	00176$
   5FF2                    1603 00153$:
                           1604 ;src/Personaje.c:183: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
   5FF2 21 7D 50      [10] 1605 	ld	hl,#_mapas+0
   5FF5 19            [11] 1606 	add	hl,de
   5FF6 EB            [ 4] 1607 	ex	de,hl
   5FF7 DD 6E F1      [19] 1608 	ld	l,-15 (ix)
   5FFA 26 00         [ 7] 1609 	ld	h,#0x00
   5FFC 19            [11] 1610 	add	hl,de
   5FFD DD 4E EE      [19] 1611 	ld	c,-18 (ix)
   6000 06 00         [ 7] 1612 	ld	b,#0x00
   6002 09            [11] 1613 	add	hl,bc
   6003 7E            [ 7] 1614 	ld	a,(hl)
   6004 B7            [ 4] 1615 	or	a, a
   6005 20 10         [12] 1616 	jr	NZ,00149$
   6007 DD 6E E4      [19] 1617 	ld	l,-28 (ix)
   600A 26 00         [ 7] 1618 	ld	h,#0x00
   600C 19            [11] 1619 	add	hl,de
   600D DD 5E EE      [19] 1620 	ld	e,-18 (ix)
   6010 16 00         [ 7] 1621 	ld	d,#0x00
   6012 19            [11] 1622 	add	hl,de
   6013 7E            [ 7] 1623 	ld	a,(hl)
   6014 B7            [ 4] 1624 	or	a, a
   6015 28 04         [12] 1625 	jr	Z,00156$
   6017                    1626 00149$:
                           1627 ;src/Personaje.c:184: return 1;
   6017 2E 01         [ 7] 1628 	ld	l,#0x01
   6019 18 06         [12] 1629 	jr	00176$
   601B                    1630 00156$:
                           1631 ;src/Personaje.c:186: return 0;
   601B 2E 00         [ 7] 1632 	ld	l,#0x00
   601D 18 02         [12] 1633 	jr	00176$
   601F                    1634 00164$:
                           1635 ;src/Personaje.c:188: return 7;  
   601F 2E 07         [ 7] 1636 	ld	l,#0x07
   6021                    1637 00176$:
   6021 DD F9         [10] 1638 	ld	sp, ix
   6023 DD E1         [14] 1639 	pop	ix
   6025 C9            [10] 1640 	ret
                           1641 ;src/Personaje.c:190: u8 comprobarColisionDiagonal(personaje *p, estadoTeclado *t){
                           1642 ;	---------------------------------
                           1643 ; Function comprobarColisionDiagonal
                           1644 ; ---------------------------------
   6026                    1645 _comprobarColisionDiagonal::
   6026 DD E5         [15] 1646 	push	ix
   6028 DD 21 00 00   [14] 1647 	ld	ix,#0
   602C DD 39         [15] 1648 	add	ix,sp
   602E 21 F5 FF      [10] 1649 	ld	hl,#-11
   6031 39            [11] 1650 	add	hl,sp
   6032 F9            [ 6] 1651 	ld	sp,hl
                           1652 ;src/Personaje.c:192: u8 casX=p->y/16, casY=p->x/16;
   6033 DD 4E 04      [19] 1653 	ld	c,4 (ix)
   6036 DD 46 05      [19] 1654 	ld	b,5 (ix)
   6039 C5            [11] 1655 	push	bc
   603A FD E1         [14] 1656 	pop	iy
   603C FD 7E 02      [19] 1657 	ld	a,2 (iy)
   603F DD 77 FF      [19] 1658 	ld	-1 (ix), a
   6042 07            [ 4] 1659 	rlca
   6043 07            [ 4] 1660 	rlca
   6044 07            [ 4] 1661 	rlca
   6045 07            [ 4] 1662 	rlca
   6046 E6 0F         [ 7] 1663 	and	a,#0x0F
   6048 DD 77 F6      [19] 1664 	ld	-10 (ix),a
   604B 69            [ 4] 1665 	ld	l, c
   604C 60            [ 4] 1666 	ld	h, b
   604D 5E            [ 7] 1667 	ld	e,(hl)
   604E 23            [ 6] 1668 	inc	hl
   604F 56            [ 7] 1669 	ld	d,(hl)
   6050 6B            [ 4] 1670 	ld	l, e
   6051 62            [ 4] 1671 	ld	h, d
   6052 CB 7A         [ 8] 1672 	bit	7, d
   6054 28 04         [12] 1673 	jr	Z,00178$
   6056 21 0F 00      [10] 1674 	ld	hl,#0x000F
   6059 19            [11] 1675 	add	hl,de
   605A                    1676 00178$:
   605A CB 2C         [ 8] 1677 	sra	h
   605C CB 1D         [ 8] 1678 	rr	l
   605E CB 2C         [ 8] 1679 	sra	h
   6060 CB 1D         [ 8] 1680 	rr	l
   6062 CB 2C         [ 8] 1681 	sra	h
   6064 CB 1D         [ 8] 1682 	rr	l
   6066 CB 2C         [ 8] 1683 	sra	h
   6068 CB 1D         [ 8] 1684 	rr	l
   606A DD 75 F5      [19] 1685 	ld	-11 (ix),l
                           1686 ;src/Personaje.c:193: if(p->x%16!=0 && p->y%16!=0)
   606D C5            [11] 1687 	push	bc
   606E 21 10 00      [10] 1688 	ld	hl,#0x0010
   6071 E5            [11] 1689 	push	hl
   6072 D5            [11] 1690 	push	de
   6073 CD AB 76      [17] 1691 	call	__modsint
   6076 F1            [10] 1692 	pop	af
   6077 F1            [10] 1693 	pop	af
   6078 DD 74 FE      [19] 1694 	ld	-2 (ix),h
   607B DD 75 FD      [19] 1695 	ld	-3 (ix),l
   607E C1            [10] 1696 	pop	bc
   607F DD 7E FF      [19] 1697 	ld	a,-1 (ix)
   6082 E6 0F         [ 7] 1698 	and	a, #0x0F
   6084 DD 77 FF      [19] 1699 	ld	-1 (ix),a
   6087 DD 7E FE      [19] 1700 	ld	a,-2 (ix)
   608A DD B6 FD      [19] 1701 	or	a,-3 (ix)
   608D 28 0B         [12] 1702 	jr	Z,00102$
   608F DD 7E FF      [19] 1703 	ld	a,-1 (ix)
   6092 B7            [ 4] 1704 	or	a, a
   6093 28 05         [12] 1705 	jr	Z,00102$
                           1706 ;src/Personaje.c:194: return 0;
   6095 2E 00         [ 7] 1707 	ld	l,#0x00
   6097 C3 64 63      [10] 1708 	jp	00176$
   609A                    1709 00102$:
                           1710 ;src/Personaje.c:195: if     (t->W && t->A)
   609A DD 5E 06      [19] 1711 	ld	e,6 (ix)
   609D DD 56 07      [19] 1712 	ld	d,7 (ix)
   60A0 1A            [ 7] 1713 	ld	a,(de)
   60A1 DD 77 FC      [19] 1714 	ld	-4 (ix),a
   60A4 D5            [11] 1715 	push	de
   60A5 FD E1         [14] 1716 	pop	iy
   60A7 FD 23         [10] 1717 	inc	iy
   60A9 DD 7E FC      [19] 1718 	ld	a,-4 (ix)
   60AC B7            [ 4] 1719 	or	a, a
   60AD 28 0A         [12] 1720 	jr	Z,00117$
   60AF FD 7E 00      [19] 1721 	ld	a, 0 (iy)
   60B2 B7            [ 4] 1722 	or	a, a
   60B3 28 04         [12] 1723 	jr	Z,00117$
                           1724 ;src/Personaje.c:196: direccion=1;
   60B5 1E 01         [ 7] 1725 	ld	e,#0x01
   60B7 18 47         [12] 1726 	jr	00118$
   60B9                    1727 00117$:
                           1728 ;src/Personaje.c:197: else if(t->W && t->D)
   60B9 21 03 00      [10] 1729 	ld	hl,#0x0003
   60BC 19            [11] 1730 	add	hl,de
   60BD DD 75 FA      [19] 1731 	ld	-6 (ix),l
   60C0 DD 74 FB      [19] 1732 	ld	-5 (ix),h
   60C3 DD 7E FC      [19] 1733 	ld	a,-4 (ix)
   60C6 B7            [ 4] 1734 	or	a, a
   60C7 28 0E         [12] 1735 	jr	Z,00113$
   60C9 DD 6E FA      [19] 1736 	ld	l,-6 (ix)
   60CC DD 66 FB      [19] 1737 	ld	h,-5 (ix)
   60CF 7E            [ 7] 1738 	ld	a,(hl)
   60D0 B7            [ 4] 1739 	or	a, a
   60D1 28 04         [12] 1740 	jr	Z,00113$
                           1741 ;src/Personaje.c:198: direccion=2;
   60D3 1E 02         [ 7] 1742 	ld	e,#0x02
   60D5 18 29         [12] 1743 	jr	00118$
   60D7                    1744 00113$:
                           1745 ;src/Personaje.c:199: else if(t->S && t->D)
   60D7 EB            [ 4] 1746 	ex	de,hl
   60D8 23            [ 6] 1747 	inc	hl
   60D9 23            [ 6] 1748 	inc	hl
   60DA 56            [ 7] 1749 	ld	d,(hl)
   60DB 7A            [ 4] 1750 	ld	a,d
   60DC B7            [ 4] 1751 	or	a, a
   60DD 28 0E         [12] 1752 	jr	Z,00109$
   60DF DD 6E FA      [19] 1753 	ld	l,-6 (ix)
   60E2 DD 66 FB      [19] 1754 	ld	h,-5 (ix)
   60E5 7E            [ 7] 1755 	ld	a,(hl)
   60E6 B7            [ 4] 1756 	or	a, a
   60E7 28 04         [12] 1757 	jr	Z,00109$
                           1758 ;src/Personaje.c:200: direccion=3;
   60E9 1E 03         [ 7] 1759 	ld	e,#0x03
   60EB 18 13         [12] 1760 	jr	00118$
   60ED                    1761 00109$:
                           1762 ;src/Personaje.c:201: else if(t->S && t->A)
   60ED 7A            [ 4] 1763 	ld	a,d
   60EE B7            [ 4] 1764 	or	a, a
   60EF 28 0A         [12] 1765 	jr	Z,00105$
   60F1 FD 7E 00      [19] 1766 	ld	a, 0 (iy)
   60F4 B7            [ 4] 1767 	or	a, a
   60F5 28 04         [12] 1768 	jr	Z,00105$
                           1769 ;src/Personaje.c:202: direccion=4;   
   60F7 1E 04         [ 7] 1770 	ld	e,#0x04
   60F9 18 05         [12] 1771 	jr	00118$
   60FB                    1772 00105$:
                           1773 ;src/Personaje.c:204: return 7;  
   60FB 2E 07         [ 7] 1774 	ld	l,#0x07
   60FD C3 64 63      [10] 1775 	jp	00176$
   6100                    1776 00118$:
                           1777 ;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
   6100 21 06 00      [10] 1778 	ld	hl,#0x0006
   6103 09            [11] 1779 	add	hl,bc
   6104 4D            [ 4] 1780 	ld	c,l
   6105 44            [ 4] 1781 	ld	b,h
   6106 D5            [11] 1782 	push	de
   6107 DD 7E F6      [19] 1783 	ld	a,-10 (ix)
   610A 5F            [ 4] 1784 	ld	e,a
   610B 87            [ 4] 1785 	add	a, a
   610C 87            [ 4] 1786 	add	a, a
   610D 83            [ 4] 1787 	add	a, e
   610E 87            [ 4] 1788 	add	a, a
   610F 87            [ 4] 1789 	add	a, a
   6110 D1            [10] 1790 	pop	de
   6111 DD 77 FA      [19] 1791 	ld	-6 (ix),a
   6114 DD 7E F5      [19] 1792 	ld	a,-11 (ix)
   6117 C6 FF         [ 7] 1793 	add	a,#0xFF
   6119 DD 77 FC      [19] 1794 	ld	-4 (ix),a
                           1795 ;src/Personaje.c:209: mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
   611C DD 6E F6      [19] 1796 	ld	l,-10 (ix)
   611F 2C            [ 4] 1797 	inc	l
                           1798 ;src/Personaje.c:213: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
   6120 DD 7E F5      [19] 1799 	ld	a,-11 (ix)
   6123 3C            [ 4] 1800 	inc	a
   6124 DD 77 F9      [19] 1801 	ld	-7 (ix),a
                           1802 ;src/Personaje.c:209: mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
   6127 D5            [11] 1803 	push	de
   6128 5D            [ 4] 1804 	ld	e,l
   6129 29            [11] 1805 	add	hl, hl
   612A 29            [11] 1806 	add	hl, hl
   612B 19            [11] 1807 	add	hl, de
   612C 29            [11] 1808 	add	hl, hl
   612D 29            [11] 1809 	add	hl, hl
   612E D1            [10] 1810 	pop	de
   612F DD 75 F8      [19] 1811 	ld	-8 (ix),l
                           1812 ;src/Personaje.c:206: if(p->x%16==0 && p->y%16!=0){
   6132 DD 7E FE      [19] 1813 	ld	a,-2 (ix)
   6135 DD B6 FD      [19] 1814 	or	a,-3 (ix)
   6138 20 6C         [12] 1815 	jr	NZ,00131$
   613A DD 7E FF      [19] 1816 	ld	a,-1 (ix)
   613D B7            [ 4] 1817 	or	a, a
   613E 28 66         [12] 1818 	jr	Z,00131$
                           1819 ;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
   6140 0A            [ 7] 1820 	ld	a,(bc)
   6141 67            [ 4] 1821 	ld	h, a
   6142 2E 00         [ 7] 1822 	ld	l,#0x00
                           1823 ;src/Personaje.c:207: if(direccion==1 || direccion==4){
   6144 7B            [ 4] 1824 	ld	a,e
   6145 3D            [ 4] 1825 	dec	a
   6146 28 05         [12] 1826 	jr	Z,00126$
   6148 7B            [ 4] 1827 	ld	a,e
   6149 D6 04         [ 7] 1828 	sub	a, #0x04
   614B 20 2A         [12] 1829 	jr	NZ,00127$
   614D                    1830 00126$:
                           1831 ;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
   614D 11 7D 50      [10] 1832 	ld	de,#_mapas+0
   6150 19            [11] 1833 	add	hl,de
   6151 EB            [ 4] 1834 	ex	de,hl
   6152 DD 6E FA      [19] 1835 	ld	l,-6 (ix)
   6155 26 00         [ 7] 1836 	ld	h,#0x00
   6157 19            [11] 1837 	add	hl,de
   6158 DD 4E FC      [19] 1838 	ld	c,-4 (ix)
   615B 06 00         [ 7] 1839 	ld	b,#0x00
   615D 09            [11] 1840 	add	hl,bc
   615E 7E            [ 7] 1841 	ld	a,(hl)
   615F B7            [ 4] 1842 	or	a, a
   6160 20 10         [12] 1843 	jr	NZ,00120$
                           1844 ;src/Personaje.c:209: mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
   6162 DD 6E F8      [19] 1845 	ld	l,-8 (ix)
   6165 26 00         [ 7] 1846 	ld	h,#0x00
   6167 19            [11] 1847 	add	hl,de
   6168 DD 5E FC      [19] 1848 	ld	e,-4 (ix)
   616B 16 00         [ 7] 1849 	ld	d,#0x00
   616D 19            [11] 1850 	add	hl,de
   616E 7E            [ 7] 1851 	ld	a,(hl)
   616F B7            [ 4] 1852 	or	a, a
   6170 28 2F         [12] 1853 	jr	Z,00128$
   6172                    1854 00120$:
                           1855 ;src/Personaje.c:210: return 1;
   6172 2E 01         [ 7] 1856 	ld	l,#0x01
   6174 C3 64 63      [10] 1857 	jp	00176$
   6177                    1858 00127$:
                           1859 ;src/Personaje.c:213: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
   6177 11 7D 50      [10] 1860 	ld	de,#_mapas+0
   617A 19            [11] 1861 	add	hl,de
   617B EB            [ 4] 1862 	ex	de,hl
   617C DD 6E F8      [19] 1863 	ld	l,-8 (ix)
   617F 26 00         [ 7] 1864 	ld	h,#0x00
   6181 19            [11] 1865 	add	hl,de
   6182 DD 4E F9      [19] 1866 	ld	c,-7 (ix)
   6185 06 00         [ 7] 1867 	ld	b,#0x00
   6187 09            [11] 1868 	add	hl,bc
   6188 7E            [ 7] 1869 	ld	a,(hl)
   6189 B7            [ 4] 1870 	or	a, a
   618A 20 10         [12] 1871 	jr	NZ,00123$
                           1872 ;src/Personaje.c:214: mapas[p->salaActual].posiciones[casX][casY+1]!=0)
   618C DD 6E FA      [19] 1873 	ld	l,-6 (ix)
   618F 26 00         [ 7] 1874 	ld	h,#0x00
   6191 19            [11] 1875 	add	hl,de
   6192 DD 5E F9      [19] 1876 	ld	e,-7 (ix)
   6195 16 00         [ 7] 1877 	ld	d,#0x00
   6197 19            [11] 1878 	add	hl,de
   6198 7E            [ 7] 1879 	ld	a,(hl)
   6199 B7            [ 4] 1880 	or	a, a
   619A 28 05         [12] 1881 	jr	Z,00128$
   619C                    1882 00123$:
                           1883 ;src/Personaje.c:215: return 1;
   619C 2E 01         [ 7] 1884 	ld	l,#0x01
   619E C3 64 63      [10] 1885 	jp	00176$
   61A1                    1886 00128$:
                           1887 ;src/Personaje.c:217: return 0;
   61A1 2E 00         [ 7] 1888 	ld	l,#0x00
   61A3 C3 64 63      [10] 1889 	jp	00176$
   61A6                    1890 00131$:
                           1891 ;src/Personaje.c:220: switch(direccion){
   61A6 7B            [ 4] 1892 	ld	a,e
   61A7 D6 01         [ 7] 1893 	sub	a, #0x01
   61A9 DA 62 63      [10] 1894 	jp	C,00175$
   61AC 3E 04         [ 7] 1895 	ld	a,#0x04
   61AE 93            [ 4] 1896 	sub	a, e
   61AF DA 62 63      [10] 1897 	jp	C,00175$
   61B2 1D            [ 4] 1898 	dec	e
                           1899 ;src/Personaje.c:223: if(mapas[p->salaActual].posiciones[casX-1][casY-1]!=0 ||
   61B3 DD 7E F6      [19] 1900 	ld	a,-10 (ix)
   61B6 C6 FF         [ 7] 1901 	add	a,#0xFF
                           1902 ;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
   61B8 F5            [11] 1903 	push	af
   61B9 0A            [ 7] 1904 	ld	a,(bc)
   61BA 4F            [ 4] 1905 	ld	c,a
   61BB F1            [10] 1906 	pop	af
                           1907 ;src/Personaje.c:223: if(mapas[p->salaActual].posiciones[casX-1][casY-1]!=0 ||
   61BC D5            [11] 1908 	push	de
   61BD 5F            [ 4] 1909 	ld	e,a
   61BE 87            [ 4] 1910 	add	a, a
   61BF 87            [ 4] 1911 	add	a, a
   61C0 83            [ 4] 1912 	add	a, e
   61C1 87            [ 4] 1913 	add	a, a
   61C2 87            [ 4] 1914 	add	a, a
   61C3 D1            [10] 1915 	pop	de
   61C4 DD 77 F7      [19] 1916 	ld	-9 (ix),a
                           1917 ;src/Personaje.c:208: if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || 
   61C7 41            [ 4] 1918 	ld	b,c
   61C8 0E 00         [ 7] 1919 	ld	c,#0x00
                           1920 ;src/Personaje.c:220: switch(direccion){
   61CA 16 00         [ 7] 1921 	ld	d,#0x00
   61CC 21 D3 61      [10] 1922 	ld	hl,#00326$
   61CF 19            [11] 1923 	add	hl,de
   61D0 19            [11] 1924 	add	hl,de
   61D1 19            [11] 1925 	add	hl,de
   61D2 E9            [ 4] 1926 	jp	(hl)
   61D3                    1927 00326$:
   61D3 C3 DF 61      [10] 1928 	jp	00133$
   61D6 C3 51 62      [10] 1929 	jp	00145$
   61D9 C3 A3 62      [10] 1930 	jp	00154$
   61DC C3 F4 62      [10] 1931 	jp	00163$
                           1932 ;src/Personaje.c:221: case 1:
   61DF                    1933 00133$:
                           1934 ;src/Personaje.c:222: if(p->x%16==0 && p->y%16==0){//CENTRADO
   61DF DD 7E FE      [19] 1935 	ld	a,-2 (ix)
   61E2 DD B6 FD      [19] 1936 	or	a,-3 (ix)
   61E5 20 33         [12] 1937 	jr	NZ,00140$
   61E7 DD 7E FF      [19] 1938 	ld	a,-1 (ix)
   61EA B7            [ 4] 1939 	or	a, a
   61EB 20 2D         [12] 1940 	jr	NZ,00140$
                           1941 ;src/Personaje.c:223: if(mapas[p->salaActual].posiciones[casX-1][casY-1]!=0 ||
   61ED 21 7D 50      [10] 1942 	ld	hl,#_mapas+0
   61F0 09            [11] 1943 	add	hl,bc
   61F1 EB            [ 4] 1944 	ex	de,hl
   61F2 DD 6E F7      [19] 1945 	ld	l,-9 (ix)
   61F5 26 00         [ 7] 1946 	ld	h,#0x00
   61F7 19            [11] 1947 	add	hl,de
   61F8 DD 7E FC      [19] 1948 	ld	a,-4 (ix)
   61FB 85            [ 4] 1949 	add	a, l
   61FC 6F            [ 4] 1950 	ld	l,a
   61FD 3E 00         [ 7] 1951 	ld	a,#0x00
   61FF 8C            [ 4] 1952 	adc	a, h
   6200 67            [ 4] 1953 	ld	h,a
   6201 7E            [ 7] 1954 	ld	a,(hl)
   6202 B7            [ 4] 1955 	or	a, a
   6203 20 10         [12] 1956 	jr	NZ,00134$
                           1957 ;src/Personaje.c:224: mapas[p->salaActual].posiciones[casX][casY-1]!=0)
   6205 DD 6E FA      [19] 1958 	ld	l,-6 (ix)
   6208 26 00         [ 7] 1959 	ld	h,#0x00
   620A 19            [11] 1960 	add	hl,de
   620B DD 5E FC      [19] 1961 	ld	e,-4 (ix)
   620E 16 00         [ 7] 1962 	ld	d,#0x00
   6210 19            [11] 1963 	add	hl,de
   6211 7E            [ 7] 1964 	ld	a,(hl)
   6212 B7            [ 4] 1965 	or	a, a
   6213 28 1E         [12] 1966 	jr	Z,00141$
   6215                    1967 00134$:
                           1968 ;src/Personaje.c:225: return 1;
   6215 2E 01         [ 7] 1969 	ld	l,#0x01
   6217 C3 64 63      [10] 1970 	jp	00176$
   621A                    1971 00140$:
                           1972 ;src/Personaje.c:228: if(mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
   621A 21 7D 50      [10] 1973 	ld	hl,#_mapas
   621D 09            [11] 1974 	add	hl,bc
   621E DD 5E F7      [19] 1975 	ld	e,-9 (ix)
   6221 16 00         [ 7] 1976 	ld	d,#0x00
   6223 19            [11] 1977 	add	hl,de
   6224 DD 5E F9      [19] 1978 	ld	e,-7 (ix)
   6227 16 00         [ 7] 1979 	ld	d,#0x00
   6229 19            [11] 1980 	add	hl,de
   622A 7E            [ 7] 1981 	ld	a,(hl)
   622B B7            [ 4] 1982 	or	a, a
   622C 28 05         [12] 1983 	jr	Z,00141$
                           1984 ;src/Personaje.c:229: return 1;
   622E 2E 01         [ 7] 1985 	ld	l,#0x01
   6230 C3 64 63      [10] 1986 	jp	00176$
   6233                    1987 00141$:
                           1988 ;src/Personaje.c:231: if(mapas[p->salaActual].posiciones[casX-1][casY]!=0)//CASILLAS COMUNES
   6233 21 7D 50      [10] 1989 	ld	hl,#_mapas
   6236 09            [11] 1990 	add	hl,bc
   6237 DD 5E F7      [19] 1991 	ld	e,-9 (ix)
   623A 16 00         [ 7] 1992 	ld	d,#0x00
   623C 19            [11] 1993 	add	hl,de
   623D DD 5E F5      [19] 1994 	ld	e,-11 (ix)
   6240 16 00         [ 7] 1995 	ld	d,#0x00
   6242 19            [11] 1996 	add	hl,de
   6243 7E            [ 7] 1997 	ld	a,(hl)
   6244 B7            [ 4] 1998 	or	a, a
   6245 28 05         [12] 1999 	jr	Z,00144$
                           2000 ;src/Personaje.c:232: return 1;
   6247 2E 01         [ 7] 2001 	ld	l,#0x01
   6249 C3 64 63      [10] 2002 	jp	00176$
   624C                    2003 00144$:
                           2004 ;src/Personaje.c:233: return 0;
   624C 2E 00         [ 7] 2005 	ld	l,#0x00
   624E C3 64 63      [10] 2006 	jp	00176$
                           2007 ;src/Personaje.c:236: case 2:
   6251                    2008 00145$:
                           2009 ;src/Personaje.c:237: if(p->x%16==0 && p->y%16==0){//CENTRADO
   6251 DD 7E FE      [19] 2010 	ld	a,-2 (ix)
   6254 DD B6 FD      [19] 2011 	or	a,-3 (ix)
   6257 20 1F         [12] 2012 	jr	NZ,00149$
   6259 DD 7E FF      [19] 2013 	ld	a,-1 (ix)
   625C B7            [ 4] 2014 	or	a, a
   625D 20 19         [12] 2015 	jr	NZ,00149$
                           2016 ;src/Personaje.c:238: if(mapas[p->salaActual].posiciones[casX][casY+1]!=0)
   625F 21 7D 50      [10] 2017 	ld	hl,#_mapas
   6262 09            [11] 2018 	add	hl,bc
   6263 DD 5E FA      [19] 2019 	ld	e,-6 (ix)
   6266 16 00         [ 7] 2020 	ld	d,#0x00
   6268 19            [11] 2021 	add	hl,de
   6269 DD 5E F9      [19] 2022 	ld	e,-7 (ix)
   626C 16 00         [ 7] 2023 	ld	d,#0x00
   626E 19            [11] 2024 	add	hl,de
   626F 7E            [ 7] 2025 	ld	a,(hl)
   6270 B7            [ 4] 2026 	or	a, a
   6271 28 05         [12] 2027 	jr	Z,00149$
                           2028 ;src/Personaje.c:239: return 1;
   6273 2E 01         [ 7] 2029 	ld	l,#0x01
   6275 C3 64 63      [10] 2030 	jp	00176$
   6278                    2031 00149$:
                           2032 ;src/Personaje.c:241: if(mapas[p->salaActual].posiciones[casX-1][casY+1]!=0 || 
   6278 21 7D 50      [10] 2033 	ld	hl,#_mapas
   627B 09            [11] 2034 	add	hl,bc
   627C DD 7E F7      [19] 2035 	ld	a,-9 (ix)
   627F 85            [ 4] 2036 	add	a, l
   6280 5F            [ 4] 2037 	ld	e,a
   6281 3E 00         [ 7] 2038 	ld	a,#0x00
   6283 8C            [ 4] 2039 	adc	a, h
   6284 57            [ 4] 2040 	ld	d,a
   6285 DD 6E F9      [19] 2041 	ld	l,-7 (ix)
   6288 26 00         [ 7] 2042 	ld	h,#0x00
   628A 19            [11] 2043 	add	hl,de
   628B 7E            [ 7] 2044 	ld	a,(hl)
   628C B7            [ 4] 2045 	or	a, a
   628D 20 0A         [12] 2046 	jr	NZ,00151$
                           2047 ;src/Personaje.c:242: mapas[p->salaActual].posiciones[casX-1][casY]!=0    )//CASILLAS COMUNES
   628F DD 6E F5      [19] 2048 	ld	l,-11 (ix)
   6292 26 00         [ 7] 2049 	ld	h,#0x00
   6294 19            [11] 2050 	add	hl,de
   6295 7E            [ 7] 2051 	ld	a,(hl)
   6296 B7            [ 4] 2052 	or	a, a
   6297 28 05         [12] 2053 	jr	Z,00152$
   6299                    2054 00151$:
                           2055 ;src/Personaje.c:243: return 1;
   6299 2E 01         [ 7] 2056 	ld	l,#0x01
   629B C3 64 63      [10] 2057 	jp	00176$
   629E                    2058 00152$:
                           2059 ;src/Personaje.c:244: return 0;
   629E 2E 00         [ 7] 2060 	ld	l,#0x00
   62A0 C3 64 63      [10] 2061 	jp	00176$
                           2062 ;src/Personaje.c:247: case 3:
   62A3                    2063 00154$:
                           2064 ;src/Personaje.c:248: if(p->x%16==0 && p->y%16==0){//CENTRADO
   62A3 DD 7E FE      [19] 2065 	ld	a,-2 (ix)
   62A6 DD B6 FD      [19] 2066 	or	a,-3 (ix)
   62A9 20 1F         [12] 2067 	jr	NZ,00158$
   62AB DD 7E FF      [19] 2068 	ld	a,-1 (ix)
   62AE B7            [ 4] 2069 	or	a, a
   62AF 20 19         [12] 2070 	jr	NZ,00158$
                           2071 ;src/Personaje.c:249: if(mapas[p->salaActual].posiciones[casX][casY+1]!=0)
   62B1 21 7D 50      [10] 2072 	ld	hl,#_mapas
   62B4 09            [11] 2073 	add	hl,bc
   62B5 DD 5E FA      [19] 2074 	ld	e,-6 (ix)
   62B8 16 00         [ 7] 2075 	ld	d,#0x00
   62BA 19            [11] 2076 	add	hl,de
   62BB DD 5E F9      [19] 2077 	ld	e,-7 (ix)
   62BE 16 00         [ 7] 2078 	ld	d,#0x00
   62C0 19            [11] 2079 	add	hl,de
   62C1 7E            [ 7] 2080 	ld	a,(hl)
   62C2 B7            [ 4] 2081 	or	a, a
   62C3 28 05         [12] 2082 	jr	Z,00158$
                           2083 ;src/Personaje.c:250: return 1;
   62C5 2E 01         [ 7] 2084 	ld	l,#0x01
   62C7 C3 64 63      [10] 2085 	jp	00176$
   62CA                    2086 00158$:
                           2087 ;src/Personaje.c:252: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0 || 
   62CA 21 7D 50      [10] 2088 	ld	hl,#_mapas
   62CD 09            [11] 2089 	add	hl,bc
   62CE DD 7E F8      [19] 2090 	ld	a,-8 (ix)
   62D1 85            [ 4] 2091 	add	a, l
   62D2 5F            [ 4] 2092 	ld	e,a
   62D3 3E 00         [ 7] 2093 	ld	a,#0x00
   62D5 8C            [ 4] 2094 	adc	a, h
   62D6 57            [ 4] 2095 	ld	d,a
   62D7 DD 6E F9      [19] 2096 	ld	l,-7 (ix)
   62DA 26 00         [ 7] 2097 	ld	h,#0x00
   62DC 19            [11] 2098 	add	hl,de
   62DD 7E            [ 7] 2099 	ld	a,(hl)
   62DE B7            [ 4] 2100 	or	a, a
   62DF 20 0A         [12] 2101 	jr	NZ,00160$
                           2102 ;src/Personaje.c:253: mapas[p->salaActual].posiciones[casX+1][casY]!=0    )//CASILLAS COMUNES
   62E1 DD 6E F5      [19] 2103 	ld	l,-11 (ix)
   62E4 26 00         [ 7] 2104 	ld	h,#0x00
   62E6 19            [11] 2105 	add	hl,de
   62E7 7E            [ 7] 2106 	ld	a,(hl)
   62E8 B7            [ 4] 2107 	or	a, a
   62E9 28 05         [12] 2108 	jr	Z,00161$
   62EB                    2109 00160$:
                           2110 ;src/Personaje.c:254: return 1;
   62EB 2E 01         [ 7] 2111 	ld	l,#0x01
   62ED C3 64 63      [10] 2112 	jp	00176$
   62F0                    2113 00161$:
                           2114 ;src/Personaje.c:255: return 0;
   62F0 2E 00         [ 7] 2115 	ld	l,#0x00
   62F2 18 70         [12] 2116 	jr	00176$
                           2117 ;src/Personaje.c:258: case 4:
   62F4                    2118 00163$:
                           2119 ;src/Personaje.c:259: if(p->x%16==0 && p->y%16==0){//CENTRADO
   62F4 DD 7E FE      [19] 2120 	ld	a,-2 (ix)
   62F7 DD B6 FD      [19] 2121 	or	a,-3 (ix)
   62FA 20 32         [12] 2122 	jr	NZ,00170$
   62FC DD 7E FF      [19] 2123 	ld	a,-1 (ix)
   62FF B7            [ 4] 2124 	or	a, a
   6300 20 2C         [12] 2125 	jr	NZ,00170$
                           2126 ;src/Personaje.c:260: if(mapas[p->salaActual].posiciones[casX+1][casY-1]!=0 ||
   6302 21 7D 50      [10] 2127 	ld	hl,#_mapas
   6305 09            [11] 2128 	add	hl,bc
   6306 EB            [ 4] 2129 	ex	de,hl
   6307 DD 6E F8      [19] 2130 	ld	l,-8 (ix)
   630A 26 00         [ 7] 2131 	ld	h,#0x00
   630C 19            [11] 2132 	add	hl,de
   630D 7D            [ 4] 2133 	ld	a,l
   630E DD 86 FC      [19] 2134 	add	a, -4 (ix)
   6311 6F            [ 4] 2135 	ld	l,a
   6312 7C            [ 4] 2136 	ld	a,h
   6313 CE 00         [ 7] 2137 	adc	a, #0x00
   6315 67            [ 4] 2138 	ld	h,a
   6316 7E            [ 7] 2139 	ld	a,(hl)
   6317 B7            [ 4] 2140 	or	a, a
   6318 20 10         [12] 2141 	jr	NZ,00164$
                           2142 ;src/Personaje.c:261: mapas[p->salaActual].posiciones[casX][casY-1]!=0)
   631A DD 6E FA      [19] 2143 	ld	l,-6 (ix)
   631D 26 00         [ 7] 2144 	ld	h,#0x00
   631F 19            [11] 2145 	add	hl,de
   6320 DD 5E FC      [19] 2146 	ld	e,-4 (ix)
   6323 16 00         [ 7] 2147 	ld	d,#0x00
   6325 19            [11] 2148 	add	hl,de
   6326 7E            [ 7] 2149 	ld	a,(hl)
   6327 B7            [ 4] 2150 	or	a, a
   6328 28 1C         [12] 2151 	jr	Z,00171$
   632A                    2152 00164$:
                           2153 ;src/Personaje.c:262: return 1;
   632A 2E 01         [ 7] 2154 	ld	l,#0x01
   632C 18 36         [12] 2155 	jr	00176$
   632E                    2156 00170$:
                           2157 ;src/Personaje.c:265: if(mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
   632E 21 7D 50      [10] 2158 	ld	hl,#_mapas
   6331 09            [11] 2159 	add	hl,bc
   6332 DD 5E F8      [19] 2160 	ld	e,-8 (ix)
   6335 16 00         [ 7] 2161 	ld	d,#0x00
   6337 19            [11] 2162 	add	hl,de
   6338 DD 5E F9      [19] 2163 	ld	e,-7 (ix)
   633B 16 00         [ 7] 2164 	ld	d,#0x00
   633D 19            [11] 2165 	add	hl,de
   633E 7E            [ 7] 2166 	ld	a,(hl)
   633F B7            [ 4] 2167 	or	a, a
   6340 28 04         [12] 2168 	jr	Z,00171$
                           2169 ;src/Personaje.c:266: return 1;
   6342 2E 01         [ 7] 2170 	ld	l,#0x01
   6344 18 1E         [12] 2171 	jr	00176$
   6346                    2172 00171$:
                           2173 ;src/Personaje.c:268: if(mapas[p->salaActual].posiciones[casX+1][casY]!=0)//CASILLAS COMUNES
   6346 21 7D 50      [10] 2174 	ld	hl,#_mapas
   6349 09            [11] 2175 	add	hl,bc
   634A DD 5E F8      [19] 2176 	ld	e,-8 (ix)
   634D 16 00         [ 7] 2177 	ld	d,#0x00
   634F 19            [11] 2178 	add	hl,de
   6350 DD 5E F5      [19] 2179 	ld	e,-11 (ix)
   6353 16 00         [ 7] 2180 	ld	d,#0x00
   6355 19            [11] 2181 	add	hl,de
   6356 7E            [ 7] 2182 	ld	a,(hl)
   6357 B7            [ 4] 2183 	or	a, a
   6358 28 04         [12] 2184 	jr	Z,00174$
                           2185 ;src/Personaje.c:269: return 1;
   635A 2E 01         [ 7] 2186 	ld	l,#0x01
   635C 18 06         [12] 2187 	jr	00176$
   635E                    2188 00174$:
                           2189 ;src/Personaje.c:270: return 0;
   635E 2E 00         [ 7] 2190 	ld	l,#0x00
   6360 18 02         [12] 2191 	jr	00176$
                           2192 ;src/Personaje.c:272: }
   6362                    2193 00175$:
                           2194 ;src/Personaje.c:273: return 0;
   6362 2E 00         [ 7] 2195 	ld	l,#0x00
   6364                    2196 00176$:
   6364 DD F9         [10] 2197 	ld	sp, ix
   6366 DD E1         [14] 2198 	pop	ix
   6368 C9            [10] 2199 	ret
                           2200 ;src/Personaje.c:275: void cambiarSala(u8 s, personaje *p, int x, u8 y){
                           2201 ;	---------------------------------
                           2202 ; Function cambiarSala
                           2203 ; ---------------------------------
   6369                    2204 _cambiarSala::
   6369 DD E5         [15] 2205 	push	ix
   636B DD 21 00 00   [14] 2206 	ld	ix,#0
   636F DD 39         [15] 2207 	add	ix,sp
                           2208 ;src/Personaje.c:276: p->salaActual=s;
   6371 DD 4E 05      [19] 2209 	ld	c,5 (ix)
   6374 DD 46 06      [19] 2210 	ld	b,6 (ix)
   6377 21 06 00      [10] 2211 	ld	hl,#0x0006
   637A 09            [11] 2212 	add	hl,bc
   637B EB            [ 4] 2213 	ex	de,hl
   637C DD 7E 04      [19] 2214 	ld	a,4 (ix)
   637F 12            [ 7] 2215 	ld	(de),a
                           2216 ;src/Personaje.c:278: if(x==16)
   6380 DD 7E 07      [19] 2217 	ld	a,7 (ix)
   6383 D6 10         [ 7] 2218 	sub	a, #0x10
   6385 20 0F         [12] 2219 	jr	NZ,00108$
   6387 DD 7E 08      [19] 2220 	ld	a,8 (ix)
   638A B7            [ 4] 2221 	or	a, a
   638B 20 09         [12] 2222 	jr	NZ,00108$
                           2223 ;src/Personaje.c:279: p->x=288;
   638D 69            [ 4] 2224 	ld	l, c
   638E 60            [ 4] 2225 	ld	h, b
   638F 36 20         [10] 2226 	ld	(hl),#0x20
   6391 23            [ 6] 2227 	inc	hl
   6392 36 01         [10] 2228 	ld	(hl),#0x01
   6394 18 27         [12] 2229 	jr	00109$
   6396                    2230 00108$:
                           2231 ;src/Personaje.c:280: else if(x==288)
   6396 DD 7E 07      [19] 2232 	ld	a,7 (ix)
   6399 D6 20         [ 7] 2233 	sub	a, #0x20
   639B 20 0F         [12] 2234 	jr	NZ,00105$
   639D DD 7E 08      [19] 2235 	ld	a,8 (ix)
   63A0 3D            [ 4] 2236 	dec	a
   63A1 20 09         [12] 2237 	jr	NZ,00105$
                           2238 ;src/Personaje.c:281: p->x=16;
   63A3 69            [ 4] 2239 	ld	l, c
   63A4 60            [ 4] 2240 	ld	h, b
   63A5 36 10         [10] 2241 	ld	(hl),#0x10
   63A7 23            [ 6] 2242 	inc	hl
   63A8 36 00         [10] 2243 	ld	(hl),#0x00
   63AA 18 11         [12] 2244 	jr	00109$
   63AC                    2245 00105$:
                           2246 ;src/Personaje.c:283: p->y=160;
   63AC 69            [ 4] 2247 	ld	l, c
   63AD 60            [ 4] 2248 	ld	h, b
   63AE 23            [ 6] 2249 	inc	hl
   63AF 23            [ 6] 2250 	inc	hl
                           2251 ;src/Personaje.c:282: else if(y==16)
   63B0 DD 7E 09      [19] 2252 	ld	a,9 (ix)
   63B3 D6 10         [ 7] 2253 	sub	a, #0x10
   63B5 20 04         [12] 2254 	jr	NZ,00102$
                           2255 ;src/Personaje.c:283: p->y=160;
   63B7 36 A0         [10] 2256 	ld	(hl),#0xA0
   63B9 18 02         [12] 2257 	jr	00109$
   63BB                    2258 00102$:
                           2259 ;src/Personaje.c:285: p->y=16;
   63BB 36 10         [10] 2260 	ld	(hl),#0x10
   63BD                    2261 00109$:
                           2262 ;src/Personaje.c:287: p->generaEnemigos=1;
   63BD 21 0A 00      [10] 2263 	ld	hl,#0x000A
   63C0 09            [11] 2264 	add	hl,bc
   63C1 36 01         [10] 2265 	ld	(hl),#0x01
                           2266 ;src/Personaje.c:288: pintarEscenario(p->salaActual);
   63C3 1A            [ 7] 2267 	ld	a,(de)
   63C4 F5            [11] 2268 	push	af
   63C5 33            [ 6] 2269 	inc	sp
   63C6 CD 4F 4F      [17] 2270 	call	_pintarEscenario
   63C9 33            [ 6] 2271 	inc	sp
   63CA DD E1         [14] 2272 	pop	ix
   63CC C9            [10] 2273 	ret
                           2274 ;src/Personaje.c:290: void ataca(personaje *p){
                           2275 ;	---------------------------------
                           2276 ; Function ataca
                           2277 ; ---------------------------------
   63CD                    2278 _ataca::
   63CD DD E5         [15] 2279 	push	ix
   63CF DD 21 00 00   [14] 2280 	ld	ix,#0
   63D3 DD 39         [15] 2281 	add	ix,sp
   63D5 F5            [11] 2282 	push	af
                           2283 ;src/Personaje.c:291: if(p->ataquePreparado){
   63D6 DD 4E 04      [19] 2284 	ld	c,4 (ix)
   63D9 DD 46 05      [19] 2285 	ld	b,5 (ix)
   63DC 21 09 00      [10] 2286 	ld	hl,#0x0009
   63DF 09            [11] 2287 	add	hl,bc
   63E0 E3            [19] 2288 	ex	(sp), hl
   63E1 E1            [10] 2289 	pop	hl
   63E2 E5            [11] 2290 	push	hl
   63E3 7E            [ 7] 2291 	ld	a,(hl)
   63E4 B7            [ 4] 2292 	or	a, a
   63E5 28 17         [12] 2293 	jr	Z,00104$
                           2294 ;src/Personaje.c:292: p->atacando=1;
   63E7 21 07 00      [10] 2295 	ld	hl,#0x0007
   63EA 09            [11] 2296 	add	hl,bc
   63EB 36 01         [10] 2297 	ld	(hl),#0x01
                           2298 ;src/Personaje.c:293: p->cansancioAtaque++;
   63ED 21 08 00      [10] 2299 	ld	hl,#0x0008
   63F0 09            [11] 2300 	add	hl,bc
   63F1 7E            [ 7] 2301 	ld	a,(hl)
   63F2 3C            [ 4] 2302 	inc	a
   63F3 77            [ 7] 2303 	ld	(hl),a
                           2304 ;src/Personaje.c:294: if(p->cansancioAtaque==7)
   63F4 D6 07         [ 7] 2305 	sub	a, #0x07
   63F6 20 0B         [12] 2306 	jr	NZ,00106$
                           2307 ;src/Personaje.c:295: p->ataquePreparado=0;
   63F8 E1            [10] 2308 	pop	hl
   63F9 E5            [11] 2309 	push	hl
   63FA 36 00         [10] 2310 	ld	(hl),#0x00
   63FC 18 05         [12] 2311 	jr	00106$
   63FE                    2312 00104$:
                           2313 ;src/Personaje.c:298: noAtaca(p);
   63FE C5            [11] 2314 	push	bc
   63FF CD 08 64      [17] 2315 	call	_noAtaca
   6402 F1            [10] 2316 	pop	af
   6403                    2317 00106$:
   6403 DD F9         [10] 2318 	ld	sp, ix
   6405 DD E1         [14] 2319 	pop	ix
   6407 C9            [10] 2320 	ret
                           2321 ;src/Personaje.c:300: void noAtaca(personaje *p){
                           2322 ;	---------------------------------
                           2323 ; Function noAtaca
                           2324 ; ---------------------------------
   6408                    2325 _noAtaca::
   6408 DD E5         [15] 2326 	push	ix
   640A DD 21 00 00   [14] 2327 	ld	ix,#0
   640E DD 39         [15] 2328 	add	ix,sp
                           2329 ;src/Personaje.c:301: p->atacando=0;
   6410 DD 5E 04      [19] 2330 	ld	e,4 (ix)
   6413 DD 56 05      [19] 2331 	ld	d,5 (ix)
   6416 21 07 00      [10] 2332 	ld	hl,#0x0007
   6419 19            [11] 2333 	add	hl,de
   641A 36 00         [10] 2334 	ld	(hl),#0x00
                           2335 ;src/Personaje.c:302: p->cansancioAtaque--;
   641C 21 08 00      [10] 2336 	ld	hl,#0x0008
   641F 19            [11] 2337 	add	hl,de
   6420 7E            [ 7] 2338 	ld	a,(hl)
   6421 C6 FF         [ 7] 2339 	add	a,#0xFF
   6423 77            [ 7] 2340 	ld	(hl),a
                           2341 ;src/Personaje.c:303: if(p->cansancioAtaque==0)
   6424 B7            [ 4] 2342 	or	a, a
   6425 20 06         [12] 2343 	jr	NZ,00103$
                           2344 ;src/Personaje.c:304: p->ataquePreparado=1;
   6427 21 09 00      [10] 2345 	ld	hl,#0x0009
   642A 19            [11] 2346 	add	hl,de
   642B 36 01         [10] 2347 	ld	(hl),#0x01
   642D                    2348 00103$:
   642D DD E1         [14] 2349 	pop	ix
   642F C9            [10] 2350 	ret
                           2351 ;src/Personaje.c:306: void danyo(personaje *p){
                           2352 ;	---------------------------------
                           2353 ; Function danyo
                           2354 ; ---------------------------------
   6430                    2355 _danyo::
                           2356 ;src/Personaje.c:307: p->vida-=1;
   6430 C1            [10] 2357 	pop	bc
   6431 D1            [10] 2358 	pop	de
   6432 D5            [11] 2359 	push	de
   6433 C5            [11] 2360 	push	bc
   6434 13            [ 6] 2361 	inc	de
   6435 13            [ 6] 2362 	inc	de
   6436 13            [ 6] 2363 	inc	de
   6437 1A            [ 7] 2364 	ld	a,(de)
   6438 C6 FF         [ 7] 2365 	add	a,#0xFF
   643A 12            [ 7] 2366 	ld	(de),a
                           2367 ;src/Personaje.c:308: quitaVida();
   643B C3 8A 54      [10] 2368 	jp  _quitaVida
                           2369 	.area _CODE
                           2370 	.area _INITIALIZER
                           2371 	.area _CABS (ABS)
