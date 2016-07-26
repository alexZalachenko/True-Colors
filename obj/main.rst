                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:08:17 2015
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _ActualizarArr
                             14 	.globl _recibirDanyo
                             15 	.globl _generaEnemigos
                             16 	.globl _pintaEnemigos
                             17 	.globl _pintaPersonaje
                             18 	.globl _muevePersonaje
                             19 	.globl _desactualizar
                             20 	.globl _iniciaHud
                             21 	.globl _pintaVida
                             22 	.globl _menuInicio
                             23 	.globl _pintarEscenario
                             24 	.globl _malloc
                             25 	.globl _cpct_setRandomSeedUniform_u8
                             26 	.globl _cpct_getScreenPtr
                             27 	.globl _cpct_setPalette
                             28 	.globl _cpct_fw2hw
                             29 	.globl _cpct_waitVSYNC
                             30 	.globl _cpct_setVideoMode
                             31 	.globl _cpct_disableFirmware
                             32 	.globl _init
                             33 	.globl _pintarElementos
                             34 ;--------------------------------------------------------
                             35 ; special function registers
                             36 ;--------------------------------------------------------
                             37 ;--------------------------------------------------------
                             38 ; ram data
                             39 ;--------------------------------------------------------
                             40 	.area _DATA
                             41 ;--------------------------------------------------------
                             42 ; ram data
                             43 ;--------------------------------------------------------
                             44 	.area _INITIALIZED
                             45 ;--------------------------------------------------------
                             46 ; absolute external ram data
                             47 ;--------------------------------------------------------
                             48 	.area _DABS (ABS)
                             49 ;--------------------------------------------------------
                             50 ; global & static initialisations
                             51 ;--------------------------------------------------------
                             52 	.area _HOME
                             53 	.area _GSINIT
                             54 	.area _GSFINAL
                             55 	.area _GSINIT
                             56 ;--------------------------------------------------------
                             57 ; Home
                             58 ;--------------------------------------------------------
                             59 	.area _HOME
                             60 	.area _HOME
                             61 ;--------------------------------------------------------
                             62 ; code
                             63 ;--------------------------------------------------------
                             64 	.area _CODE
                             65 ;src/main.c:30: int main(void) {
                             66 ;	---------------------------------
                             67 ; Function main
                             68 ; ---------------------------------
   643E                      69 _main::
   643E DD E5         [15]   70 	push	ix
   6440 DD 21 00 00   [14]   71 	ld	ix,#0
   6444 DD 39         [15]   72 	add	ix,sp
   6446 21 F6 FF      [10]   73 	ld	hl,#-10
   6449 39            [11]   74 	add	hl,sp
   644A F9            [ 6]   75 	ld	sp,hl
                             76 ;src/main.c:32: personaje *protagonista=(personaje *)malloc(sizeof(personaje));
   644B 21 0D 00      [10]   77 	ld	hl,#0x000D
   644E E5            [11]   78 	push	hl
   644F CD 1A 74      [17]   79 	call	_malloc
                             80 ;src/main.c:33: estadoTeclado *teclado=(estadoTeclado *)malloc(sizeof(estadoTeclado));
   6452 E3            [19]   81 	ex	(sp),hl
   6453 21 05 00      [10]   82 	ld	hl,#0x0005
   6456 E5            [11]   83 	push	hl
   6457 CD 1A 74      [17]   84 	call	_malloc
   645A F1            [10]   85 	pop	af
   645B C1            [10]   86 	pop	bc
   645C DD 75 FC      [19]   87 	ld	-4 (ix),l
   645F DD 74 FD      [19]   88 	ld	-3 (ix),h
                             89 ;src/main.c:35: cpct_disableFirmware();
   6462 C5            [11]   90 	push	bc
   6463 CD D5 75      [17]   91 	call	_cpct_disableFirmware
   6466 3E 01         [ 7]   92 	ld	a,#0x01
   6468 F5            [11]   93 	push	af
   6469 33            [ 6]   94 	inc	sp
   646A CD 99 75      [17]   95 	call	_cpct_setVideoMode
   646D 33            [ 6]   96 	inc	sp
   646E C1            [10]   97 	pop	bc
                             98 ;src/main.c:37: cpct_fw2hw(paleta,4);
   646F 11 21 42      [10]   99 	ld	de,#_paleta
   6472 C5            [11]  100 	push	bc
   6473 3E 04         [ 7]  101 	ld	a,#0x04
   6475 F5            [11]  102 	push	af
   6476 33            [ 6]  103 	inc	sp
   6477 D5            [11]  104 	push	de
   6478 CD CD 73      [17]  105 	call	_cpct_fw2hw
   647B F1            [10]  106 	pop	af
   647C 33            [ 6]  107 	inc	sp
   647D C1            [10]  108 	pop	bc
                            109 ;src/main.c:38: cpct_setPalette(paleta, 4);
   647E 11 21 42      [10]  110 	ld	de,#_paleta
   6481 C5            [11]  111 	push	bc
   6482 3E 04         [ 7]  112 	ld	a,#0x04
   6484 F5            [11]  113 	push	af
   6485 33            [ 6]  114 	inc	sp
   6486 D5            [11]  115 	push	de
   6487 CD CA 71      [17]  116 	call	_cpct_setPalette
   648A F1            [10]  117 	pop	af
   648B 33            [ 6]  118 	inc	sp
   648C 2E 07         [ 7]  119 	ld	l,#0x07
   648E CD C5 71      [17]  120 	call	_cpct_setRandomSeedUniform_u8
   6491 CD 07 66      [17]  121 	call	_menuInicio
   6494 C1            [10]  122 	pop	bc
                            123 ;src/main.c:42: init(protagonista, enemigosSala);//INICIA LOS DATOS DEL JUEGO
   6495 21 00 00      [10]  124 	ld	hl,#0x0000
   6498 39            [11]  125 	add	hl,sp
   6499 DD 75 FE      [19]  126 	ld	-2 (ix),l
   649C DD 74 FF      [19]  127 	ld	-1 (ix),h
   649F DD 6E FE      [19]  128 	ld	l,-2 (ix)
   64A2 DD 66 FF      [19]  129 	ld	h,-1 (ix)
   64A5 C5            [11]  130 	push	bc
   64A6 E5            [11]  131 	push	hl
   64A7 C5            [11]  132 	push	bc
   64A8 CD 31 65      [17]  133 	call	_init
   64AB F1            [10]  134 	pop	af
   64AC F1            [10]  135 	pop	af
   64AD C1            [10]  136 	pop	bc
                            137 ;src/main.c:44: while (1){
   64AE                     138 00104$:
                            139 ;src/main.c:45: cpct_waitVSYNC();
   64AE C5            [11]  140 	push	bc
   64AF CD 91 75      [17]  141 	call	_cpct_waitVSYNC
   64B2 C1            [10]  142 	pop	bc
                            143 ;src/main.c:46: muevePersonaje(protagonista,teclado);
   64B3 C5            [11]  144 	push	bc
   64B4 DD 6E FC      [19]  145 	ld	l,-4 (ix)
   64B7 DD 66 FD      [19]  146 	ld	h,-3 (ix)
   64BA E5            [11]  147 	push	hl
   64BB C5            [11]  148 	push	bc
   64BC CD FF 54      [17]  149 	call	_muevePersonaje
   64BF F1            [10]  150 	pop	af
   64C0 F1            [10]  151 	pop	af
   64C1 C1            [10]  152 	pop	bc
                            153 ;src/main.c:47: recibirDanyo(enemigosSala, protagonista);
   64C2 DD 6E FE      [19]  154 	ld	l,-2 (ix)
   64C5 DD 66 FF      [19]  155 	ld	h,-1 (ix)
   64C8 C5            [11]  156 	push	bc
   64C9 C5            [11]  157 	push	bc
   64CA E5            [11]  158 	push	hl
   64CB CD 8F 4D      [17]  159 	call	_recibirDanyo
   64CE F1            [10]  160 	pop	af
   64CF F1            [10]  161 	pop	af
   64D0 C1            [10]  162 	pop	bc
                            163 ;src/main.c:48: ActualizarArr(enemigosSala, protagonista);
   64D1 DD 6E FE      [19]  164 	ld	l,-2 (ix)
   64D4 DD 66 FF      [19]  165 	ld	h,-1 (ix)
   64D7 C5            [11]  166 	push	bc
   64D8 C5            [11]  167 	push	bc
   64D9 E5            [11]  168 	push	hl
   64DA CD 27 42      [17]  169 	call	_ActualizarArr
   64DD F1            [10]  170 	pop	af
   64DE F1            [10]  171 	pop	af
   64DF C1            [10]  172 	pop	bc
                            173 ;src/main.c:49: if(protagonista->generaEnemigos){
   64E0 21 0A 00      [10]  174 	ld	hl,#0x000A
   64E3 09            [11]  175 	add	hl,bc
   64E4 5D            [ 4]  176 	ld	e,l
   64E5 54            [ 4]  177 	ld	d,h
   64E6 1A            [ 7]  178 	ld	a,(de)
   64E7 B7            [ 4]  179 	or	a, a
   64E8 28 26         [12]  180 	jr	Z,00102$
                            181 ;src/main.c:50: generaEnemigos(protagonista->salaActual, enemigosSala);
   64EA DD 6E FE      [19]  182 	ld	l,-2 (ix)
   64ED DD 66 FF      [19]  183 	ld	h,-1 (ix)
   64F0 E5            [11]  184 	push	hl
   64F1 FD E1         [14]  185 	pop	iy
   64F3 69            [ 4]  186 	ld	l, c
   64F4 60            [ 4]  187 	ld	h, b
   64F5 C5            [11]  188 	push	bc
   64F6 01 06 00      [10]  189 	ld	bc, #0x0006
   64F9 09            [11]  190 	add	hl, bc
   64FA C1            [10]  191 	pop	bc
   64FB 66            [ 7]  192 	ld	h,(hl)
   64FC C5            [11]  193 	push	bc
   64FD D5            [11]  194 	push	de
   64FE FD E5         [15]  195 	push	iy
   6500 E5            [11]  196 	push	hl
   6501 33            [ 6]  197 	inc	sp
   6502 CD 5C 42      [17]  198 	call	_generaEnemigos
   6505 F1            [10]  199 	pop	af
   6506 33            [ 6]  200 	inc	sp
   6507 D1            [10]  201 	pop	de
   6508 C1            [10]  202 	pop	bc
                            203 ;src/main.c:51: protagonista->generaEnemigos=0;
   6509 AF            [ 4]  204 	xor	a, a
   650A 12            [ 7]  205 	ld	(de),a
                            206 ;src/main.c:52: desactualizar();
   650B C5            [11]  207 	push	bc
   650C CD F9 54      [17]  208 	call	_desactualizar
   650F C1            [10]  209 	pop	bc
   6510                     210 00102$:
                            211 ;src/main.c:55: cpct_waitVSYNC();
   6510 C5            [11]  212 	push	bc
   6511 CD 91 75      [17]  213 	call	_cpct_waitVSYNC
   6514 C1            [10]  214 	pop	bc
                            215 ;src/main.c:56: pintarElementos(protagonista,teclado,enemigosSala);
   6515 DD 6E FE      [19]  216 	ld	l,-2 (ix)
   6518 DD 66 FF      [19]  217 	ld	h,-1 (ix)
   651B C5            [11]  218 	push	bc
   651C E5            [11]  219 	push	hl
   651D DD 6E FC      [19]  220 	ld	l,-4 (ix)
   6520 DD 66 FD      [19]  221 	ld	h,-3 (ix)
   6523 E5            [11]  222 	push	hl
   6524 C5            [11]  223 	push	bc
   6525 CD E2 65      [17]  224 	call	_pintarElementos
   6528 21 06 00      [10]  225 	ld	hl,#6
   652B 39            [11]  226 	add	hl,sp
   652C F9            [ 6]  227 	ld	sp,hl
   652D C1            [10]  228 	pop	bc
   652E C3 AE 64      [10]  229 	jp	00104$
                            230 ;src/main.c:60: void init(personaje *p, enemigo* arr[]){
                            231 ;	---------------------------------
                            232 ; Function init
                            233 ; ---------------------------------
   6531                     234 _init::
   6531 DD E5         [15]  235 	push	ix
   6533 DD 21 00 00   [14]  236 	ld	ix,#0
   6537 DD 39         [15]  237 	add	ix,sp
   6539 F5            [11]  238 	push	af
   653A F5            [11]  239 	push	af
                            240 ;src/main.c:65: p->x=16;
   653B DD 5E 04      [19]  241 	ld	e,4 (ix)
   653E DD 56 05      [19]  242 	ld	d,5 (ix)
   6541 6B            [ 4]  243 	ld	l, e
   6542 62            [ 4]  244 	ld	h, d
   6543 36 10         [10]  245 	ld	(hl),#0x10
   6545 23            [ 6]  246 	inc	hl
   6546 36 00         [10]  247 	ld	(hl),#0x00
                            248 ;src/main.c:66: p->y=16;
   6548 4B            [ 4]  249 	ld	c, e
   6549 42            [ 4]  250 	ld	b, d
   654A 03            [ 6]  251 	inc	bc
   654B 03            [ 6]  252 	inc	bc
   654C 3E 10         [ 7]  253 	ld	a,#0x10
   654E 02            [ 7]  254 	ld	(bc),a
                            255 ;src/main.c:67: p->vida=5;
   654F 6B            [ 4]  256 	ld	l, e
   6550 62            [ 4]  257 	ld	h, d
   6551 23            [ 6]  258 	inc	hl
   6552 23            [ 6]  259 	inc	hl
   6553 23            [ 6]  260 	inc	hl
   6554 36 05         [10]  261 	ld	(hl),#0x05
                            262 ;src/main.c:68: p->tipoSprite=2;
   6556 21 04 00      [10]  263 	ld	hl,#0x0004
   6559 19            [11]  264 	add	hl,de
   655A 36 02         [10]  265 	ld	(hl),#0x02
                            266 ;src/main.c:69: p->cambiarPaso=0;
   655C 21 05 00      [10]  267 	ld	hl,#0x0005
   655F 19            [11]  268 	add	hl,de
   6560 36 00         [10]  269 	ld	(hl),#0x00
                            270 ;src/main.c:70: p->salaActual=0;
   6562 21 06 00      [10]  271 	ld	hl,#0x0006
   6565 19            [11]  272 	add	hl,de
   6566 DD 75 FE      [19]  273 	ld	-2 (ix),l
   6569 DD 74 FF      [19]  274 	ld	-1 (ix),h
   656C DD 6E FE      [19]  275 	ld	l,-2 (ix)
   656F DD 66 FF      [19]  276 	ld	h,-1 (ix)
   6572 36 00         [10]  277 	ld	(hl),#0x00
                            278 ;src/main.c:71: p->atacando=0;
   6574 21 07 00      [10]  279 	ld	hl,#0x0007
   6577 19            [11]  280 	add	hl,de
   6578 36 00         [10]  281 	ld	(hl),#0x00
                            282 ;src/main.c:72: p->cansancioAtaque=0;
   657A 21 08 00      [10]  283 	ld	hl,#0x0008
   657D 19            [11]  284 	add	hl,de
   657E 36 00         [10]  285 	ld	(hl),#0x00
                            286 ;src/main.c:73: p->ataquePreparado=1;
   6580 21 09 00      [10]  287 	ld	hl,#0x0009
   6583 19            [11]  288 	add	hl,de
   6584 36 01         [10]  289 	ld	(hl),#0x01
                            290 ;src/main.c:74: p->generaEnemigos=0;
   6586 21 0A 00      [10]  291 	ld	hl,#0x000A
   6589 19            [11]  292 	add	hl,de
   658A 36 00         [10]  293 	ld	(hl),#0x00
                            294 ;src/main.c:75: p->memPtr=cpct_getScreenPtr(video_memory_start,p->x/4,p->y);
   658C 21 0B 00      [10]  295 	ld	hl,#0x000B
   658F 19            [11]  296 	add	hl,de
   6590 E3            [19]  297 	ex	(sp), hl
   6591 0A            [ 7]  298 	ld	a,(bc)
   6592 47            [ 4]  299 	ld	b,a
   6593 EB            [ 4]  300 	ex	de,hl
   6594 5E            [ 7]  301 	ld	e,(hl)
   6595 23            [ 6]  302 	inc	hl
   6596 56            [ 7]  303 	ld	d,(hl)
   6597 6B            [ 4]  304 	ld	l, e
   6598 62            [ 4]  305 	ld	h, d
   6599 CB 7A         [ 8]  306 	bit	7, d
   659B 28 04         [12]  307 	jr	Z,00103$
   659D EB            [ 4]  308 	ex	de,hl
   659E 23            [ 6]  309 	inc	hl
   659F 23            [ 6]  310 	inc	hl
   65A0 23            [ 6]  311 	inc	hl
   65A1                     312 00103$:
   65A1 CB 2C         [ 8]  313 	sra	h
   65A3 CB 1D         [ 8]  314 	rr	l
   65A5 CB 2C         [ 8]  315 	sra	h
   65A7 CB 1D         [ 8]  316 	rr	l
   65A9 4D            [ 4]  317 	ld	c,l
   65AA ED 5B 25 42   [20]  318 	ld	de,(_video_memory_start)
   65AE C5            [11]  319 	push	bc
   65AF D5            [11]  320 	push	de
   65B0 CD E8 76      [17]  321 	call	_cpct_getScreenPtr
   65B3 55            [ 4]  322 	ld	d,l
   65B4 5C            [ 4]  323 	ld	e,h
   65B5 E1            [10]  324 	pop	hl
   65B6 E5            [11]  325 	push	hl
   65B7 72            [ 7]  326 	ld	(hl),d
   65B8 23            [ 6]  327 	inc	hl
   65B9 73            [ 7]  328 	ld	(hl),e
                            329 ;src/main.c:76: iniciaHud();
   65BA CD 7D 54      [17]  330 	call	_iniciaHud
                            331 ;src/main.c:77: pintarEscenario(p->salaActual);
   65BD DD 6E FE      [19]  332 	ld	l,-2 (ix)
   65C0 DD 66 FF      [19]  333 	ld	h,-1 (ix)
   65C3 66            [ 7]  334 	ld	h,(hl)
   65C4 E5            [11]  335 	push	hl
   65C5 33            [ 6]  336 	inc	sp
   65C6 CD 4F 4F      [17]  337 	call	_pintarEscenario
   65C9 33            [ 6]  338 	inc	sp
                            339 ;src/main.c:78: generaEnemigos(p->salaActual, arr);
   65CA DD 6E FE      [19]  340 	ld	l,-2 (ix)
   65CD DD 66 FF      [19]  341 	ld	h,-1 (ix)
   65D0 66            [ 7]  342 	ld	h,(hl)
   65D1 DD 4E 06      [19]  343 	ld	c,6 (ix)
   65D4 DD 46 07      [19]  344 	ld	b,7 (ix)
   65D7 C5            [11]  345 	push	bc
   65D8 E5            [11]  346 	push	hl
   65D9 33            [ 6]  347 	inc	sp
   65DA CD 5C 42      [17]  348 	call	_generaEnemigos
   65DD DD F9         [10]  349 	ld	sp,ix
   65DF DD E1         [14]  350 	pop	ix
   65E1 C9            [10]  351 	ret
                            352 ;src/main.c:81: void pintarElementos(personaje *p,estadoTeclado *t, enemigo* arr[]){
                            353 ;	---------------------------------
                            354 ; Function pintarElementos
                            355 ; ---------------------------------
   65E2                     356 _pintarElementos::
                            357 ;src/main.c:82: pintaVida();
   65E2 CD A7 54      [17]  358 	call	_pintaVida
                            359 ;src/main.c:83: pintaPersonaje(p,t);
   65E5 21 04 00      [10]  360 	ld	hl, #4
   65E8 39            [11]  361 	add	hl, sp
   65E9 4E            [ 7]  362 	ld	c, (hl)
   65EA 23            [ 6]  363 	inc	hl
   65EB 46            [ 7]  364 	ld	b, (hl)
   65EC C5            [11]  365 	push	bc
   65ED 21 04 00      [10]  366 	ld	hl, #4
   65F0 39            [11]  367 	add	hl, sp
   65F1 4E            [ 7]  368 	ld	c, (hl)
   65F2 23            [ 6]  369 	inc	hl
   65F3 46            [ 7]  370 	ld	b, (hl)
   65F4 C5            [11]  371 	push	bc
   65F5 CD F0 58      [17]  372 	call	_pintaPersonaje
   65F8 F1            [10]  373 	pop	af
   65F9 F1            [10]  374 	pop	af
                            375 ;src/main.c:84: pintaEnemigos(arr);
   65FA 21 06 00      [10]  376 	ld	hl, #6
   65FD 39            [11]  377 	add	hl, sp
   65FE 4E            [ 7]  378 	ld	c, (hl)
   65FF 23            [ 6]  379 	inc	hl
   6600 46            [ 7]  380 	ld	b, (hl)
   6601 C5            [11]  381 	push	bc
   6602 CD 47 4D      [17]  382 	call	_pintaEnemigos
   6605 F1            [10]  383 	pop	af
   6606 C9            [10]  384 	ret
                            385 	.area _CODE
                            386 	.area _INITIALIZER
                            387 	.area _CABS (ABS)
