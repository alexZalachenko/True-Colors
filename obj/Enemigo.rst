                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:07:31 2015
                              5 ;--------------------------------------------------------
                              6 	.module Enemigo
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _danyo
                             13 	.globl _cpct_getRandomUniform_u8_f
                             14 	.globl _cpct_getScreenPtr
                             15 	.globl _cpct_drawSolidBox
                             16 	.globl _cpct_drawSprite
                             17 	.globl _cpct_px2byteM1
                             18 	.globl _ActualizarArr
                             19 	.globl _generaEnemigos
                             20 	.globl _Actualizar
                             21 	.globl _Patrulla
                             22 	.globl _MoveE
                             23 	.globl _ColisionE
                             24 	.globl _Vision
                             25 	.globl _Combate
                             26 	.globl _atacaE
                             27 	.globl _noAtacaE
                             28 	.globl _initEnemigo
                             29 	.globl _pintaEnemigo
                             30 	.globl _pintaEnemigos
                             31 	.globl _quitarVida
                             32 	.globl _recibirDanyo
                             33 ;--------------------------------------------------------
                             34 ; special function registers
                             35 ;--------------------------------------------------------
                             36 ;--------------------------------------------------------
                             37 ; ram data
                             38 ;--------------------------------------------------------
                             39 	.area _DATA
                             40 ;--------------------------------------------------------
                             41 ; ram data
                             42 ;--------------------------------------------------------
                             43 	.area _INITIALIZED
                             44 ;--------------------------------------------------------
                             45 ; absolute external ram data
                             46 ;--------------------------------------------------------
                             47 	.area _DABS (ABS)
                             48 ;--------------------------------------------------------
                             49 ; global & static initialisations
                             50 ;--------------------------------------------------------
                             51 	.area _HOME
                             52 	.area _GSINIT
                             53 	.area _GSFINAL
                             54 	.area _GSINIT
                             55 ;--------------------------------------------------------
                             56 ; Home
                             57 ;--------------------------------------------------------
                             58 	.area _HOME
                             59 	.area _HOME
                             60 ;--------------------------------------------------------
                             61 ; code
                             62 ;--------------------------------------------------------
                             63 	.area _CODE
                             64 ;src/Enemigo.c:4: void ActualizarArr(enemigo *arr[], personaje *p){
                             65 ;	---------------------------------
                             66 ; Function ActualizarArr
                             67 ; ---------------------------------
   4227                      68 _ActualizarArr::
                             69 ;src/Enemigo.c:6: for(cont=0;cont<maxEnemigosSala;cont++){
   4227 16 00         [ 7]   70 	ld	d,#0x00
   4229                      71 00102$:
                             72 ;src/Enemigo.c:7: Actualizar(arr[cont],p);
   4229 6A            [ 4]   73 	ld	l,d
   422A 26 00         [ 7]   74 	ld	h,#0x00
   422C 29            [11]   75 	add	hl, hl
   422D 4D            [ 4]   76 	ld	c, l
   422E 44            [ 4]   77 	ld	b, h
   422F FD 21 02 00   [14]   78 	ld	iy,#2
   4233 FD 39         [15]   79 	add	iy,sp
   4235 FD 7E 00      [19]   80 	ld	a,0 (iy)
   4238 81            [ 4]   81 	add	a, c
   4239 4F            [ 4]   82 	ld	c,a
   423A FD 7E 01      [19]   83 	ld	a,1 (iy)
   423D 88            [ 4]   84 	adc	a, b
   423E 47            [ 4]   85 	ld	b,a
   423F 69            [ 4]   86 	ld	l, c
   4240 60            [ 4]   87 	ld	h, b
   4241 4E            [ 7]   88 	ld	c,(hl)
   4242 23            [ 6]   89 	inc	hl
   4243 46            [ 7]   90 	ld	b,(hl)
   4244 D5            [11]   91 	push	de
   4245 21 06 00      [10]   92 	ld	hl, #6
   4248 39            [11]   93 	add	hl, sp
   4249 7E            [ 7]   94 	ld	a, (hl)
   424A 23            [ 6]   95 	inc	hl
   424B 66            [ 7]   96 	ld	h, (hl)
   424C 6F            [ 4]   97 	ld	l, a
   424D E5            [11]   98 	push	hl
   424E C5            [11]   99 	push	bc
   424F CD F4 42      [17]  100 	call	_Actualizar
   4252 F1            [10]  101 	pop	af
   4253 F1            [10]  102 	pop	af
   4254 D1            [10]  103 	pop	de
                            104 ;src/Enemigo.c:6: for(cont=0;cont<maxEnemigosSala;cont++){
   4255 14            [ 4]  105 	inc	d
   4256 7A            [ 4]  106 	ld	a,d
   4257 D6 03         [ 7]  107 	sub	a, #0x03
   4259 38 CE         [12]  108 	jr	C,00102$
   425B C9            [10]  109 	ret
                            110 ;src/Enemigo.c:11: void generaEnemigos(u8 sala, enemigo* arr[]){
                            111 ;	---------------------------------
                            112 ; Function generaEnemigos
                            113 ; ---------------------------------
   425C                     114 _generaEnemigos::
   425C DD E5         [15]  115 	push	ix
   425E DD 21 00 00   [14]  116 	ld	ix,#0
   4262 DD 39         [15]  117 	add	ix,sp
   4264 F5            [11]  118 	push	af
   4265 3B            [ 6]  119 	dec	sp
                            120 ;src/Enemigo.c:14: do{
   4266 DD 36 FD 00   [19]  121 	ld	-3 (ix),#0x00
   426A                     122 00101$:
                            123 ;src/Enemigo.c:15: cordx=cpct_getRandomUniform_u8_f(0)%18+1;
   426A 2E 00         [ 7]  124 	ld	l,#0x00
   426C CD 80 75      [17]  125 	call	_cpct_getRandomUniform_u8_f
   426F 55            [ 4]  126 	ld	d,l
   4270 3E 12         [ 7]  127 	ld	a,#0x12
   4272 F5            [11]  128 	push	af
   4273 33            [ 6]  129 	inc	sp
   4274 D5            [11]  130 	push	de
   4275 33            [ 6]  131 	inc	sp
   4276 CD 2B 73      [17]  132 	call	__moduchar
   4279 F1            [10]  133 	pop	af
   427A 45            [ 4]  134 	ld	b,l
   427B 04            [ 4]  135 	inc	b
                            136 ;src/Enemigo.c:16: cordy=cpct_getRandomUniform_u8_f(0)%10+1;
   427C C5            [11]  137 	push	bc
   427D 2E 00         [ 7]  138 	ld	l,#0x00
   427F CD 80 75      [17]  139 	call	_cpct_getRandomUniform_u8_f
   4282 55            [ 4]  140 	ld	d,l
   4283 3E 0A         [ 7]  141 	ld	a,#0x0A
   4285 F5            [11]  142 	push	af
   4286 33            [ 6]  143 	inc	sp
   4287 D5            [11]  144 	push	de
   4288 33            [ 6]  145 	inc	sp
   4289 CD 2B 73      [17]  146 	call	__moduchar
   428C F1            [10]  147 	pop	af
   428D C1            [10]  148 	pop	bc
   428E 4D            [ 4]  149 	ld	c,l
   428F 0C            [ 4]  150 	inc	c
                            151 ;src/Enemigo.c:17: }while(mapas[sala].posiciones[cordy][cordx]!=0);
   4290 DD 56 04      [19]  152 	ld	d, 4 (ix)
   4293 1E 00         [ 7]  153 	ld	e,#0x00
   4295 21 7D 50      [10]  154 	ld	hl,#_mapas
   4298 19            [11]  155 	add	hl,de
   4299 EB            [ 4]  156 	ex	de,hl
   429A 79            [ 4]  157 	ld	a,c
   429B 87            [ 4]  158 	add	a, a
   429C 87            [ 4]  159 	add	a, a
   429D 81            [ 4]  160 	add	a, c
   429E 87            [ 4]  161 	add	a, a
   429F 87            [ 4]  162 	add	a, a
   42A0 6F            [ 4]  163 	ld	l,a
   42A1 26 00         [ 7]  164 	ld	h,#0x00
   42A3 19            [11]  165 	add	hl,de
   42A4 58            [ 4]  166 	ld	e,b
   42A5 16 00         [ 7]  167 	ld	d,#0x00
   42A7 19            [11]  168 	add	hl,de
   42A8 7E            [ 7]  169 	ld	a,(hl)
   42A9 B7            [ 4]  170 	or	a, a
   42AA 20 BE         [12]  171 	jr	NZ,00101$
                            172 ;src/Enemigo.c:18: initEnemigo(arr[cont], cordx, cordy);
   42AC DD 6E FD      [19]  173 	ld	l,-3 (ix)
   42AF 26 00         [ 7]  174 	ld	h,#0x00
   42B1 29            [11]  175 	add	hl, hl
   42B2 EB            [ 4]  176 	ex	de,hl
   42B3 DD 7E 05      [19]  177 	ld	a,5 (ix)
   42B6 83            [ 4]  178 	add	a, e
   42B7 DD 77 FE      [19]  179 	ld	-2 (ix),a
   42BA DD 7E 06      [19]  180 	ld	a,6 (ix)
   42BD 8A            [ 4]  181 	adc	a, d
   42BE DD 77 FF      [19]  182 	ld	-1 (ix),a
   42C1 DD 6E FE      [19]  183 	ld	l,-2 (ix)
   42C4 DD 66 FF      [19]  184 	ld	h,-1 (ix)
   42C7 5E            [ 7]  185 	ld	e,(hl)
   42C8 23            [ 6]  186 	inc	hl
   42C9 56            [ 7]  187 	ld	d,(hl)
   42CA 79            [ 4]  188 	ld	a,c
   42CB F5            [11]  189 	push	af
   42CC 33            [ 6]  190 	inc	sp
   42CD C5            [11]  191 	push	bc
   42CE 33            [ 6]  192 	inc	sp
   42CF D5            [11]  193 	push	de
   42D0 CD D8 4B      [17]  194 	call	_initEnemigo
   42D3 F1            [10]  195 	pop	af
   42D4 F1            [10]  196 	pop	af
                            197 ;src/Enemigo.c:19: arr[cont]->danyino=0;
   42D5 DD 6E FE      [19]  198 	ld	l,-2 (ix)
   42D8 DD 66 FF      [19]  199 	ld	h,-1 (ix)
   42DB 5E            [ 7]  200 	ld	e,(hl)
   42DC 23            [ 6]  201 	inc	hl
   42DD 56            [ 7]  202 	ld	d,(hl)
   42DE 21 0C 00      [10]  203 	ld	hl,#0x000C
   42E1 19            [11]  204 	add	hl,de
   42E2 36 00         [10]  205 	ld	(hl),#0x00
                            206 ;src/Enemigo.c:13: for(cont=0;cont<maxEnemigosSala;cont++){
   42E4 DD 34 FD      [23]  207 	inc	-3 (ix)
   42E7 DD 7E FD      [19]  208 	ld	a,-3 (ix)
   42EA D6 03         [ 7]  209 	sub	a, #0x03
   42EC DA 6A 42      [10]  210 	jp	C,00101$
   42EF DD F9         [10]  211 	ld	sp, ix
   42F1 DD E1         [14]  212 	pop	ix
   42F3 C9            [10]  213 	ret
                            214 ;src/Enemigo.c:24: void Actualizar(enemigo *e, personaje *p){
                            215 ;	---------------------------------
                            216 ; Function Actualizar
                            217 ; ---------------------------------
   42F4                     218 _Actualizar::
                            219 ;src/Enemigo.c:25: if(e->estado==0){
   42F4 C1            [10]  220 	pop	bc
   42F5 D1            [10]  221 	pop	de
   42F6 D5            [11]  222 	push	de
   42F7 C5            [11]  223 	push	bc
   42F8 D5            [11]  224 	push	de
   42F9 FD E1         [14]  225 	pop	iy
   42FB FD 7E 04      [19]  226 	ld	a,4 (iy)
   42FE B7            [ 4]  227 	or	a, a
   42FF 20 0F         [12]  228 	jr	NZ,00102$
                            229 ;src/Enemigo.c:26: Patrulla(e, p);
   4301 21 04 00      [10]  230 	ld	hl, #4
   4304 39            [11]  231 	add	hl, sp
   4305 4E            [ 7]  232 	ld	c, (hl)
   4306 23            [ 6]  233 	inc	hl
   4307 46            [ 7]  234 	ld	b, (hl)
   4308 C5            [11]  235 	push	bc
   4309 D5            [11]  236 	push	de
   430A CD 1F 43      [17]  237 	call	_Patrulla
   430D F1            [10]  238 	pop	af
   430E F1            [10]  239 	pop	af
   430F C9            [10]  240 	ret
   4310                     241 00102$:
                            242 ;src/Enemigo.c:29: Combate(e,p);// Seguramente haya que pasarle el personaje 
   4310 21 04 00      [10]  243 	ld	hl, #4
   4313 39            [11]  244 	add	hl, sp
   4314 4E            [ 7]  245 	ld	c, (hl)
   4315 23            [ 6]  246 	inc	hl
   4316 46            [ 7]  247 	ld	b, (hl)
   4317 C5            [11]  248 	push	bc
   4318 D5            [11]  249 	push	de
   4319 CD D1 49      [17]  250 	call	_Combate
   431C F1            [10]  251 	pop	af
   431D F1            [10]  252 	pop	af
   431E C9            [10]  253 	ret
                            254 ;src/Enemigo.c:34: void Patrulla(enemigo *e, personaje *p){
                            255 ;	---------------------------------
                            256 ; Function Patrulla
                            257 ; ---------------------------------
   431F                     258 _Patrulla::
                            259 ;src/Enemigo.c:35: if(Vision(e,p)==1){
   431F 21 04 00      [10]  260 	ld	hl, #4
   4322 39            [11]  261 	add	hl, sp
   4323 4E            [ 7]  262 	ld	c, (hl)
   4324 23            [ 6]  263 	inc	hl
   4325 46            [ 7]  264 	ld	b, (hl)
   4326 C5            [11]  265 	push	bc
   4327 21 04 00      [10]  266 	ld	hl, #4
   432A 39            [11]  267 	add	hl, sp
   432B 4E            [ 7]  268 	ld	c, (hl)
   432C 23            [ 6]  269 	inc	hl
   432D 46            [ 7]  270 	ld	b, (hl)
   432E C5            [11]  271 	push	bc
   432F CD 48 46      [17]  272 	call	_Vision
   4332 F1            [10]  273 	pop	af
   4333 F1            [10]  274 	pop	af
   4334 2D            [ 4]  275 	dec	l
   4335 20 0A         [12]  276 	jr	NZ,00102$
                            277 ;src/Enemigo.c:36: e->estado=1;
   4337 C1            [10]  278 	pop	bc
   4338 E1            [10]  279 	pop	hl
   4339 E5            [11]  280 	push	hl
   433A C5            [11]  281 	push	bc
   433B 01 04 00      [10]  282 	ld	bc,#0x0004
   433E 09            [11]  283 	add	hl,bc
   433F 36 01         [10]  284 	ld	(hl),#0x01
   4341                     285 00102$:
                            286 ;src/Enemigo.c:39: MoveE(e, p);
   4341 21 04 00      [10]  287 	ld	hl, #4
   4344 39            [11]  288 	add	hl, sp
   4345 4E            [ 7]  289 	ld	c, (hl)
   4346 23            [ 6]  290 	inc	hl
   4347 46            [ 7]  291 	ld	b, (hl)
   4348 C5            [11]  292 	push	bc
   4349 21 04 00      [10]  293 	ld	hl, #4
   434C 39            [11]  294 	add	hl, sp
   434D 4E            [ 7]  295 	ld	c, (hl)
   434E 23            [ 6]  296 	inc	hl
   434F 46            [ 7]  297 	ld	b, (hl)
   4350 C5            [11]  298 	push	bc
   4351 CD 57 43      [17]  299 	call	_MoveE
   4354 F1            [10]  300 	pop	af
   4355 F1            [10]  301 	pop	af
   4356 C9            [10]  302 	ret
                            303 ;src/Enemigo.c:41: void MoveE(enemigo *e, personaje *p){
                            304 ;	---------------------------------
                            305 ; Function MoveE
                            306 ; ---------------------------------
   4357                     307 _MoveE::
   4357 DD E5         [15]  308 	push	ix
   4359 DD 21 00 00   [14]  309 	ld	ix,#0
   435D DD 39         [15]  310 	add	ix,sp
   435F F5            [11]  311 	push	af
   4360 F5            [11]  312 	push	af
                            313 ;src/Enemigo.c:42: if(ColisionE(e, p)!=0){
   4361 DD 6E 06      [19]  314 	ld	l,6 (ix)
   4364 DD 66 07      [19]  315 	ld	h,7 (ix)
   4367 E5            [11]  316 	push	hl
   4368 DD 6E 04      [19]  317 	ld	l,4 (ix)
   436B DD 66 05      [19]  318 	ld	h,5 (ix)
   436E E5            [11]  319 	push	hl
   436F CD E5 43      [17]  320 	call	_ColisionE
   4372 F1            [10]  321 	pop	af
   4373 F1            [10]  322 	pop	af
   4374 4D            [ 4]  323 	ld	c,l
                            324 ;src/Enemigo.c:43: e->direccion++;
   4375 DD 5E 04      [19]  325 	ld	e,4 (ix)
   4378 DD 56 05      [19]  326 	ld	d,5 (ix)
   437B 21 08 00      [10]  327 	ld	hl,#0x0008
   437E 19            [11]  328 	add	hl,de
   437F E3            [19]  329 	ex	(sp), hl
                            330 ;src/Enemigo.c:49: if(e->direccion==0){
   4380 E1            [10]  331 	pop	hl
   4381 E5            [11]  332 	push	hl
   4382 6E            [ 7]  333 	ld	l,(hl)
                            334 ;src/Enemigo.c:42: if(ColisionE(e, p)!=0){
   4383 79            [ 4]  335 	ld	a,c
   4384 B7            [ 4]  336 	or	a, a
   4385 28 10         [12]  337 	jr	Z,00104$
                            338 ;src/Enemigo.c:43: e->direccion++;
   4387 55            [ 4]  339 	ld	d,l
   4388 14            [ 4]  340 	inc	d
   4389 E1            [10]  341 	pop	hl
   438A E5            [11]  342 	push	hl
   438B 72            [ 7]  343 	ld	(hl),d
                            344 ;src/Enemigo.c:44: if(e->direccion>3){
   438C 3E 03         [ 7]  345 	ld	a,#0x03
   438E 92            [ 4]  346 	sub	a, d
   438F 30 4F         [12]  347 	jr	NC,00113$
                            348 ;src/Enemigo.c:45: e->direccion=0;
   4391 E1            [10]  349 	pop	hl
   4392 E5            [11]  350 	push	hl
   4393 36 00         [10]  351 	ld	(hl),#0x00
                            352 ;src/Enemigo.c:47: return;
   4395 18 49         [12]  353 	jr	00113$
   4397                     354 00104$:
                            355 ;src/Enemigo.c:49: if(e->direccion==0){
   4397 7D            [ 4]  356 	ld	a,l
   4398 B7            [ 4]  357 	or	a, a
   4399 20 0C         [12]  358 	jr	NZ,00106$
                            359 ;src/Enemigo.c:50: e->x+=2;
   439B 6B            [ 4]  360 	ld	l, e
   439C 62            [ 4]  361 	ld	h, d
   439D 4E            [ 7]  362 	ld	c,(hl)
   439E 23            [ 6]  363 	inc	hl
   439F 46            [ 7]  364 	ld	b,(hl)
   43A0 03            [ 6]  365 	inc	bc
   43A1 03            [ 6]  366 	inc	bc
   43A2 6B            [ 4]  367 	ld	l, e
   43A3 62            [ 4]  368 	ld	h, d
   43A4 71            [ 7]  369 	ld	(hl),c
   43A5 23            [ 6]  370 	inc	hl
   43A6 70            [ 7]  371 	ld	(hl),b
   43A7                     372 00106$:
                            373 ;src/Enemigo.c:52: if(e->direccion==1){
   43A7 E1            [10]  374 	pop	hl
   43A8 E5            [11]  375 	push	hl
   43A9 6E            [ 7]  376 	ld	l,(hl)
                            377 ;src/Enemigo.c:53: e->y-=2;
   43AA 4B            [ 4]  378 	ld	c, e
   43AB 42            [ 4]  379 	ld	b, d
   43AC 03            [ 6]  380 	inc	bc
   43AD 03            [ 6]  381 	inc	bc
                            382 ;src/Enemigo.c:52: if(e->direccion==1){
   43AE 2D            [ 4]  383 	dec	l
   43AF 20 04         [12]  384 	jr	NZ,00108$
                            385 ;src/Enemigo.c:53: e->y-=2;
   43B1 0A            [ 7]  386 	ld	a,(bc)
   43B2 C6 FE         [ 7]  387 	add	a,#0xFE
   43B4 02            [ 7]  388 	ld	(bc),a
   43B5                     389 00108$:
                            390 ;src/Enemigo.c:55: if(e->direccion==2){
   43B5 E1            [10]  391 	pop	hl
   43B6 E5            [11]  392 	push	hl
   43B7 7E            [ 7]  393 	ld	a,(hl)
   43B8 D6 02         [ 7]  394 	sub	a, #0x02
   43BA 20 19         [12]  395 	jr	NZ,00110$
                            396 ;src/Enemigo.c:56: e->x-=2;
   43BC 6B            [ 4]  397 	ld	l, e
   43BD 62            [ 4]  398 	ld	h, d
   43BE 7E            [ 7]  399 	ld	a, (hl)
   43BF 23            [ 6]  400 	inc	hl
   43C0 6E            [ 7]  401 	ld	l,(hl)
   43C1 C6 FE         [ 7]  402 	add	a,#0xFE
   43C3 DD 77 FE      [19]  403 	ld	-2 (ix),a
   43C6 7D            [ 4]  404 	ld	a,l
   43C7 CE FF         [ 7]  405 	adc	a,#0xFF
   43C9 DD 77 FF      [19]  406 	ld	-1 (ix),a
   43CC DD 7E FE      [19]  407 	ld	a,-2 (ix)
   43CF 12            [ 7]  408 	ld	(de),a
   43D0 13            [ 6]  409 	inc	de
   43D1 DD 7E FF      [19]  410 	ld	a,-1 (ix)
   43D4 12            [ 7]  411 	ld	(de),a
   43D5                     412 00110$:
                            413 ;src/Enemigo.c:58: if(e->direccion==3){
   43D5 E1            [10]  414 	pop	hl
   43D6 E5            [11]  415 	push	hl
   43D7 7E            [ 7]  416 	ld	a,(hl)
   43D8 D6 03         [ 7]  417 	sub	a, #0x03
   43DA 20 04         [12]  418 	jr	NZ,00113$
                            419 ;src/Enemigo.c:59: e->y+=2;
   43DC 0A            [ 7]  420 	ld	a,(bc)
   43DD C6 02         [ 7]  421 	add	a, #0x02
   43DF 02            [ 7]  422 	ld	(bc),a
   43E0                     423 00113$:
   43E0 DD F9         [10]  424 	ld	sp, ix
   43E2 DD E1         [14]  425 	pop	ix
   43E4 C9            [10]  426 	ret
                            427 ;src/Enemigo.c:64: u8 ColisionE(enemigo *e, personaje *p){
                            428 ;	---------------------------------
                            429 ; Function ColisionE
                            430 ; ---------------------------------
   43E5                     431 _ColisionE::
   43E5 DD E5         [15]  432 	push	ix
   43E7 DD 21 00 00   [14]  433 	ld	ix,#0
   43EB DD 39         [15]  434 	add	ix,sp
   43ED 21 EE FF      [10]  435 	ld	hl,#-18
   43F0 39            [11]  436 	add	hl,sp
   43F1 F9            [ 6]  437 	ld	sp,hl
                            438 ;src/Enemigo.c:65: int posx=e->x; 
   43F2 DD 4E 04      [19]  439 	ld	c,4 (ix)
   43F5 DD 46 05      [19]  440 	ld	b,5 (ix)
   43F8 69            [ 4]  441 	ld	l, c
   43F9 60            [ 4]  442 	ld	h, b
   43FA 5E            [ 7]  443 	ld	e,(hl)
   43FB 23            [ 6]  444 	inc	hl
   43FC 56            [ 7]  445 	ld	d,(hl)
                            446 ;src/Enemigo.c:66: u8  posy=e->y;
   43FD C5            [11]  447 	push	bc
   43FE FD E1         [14]  448 	pop	iy
   4400 FD 7E 02      [19]  449 	ld	a,2 (iy)
                            450 ;src/Enemigo.c:67: u8 casX=posy/16, casY=posx/16;
   4403 DD 77 EE      [19]  451 	ld	-18 (ix), a
   4406 07            [ 4]  452 	rlca
   4407 07            [ 4]  453 	rlca
   4408 07            [ 4]  454 	rlca
   4409 07            [ 4]  455 	rlca
   440A E6 0F         [ 7]  456 	and	a,#0x0F
   440C DD 77 EF      [19]  457 	ld	-17 (ix),a
   440F 6B            [ 4]  458 	ld	l, e
   4410 62            [ 4]  459 	ld	h, d
   4411 CB 7A         [ 8]  460 	bit	7, d
   4413 28 04         [12]  461 	jr	Z,00143$
   4415 21 0F 00      [10]  462 	ld	hl,#0x000F
   4418 19            [11]  463 	add	hl,de
   4419                     464 00143$:
   4419 CB 2C         [ 8]  465 	sra	h
   441B CB 1D         [ 8]  466 	rr	l
   441D CB 2C         [ 8]  467 	sra	h
   441F CB 1D         [ 8]  468 	rr	l
   4421 CB 2C         [ 8]  469 	sra	h
   4423 CB 1D         [ 8]  470 	rr	l
   4425 CB 2C         [ 8]  471 	sra	h
   4427 CB 1D         [ 8]  472 	rr	l
   4429 DD 75 F0      [19]  473 	ld	-16 (ix),l
                            474 ;src/Enemigo.c:68: if(e->direccion==0){
   442C C5            [11]  475 	push	bc
   442D FD E1         [14]  476 	pop	iy
   442F FD 7E 08      [19]  477 	ld	a,8 (iy)
   4432 DD 77 F3      [19]  478 	ld	-13 (ix),a
                            479 ;src/Enemigo.c:69: if(posx%16==0){
   4435 21 10 00      [10]  480 	ld	hl,#0x0010
   4438 E5            [11]  481 	push	hl
   4439 D5            [11]  482 	push	de
                            483 ;src/Enemigo.c:70: if(posy%16==0){
   443A CD AB 76      [17]  484 	call	__modsint
   443D F1            [10]  485 	pop	af
   443E F1            [10]  486 	pop	af
   443F DD 74 F2      [19]  487 	ld	-14 (ix),h
   4442 DD 75 F1      [19]  488 	ld	-15 (ix),l
   4445 DD 7E EE      [19]  489 	ld	a,-18 (ix)
   4448 E6 0F         [ 7]  490 	and	a, #0x0F
   444A DD 77 F5      [19]  491 	ld	-11 (ix),a
                            492 ;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
   444D DD 4E 06      [19]  493 	ld	c,6 (ix)
   4450 DD 46 07      [19]  494 	ld	b,7 (ix)
   4453 DD 7E EF      [19]  495 	ld	a,-17 (ix)
   4456 5F            [ 4]  496 	ld	e,a
   4457 87            [ 4]  497 	add	a, a
   4458 87            [ 4]  498 	add	a, a
   4459 83            [ 4]  499 	add	a, e
   445A 87            [ 4]  500 	add	a, a
   445B 87            [ 4]  501 	add	a, a
   445C DD 77 FC      [19]  502 	ld	-4 (ix),a
   445F DD 7E F0      [19]  503 	ld	a,-16 (ix)
   4462 3C            [ 4]  504 	inc	a
   4463 DD 77 F4      [19]  505 	ld	-12 (ix),a
                            506 ;src/Enemigo.c:74: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
   4466 DD 5E EF      [19]  507 	ld	e,-17 (ix)
   4469 1C            [ 4]  508 	inc	e
                            509 ;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
   446A 21 06 00      [10]  510 	ld	hl,#0x0006
   446D 09            [11]  511 	add	hl,bc
   446E DD 75 F7      [19]  512 	ld	-9 (ix),l
   4471 DD 74 F8      [19]  513 	ld	-8 (ix),h
                            514 ;src/Enemigo.c:74: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
   4474 7B            [ 4]  515 	ld	a,e
   4475 87            [ 4]  516 	add	a, a
   4476 87            [ 4]  517 	add	a, a
   4477 83            [ 4]  518 	add	a, e
   4478 87            [ 4]  519 	add	a, a
   4479 87            [ 4]  520 	add	a, a
   447A DD 77 F6      [19]  521 	ld	-10 (ix),a
                            522 ;src/Enemigo.c:68: if(e->direccion==0){
   447D DD 7E F3      [19]  523 	ld	a,-13 (ix)
   4480 B7            [ 4]  524 	or	a, a
   4481 20 5A         [12]  525 	jr	NZ,00110$
                            526 ;src/Enemigo.c:69: if(posx%16==0){
   4483 DD 7E F2      [19]  527 	ld	a,-14 (ix)
   4486 DD B6 F1      [19]  528 	or	a,-15 (ix)
   4489 20 4D         [12]  529 	jr	NZ,00108$
                            530 ;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
   448B DD 6E F7      [19]  531 	ld	l,-9 (ix)
   448E DD 66 F8      [19]  532 	ld	h,-8 (ix)
   4491 66            [ 7]  533 	ld	h, (hl)
   4492 2E 00         [ 7]  534 	ld	l,#0x00
                            535 ;src/Enemigo.c:70: if(posy%16==0){
   4494 DD 7E F5      [19]  536 	ld	a,-11 (ix)
   4497 B7            [ 4]  537 	or	a, a
   4498 20 14         [12]  538 	jr	NZ,00105$
                            539 ;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
   449A 11 7D 50      [10]  540 	ld	de,#_mapas+0
   449D 19            [11]  541 	add	hl,de
   449E DD 5E FC      [19]  542 	ld	e,-4 (ix)
   44A1 16 00         [ 7]  543 	ld	d,#0x00
   44A3 19            [11]  544 	add	hl,de
   44A4 DD 5E F4      [19]  545 	ld	e,-12 (ix)
   44A7 16 00         [ 7]  546 	ld	d,#0x00
   44A9 19            [11]  547 	add	hl,de
   44AA 6E            [ 7]  548 	ld	l,(hl)
   44AB C3 43 46      [10]  549 	jp	00141$
   44AE                     550 00105$:
                            551 ;src/Enemigo.c:74: else if(mapas[p->salaActual].posiciones[casX][casY+1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
   44AE 11 7D 50      [10]  552 	ld	de,#_mapas+0
   44B1 19            [11]  553 	add	hl,de
   44B2 EB            [ 4]  554 	ex	de,hl
   44B3 DD 6E FC      [19]  555 	ld	l,-4 (ix)
   44B6 26 00         [ 7]  556 	ld	h,#0x00
   44B8 19            [11]  557 	add	hl,de
   44B9 DD 4E F4      [19]  558 	ld	c,-12 (ix)
   44BC 06 00         [ 7]  559 	ld	b,#0x00
   44BE 09            [11]  560 	add	hl,bc
   44BF 7E            [ 7]  561 	ld	a,(hl)
   44C0 B7            [ 4]  562 	or	a, a
   44C1 20 10         [12]  563 	jr	NZ,00101$
   44C3 DD 6E F6      [19]  564 	ld	l,-10 (ix)
   44C6 26 00         [ 7]  565 	ld	h,#0x00
   44C8 19            [11]  566 	add	hl,de
   44C9 DD 5E F4      [19]  567 	ld	e,-12 (ix)
   44CC 16 00         [ 7]  568 	ld	d,#0x00
   44CE 19            [11]  569 	add	hl,de
   44CF 7E            [ 7]  570 	ld	a,(hl)
   44D0 B7            [ 4]  571 	or	a, a
   44D1 28 05         [12]  572 	jr	Z,00108$
   44D3                     573 00101$:
                            574 ;src/Enemigo.c:76: return 1;
   44D3 2E 01         [ 7]  575 	ld	l,#0x01
   44D5 C3 43 46      [10]  576 	jp	00141$
   44D8                     577 00108$:
                            578 ;src/Enemigo.c:78: return 0;
   44D8 2E 00         [ 7]  579 	ld	l,#0x00
   44DA C3 43 46      [10]  580 	jp	00141$
   44DD                     581 00110$:
                            582 ;src/Enemigo.c:80: if(e->direccion==1){
   44DD DD 7E F3      [19]  583 	ld	a,-13 (ix)
   44E0 3D            [ 4]  584 	dec	a
   44E1 C2 8C 45      [10]  585 	jp	NZ,00120$
                            586 ;src/Enemigo.c:81: if(posy%16==0){
   44E4 DD 7E F5      [19]  587 	ld	a,-11 (ix)
   44E7 B7            [ 4]  588 	or	a, a
   44E8 C2 87 45      [10]  589 	jp	NZ,00118$
                            590 ;src/Enemigo.c:84: return mapas[p->salaActual].posiciones[casX-1][casY];
   44EB DD 7E EF      [19]  591 	ld	a,-17 (ix)
   44EE C6 FF         [ 7]  592 	add	a,#0xFF
   44F0 DD 77 FB      [19]  593 	ld	-5 (ix), a
   44F3 4F            [ 4]  594 	ld	c,a
   44F4 87            [ 4]  595 	add	a, a
   44F5 87            [ 4]  596 	add	a, a
   44F6 81            [ 4]  597 	add	a, c
   44F7 87            [ 4]  598 	add	a, a
   44F8 87            [ 4]  599 	add	a, a
   44F9 DD 77 FB      [19]  600 	ld	-5 (ix),a
                            601 ;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
   44FC DD 6E F7      [19]  602 	ld	l,-9 (ix)
   44FF DD 66 F8      [19]  603 	ld	h,-8 (ix)
   4502 7E            [ 7]  604 	ld	a,(hl)
   4503 DD 77 FF      [19]  605 	ld	-1 (ix), a
   4506 DD 77 FD      [19]  606 	ld	-3 (ix),a
   4509 DD 36 FE 00   [19]  607 	ld	-2 (ix),#0x00
   450D DD 7E FD      [19]  608 	ld	a,-3 (ix)
   4510 DD 77 FE      [19]  609 	ld	-2 (ix),a
   4513 DD 36 FD 00   [19]  610 	ld	-3 (ix),#0x00
                            611 ;src/Enemigo.c:82: if(posx%16==0){
   4517 DD 7E F2      [19]  612 	ld	a,-14 (ix)
   451A DD B6 F1      [19]  613 	or	a,-15 (ix)
   451D 20 3C         [12]  614 	jr	NZ,00115$
                            615 ;src/Enemigo.c:84: return mapas[p->salaActual].posiciones[casX-1][casY];
   451F DD 7E FD      [19]  616 	ld	a,-3 (ix)
   4522 C6 7D         [ 7]  617 	add	a, #<(_mapas)
   4524 DD 77 F9      [19]  618 	ld	-7 (ix),a
   4527 DD 7E FE      [19]  619 	ld	a,-2 (ix)
   452A CE 50         [ 7]  620 	adc	a, #>(_mapas)
   452C DD 77 FA      [19]  621 	ld	-6 (ix),a
   452F DD 7E F9      [19]  622 	ld	a,-7 (ix)
   4532 DD 86 FB      [19]  623 	add	a, -5 (ix)
   4535 DD 77 F9      [19]  624 	ld	-7 (ix),a
   4538 DD 7E FA      [19]  625 	ld	a,-6 (ix)
   453B CE 00         [ 7]  626 	adc	a, #0x00
   453D DD 77 FA      [19]  627 	ld	-6 (ix),a
   4540 DD 7E F9      [19]  628 	ld	a,-7 (ix)
   4543 DD 86 F0      [19]  629 	add	a, -16 (ix)
   4546 DD 77 F9      [19]  630 	ld	-7 (ix),a
   4549 DD 7E FA      [19]  631 	ld	a,-6 (ix)
   454C CE 00         [ 7]  632 	adc	a, #0x00
   454E DD 77 FA      [19]  633 	ld	-6 (ix),a
   4551 DD 6E F9      [19]  634 	ld	l,-7 (ix)
   4554 DD 66 FA      [19]  635 	ld	h,-6 (ix)
   4557 6E            [ 7]  636 	ld	l,(hl)
   4558 C3 43 46      [10]  637 	jp	00141$
   455B                     638 00115$:
                            639 ;src/Enemigo.c:86: else if(mapas[p->salaActual].posiciones[casX-1][casY]!=0 || mapas[p->salaActual].posiciones[casX-1][casY+1]!=0)
   455B 21 7D 50      [10]  640 	ld	hl,#_mapas+0
   455E DD 5E FD      [19]  641 	ld	e,-3 (ix)
   4561 DD 56 FE      [19]  642 	ld	d,-2 (ix)
   4564 19            [11]  643 	add	hl,de
   4565 7D            [ 4]  644 	ld	a,l
   4566 DD 86 FB      [19]  645 	add	a, -5 (ix)
   4569 5F            [ 4]  646 	ld	e,a
   456A 7C            [ 4]  647 	ld	a,h
   456B CE 00         [ 7]  648 	adc	a, #0x00
   456D 57            [ 4]  649 	ld	d,a
   456E DD 6E F0      [19]  650 	ld	l,-16 (ix)
   4571 26 00         [ 7]  651 	ld	h,#0x00
   4573 19            [11]  652 	add	hl,de
   4574 7E            [ 7]  653 	ld	a,(hl)
   4575 B7            [ 4]  654 	or	a, a
   4576 20 0A         [12]  655 	jr	NZ,00111$
   4578 DD 6E F4      [19]  656 	ld	l,-12 (ix)
   457B 26 00         [ 7]  657 	ld	h,#0x00
   457D 19            [11]  658 	add	hl,de
   457E 7E            [ 7]  659 	ld	a,(hl)
   457F B7            [ 4]  660 	or	a, a
   4580 28 05         [12]  661 	jr	Z,00118$
   4582                     662 00111$:
                            663 ;src/Enemigo.c:87: return 1;
   4582 2E 01         [ 7]  664 	ld	l,#0x01
   4584 C3 43 46      [10]  665 	jp	00141$
   4587                     666 00118$:
                            667 ;src/Enemigo.c:89: return 0;
   4587 2E 00         [ 7]  668 	ld	l,#0x00
   4589 C3 43 46      [10]  669 	jp	00141$
   458C                     670 00120$:
                            671 ;src/Enemigo.c:91: if(e->direccion==2){
   458C DD 7E F3      [19]  672 	ld	a,-13 (ix)
   458F D6 02         [ 7]  673 	sub	a, #0x02
   4591 20 54         [12]  674 	jr	NZ,00130$
                            675 ;src/Enemigo.c:92: if(posx%16==0){
   4593 DD 7E F2      [19]  676 	ld	a,-14 (ix)
   4596 DD B6 F1      [19]  677 	or	a,-15 (ix)
   4599 20 48         [12]  678 	jr	NZ,00128$
                            679 ;src/Enemigo.c:95: return mapas[p->salaActual].posiciones[casX][casY-1];
   459B DD 5E F0      [19]  680 	ld	e,-16 (ix)
   459E 1D            [ 4]  681 	dec	e
                            682 ;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
   459F DD 6E F7      [19]  683 	ld	l,-9 (ix)
   45A2 DD 66 F8      [19]  684 	ld	h,-8 (ix)
   45A5 66            [ 7]  685 	ld	h, (hl)
   45A6 2E 00         [ 7]  686 	ld	l,#0x00
                            687 ;src/Enemigo.c:93: if(posy%16==0){
   45A8 DD 7E F5      [19]  688 	ld	a,-11 (ix)
   45AB B7            [ 4]  689 	or	a, a
   45AC 20 11         [12]  690 	jr	NZ,00125$
                            691 ;src/Enemigo.c:95: return mapas[p->salaActual].posiciones[casX][casY-1];
   45AE 01 7D 50      [10]  692 	ld	bc,#_mapas+0
   45B1 09            [11]  693 	add	hl,bc
   45B2 DD 4E FC      [19]  694 	ld	c,-4 (ix)
   45B5 06 00         [ 7]  695 	ld	b,#0x00
   45B7 09            [11]  696 	add	hl,bc
   45B8 16 00         [ 7]  697 	ld	d,#0x00
   45BA 19            [11]  698 	add	hl,de
   45BB 6E            [ 7]  699 	ld	l,(hl)
   45BC C3 43 46      [10]  700 	jp	00141$
   45BF                     701 00125$:
                            702 ;src/Enemigo.c:98: else if(mapas[p->salaActual].posiciones[casX][casY-1]!=0 || mapas[p->salaActual].posiciones[casX+1][casY-1]!=0)
   45BF 01 7D 50      [10]  703 	ld	bc,#_mapas+0
   45C2 09            [11]  704 	add	hl,bc
   45C3 4D            [ 4]  705 	ld	c,l
   45C4 44            [ 4]  706 	ld	b,h
   45C5 DD 6E FC      [19]  707 	ld	l,-4 (ix)
   45C8 26 00         [ 7]  708 	ld	h,#0x00
   45CA 09            [11]  709 	add	hl,bc
   45CB 16 00         [ 7]  710 	ld	d,#0x00
   45CD 19            [11]  711 	add	hl, de
   45CE 7E            [ 7]  712 	ld	a,(hl)
   45CF B7            [ 4]  713 	or	a, a
   45D0 20 0D         [12]  714 	jr	NZ,00121$
   45D2 DD 6E F6      [19]  715 	ld	l,-10 (ix)
   45D5 26 00         [ 7]  716 	ld	h,#0x00
   45D7 09            [11]  717 	add	hl,bc
   45D8 16 00         [ 7]  718 	ld	d,#0x00
   45DA 19            [11]  719 	add	hl,de
   45DB 7E            [ 7]  720 	ld	a,(hl)
   45DC B7            [ 4]  721 	or	a, a
   45DD 28 04         [12]  722 	jr	Z,00128$
   45DF                     723 00121$:
                            724 ;src/Enemigo.c:99: return 1;
   45DF 2E 01         [ 7]  725 	ld	l,#0x01
   45E1 18 60         [12]  726 	jr	00141$
   45E3                     727 00128$:
                            728 ;src/Enemigo.c:101: return 0;
   45E3 2E 00         [ 7]  729 	ld	l,#0x00
   45E5 18 5C         [12]  730 	jr	00141$
   45E7                     731 00130$:
                            732 ;src/Enemigo.c:103: if(e->direccion==3){
   45E7 DD 7E F3      [19]  733 	ld	a,-13 (ix)
   45EA D6 03         [ 7]  734 	sub	a, #0x03
   45EC 20 53         [12]  735 	jr	NZ,00140$
                            736 ;src/Enemigo.c:104: if(posy%16==0){
   45EE DD 7E F5      [19]  737 	ld	a,-11 (ix)
   45F1 B7            [ 4]  738 	or	a, a
   45F2 20 49         [12]  739 	jr	NZ,00138$
                            740 ;src/Enemigo.c:72: return mapas[p->salaActual].posiciones[casX][casY+1];
   45F4 DD 6E F7      [19]  741 	ld	l,-9 (ix)
   45F7 DD 66 F8      [19]  742 	ld	h,-8 (ix)
   45FA 66            [ 7]  743 	ld	h, (hl)
   45FB 2E 00         [ 7]  744 	ld	l,#0x00
                            745 ;src/Enemigo.c:105: if(posx%16==0){
   45FD DD 7E F2      [19]  746 	ld	a,-14 (ix)
   4600 DD B6 F1      [19]  747 	or	a,-15 (ix)
   4603 20 13         [12]  748 	jr	NZ,00135$
                            749 ;src/Enemigo.c:107: return mapas[p->salaActual].posiciones[casX+1][casY];
   4605 11 7D 50      [10]  750 	ld	de,#_mapas+0
   4608 19            [11]  751 	add	hl,de
   4609 DD 5E F6      [19]  752 	ld	e,-10 (ix)
   460C 16 00         [ 7]  753 	ld	d,#0x00
   460E 19            [11]  754 	add	hl,de
   460F DD 5E F0      [19]  755 	ld	e,-16 (ix)
   4612 16 00         [ 7]  756 	ld	d,#0x00
   4614 19            [11]  757 	add	hl,de
   4615 6E            [ 7]  758 	ld	l,(hl)
   4616 18 2B         [12]  759 	jr	00141$
   4618                     760 00135$:
                            761 ;src/Enemigo.c:109: else if(mapas[p->salaActual].posiciones[casX+1][casY]!=0 || mapas[p->salaActual].posiciones[casX+1][casY+1]!=0)
   4618 11 7D 50      [10]  762 	ld	de,#_mapas+0
   461B 19            [11]  763 	add	hl,de
   461C DD 7E F6      [19]  764 	ld	a,-10 (ix)
   461F 85            [ 4]  765 	add	a, l
   4620 5F            [ 4]  766 	ld	e,a
   4621 3E 00         [ 7]  767 	ld	a,#0x00
   4623 8C            [ 4]  768 	adc	a, h
   4624 57            [ 4]  769 	ld	d,a
   4625 DD 6E F0      [19]  770 	ld	l,-16 (ix)
   4628 26 00         [ 7]  771 	ld	h,#0x00
   462A 19            [11]  772 	add	hl,de
   462B 7E            [ 7]  773 	ld	a,(hl)
   462C B7            [ 4]  774 	or	a, a
   462D 20 0A         [12]  775 	jr	NZ,00131$
   462F DD 6E F4      [19]  776 	ld	l,-12 (ix)
   4632 26 00         [ 7]  777 	ld	h,#0x00
   4634 19            [11]  778 	add	hl,de
   4635 7E            [ 7]  779 	ld	a,(hl)
   4636 B7            [ 4]  780 	or	a, a
   4637 28 04         [12]  781 	jr	Z,00138$
   4639                     782 00131$:
                            783 ;src/Enemigo.c:110: return 1;
   4639 2E 01         [ 7]  784 	ld	l,#0x01
   463B 18 06         [12]  785 	jr	00141$
   463D                     786 00138$:
                            787 ;src/Enemigo.c:112: return 0;
   463D 2E 00         [ 7]  788 	ld	l,#0x00
   463F 18 02         [12]  789 	jr	00141$
   4641                     790 00140$:
                            791 ;src/Enemigo.c:114: return 7;
   4641 2E 07         [ 7]  792 	ld	l,#0x07
   4643                     793 00141$:
   4643 DD F9         [10]  794 	ld	sp, ix
   4645 DD E1         [14]  795 	pop	ix
   4647 C9            [10]  796 	ret
                            797 ;src/Enemigo.c:118: u8 Vision(enemigo *e, personaje *p){
                            798 ;	---------------------------------
                            799 ; Function Vision
                            800 ; ---------------------------------
   4648                     801 _Vision::
   4648 DD E5         [15]  802 	push	ix
   464A DD 21 00 00   [14]  803 	ld	ix,#0
   464E DD 39         [15]  804 	add	ix,sp
   4650 21 EF FF      [10]  805 	ld	hl,#-17
   4653 39            [11]  806 	add	hl,sp
   4654 F9            [ 6]  807 	ld	sp,hl
                            808 ;src/Enemigo.c:120: p1=0;
   4655 0E 00         [ 7]  809 	ld	c,#0x00
                            810 ;src/Enemigo.c:121: p11=0;
   4657 1E 00         [ 7]  811 	ld	e,#0x00
                            812 ;src/Enemigo.c:122: p12=0;
   4659 DD 36 EF 00   [19]  813 	ld	-17 (ix),#0x00
                            814 ;src/Enemigo.c:123: p2=0;
   465D DD 36 F2 00   [19]  815 	ld	-14 (ix),#0x00
                            816 ;src/Enemigo.c:124: p21=0;
   4661 DD 36 F1 00   [19]  817 	ld	-15 (ix),#0x00
                            818 ;src/Enemigo.c:125: p22=0;
   4665 DD 36 F0 00   [19]  819 	ld	-16 (ix),#0x00
                            820 ;src/Enemigo.c:126: if(e->direccion==0){
   4669 DD 7E 04      [19]  821 	ld	a,4 (ix)
   466C DD 77 F3      [19]  822 	ld	-13 (ix),a
   466F DD 7E 05      [19]  823 	ld	a,5 (ix)
   4672 DD 77 F4      [19]  824 	ld	-12 (ix),a
   4675 E5            [11]  825 	push	hl
   4676 DD 6E F3      [19]  826 	ld	l,-13 (ix)
   4679 DD 66 F4      [19]  827 	ld	h,-12 (ix)
   467C E5            [11]  828 	push	hl
   467D FD E1         [14]  829 	pop	iy
   467F E1            [10]  830 	pop	hl
   4680 FD 7E 08      [19]  831 	ld	a,8 (iy)
   4683 DD 77 FF      [19]  832 	ld	-1 (ix),a
                            833 ;src/Enemigo.c:127: if(p->x>=((e->x)+16))
   4686 DD 7E 06      [19]  834 	ld	a,6 (ix)
   4689 DD 77 FD      [19]  835 	ld	-3 (ix),a
   468C DD 7E 07      [19]  836 	ld	a,7 (ix)
   468F DD 77 FE      [19]  837 	ld	-2 (ix),a
                            838 ;src/Enemigo.c:133: if(p->y>=((e->y)-16))
   4692 DD 7E F3      [19]  839 	ld	a,-13 (ix)
   4695 C6 02         [ 7]  840 	add	a, #0x02
   4697 DD 77 FB      [19]  841 	ld	-5 (ix),a
   469A DD 7E F4      [19]  842 	ld	a,-12 (ix)
   469D CE 00         [ 7]  843 	adc	a, #0x00
   469F DD 77 FC      [19]  844 	ld	-4 (ix),a
   46A2 DD 7E FD      [19]  845 	ld	a,-3 (ix)
   46A5 C6 02         [ 7]  846 	add	a, #0x02
   46A7 DD 77 F9      [19]  847 	ld	-7 (ix),a
   46AA DD 7E FE      [19]  848 	ld	a,-2 (ix)
   46AD CE 00         [ 7]  849 	adc	a, #0x00
   46AF DD 77 FA      [19]  850 	ld	-6 (ix),a
                            851 ;src/Enemigo.c:126: if(e->direccion==0){
   46B2 DD 7E FF      [19]  852 	ld	a,-1 (ix)
   46B5 B7            [ 4]  853 	or	a, a
   46B6 C2 88 47      [10]  854 	jp	NZ,00119$
                            855 ;src/Enemigo.c:127: if(p->x>=((e->x)+16))
   46B9 DD 6E FD      [19]  856 	ld	l,-3 (ix)
   46BC DD 66 FE      [19]  857 	ld	h,-2 (ix)
   46BF 7E            [ 7]  858 	ld	a,(hl)
   46C0 DD 77 F7      [19]  859 	ld	-9 (ix),a
   46C3 23            [ 6]  860 	inc	hl
   46C4 7E            [ 7]  861 	ld	a,(hl)
   46C5 DD 77 F8      [19]  862 	ld	-8 (ix),a
   46C8 DD 6E F3      [19]  863 	ld	l,-13 (ix)
   46CB DD 66 F4      [19]  864 	ld	h,-12 (ix)
   46CE 7E            [ 7]  865 	ld	a,(hl)
   46CF DD 77 F5      [19]  866 	ld	-11 (ix),a
   46D2 23            [ 6]  867 	inc	hl
   46D3 7E            [ 7]  868 	ld	a,(hl)
   46D4 DD 77 F6      [19]  869 	ld	-10 (ix),a
   46D7 DD 7E F5      [19]  870 	ld	a,-11 (ix)
   46DA C6 10         [ 7]  871 	add	a, #0x10
   46DC 67            [ 4]  872 	ld	h,a
   46DD DD 7E F6      [19]  873 	ld	a,-10 (ix)
   46E0 CE 00         [ 7]  874 	adc	a, #0x00
   46E2 6F            [ 4]  875 	ld	l,a
   46E3 DD 7E F7      [19]  876 	ld	a,-9 (ix)
   46E6 94            [ 4]  877 	sub	a, h
   46E7 DD 7E F8      [19]  878 	ld	a,-8 (ix)
   46EA 9D            [ 4]  879 	sbc	a, l
   46EB E2 F0 46      [10]  880 	jp	PO, 00355$
   46EE EE 80         [ 7]  881 	xor	a, #0x80
   46F0                     882 00355$:
   46F0 FA F5 46      [10]  883 	jp	M,00102$
                            884 ;src/Enemigo.c:128: p11=1;
   46F3 1E 01         [ 7]  885 	ld	e,#0x01
   46F5                     886 00102$:
                            887 ;src/Enemigo.c:129: if(p->x<=((e->x)+16*3))
   46F5 DD 7E F5      [19]  888 	ld	a,-11 (ix)
   46F8 C6 30         [ 7]  889 	add	a, #0x30
   46FA 67            [ 4]  890 	ld	h,a
   46FB DD 7E F6      [19]  891 	ld	a,-10 (ix)
   46FE CE 00         [ 7]  892 	adc	a, #0x00
   4700 6F            [ 4]  893 	ld	l,a
   4701 7C            [ 4]  894 	ld	a,h
   4702 DD 96 F7      [19]  895 	sub	a, -9 (ix)
   4705 7D            [ 4]  896 	ld	a,l
   4706 DD 9E F8      [19]  897 	sbc	a, -8 (ix)
   4709 E2 0E 47      [10]  898 	jp	PO, 00356$
   470C EE 80         [ 7]  899 	xor	a, #0x80
   470E                     900 00356$:
   470E FA 15 47      [10]  901 	jp	M,00104$
                            902 ;src/Enemigo.c:130: p12=1;
   4711 DD 36 EF 01   [19]  903 	ld	-17 (ix),#0x01
   4715                     904 00104$:
                            905 ;src/Enemigo.c:131: if(p11==1&&p12==1)
   4715 7B            [ 4]  906 	ld	a,e
   4716 3D            [ 4]  907 	dec	a
   4717 20 08         [12]  908 	jr	NZ,00106$
   4719 DD 7E EF      [19]  909 	ld	a,-17 (ix)
   471C 3D            [ 4]  910 	dec	a
   471D 20 02         [12]  911 	jr	NZ,00106$
                            912 ;src/Enemigo.c:132: p1=1;
   471F 0E 01         [ 7]  913 	ld	c,#0x01
   4721                     914 00106$:
                            915 ;src/Enemigo.c:133: if(p->y>=((e->y)-16))
   4721 DD 6E F9      [19]  916 	ld	l,-7 (ix)
   4724 DD 66 FA      [19]  917 	ld	h,-6 (ix)
   4727 46            [ 7]  918 	ld	b,(hl)
   4728 DD 6E FB      [19]  919 	ld	l,-5 (ix)
   472B DD 66 FC      [19]  920 	ld	h,-4 (ix)
   472E 6E            [ 7]  921 	ld	l,(hl)
   472F 26 00         [ 7]  922 	ld	h,#0x00
   4731 7D            [ 4]  923 	ld	a,l
   4732 C6 F0         [ 7]  924 	add	a,#0xF0
   4734 DD 77 F5      [19]  925 	ld	-11 (ix),a
   4737 7C            [ 4]  926 	ld	a,h
   4738 CE FF         [ 7]  927 	adc	a,#0xFF
   473A DD 77 F6      [19]  928 	ld	-10 (ix),a
   473D 16 00         [ 7]  929 	ld	d,#0x00
   473F 78            [ 4]  930 	ld	a,b
   4740 DD 96 F5      [19]  931 	sub	a, -11 (ix)
   4743 7A            [ 4]  932 	ld	a,d
   4744 DD 9E F6      [19]  933 	sbc	a, -10 (ix)
   4747 E2 4C 47      [10]  934 	jp	PO, 00361$
   474A EE 80         [ 7]  935 	xor	a, #0x80
   474C                     936 00361$:
   474C FA 53 47      [10]  937 	jp	M,00109$
                            938 ;src/Enemigo.c:134: p21=1;
   474F DD 36 F1 01   [19]  939 	ld	-15 (ix),#0x01
   4753                     940 00109$:
                            941 ;src/Enemigo.c:135: if(p->y<=((e->y)+16))
   4753 D5            [11]  942 	push	de
   4754 11 10 00      [10]  943 	ld	de,#0x0010
   4757 19            [11]  944 	add	hl, de
   4758 D1            [10]  945 	pop	de
   4759 7D            [ 4]  946 	ld	a,l
   475A 90            [ 4]  947 	sub	a, b
   475B 7C            [ 4]  948 	ld	a,h
   475C 9A            [ 4]  949 	sbc	a, d
   475D E2 62 47      [10]  950 	jp	PO, 00362$
   4760 EE 80         [ 7]  951 	xor	a, #0x80
   4762                     952 00362$:
   4762 FA 69 47      [10]  953 	jp	M,00111$
                            954 ;src/Enemigo.c:136: p22=1;    
   4765 DD 36 F0 01   [19]  955 	ld	-16 (ix),#0x01
   4769                     956 00111$:
                            957 ;src/Enemigo.c:137: if(p21==1&&p22==1)
   4769 DD 7E F1      [19]  958 	ld	a,-15 (ix)
   476C 3D            [ 4]  959 	dec	a
   476D 20 0A         [12]  960 	jr	NZ,00113$
   476F DD 7E F0      [19]  961 	ld	a,-16 (ix)
   4772 3D            [ 4]  962 	dec	a
   4773 20 04         [12]  963 	jr	NZ,00113$
                            964 ;src/Enemigo.c:138: p2=1;
   4775 DD 36 F2 01   [19]  965 	ld	-14 (ix),#0x01
   4779                     966 00113$:
                            967 ;src/Enemigo.c:139: if(p1==1&&p2==1)
   4779 79            [ 4]  968 	ld	a,c
   477A 3D            [ 4]  969 	dec	a
   477B 20 0B         [12]  970 	jr	NZ,00119$
   477D DD 7E F2      [19]  971 	ld	a,-14 (ix)
   4780 3D            [ 4]  972 	dec	a
   4781 20 05         [12]  973 	jr	NZ,00119$
                            974 ;src/Enemigo.c:140: return 1;
   4783 2E 01         [ 7]  975 	ld	l,#0x01
   4785 C3 CC 49      [10]  976 	jp	00177$
   4788                     977 00119$:
                            978 ;src/Enemigo.c:142: if(e->direccion==1){
   4788 DD 7E FF      [19]  979 	ld	a,-1 (ix)
   478B 3D            [ 4]  980 	dec	a
   478C C2 4A 48      [10]  981 	jp	NZ,00138$
                            982 ;src/Enemigo.c:143: if(p->x>=((e->x)-16))
   478F DD 6E FD      [19]  983 	ld	l,-3 (ix)
   4792 DD 66 FE      [19]  984 	ld	h,-2 (ix)
   4795 46            [ 7]  985 	ld	b,(hl)
   4796 23            [ 6]  986 	inc	hl
   4797 56            [ 7]  987 	ld	d,(hl)
   4798 DD 6E F3      [19]  988 	ld	l,-13 (ix)
   479B DD 66 F4      [19]  989 	ld	h,-12 (ix)
   479E 7E            [ 7]  990 	ld	a, (hl)
   479F 23            [ 6]  991 	inc	hl
   47A0 66            [ 7]  992 	ld	h,(hl)
   47A1 6F            [ 4]  993 	ld	l,a
   47A2 C6 F0         [ 7]  994 	add	a,#0xF0
   47A4 DD 77 F5      [19]  995 	ld	-11 (ix),a
   47A7 7C            [ 4]  996 	ld	a,h
   47A8 CE FF         [ 7]  997 	adc	a,#0xFF
   47AA DD 77 F6      [19]  998 	ld	-10 (ix),a
   47AD 78            [ 4]  999 	ld	a,b
   47AE DD 96 F5      [19] 1000 	sub	a, -11 (ix)
   47B1 7A            [ 4] 1001 	ld	a,d
   47B2 DD 9E F6      [19] 1002 	sbc	a, -10 (ix)
   47B5 E2 BA 47      [10] 1003 	jp	PO, 00373$
   47B8 EE 80         [ 7] 1004 	xor	a, #0x80
   47BA                    1005 00373$:
   47BA FA BF 47      [10] 1006 	jp	M,00121$
                           1007 ;src/Enemigo.c:144: p11=1;
   47BD 1E 01         [ 7] 1008 	ld	e,#0x01
   47BF                    1009 00121$:
                           1010 ;src/Enemigo.c:145: if(p->x<=((e->x)+16))
   47BF D5            [11] 1011 	push	de
   47C0 11 10 00      [10] 1012 	ld	de,#0x0010
   47C3 19            [11] 1013 	add	hl, de
   47C4 D1            [10] 1014 	pop	de
   47C5 7D            [ 4] 1015 	ld	a,l
   47C6 90            [ 4] 1016 	sub	a, b
   47C7 7C            [ 4] 1017 	ld	a,h
   47C8 9A            [ 4] 1018 	sbc	a, d
   47C9 E2 CE 47      [10] 1019 	jp	PO, 00374$
   47CC EE 80         [ 7] 1020 	xor	a, #0x80
   47CE                    1021 00374$:
   47CE FA D5 47      [10] 1022 	jp	M,00123$
                           1023 ;src/Enemigo.c:146: p12=1;
   47D1 DD 36 EF 01   [19] 1024 	ld	-17 (ix),#0x01
   47D5                    1025 00123$:
                           1026 ;src/Enemigo.c:147: if(p11==1&&p12==1)
   47D5 7B            [ 4] 1027 	ld	a,e
   47D6 3D            [ 4] 1028 	dec	a
   47D7 20 08         [12] 1029 	jr	NZ,00125$
   47D9 DD 7E EF      [19] 1030 	ld	a,-17 (ix)
   47DC 3D            [ 4] 1031 	dec	a
   47DD 20 02         [12] 1032 	jr	NZ,00125$
                           1033 ;src/Enemigo.c:148: p1=1;
   47DF 0E 01         [ 7] 1034 	ld	c,#0x01
   47E1                    1035 00125$:
                           1036 ;src/Enemigo.c:149: if(p->y<=((e->y)-16))
   47E1 DD 6E F9      [19] 1037 	ld	l,-7 (ix)
   47E4 DD 66 FA      [19] 1038 	ld	h,-6 (ix)
   47E7 46            [ 7] 1039 	ld	b,(hl)
   47E8 DD 6E FB      [19] 1040 	ld	l,-5 (ix)
   47EB DD 66 FC      [19] 1041 	ld	h,-4 (ix)
   47EE 6E            [ 7] 1042 	ld	l,(hl)
   47EF 26 00         [ 7] 1043 	ld	h,#0x00
   47F1 7D            [ 4] 1044 	ld	a,l
   47F2 C6 F0         [ 7] 1045 	add	a,#0xF0
   47F4 DD 77 F5      [19] 1046 	ld	-11 (ix),a
   47F7 7C            [ 4] 1047 	ld	a,h
   47F8 CE FF         [ 7] 1048 	adc	a,#0xFF
   47FA DD 77 F6      [19] 1049 	ld	-10 (ix),a
   47FD 16 00         [ 7] 1050 	ld	d,#0x00
   47FF DD 7E F5      [19] 1051 	ld	a,-11 (ix)
   4802 90            [ 4] 1052 	sub	a, b
   4803 DD 7E F6      [19] 1053 	ld	a,-10 (ix)
   4806 9A            [ 4] 1054 	sbc	a, d
   4807 E2 0C 48      [10] 1055 	jp	PO, 00379$
   480A EE 80         [ 7] 1056 	xor	a, #0x80
   480C                    1057 00379$:
   480C FA 13 48      [10] 1058 	jp	M,00128$
                           1059 ;src/Enemigo.c:150: p21=1;
   480F DD 36 F1 01   [19] 1060 	ld	-15 (ix),#0x01
   4813                    1061 00128$:
                           1062 ;src/Enemigo.c:151: if(p->y>=((e->y)-(16*3)))
   4813 7D            [ 4] 1063 	ld	a,l
   4814 C6 D0         [ 7] 1064 	add	a,#0xD0
   4816 6F            [ 4] 1065 	ld	l,a
   4817 7C            [ 4] 1066 	ld	a,h
   4818 CE FF         [ 7] 1067 	adc	a,#0xFF
   481A 67            [ 4] 1068 	ld	h,a
   481B 78            [ 4] 1069 	ld	a,b
   481C 95            [ 4] 1070 	sub	a, l
   481D 7A            [ 4] 1071 	ld	a,d
   481E 9C            [ 4] 1072 	sbc	a, h
   481F E2 24 48      [10] 1073 	jp	PO, 00380$
   4822 EE 80         [ 7] 1074 	xor	a, #0x80
   4824                    1075 00380$:
   4824 FA 2B 48      [10] 1076 	jp	M,00130$
                           1077 ;src/Enemigo.c:152: p22=1;    
   4827 DD 36 F0 01   [19] 1078 	ld	-16 (ix),#0x01
   482B                    1079 00130$:
                           1080 ;src/Enemigo.c:153: if(p21==1&&p22==1)
   482B DD 7E F1      [19] 1081 	ld	a,-15 (ix)
   482E 3D            [ 4] 1082 	dec	a
   482F 20 0A         [12] 1083 	jr	NZ,00132$
   4831 DD 7E F0      [19] 1084 	ld	a,-16 (ix)
   4834 3D            [ 4] 1085 	dec	a
   4835 20 04         [12] 1086 	jr	NZ,00132$
                           1087 ;src/Enemigo.c:154: p2=1;
   4837 DD 36 F2 01   [19] 1088 	ld	-14 (ix),#0x01
   483B                    1089 00132$:
                           1090 ;src/Enemigo.c:155: if(p1==1&&p2==1)
   483B 79            [ 4] 1091 	ld	a,c
   483C 3D            [ 4] 1092 	dec	a
   483D 20 0B         [12] 1093 	jr	NZ,00138$
   483F DD 7E F2      [19] 1094 	ld	a,-14 (ix)
   4842 3D            [ 4] 1095 	dec	a
   4843 20 05         [12] 1096 	jr	NZ,00138$
                           1097 ;src/Enemigo.c:156: return 1;
   4845 2E 01         [ 7] 1098 	ld	l,#0x01
   4847 C3 CC 49      [10] 1099 	jp	00177$
   484A                    1100 00138$:
                           1101 ;src/Enemigo.c:158: if(e->direccion==2){
   484A DD 7E FF      [19] 1102 	ld	a,-1 (ix)
   484D D6 02         [ 7] 1103 	sub	a, #0x02
   484F C2 0D 49      [10] 1104 	jp	NZ,00157$
                           1105 ;src/Enemigo.c:159: if(p->x<=((e->x)-16))
   4852 DD 6E FD      [19] 1106 	ld	l,-3 (ix)
   4855 DD 66 FE      [19] 1107 	ld	h,-2 (ix)
   4858 46            [ 7] 1108 	ld	b,(hl)
   4859 23            [ 6] 1109 	inc	hl
   485A 56            [ 7] 1110 	ld	d,(hl)
   485B DD 6E F3      [19] 1111 	ld	l,-13 (ix)
   485E DD 66 F4      [19] 1112 	ld	h,-12 (ix)
   4861 7E            [ 7] 1113 	ld	a, (hl)
   4862 23            [ 6] 1114 	inc	hl
   4863 6E            [ 7] 1115 	ld	l,(hl)
   4864 67            [ 4] 1116 	ld	h,a
   4865 C6 F0         [ 7] 1117 	add	a,#0xF0
   4867 DD 77 F5      [19] 1118 	ld	-11 (ix),a
   486A 7D            [ 4] 1119 	ld	a,l
   486B CE FF         [ 7] 1120 	adc	a,#0xFF
   486D DD 77 F6      [19] 1121 	ld	-10 (ix),a
   4870 DD 7E F5      [19] 1122 	ld	a,-11 (ix)
   4873 90            [ 4] 1123 	sub	a, b
   4874 DD 7E F6      [19] 1124 	ld	a,-10 (ix)
   4877 9A            [ 4] 1125 	sbc	a, d
   4878 E2 7D 48      [10] 1126 	jp	PO, 00391$
   487B EE 80         [ 7] 1127 	xor	a, #0x80
   487D                    1128 00391$:
   487D FA 82 48      [10] 1129 	jp	M,00140$
                           1130 ;src/Enemigo.c:160: p11=1;
   4880 1E 01         [ 7] 1131 	ld	e,#0x01
   4882                    1132 00140$:
                           1133 ;src/Enemigo.c:161: if(p->x>=((e->x)-16*3))
   4882 7C            [ 4] 1134 	ld	a,h
   4883 C6 D0         [ 7] 1135 	add	a,#0xD0
   4885 67            [ 4] 1136 	ld	h,a
   4886 7D            [ 4] 1137 	ld	a,l
   4887 CE FF         [ 7] 1138 	adc	a,#0xFF
   4889 6F            [ 4] 1139 	ld	l,a
   488A 78            [ 4] 1140 	ld	a,b
   488B 94            [ 4] 1141 	sub	a, h
   488C 7A            [ 4] 1142 	ld	a,d
   488D 9D            [ 4] 1143 	sbc	a, l
   488E E2 93 48      [10] 1144 	jp	PO, 00392$
   4891 EE 80         [ 7] 1145 	xor	a, #0x80
   4893                    1146 00392$:
   4893 FA 9A 48      [10] 1147 	jp	M,00142$
                           1148 ;src/Enemigo.c:162: p12=1;
   4896 DD 36 EF 01   [19] 1149 	ld	-17 (ix),#0x01
   489A                    1150 00142$:
                           1151 ;src/Enemigo.c:163: if(p11==1&&p12==1)
   489A 7B            [ 4] 1152 	ld	a,e
   489B 3D            [ 4] 1153 	dec	a
   489C 20 08         [12] 1154 	jr	NZ,00144$
   489E DD 7E EF      [19] 1155 	ld	a,-17 (ix)
   48A1 3D            [ 4] 1156 	dec	a
   48A2 20 02         [12] 1157 	jr	NZ,00144$
                           1158 ;src/Enemigo.c:164: p1=1;
   48A4 0E 01         [ 7] 1159 	ld	c,#0x01
   48A6                    1160 00144$:
                           1161 ;src/Enemigo.c:165: if(p->y>=((e->y)-16))
   48A6 DD 6E F9      [19] 1162 	ld	l,-7 (ix)
   48A9 DD 66 FA      [19] 1163 	ld	h,-6 (ix)
   48AC 56            [ 7] 1164 	ld	d,(hl)
   48AD DD 6E FB      [19] 1165 	ld	l,-5 (ix)
   48B0 DD 66 FC      [19] 1166 	ld	h,-4 (ix)
   48B3 6E            [ 7] 1167 	ld	l,(hl)
   48B4 26 00         [ 7] 1168 	ld	h,#0x00
   48B6 7D            [ 4] 1169 	ld	a,l
   48B7 C6 F0         [ 7] 1170 	add	a,#0xF0
   48B9 DD 77 F5      [19] 1171 	ld	-11 (ix),a
   48BC 7C            [ 4] 1172 	ld	a,h
   48BD CE FF         [ 7] 1173 	adc	a,#0xFF
   48BF DD 77 F6      [19] 1174 	ld	-10 (ix),a
   48C2 06 00         [ 7] 1175 	ld	b,#0x00
   48C4 7A            [ 4] 1176 	ld	a,d
   48C5 DD 96 F5      [19] 1177 	sub	a, -11 (ix)
   48C8 78            [ 4] 1178 	ld	a,b
   48C9 DD 9E F6      [19] 1179 	sbc	a, -10 (ix)
   48CC E2 D1 48      [10] 1180 	jp	PO, 00397$
   48CF EE 80         [ 7] 1181 	xor	a, #0x80
   48D1                    1182 00397$:
   48D1 FA D8 48      [10] 1183 	jp	M,00147$
                           1184 ;src/Enemigo.c:166: p21=1;
   48D4 DD 36 F1 01   [19] 1185 	ld	-15 (ix),#0x01
   48D8                    1186 00147$:
                           1187 ;src/Enemigo.c:167: if(p->y<=((e->y)+16))
   48D8 D5            [11] 1188 	push	de
   48D9 11 10 00      [10] 1189 	ld	de,#0x0010
   48DC 19            [11] 1190 	add	hl, de
   48DD D1            [10] 1191 	pop	de
   48DE 7D            [ 4] 1192 	ld	a,l
   48DF 92            [ 4] 1193 	sub	a, d
   48E0 7C            [ 4] 1194 	ld	a,h
   48E1 98            [ 4] 1195 	sbc	a, b
   48E2 E2 E7 48      [10] 1196 	jp	PO, 00398$
   48E5 EE 80         [ 7] 1197 	xor	a, #0x80
   48E7                    1198 00398$:
   48E7 FA EE 48      [10] 1199 	jp	M,00149$
                           1200 ;src/Enemigo.c:168: p22=1;    
   48EA DD 36 F0 01   [19] 1201 	ld	-16 (ix),#0x01
   48EE                    1202 00149$:
                           1203 ;src/Enemigo.c:169: if(p21==1&&p22==1)
   48EE DD 7E F1      [19] 1204 	ld	a,-15 (ix)
   48F1 3D            [ 4] 1205 	dec	a
   48F2 20 0A         [12] 1206 	jr	NZ,00151$
   48F4 DD 7E F0      [19] 1207 	ld	a,-16 (ix)
   48F7 3D            [ 4] 1208 	dec	a
   48F8 20 04         [12] 1209 	jr	NZ,00151$
                           1210 ;src/Enemigo.c:170: p2=1;
   48FA DD 36 F2 01   [19] 1211 	ld	-14 (ix),#0x01
   48FE                    1212 00151$:
                           1213 ;src/Enemigo.c:171: if(p1==1&&p2==1)
   48FE 79            [ 4] 1214 	ld	a,c
   48FF 3D            [ 4] 1215 	dec	a
   4900 20 0B         [12] 1216 	jr	NZ,00157$
   4902 DD 7E F2      [19] 1217 	ld	a,-14 (ix)
   4905 3D            [ 4] 1218 	dec	a
   4906 20 05         [12] 1219 	jr	NZ,00157$
                           1220 ;src/Enemigo.c:172: return 1;
   4908 2E 01         [ 7] 1221 	ld	l,#0x01
   490A C3 CC 49      [10] 1222 	jp	00177$
   490D                    1223 00157$:
                           1224 ;src/Enemigo.c:175: if(e->direccion==3){
   490D DD 7E FF      [19] 1225 	ld	a,-1 (ix)
   4910 D6 03         [ 7] 1226 	sub	a, #0x03
   4912 C2 CA 49      [10] 1227 	jp	NZ,00176$
                           1228 ;src/Enemigo.c:176: if(p->x>=((e->x)-16))
   4915 DD 6E FD      [19] 1229 	ld	l,-3 (ix)
   4918 DD 66 FE      [19] 1230 	ld	h,-2 (ix)
   491B 46            [ 7] 1231 	ld	b,(hl)
   491C 23            [ 6] 1232 	inc	hl
   491D 56            [ 7] 1233 	ld	d,(hl)
   491E DD 6E F3      [19] 1234 	ld	l,-13 (ix)
   4921 DD 66 F4      [19] 1235 	ld	h,-12 (ix)
   4924 7E            [ 7] 1236 	ld	a, (hl)
   4925 23            [ 6] 1237 	inc	hl
   4926 66            [ 7] 1238 	ld	h,(hl)
   4927 6F            [ 4] 1239 	ld	l,a
   4928 C6 F0         [ 7] 1240 	add	a,#0xF0
   492A DD 77 F5      [19] 1241 	ld	-11 (ix),a
   492D 7C            [ 4] 1242 	ld	a,h
   492E CE FF         [ 7] 1243 	adc	a,#0xFF
   4930 DD 77 F6      [19] 1244 	ld	-10 (ix),a
   4933 78            [ 4] 1245 	ld	a,b
   4934 DD 96 F5      [19] 1246 	sub	a, -11 (ix)
   4937 7A            [ 4] 1247 	ld	a,d
   4938 DD 9E F6      [19] 1248 	sbc	a, -10 (ix)
   493B E2 40 49      [10] 1249 	jp	PO, 00409$
   493E EE 80         [ 7] 1250 	xor	a, #0x80
   4940                    1251 00409$:
   4940 FA 45 49      [10] 1252 	jp	M,00159$
                           1253 ;src/Enemigo.c:177: p11=1;
   4943 1E 01         [ 7] 1254 	ld	e,#0x01
   4945                    1255 00159$:
                           1256 ;src/Enemigo.c:178: if(p->x<=((e->x)+16))
   4945 D5            [11] 1257 	push	de
   4946 11 10 00      [10] 1258 	ld	de,#0x0010
   4949 19            [11] 1259 	add	hl, de
   494A D1            [10] 1260 	pop	de
   494B 7D            [ 4] 1261 	ld	a,l
   494C 90            [ 4] 1262 	sub	a, b
   494D 7C            [ 4] 1263 	ld	a,h
   494E 9A            [ 4] 1264 	sbc	a, d
   494F E2 54 49      [10] 1265 	jp	PO, 00410$
   4952 EE 80         [ 7] 1266 	xor	a, #0x80
   4954                    1267 00410$:
   4954 FA 5B 49      [10] 1268 	jp	M,00161$
                           1269 ;src/Enemigo.c:179: p12=1;
   4957 DD 36 EF 01   [19] 1270 	ld	-17 (ix),#0x01
   495B                    1271 00161$:
                           1272 ;src/Enemigo.c:180: if(p11==1&&p12==1)
   495B 1D            [ 4] 1273 	dec	e
   495C 20 08         [12] 1274 	jr	NZ,00163$
   495E DD 7E EF      [19] 1275 	ld	a,-17 (ix)
   4961 3D            [ 4] 1276 	dec	a
   4962 20 02         [12] 1277 	jr	NZ,00163$
                           1278 ;src/Enemigo.c:181: p1=1;
   4964 0E 01         [ 7] 1279 	ld	c,#0x01
   4966                    1280 00163$:
                           1281 ;src/Enemigo.c:182: if(p->y>=((e->y)+16))
   4966 DD 6E F9      [19] 1282 	ld	l,-7 (ix)
   4969 DD 66 FA      [19] 1283 	ld	h,-6 (ix)
   496C 46            [ 7] 1284 	ld	b,(hl)
   496D DD 6E FB      [19] 1285 	ld	l,-5 (ix)
   4970 DD 66 FC      [19] 1286 	ld	h,-4 (ix)
   4973 5E            [ 7] 1287 	ld	e,(hl)
   4974 16 00         [ 7] 1288 	ld	d,#0x00
   4976 21 10 00      [10] 1289 	ld	hl,#0x0010
   4979 19            [11] 1290 	add	hl,de
   497A DD 70 F5      [19] 1291 	ld	-11 (ix),b
   497D DD 36 F6 00   [19] 1292 	ld	-10 (ix),#0x00
   4981 DD 7E F5      [19] 1293 	ld	a,-11 (ix)
   4984 95            [ 4] 1294 	sub	a, l
   4985 DD 7E F6      [19] 1295 	ld	a,-10 (ix)
   4988 9C            [ 4] 1296 	sbc	a, h
   4989 E2 8E 49      [10] 1297 	jp	PO, 00415$
   498C EE 80         [ 7] 1298 	xor	a, #0x80
   498E                    1299 00415$:
   498E FA 95 49      [10] 1300 	jp	M,00166$
                           1301 ;src/Enemigo.c:183: p21=1;
   4991 DD 36 F1 01   [19] 1302 	ld	-15 (ix),#0x01
   4995                    1303 00166$:
                           1304 ;src/Enemigo.c:184: if(p->y<=((e->y)+(16*3)))
   4995 21 30 00      [10] 1305 	ld	hl,#0x0030
   4998 19            [11] 1306 	add	hl,de
   4999 7D            [ 4] 1307 	ld	a,l
   499A DD 96 F5      [19] 1308 	sub	a, -11 (ix)
   499D 7C            [ 4] 1309 	ld	a,h
   499E DD 9E F6      [19] 1310 	sbc	a, -10 (ix)
   49A1 E2 A6 49      [10] 1311 	jp	PO, 00416$
   49A4 EE 80         [ 7] 1312 	xor	a, #0x80
   49A6                    1313 00416$:
   49A6 FA AD 49      [10] 1314 	jp	M,00168$
                           1315 ;src/Enemigo.c:185: p22=1;    
   49A9 DD 36 F0 01   [19] 1316 	ld	-16 (ix),#0x01
   49AD                    1317 00168$:
                           1318 ;src/Enemigo.c:186: if(p21==1&&p22==1)
   49AD DD 7E F1      [19] 1319 	ld	a,-15 (ix)
   49B0 3D            [ 4] 1320 	dec	a
   49B1 20 0A         [12] 1321 	jr	NZ,00170$
   49B3 DD 7E F0      [19] 1322 	ld	a,-16 (ix)
   49B6 3D            [ 4] 1323 	dec	a
   49B7 20 04         [12] 1324 	jr	NZ,00170$
                           1325 ;src/Enemigo.c:187: p2=1;
   49B9 DD 36 F2 01   [19] 1326 	ld	-14 (ix),#0x01
   49BD                    1327 00170$:
                           1328 ;src/Enemigo.c:188: if(p1==1&&p2==1)
   49BD 0D            [ 4] 1329 	dec	c
   49BE 20 0A         [12] 1330 	jr	NZ,00176$
   49C0 DD 7E F2      [19] 1331 	ld	a,-14 (ix)
   49C3 3D            [ 4] 1332 	dec	a
   49C4 20 04         [12] 1333 	jr	NZ,00176$
                           1334 ;src/Enemigo.c:189: return 1;
   49C6 2E 01         [ 7] 1335 	ld	l,#0x01
   49C8 18 02         [12] 1336 	jr	00177$
   49CA                    1337 00176$:
                           1338 ;src/Enemigo.c:191: return 0;
   49CA 2E 00         [ 7] 1339 	ld	l,#0x00
   49CC                    1340 00177$:
   49CC DD F9         [10] 1341 	ld	sp, ix
   49CE DD E1         [14] 1342 	pop	ix
   49D0 C9            [10] 1343 	ret
                           1344 ;src/Enemigo.c:194: void Combate(enemigo *e, personaje *p){
                           1345 ;	---------------------------------
                           1346 ; Function Combate
                           1347 ; ---------------------------------
   49D1                    1348 _Combate::
   49D1 DD E5         [15] 1349 	push	ix
   49D3 DD 21 00 00   [14] 1350 	ld	ix,#0
   49D7 DD 39         [15] 1351 	add	ix,sp
   49D9 21 F2 FF      [10] 1352 	ld	hl,#-14
   49DC 39            [11] 1353 	add	hl,sp
   49DD F9            [ 6] 1354 	ld	sp,hl
                           1355 ;src/Enemigo.c:196: p1=0;
   49DE DD 36 F2 00   [19] 1356 	ld	-14 (ix),#0x00
                           1357 ;src/Enemigo.c:197: p2=0;
   49E2 0E 00         [ 7] 1358 	ld	c,#0x00
                           1359 ;src/Enemigo.c:198: p3=0;
   49E4 DD 36 F5 00   [19] 1360 	ld	-11 (ix),#0x00
                           1361 ;src/Enemigo.c:199: p4=0;
   49E8 DD 36 F4 00   [19] 1362 	ld	-12 (ix),#0x00
                           1363 ;src/Enemigo.c:200: move=0;
   49EC DD 36 F3 00   [19] 1364 	ld	-13 (ix),#0x00
                           1365 ;src/Enemigo.c:202: if(e->x>p->x+16)
   49F0 DD 7E 04      [19] 1366 	ld	a,4 (ix)
   49F3 DD 77 FE      [19] 1367 	ld	-2 (ix),a
   49F6 DD 7E 05      [19] 1368 	ld	a,5 (ix)
   49F9 DD 77 FF      [19] 1369 	ld	-1 (ix),a
   49FC DD 6E FE      [19] 1370 	ld	l,-2 (ix)
   49FF DD 66 FF      [19] 1371 	ld	h,-1 (ix)
   4A02 7E            [ 7] 1372 	ld	a,(hl)
   4A03 DD 77 FC      [19] 1373 	ld	-4 (ix),a
   4A06 23            [ 6] 1374 	inc	hl
   4A07 7E            [ 7] 1375 	ld	a,(hl)
   4A08 DD 77 FD      [19] 1376 	ld	-3 (ix),a
   4A0B DD 7E 06      [19] 1377 	ld	a,6 (ix)
   4A0E DD 77 F6      [19] 1378 	ld	-10 (ix),a
   4A11 DD 7E 07      [19] 1379 	ld	a,7 (ix)
   4A14 DD 77 F7      [19] 1380 	ld	-9 (ix),a
   4A17 DD 6E F6      [19] 1381 	ld	l,-10 (ix)
   4A1A DD 66 F7      [19] 1382 	ld	h,-9 (ix)
   4A1D 5E            [ 7] 1383 	ld	e,(hl)
   4A1E 23            [ 6] 1384 	inc	hl
   4A1F 56            [ 7] 1385 	ld	d,(hl)
   4A20 21 10 00      [10] 1386 	ld	hl,#0x0010
   4A23 19            [11] 1387 	add	hl,de
   4A24 7D            [ 4] 1388 	ld	a,l
   4A25 DD 96 FC      [19] 1389 	sub	a, -4 (ix)
   4A28 7C            [ 4] 1390 	ld	a,h
   4A29 DD 9E FD      [19] 1391 	sbc	a, -3 (ix)
   4A2C E2 31 4A      [10] 1392 	jp	PO, 00167$
   4A2F EE 80         [ 7] 1393 	xor	a, #0x80
   4A31                    1394 00167$:
   4A31 F2 38 4A      [10] 1395 	jp	P,00102$
                           1396 ;src/Enemigo.c:203: p1=1;//izqu
   4A34 DD 36 F2 01   [19] 1397 	ld	-14 (ix),#0x01
   4A38                    1398 00102$:
                           1399 ;src/Enemigo.c:204: if(e->y<p->y-16)
   4A38 DD 6E FE      [19] 1400 	ld	l,-2 (ix)
   4A3B DD 66 FF      [19] 1401 	ld	h,-1 (ix)
   4A3E 23            [ 6] 1402 	inc	hl
   4A3F 23            [ 6] 1403 	inc	hl
   4A40 46            [ 7] 1404 	ld	b,(hl)
   4A41 DD 6E F6      [19] 1405 	ld	l,-10 (ix)
   4A44 DD 66 F7      [19] 1406 	ld	h,-9 (ix)
   4A47 23            [ 6] 1407 	inc	hl
   4A48 23            [ 6] 1408 	inc	hl
   4A49 6E            [ 7] 1409 	ld	l,(hl)
   4A4A 26 00         [ 7] 1410 	ld	h,#0x00
   4A4C 7D            [ 4] 1411 	ld	a,l
   4A4D C6 F0         [ 7] 1412 	add	a,#0xF0
   4A4F DD 77 FA      [19] 1413 	ld	-6 (ix),a
   4A52 7C            [ 4] 1414 	ld	a,h
   4A53 CE FF         [ 7] 1415 	adc	a,#0xFF
   4A55 DD 77 FB      [19] 1416 	ld	-5 (ix),a
   4A58 DD 70 F8      [19] 1417 	ld	-8 (ix),b
   4A5B DD 36 F9 00   [19] 1418 	ld	-7 (ix),#0x00
   4A5F DD 7E F8      [19] 1419 	ld	a,-8 (ix)
   4A62 DD 96 FA      [19] 1420 	sub	a, -6 (ix)
   4A65 DD 7E F9      [19] 1421 	ld	a,-7 (ix)
   4A68 DD 9E FB      [19] 1422 	sbc	a, -5 (ix)
   4A6B E2 70 4A      [10] 1423 	jp	PO, 00168$
   4A6E EE 80         [ 7] 1424 	xor	a, #0x80
   4A70                    1425 00168$:
   4A70 F2 75 4A      [10] 1426 	jp	P,00104$
                           1427 ;src/Enemigo.c:205: p2=1;// bot
   4A73 0E 01         [ 7] 1428 	ld	c,#0x01
   4A75                    1429 00104$:
                           1430 ;src/Enemigo.c:206: if(e->y>p->y+16)
   4A75 D5            [11] 1431 	push	de
   4A76 11 10 00      [10] 1432 	ld	de,#0x0010
   4A79 19            [11] 1433 	add	hl, de
   4A7A D1            [10] 1434 	pop	de
   4A7B 7D            [ 4] 1435 	ld	a,l
   4A7C DD 96 F8      [19] 1436 	sub	a, -8 (ix)
   4A7F 7C            [ 4] 1437 	ld	a,h
   4A80 DD 9E F9      [19] 1438 	sbc	a, -7 (ix)
   4A83 E2 88 4A      [10] 1439 	jp	PO, 00169$
   4A86 EE 80         [ 7] 1440 	xor	a, #0x80
   4A88                    1441 00169$:
   4A88 F2 8F 4A      [10] 1442 	jp	P,00106$
                           1443 ;src/Enemigo.c:207: p3=1; //top
   4A8B DD 36 F5 01   [19] 1444 	ld	-11 (ix),#0x01
   4A8F                    1445 00106$:
                           1446 ;src/Enemigo.c:208: if(e->x<p->x-16)
   4A8F 7B            [ 4] 1447 	ld	a,e
   4A90 C6 F0         [ 7] 1448 	add	a,#0xF0
   4A92 67            [ 4] 1449 	ld	h,a
   4A93 7A            [ 4] 1450 	ld	a,d
   4A94 CE FF         [ 7] 1451 	adc	a,#0xFF
   4A96 6F            [ 4] 1452 	ld	l,a
   4A97 DD 7E FC      [19] 1453 	ld	a,-4 (ix)
   4A9A 94            [ 4] 1454 	sub	a, h
   4A9B DD 7E FD      [19] 1455 	ld	a,-3 (ix)
   4A9E 9D            [ 4] 1456 	sbc	a, l
   4A9F E2 A4 4A      [10] 1457 	jp	PO, 00170$
   4AA2 EE 80         [ 7] 1458 	xor	a, #0x80
   4AA4                    1459 00170$:
   4AA4 F2 AB 4A      [10] 1460 	jp	P,00108$
                           1461 ;src/Enemigo.c:209: p4=1; //Derecha
   4AA7 DD 36 F4 01   [19] 1462 	ld	-12 (ix),#0x01
   4AAB                    1463 00108$:
                           1464 ;src/Enemigo.c:211: if(e->atacando==0){
   4AAB DD 6E FE      [19] 1465 	ld	l,-2 (ix)
   4AAE DD 66 FF      [19] 1466 	ld	h,-1 (ix)
   4AB1 11 09 00      [10] 1467 	ld	de, #0x0009
   4AB4 19            [11] 1468 	add	hl, de
   4AB5 7E            [ 7] 1469 	ld	a,(hl)
   4AB6 B7            [ 4] 1470 	or	a, a
   4AB7 C2 37 4B      [10] 1471 	jp	NZ,00122$
                           1472 ;src/Enemigo.c:212: if(p4==1||p1==1){
   4ABA DD 7E F4      [19] 1473 	ld	a,-12 (ix)
   4ABD 3D            [ 4] 1474 	dec	a
   4ABE 20 04         [12] 1475 	jr	NZ,00171$
   4AC0 3E 01         [ 7] 1476 	ld	a,#0x01
   4AC2 18 01         [12] 1477 	jr	00172$
   4AC4                    1478 00171$:
   4AC4 AF            [ 4] 1479 	xor	a,a
   4AC5                    1480 00172$:
   4AC5 67            [ 4] 1481 	ld	h,a
                           1482 ;src/Enemigo.c:214: e->direccion=0;
   4AC6 DD 7E FE      [19] 1483 	ld	a,-2 (ix)
   4AC9 C6 08         [ 7] 1484 	add	a, #0x08
   4ACB 5F            [ 4] 1485 	ld	e,a
   4ACC DD 7E FF      [19] 1486 	ld	a,-1 (ix)
   4ACF CE 00         [ 7] 1487 	adc	a, #0x00
   4AD1 57            [ 4] 1488 	ld	d,a
                           1489 ;src/Enemigo.c:212: if(p4==1||p1==1){
   4AD2 7C            [ 4] 1490 	ld	a,h
   4AD3 B7            [ 4] 1491 	or	a, a
   4AD4 20 06         [12] 1492 	jr	NZ,00112$
   4AD6 DD 7E F2      [19] 1493 	ld	a,-14 (ix)
   4AD9 3D            [ 4] 1494 	dec	a
   4ADA 20 26         [12] 1495 	jr	NZ,00113$
   4ADC                    1496 00112$:
                           1497 ;src/Enemigo.c:213: if(p4==1){
   4ADC 7C            [ 4] 1498 	ld	a,h
   4ADD B7            [ 4] 1499 	or	a, a
   4ADE 28 04         [12] 1500 	jr	Z,00110$
                           1501 ;src/Enemigo.c:214: e->direccion=0;
   4AE0 AF            [ 4] 1502 	xor	a, a
   4AE1 12            [ 7] 1503 	ld	(de),a
   4AE2 18 03         [12] 1504 	jr	00111$
   4AE4                    1505 00110$:
                           1506 ;src/Enemigo.c:216: e->direccion=2;
   4AE4 3E 02         [ 7] 1507 	ld	a,#0x02
   4AE6 12            [ 7] 1508 	ld	(de),a
   4AE7                    1509 00111$:
                           1510 ;src/Enemigo.c:218: MoveE(e, p);
   4AE7 C5            [11] 1511 	push	bc
   4AE8 D5            [11] 1512 	push	de
   4AE9 DD 6E F6      [19] 1513 	ld	l,-10 (ix)
   4AEC DD 66 F7      [19] 1514 	ld	h,-9 (ix)
   4AEF E5            [11] 1515 	push	hl
   4AF0 DD 6E FE      [19] 1516 	ld	l,-2 (ix)
   4AF3 DD 66 FF      [19] 1517 	ld	h,-1 (ix)
   4AF6 E5            [11] 1518 	push	hl
   4AF7 CD 57 43      [17] 1519 	call	_MoveE
   4AFA F1            [10] 1520 	pop	af
   4AFB F1            [10] 1521 	pop	af
   4AFC D1            [10] 1522 	pop	de
   4AFD C1            [10] 1523 	pop	bc
                           1524 ;src/Enemigo.c:219: move=1;
   4AFE DD 36 F3 01   [19] 1525 	ld	-13 (ix),#0x01
   4B02                    1526 00113$:
                           1527 ;src/Enemigo.c:223: if(p3==1||p2==1){
   4B02 DD 7E F5      [19] 1528 	ld	a,-11 (ix)
   4B05 3D            [ 4] 1529 	dec	a
   4B06 20 04         [12] 1530 	jr	NZ,00175$
   4B08 3E 01         [ 7] 1531 	ld	a,#0x01
   4B0A 18 01         [12] 1532 	jr	00176$
   4B0C                    1533 00175$:
   4B0C AF            [ 4] 1534 	xor	a,a
   4B0D                    1535 00176$:
   4B0D 67            [ 4] 1536 	ld	h,a
   4B0E B7            [ 4] 1537 	or	a, a
   4B0F 20 03         [12] 1538 	jr	NZ,00118$
   4B11 0D            [ 4] 1539 	dec	c
   4B12 20 23         [12] 1540 	jr	NZ,00122$
   4B14                    1541 00118$:
                           1542 ;src/Enemigo.c:224: if(p3==1){
   4B14 7C            [ 4] 1543 	ld	a,h
   4B15 B7            [ 4] 1544 	or	a, a
   4B16 28 05         [12] 1545 	jr	Z,00116$
                           1546 ;src/Enemigo.c:225: e->direccion=1;
   4B18 3E 01         [ 7] 1547 	ld	a,#0x01
   4B1A 12            [ 7] 1548 	ld	(de),a
   4B1B 18 03         [12] 1549 	jr	00117$
   4B1D                    1550 00116$:
                           1551 ;src/Enemigo.c:227: e->direccion=3;
   4B1D 3E 03         [ 7] 1552 	ld	a,#0x03
   4B1F 12            [ 7] 1553 	ld	(de),a
   4B20                    1554 00117$:
                           1555 ;src/Enemigo.c:229: MoveE(e, p);
   4B20 DD 6E F6      [19] 1556 	ld	l,-10 (ix)
   4B23 DD 66 F7      [19] 1557 	ld	h,-9 (ix)
   4B26 E5            [11] 1558 	push	hl
   4B27 DD 6E FE      [19] 1559 	ld	l,-2 (ix)
   4B2A DD 66 FF      [19] 1560 	ld	h,-1 (ix)
   4B2D E5            [11] 1561 	push	hl
   4B2E CD 57 43      [17] 1562 	call	_MoveE
   4B31 F1            [10] 1563 	pop	af
   4B32 F1            [10] 1564 	pop	af
                           1565 ;src/Enemigo.c:230: move=1;
   4B33 DD 36 F3 01   [19] 1566 	ld	-13 (ix),#0x01
   4B37                    1567 00122$:
                           1568 ;src/Enemigo.c:233: if(move==0){
   4B37 DD 7E F3      [19] 1569 	ld	a,-13 (ix)
   4B3A B7            [ 4] 1570 	or	a, a
   4B3B 20 13         [12] 1571 	jr	NZ,00125$
                           1572 ;src/Enemigo.c:234: atacaE(e,p);
   4B3D DD 6E F6      [19] 1573 	ld	l,-10 (ix)
   4B40 DD 66 F7      [19] 1574 	ld	h,-9 (ix)
   4B43 E5            [11] 1575 	push	hl
   4B44 DD 6E FE      [19] 1576 	ld	l,-2 (ix)
   4B47 DD 66 FF      [19] 1577 	ld	h,-1 (ix)
   4B4A E5            [11] 1578 	push	hl
   4B4B CD 55 4B      [17] 1579 	call	_atacaE
   4B4E F1            [10] 1580 	pop	af
   4B4F F1            [10] 1581 	pop	af
   4B50                    1582 00125$:
   4B50 DD F9         [10] 1583 	ld	sp, ix
   4B52 DD E1         [14] 1584 	pop	ix
   4B54 C9            [10] 1585 	ret
                           1586 ;src/Enemigo.c:241: void atacaE(enemigo *e, personaje *p){
                           1587 ;	---------------------------------
                           1588 ; Function atacaE
                           1589 ; ---------------------------------
   4B55                    1590 _atacaE::
   4B55 DD E5         [15] 1591 	push	ix
   4B57 DD 21 00 00   [14] 1592 	ld	ix,#0
   4B5B DD 39         [15] 1593 	add	ix,sp
   4B5D F5            [11] 1594 	push	af
                           1595 ;src/Enemigo.c:242: if(e->ataquePreparado){
   4B5E DD 4E 04      [19] 1596 	ld	c,4 (ix)
   4B61 DD 46 05      [19] 1597 	ld	b,5 (ix)
   4B64 21 0B 00      [10] 1598 	ld	hl,#0x000B
   4B67 09            [11] 1599 	add	hl,bc
   4B68 E3            [19] 1600 	ex	(sp), hl
   4B69 E1            [10] 1601 	pop	hl
   4B6A E5            [11] 1602 	push	hl
   4B6B 7E            [ 7] 1603 	ld	a,(hl)
   4B6C B7            [ 4] 1604 	or	a, a
   4B6D 28 31         [12] 1605 	jr	Z,00106$
                           1606 ;src/Enemigo.c:244: e->atacando=1;
   4B6F 21 09 00      [10] 1607 	ld	hl,#0x0009
   4B72 09            [11] 1608 	add	hl,bc
   4B73 36 01         [10] 1609 	ld	(hl),#0x01
                           1610 ;src/Enemigo.c:245: e->cansancioAtaque++;
   4B75 21 0A 00      [10] 1611 	ld	hl,#0x000A
   4B78 09            [11] 1612 	add	hl,bc
   4B79 EB            [ 4] 1613 	ex	de,hl
   4B7A 1A            [ 7] 1614 	ld	a,(de)
   4B7B 3C            [ 4] 1615 	inc	a
   4B7C 12            [ 7] 1616 	ld	(de),a
                           1617 ;src/Enemigo.c:246: if(e->danyino==0){
   4B7D 21 0C 00      [10] 1618 	ld	hl,#0x000C
   4B80 09            [11] 1619 	add	hl,bc
   4B81 7E            [ 7] 1620 	ld	a,(hl)
   4B82 B7            [ 4] 1621 	or	a, a
   4B83 20 0F         [12] 1622 	jr	NZ,00102$
                           1623 ;src/Enemigo.c:247: danyo(p);
   4B85 E5            [11] 1624 	push	hl
   4B86 D5            [11] 1625 	push	de
   4B87 DD 4E 06      [19] 1626 	ld	c,6 (ix)
   4B8A DD 46 07      [19] 1627 	ld	b,7 (ix)
   4B8D C5            [11] 1628 	push	bc
   4B8E CD 30 64      [17] 1629 	call	_danyo
   4B91 F1            [10] 1630 	pop	af
   4B92 D1            [10] 1631 	pop	de
   4B93 E1            [10] 1632 	pop	hl
   4B94                    1633 00102$:
                           1634 ;src/Enemigo.c:249: e->danyino++;
   4B94 34            [11] 1635 	inc	(hl)
                           1636 ;src/Enemigo.c:250: if(e->cansancioAtaque==14){
   4B95 1A            [ 7] 1637 	ld	a,(de)
   4B96 D6 0E         [ 7] 1638 	sub	a, #0x0E
   4B98 20 0B         [12] 1639 	jr	NZ,00108$
                           1640 ;src/Enemigo.c:251: e->ataquePreparado=0;
   4B9A E1            [10] 1641 	pop	hl
   4B9B E5            [11] 1642 	push	hl
   4B9C 36 00         [10] 1643 	ld	(hl),#0x00
   4B9E 18 05         [12] 1644 	jr	00108$
   4BA0                    1645 00106$:
                           1646 ;src/Enemigo.c:255: noAtacaE(e);
   4BA0 C5            [11] 1647 	push	bc
   4BA1 CD AA 4B      [17] 1648 	call	_noAtacaE
   4BA4 F1            [10] 1649 	pop	af
   4BA5                    1650 00108$:
   4BA5 DD F9         [10] 1651 	ld	sp, ix
   4BA7 DD E1         [14] 1652 	pop	ix
   4BA9 C9            [10] 1653 	ret
                           1654 ;src/Enemigo.c:257: void noAtacaE(enemigo *e){
                           1655 ;	---------------------------------
                           1656 ; Function noAtacaE
                           1657 ; ---------------------------------
   4BAA                    1658 _noAtacaE::
   4BAA DD E5         [15] 1659 	push	ix
   4BAC DD 21 00 00   [14] 1660 	ld	ix,#0
   4BB0 DD 39         [15] 1661 	add	ix,sp
                           1662 ;src/Enemigo.c:258: e->atacando=0;
   4BB2 DD 5E 04      [19] 1663 	ld	e,4 (ix)
   4BB5 DD 56 05      [19] 1664 	ld	d,5 (ix)
   4BB8 21 09 00      [10] 1665 	ld	hl,#0x0009
   4BBB 19            [11] 1666 	add	hl,de
   4BBC 36 00         [10] 1667 	ld	(hl),#0x00
                           1668 ;src/Enemigo.c:259: e->cansancioAtaque--;
   4BBE 21 0A 00      [10] 1669 	ld	hl,#0x000A
   4BC1 19            [11] 1670 	add	hl,de
   4BC2 7E            [ 7] 1671 	ld	a,(hl)
   4BC3 C6 FF         [ 7] 1672 	add	a,#0xFF
   4BC5 77            [ 7] 1673 	ld	(hl),a
                           1674 ;src/Enemigo.c:260: if(e->cansancioAtaque==0)
   4BC6 B7            [ 4] 1675 	or	a, a
   4BC7 20 06         [12] 1676 	jr	NZ,00102$
                           1677 ;src/Enemigo.c:261: e->ataquePreparado=1;
   4BC9 21 0B 00      [10] 1678 	ld	hl,#0x000B
   4BCC 19            [11] 1679 	add	hl,de
   4BCD 36 01         [10] 1680 	ld	(hl),#0x01
   4BCF                    1681 00102$:
                           1682 ;src/Enemigo.c:262: e->danyino=0;
   4BCF 21 0C 00      [10] 1683 	ld	hl,#0x000C
   4BD2 19            [11] 1684 	add	hl,de
   4BD3 36 00         [10] 1685 	ld	(hl),#0x00
   4BD5 DD E1         [14] 1686 	pop	ix
   4BD7 C9            [10] 1687 	ret
                           1688 ;src/Enemigo.c:267: void initEnemigo(enemigo *e, u8 x, u8 y){
                           1689 ;	---------------------------------
                           1690 ; Function initEnemigo
                           1691 ; ---------------------------------
   4BD8                    1692 _initEnemigo::
   4BD8 DD E5         [15] 1693 	push	ix
   4BDA DD 21 00 00   [14] 1694 	ld	ix,#0
   4BDE DD 39         [15] 1695 	add	ix,sp
   4BE0 F5            [11] 1696 	push	af
   4BE1 3B            [ 6] 1697 	dec	sp
                           1698 ;src/Enemigo.c:269: e->x=x*16;
   4BE2 DD 5E 04      [19] 1699 	ld	e,4 (ix)
   4BE5 DD 56 05      [19] 1700 	ld	d,5 (ix)
   4BE8 DD 6E 06      [19] 1701 	ld	l,6 (ix)
   4BEB 26 00         [ 7] 1702 	ld	h,#0x00
   4BED 29            [11] 1703 	add	hl, hl
   4BEE 29            [11] 1704 	add	hl, hl
   4BEF 29            [11] 1705 	add	hl, hl
   4BF0 29            [11] 1706 	add	hl, hl
   4BF1 4D            [ 4] 1707 	ld	c, l
   4BF2 44            [ 4] 1708 	ld	b, h
   4BF3 6B            [ 4] 1709 	ld	l, e
   4BF4 62            [ 4] 1710 	ld	h, d
   4BF5 71            [ 7] 1711 	ld	(hl),c
   4BF6 23            [ 6] 1712 	inc	hl
   4BF7 70            [ 7] 1713 	ld	(hl),b
                           1714 ;src/Enemigo.c:270: e->y=y*16;
   4BF8 6B            [ 4] 1715 	ld	l, e
   4BF9 62            [ 4] 1716 	ld	h, d
   4BFA 23            [ 6] 1717 	inc	hl
   4BFB 23            [ 6] 1718 	inc	hl
   4BFC DD 7E 07      [19] 1719 	ld	a,7 (ix)
   4BFF 07            [ 4] 1720 	rlca
   4C00 07            [ 4] 1721 	rlca
   4C01 07            [ 4] 1722 	rlca
   4C02 07            [ 4] 1723 	rlca
   4C03 E6 F0         [ 7] 1724 	and	a,#0xF0
   4C05 77            [ 7] 1725 	ld	(hl),a
                           1726 ;src/Enemigo.c:271: e->orientacion=0;
   4C06 D5            [11] 1727 	push	de
   4C07 FD E1         [14] 1728 	pop	iy
   4C09 FD 23         [10] 1729 	inc	iy
   4C0B FD 23         [10] 1730 	inc	iy
   4C0D FD 23         [10] 1731 	inc	iy
   4C0F FD 36 00 00   [19] 1732 	ld	0 (iy), #0x00
                           1733 ;src/Enemigo.c:272: e->estado=0;
   4C13 FD 21 04 00   [14] 1734 	ld	iy,#0x0004
   4C17 FD 19         [15] 1735 	add	iy, de
   4C19 FD 36 00 00   [19] 1736 	ld	0 (iy), #0x00
                           1737 ;src/Enemigo.c:273: e->vida=1;
   4C1D FD 21 05 00   [14] 1738 	ld	iy,#0x0005
   4C21 FD 19         [15] 1739 	add	iy, de
   4C23 FD 36 00 01   [19] 1740 	ld	0 (iy), #0x01
                           1741 ;src/Enemigo.c:274: e->memPtr=cpct_getScreenPtr(video_memory_start,e->x/4,e->y);
   4C27 7B            [ 4] 1742 	ld	a,e
   4C28 C6 06         [ 7] 1743 	add	a, #0x06
   4C2A DD 77 FE      [19] 1744 	ld	-2 (ix),a
   4C2D 7A            [ 4] 1745 	ld	a,d
   4C2E CE 00         [ 7] 1746 	adc	a, #0x00
   4C30 DD 77 FF      [19] 1747 	ld	-1 (ix),a
   4C33 7E            [ 7] 1748 	ld	a,(hl)
   4C34 DD 77 FD      [19] 1749 	ld	-3 (ix),a
   4C37 61            [ 4] 1750 	ld	h,c
   4C38 68            [ 4] 1751 	ld	l,b
   4C39 CB 78         [ 8] 1752 	bit	7, b
   4C3B 28 05         [12] 1753 	jr	Z,00103$
   4C3D 03            [ 6] 1754 	inc	bc
   4C3E 03            [ 6] 1755 	inc	bc
   4C3F 03            [ 6] 1756 	inc	bc
   4C40 61            [ 4] 1757 	ld	h,c
   4C41 68            [ 4] 1758 	ld	l,b
   4C42                    1759 00103$:
   4C42 4C            [ 4] 1760 	ld	c, h
   4C43 45            [ 4] 1761 	ld	b, l
   4C44 CB 28         [ 8] 1762 	sra	b
   4C46 CB 19         [ 8] 1763 	rr	c
   4C48 CB 28         [ 8] 1764 	sra	b
   4C4A CB 19         [ 8] 1765 	rr	c
   4C4C FD 2A 25 42   [20] 1766 	ld	iy,(_video_memory_start)
   4C50 D5            [11] 1767 	push	de
   4C51 DD 7E FD      [19] 1768 	ld	a,-3 (ix)
   4C54 F5            [11] 1769 	push	af
   4C55 33            [ 6] 1770 	inc	sp
   4C56 79            [ 4] 1771 	ld	a,c
   4C57 F5            [11] 1772 	push	af
   4C58 33            [ 6] 1773 	inc	sp
   4C59 FD E5         [15] 1774 	push	iy
   4C5B CD E8 76      [17] 1775 	call	_cpct_getScreenPtr
   4C5E 45            [ 4] 1776 	ld	b,l
   4C5F 4C            [ 4] 1777 	ld	c,h
   4C60 D1            [10] 1778 	pop	de
   4C61 DD 6E FE      [19] 1779 	ld	l,-2 (ix)
   4C64 DD 66 FF      [19] 1780 	ld	h,-1 (ix)
   4C67 70            [ 7] 1781 	ld	(hl),b
   4C68 23            [ 6] 1782 	inc	hl
   4C69 71            [ 7] 1783 	ld	(hl),c
                           1784 ;src/Enemigo.c:276: e->direccion=0;
   4C6A 21 08 00      [10] 1785 	ld	hl,#0x0008
   4C6D 19            [11] 1786 	add	hl,de
   4C6E 36 00         [10] 1787 	ld	(hl),#0x00
                           1788 ;src/Enemigo.c:277: e->atacando=0;
   4C70 21 09 00      [10] 1789 	ld	hl,#0x0009
   4C73 19            [11] 1790 	add	hl,de
   4C74 36 00         [10] 1791 	ld	(hl),#0x00
                           1792 ;src/Enemigo.c:278: e->cansancioAtaque=0;
   4C76 21 0A 00      [10] 1793 	ld	hl,#0x000A
   4C79 19            [11] 1794 	add	hl,de
   4C7A 36 00         [10] 1795 	ld	(hl),#0x00
                           1796 ;src/Enemigo.c:279: e->ataquePreparado=1;
   4C7C 21 0B 00      [10] 1797 	ld	hl,#0x000B
   4C7F 19            [11] 1798 	add	hl,de
   4C80 36 01         [10] 1799 	ld	(hl),#0x01
   4C82 DD F9         [10] 1800 	ld	sp, ix
   4C84 DD E1         [14] 1801 	pop	ix
   4C86 C9            [10] 1802 	ret
                           1803 ;src/Enemigo.c:282: void pintaEnemigo(enemigo *e){
                           1804 ;	---------------------------------
                           1805 ; Function pintaEnemigo
                           1806 ; ---------------------------------
   4C87                    1807 _pintaEnemigo::
   4C87 DD E5         [15] 1808 	push	ix
   4C89 DD 21 00 00   [14] 1809 	ld	ix,#0
   4C8D DD 39         [15] 1810 	add	ix,sp
   4C8F F5            [11] 1811 	push	af
   4C90 F5            [11] 1812 	push	af
                           1813 ;src/Enemigo.c:283: u8 aux=3;
   4C91 DD 36 FC 03   [19] 1814 	ld	-4 (ix),#0x03
                           1815 ;src/Enemigo.c:285: cpct_drawSolidBox(e->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
   4C95 21 02 02      [10] 1816 	ld	hl,#0x0202
   4C98 E5            [11] 1817 	push	hl
   4C99 2E 02         [ 7] 1818 	ld	l, #0x02
   4C9B E5            [11] 1819 	push	hl
   4C9C CD B9 75      [17] 1820 	call	_cpct_px2byteM1
   4C9F F1            [10] 1821 	pop	af
   4CA0 F1            [10] 1822 	pop	af
   4CA1 45            [ 4] 1823 	ld	b,l
   4CA2 DD 5E 04      [19] 1824 	ld	e,4 (ix)
   4CA5 DD 56 05      [19] 1825 	ld	d,5 (ix)
   4CA8 21 06 00      [10] 1826 	ld	hl,#0x0006
   4CAB 19            [11] 1827 	add	hl,de
   4CAC DD 75 FE      [19] 1828 	ld	-2 (ix),l
   4CAF DD 74 FF      [19] 1829 	ld	-1 (ix),h
   4CB2 DD 6E FE      [19] 1830 	ld	l,-2 (ix)
   4CB5 DD 66 FF      [19] 1831 	ld	h,-1 (ix)
   4CB8 7E            [ 7] 1832 	ld	a, (hl)
   4CB9 23            [ 6] 1833 	inc	hl
   4CBA 66            [ 7] 1834 	ld	h,(hl)
   4CBB 6F            [ 4] 1835 	ld	l,a
   4CBC E5            [11] 1836 	push	hl
   4CBD FD E1         [14] 1837 	pop	iy
   4CBF D5            [11] 1838 	push	de
   4CC0 21 04 10      [10] 1839 	ld	hl,#0x1004
   4CC3 E5            [11] 1840 	push	hl
   4CC4 C5            [11] 1841 	push	bc
   4CC5 33            [ 6] 1842 	inc	sp
   4CC6 FD E5         [15] 1843 	push	iy
   4CC8 CD E6 75      [17] 1844 	call	_cpct_drawSolidBox
   4CCB F1            [10] 1845 	pop	af
   4CCC F1            [10] 1846 	pop	af
   4CCD 33            [ 6] 1847 	inc	sp
   4CCE D1            [10] 1848 	pop	de
                           1849 ;src/Enemigo.c:287: e->memPtr=cpct_getScreenPtr(video_memory_start,e->x/4,e->y);
   4CCF 6B            [ 4] 1850 	ld	l, e
   4CD0 62            [ 4] 1851 	ld	h, d
   4CD1 23            [ 6] 1852 	inc	hl
   4CD2 23            [ 6] 1853 	inc	hl
   4CD3 7E            [ 7] 1854 	ld	a,(hl)
   4CD4 DD 77 FD      [19] 1855 	ld	-3 (ix),a
   4CD7 6B            [ 4] 1856 	ld	l, e
   4CD8 62            [ 4] 1857 	ld	h, d
   4CD9 4E            [ 7] 1858 	ld	c,(hl)
   4CDA 23            [ 6] 1859 	inc	hl
   4CDB 46            [ 7] 1860 	ld	b,(hl)
   4CDC 61            [ 4] 1861 	ld	h,c
   4CDD 68            [ 4] 1862 	ld	l,b
   4CDE CB 78         [ 8] 1863 	bit	7, b
   4CE0 28 05         [12] 1864 	jr	Z,00105$
   4CE2 03            [ 6] 1865 	inc	bc
   4CE3 03            [ 6] 1866 	inc	bc
   4CE4 03            [ 6] 1867 	inc	bc
   4CE5 61            [ 4] 1868 	ld	h,c
   4CE6 68            [ 4] 1869 	ld	l,b
   4CE7                    1870 00105$:
   4CE7 4C            [ 4] 1871 	ld	c, h
   4CE8 45            [ 4] 1872 	ld	b, l
   4CE9 CB 28         [ 8] 1873 	sra	b
   4CEB CB 19         [ 8] 1874 	rr	c
   4CED CB 28         [ 8] 1875 	sra	b
   4CEF CB 19         [ 8] 1876 	rr	c
   4CF1 FD 2A 25 42   [20] 1877 	ld	iy,(_video_memory_start)
   4CF5 D5            [11] 1878 	push	de
   4CF6 DD 7E FD      [19] 1879 	ld	a,-3 (ix)
   4CF9 F5            [11] 1880 	push	af
   4CFA 33            [ 6] 1881 	inc	sp
   4CFB 79            [ 4] 1882 	ld	a,c
   4CFC F5            [11] 1883 	push	af
   4CFD 33            [ 6] 1884 	inc	sp
   4CFE FD E5         [15] 1885 	push	iy
   4D00 CD E8 76      [17] 1886 	call	_cpct_getScreenPtr
   4D03 45            [ 4] 1887 	ld	b,l
   4D04 4C            [ 4] 1888 	ld	c,h
   4D05 D1            [10] 1889 	pop	de
   4D06 DD 6E FE      [19] 1890 	ld	l,-2 (ix)
   4D09 DD 66 FF      [19] 1891 	ld	h,-1 (ix)
   4D0C 70            [ 7] 1892 	ld	(hl),b
   4D0D 23            [ 6] 1893 	inc	hl
   4D0E 71            [ 7] 1894 	ld	(hl),c
                           1895 ;src/Enemigo.c:289: if(e->estado)
   4D0F D5            [11] 1896 	push	de
   4D10 FD E1         [14] 1897 	pop	iy
   4D12 FD 7E 04      [19] 1898 	ld	a,4 (iy)
   4D15 B7            [ 4] 1899 	or	a, a
   4D16 28 04         [12] 1900 	jr	Z,00102$
                           1901 ;src/Enemigo.c:290: aux=0;
   4D18 DD 36 FC 00   [19] 1902 	ld	-4 (ix),#0x00
   4D1C                    1903 00102$:
                           1904 ;src/Enemigo.c:291: cpct_drawSprite(tilesetEnemigoCAC[e->orientacion+aux],e->memPtr,4,16);
   4D1C DD 6E FE      [19] 1905 	ld	l,-2 (ix)
   4D1F DD 66 FF      [19] 1906 	ld	h,-1 (ix)
   4D22 4E            [ 7] 1907 	ld	c,(hl)
   4D23 23            [ 6] 1908 	inc	hl
   4D24 46            [ 7] 1909 	ld	b,(hl)
   4D25 D5            [11] 1910 	push	de
   4D26 FD E1         [14] 1911 	pop	iy
   4D28 FD 7E 03      [19] 1912 	ld	a, 3 (iy)
   4D2B DD 86 FC      [19] 1913 	add	a, -4 (ix)
   4D2E 6F            [ 4] 1914 	ld	l,a
   4D2F 26 00         [ 7] 1915 	ld	h,#0x00
   4D31 29            [11] 1916 	add	hl, hl
   4D32 11 19 70      [10] 1917 	ld	de,#_tilesetEnemigoCAC
   4D35 19            [11] 1918 	add	hl,de
   4D36 5E            [ 7] 1919 	ld	e,(hl)
   4D37 23            [ 6] 1920 	inc	hl
   4D38 56            [ 7] 1921 	ld	d,(hl)
   4D39 21 04 10      [10] 1922 	ld	hl,#0x1004
   4D3C E5            [11] 1923 	push	hl
   4D3D C5            [11] 1924 	push	bc
   4D3E D5            [11] 1925 	push	de
   4D3F CD 86 72      [17] 1926 	call	_cpct_drawSprite
   4D42 DD F9         [10] 1927 	ld	sp, ix
   4D44 DD E1         [14] 1928 	pop	ix
   4D46 C9            [10] 1929 	ret
                           1930 ;src/Enemigo.c:293: void pintaEnemigos(enemigo* arr[]){
                           1931 ;	---------------------------------
                           1932 ; Function pintaEnemigos
                           1933 ; ---------------------------------
   4D47                    1934 _pintaEnemigos::
   4D47 DD E5         [15] 1935 	push	ix
   4D49 DD 21 00 00   [14] 1936 	ld	ix,#0
   4D4D DD 39         [15] 1937 	add	ix,sp
   4D4F 3B            [ 6] 1938 	dec	sp
                           1939 ;src/Enemigo.c:295: for(cont=0;cont<maxEnemigosSala;cont++){
   4D50 DD 36 FF 00   [19] 1940 	ld	-1 (ix),#0x00
   4D54                    1941 00104$:
                           1942 ;src/Enemigo.c:296: if(arr[cont]->vida>0)
   4D54 DD 6E FF      [19] 1943 	ld	l,-1 (ix)
   4D57 26 00         [ 7] 1944 	ld	h,#0x00
   4D59 29            [11] 1945 	add	hl, hl
   4D5A EB            [ 4] 1946 	ex	de,hl
   4D5B DD 6E 04      [19] 1947 	ld	l,4 (ix)
   4D5E DD 66 05      [19] 1948 	ld	h,5 (ix)
   4D61 19            [11] 1949 	add	hl,de
   4D62 4E            [ 7] 1950 	ld	c,(hl)
   4D63 23            [ 6] 1951 	inc	hl
   4D64 46            [ 7] 1952 	ld	b,(hl)
   4D65 C5            [11] 1953 	push	bc
   4D66 FD E1         [14] 1954 	pop	iy
   4D68 FD 7E 05      [19] 1955 	ld	a,5 (iy)
   4D6B B7            [ 4] 1956 	or	a, a
   4D6C 28 05         [12] 1957 	jr	Z,00105$
                           1958 ;src/Enemigo.c:297: pintaEnemigo(arr[cont]);
   4D6E C5            [11] 1959 	push	bc
   4D6F CD 87 4C      [17] 1960 	call	_pintaEnemigo
   4D72 F1            [10] 1961 	pop	af
   4D73                    1962 00105$:
                           1963 ;src/Enemigo.c:295: for(cont=0;cont<maxEnemigosSala;cont++){
   4D73 DD 34 FF      [23] 1964 	inc	-1 (ix)
   4D76 DD 7E FF      [19] 1965 	ld	a,-1 (ix)
   4D79 D6 03         [ 7] 1966 	sub	a, #0x03
   4D7B 38 D7         [12] 1967 	jr	C,00104$
   4D7D 33            [ 6] 1968 	inc	sp
   4D7E DD E1         [14] 1969 	pop	ix
   4D80 C9            [10] 1970 	ret
                           1971 ;src/Enemigo.c:301: void quitarVida(enemigo *e){
                           1972 ;	---------------------------------
                           1973 ; Function quitarVida
                           1974 ; ---------------------------------
   4D81                    1975 _quitarVida::
                           1976 ;src/Enemigo.c:302: e->vida--;
   4D81 C1            [10] 1977 	pop	bc
   4D82 D1            [10] 1978 	pop	de
   4D83 D5            [11] 1979 	push	de
   4D84 C5            [11] 1980 	push	bc
   4D85 13            [ 6] 1981 	inc	de
   4D86 13            [ 6] 1982 	inc	de
   4D87 13            [ 6] 1983 	inc	de
   4D88 13            [ 6] 1984 	inc	de
   4D89 13            [ 6] 1985 	inc	de
   4D8A 1A            [ 7] 1986 	ld	a,(de)
   4D8B C6 FF         [ 7] 1987 	add	a,#0xFF
   4D8D 12            [ 7] 1988 	ld	(de),a
   4D8E C9            [10] 1989 	ret
                           1990 ;src/Enemigo.c:305: void recibirDanyo(enemigo* arr[], personaje *p){
                           1991 ;	---------------------------------
                           1992 ; Function recibirDanyo
                           1993 ; ---------------------------------
   4D8F                    1994 _recibirDanyo::
   4D8F DD E5         [15] 1995 	push	ix
   4D91 DD 21 00 00   [14] 1996 	ld	ix,#0
   4D95 DD 39         [15] 1997 	add	ix,sp
   4D97 21 ED FF      [10] 1998 	ld	hl,#-19
   4D9A 39            [11] 1999 	add	hl,sp
   4D9B F9            [ 6] 2000 	ld	sp,hl
                           2001 ;src/Enemigo.c:308: p1=0;
   4D9C DD 36 F0 00   [19] 2002 	ld	-16 (ix),#0x00
                           2003 ;src/Enemigo.c:309: p2=0;
   4DA0 DD 36 EF 00   [19] 2004 	ld	-17 (ix),#0x00
                           2005 ;src/Enemigo.c:310: p3=0;
   4DA4 DD 36 EE 00   [19] 2006 	ld	-18 (ix),#0x00
                           2007 ;src/Enemigo.c:311: p4=0;
   4DA8 DD 36 ED 00   [19] 2008 	ld	-19 (ix),#0x00
                           2009 ;src/Enemigo.c:313: if(p->atacando){
   4DAC DD 7E 06      [19] 2010 	ld	a,6 (ix)
   4DAF DD 77 F8      [19] 2011 	ld	-8 (ix),a
   4DB2 DD 7E 07      [19] 2012 	ld	a,7 (ix)
   4DB5 DD 77 F9      [19] 2013 	ld	-7 (ix),a
   4DB8 DD 6E F8      [19] 2014 	ld	l,-8 (ix)
   4DBB DD 66 F9      [19] 2015 	ld	h,-7 (ix)
   4DBE 11 07 00      [10] 2016 	ld	de, #0x0007
   4DC1 19            [11] 2017 	add	hl, de
   4DC2 4E            [ 7] 2018 	ld	c,(hl)
   4DC3 79            [ 4] 2019 	ld	a,c
   4DC4 B7            [ 4] 2020 	or	a, a
   4DC5 CA 4A 4F      [10] 2021 	jp	Z,00121$
                           2022 ;src/Enemigo.c:314: for(cont=0; cont<maxEnemigosSala;cont++){
   4DC8 DD 7E F8      [19] 2023 	ld	a,-8 (ix)
   4DCB C6 02         [ 7] 2024 	add	a, #0x02
   4DCD DD 77 F4      [19] 2025 	ld	-12 (ix),a
   4DD0 DD 7E F9      [19] 2026 	ld	a,-7 (ix)
   4DD3 CE 00         [ 7] 2027 	adc	a, #0x00
   4DD5 DD 77 F5      [19] 2028 	ld	-11 (ix),a
   4DD8 DD 36 F1 00   [19] 2029 	ld	-15 (ix),#0x00
   4DDC                    2030 00119$:
                           2031 ;src/Enemigo.c:315: if(arr[cont]->vida>0){
   4DDC DD 7E F1      [19] 2032 	ld	a,-15 (ix)
   4DDF DD 77 FA      [19] 2033 	ld	-6 (ix),a
   4DE2 DD 36 FB 00   [19] 2034 	ld	-5 (ix),#0x00
   4DE6 DD CB FA 26   [23] 2035 	sla	-6 (ix)
   4DEA DD CB FB 16   [23] 2036 	rl	-5 (ix)
   4DEE DD 7E 04      [19] 2037 	ld	a,4 (ix)
   4DF1 DD 86 FA      [19] 2038 	add	a, -6 (ix)
   4DF4 DD 77 FA      [19] 2039 	ld	-6 (ix),a
   4DF7 DD 7E 05      [19] 2040 	ld	a,5 (ix)
   4DFA DD 8E FB      [19] 2041 	adc	a, -5 (ix)
   4DFD DD 77 FB      [19] 2042 	ld	-5 (ix),a
                           2043 ;src/Enemigo.c:318: if(arr[cont]->y> p->y-16)
   4E00 DD 6E FA      [19] 2044 	ld	l,-6 (ix)
   4E03 DD 66 FB      [19] 2045 	ld	h,-5 (ix)
   4E06 7E            [ 7] 2046 	ld	a,(hl)
   4E07 DD 77 FE      [19] 2047 	ld	-2 (ix),a
   4E0A 23            [ 6] 2048 	inc	hl
   4E0B 7E            [ 7] 2049 	ld	a,(hl)
   4E0C DD 77 FF      [19] 2050 	ld	-1 (ix),a
                           2051 ;src/Enemigo.c:315: if(arr[cont]->vida>0){
   4E0F DD 7E FE      [19] 2052 	ld	a,-2 (ix)
   4E12 C6 05         [ 7] 2053 	add	a, #0x05
   4E14 DD 77 FC      [19] 2054 	ld	-4 (ix),a
   4E17 DD 7E FF      [19] 2055 	ld	a,-1 (ix)
   4E1A CE 00         [ 7] 2056 	adc	a, #0x00
   4E1C DD 77 FD      [19] 2057 	ld	-3 (ix),a
   4E1F DD 6E FC      [19] 2058 	ld	l,-4 (ix)
   4E22 DD 66 FD      [19] 2059 	ld	h,-3 (ix)
   4E25 7E            [ 7] 2060 	ld	a,(hl)
   4E26 B7            [ 4] 2061 	or	a, a
   4E27 CA 3F 4F      [10] 2062 	jp	Z,00120$
                           2063 ;src/Enemigo.c:316: if(arr[cont]->x>p->x-16)
   4E2A DD 6E FE      [19] 2064 	ld	l,-2 (ix)
   4E2D DD 66 FF      [19] 2065 	ld	h,-1 (ix)
   4E30 7E            [ 7] 2066 	ld	a,(hl)
   4E31 DD 77 F6      [19] 2067 	ld	-10 (ix),a
   4E34 23            [ 6] 2068 	inc	hl
   4E35 7E            [ 7] 2069 	ld	a,(hl)
   4E36 DD 77 F7      [19] 2070 	ld	-9 (ix),a
   4E39 DD 6E F8      [19] 2071 	ld	l,-8 (ix)
   4E3C DD 66 F9      [19] 2072 	ld	h,-7 (ix)
   4E3F 7E            [ 7] 2073 	ld	a,(hl)
   4E40 DD 77 F2      [19] 2074 	ld	-14 (ix),a
   4E43 23            [ 6] 2075 	inc	hl
   4E44 7E            [ 7] 2076 	ld	a,(hl)
   4E45 DD 77 F3      [19] 2077 	ld	-13 (ix),a
   4E48 DD 7E F2      [19] 2078 	ld	a,-14 (ix)
   4E4B C6 F0         [ 7] 2079 	add	a,#0xF0
   4E4D 67            [ 4] 2080 	ld	h,a
   4E4E DD 7E F3      [19] 2081 	ld	a,-13 (ix)
   4E51 CE FF         [ 7] 2082 	adc	a,#0xFF
   4E53 6F            [ 4] 2083 	ld	l,a
   4E54 7C            [ 4] 2084 	ld	a,h
   4E55 DD 96 F6      [19] 2085 	sub	a, -10 (ix)
   4E58 7D            [ 4] 2086 	ld	a,l
   4E59 DD 9E F7      [19] 2087 	sbc	a, -9 (ix)
   4E5C E2 61 4E      [10] 2088 	jp	PO, 00170$
   4E5F EE 80         [ 7] 2089 	xor	a, #0x80
   4E61                    2090 00170$:
   4E61 F2 68 4E      [10] 2091 	jp	P,00102$
                           2092 ;src/Enemigo.c:317: p1=1;
   4E64 DD 36 F0 01   [19] 2093 	ld	-16 (ix),#0x01
   4E68                    2094 00102$:
                           2095 ;src/Enemigo.c:318: if(arr[cont]->y> p->y-16)
   4E68 DD 6E FE      [19] 2096 	ld	l,-2 (ix)
   4E6B DD 66 FF      [19] 2097 	ld	h,-1 (ix)
   4E6E 23            [ 6] 2098 	inc	hl
   4E6F 23            [ 6] 2099 	inc	hl
   4E70 5E            [ 7] 2100 	ld	e,(hl)
   4E71 DD 6E F4      [19] 2101 	ld	l,-12 (ix)
   4E74 DD 66 F5      [19] 2102 	ld	h,-11 (ix)
   4E77 6E            [ 7] 2103 	ld	l,(hl)
   4E78 26 00         [ 7] 2104 	ld	h,#0x00
   4E7A 7D            [ 4] 2105 	ld	a,l
   4E7B C6 F0         [ 7] 2106 	add	a,#0xF0
   4E7D 4F            [ 4] 2107 	ld	c,a
   4E7E 7C            [ 4] 2108 	ld	a,h
   4E7F CE FF         [ 7] 2109 	adc	a,#0xFF
   4E81 47            [ 4] 2110 	ld	b,a
   4E82 16 00         [ 7] 2111 	ld	d,#0x00
   4E84 79            [ 4] 2112 	ld	a,c
   4E85 93            [ 4] 2113 	sub	a, e
   4E86 78            [ 4] 2114 	ld	a,b
   4E87 9A            [ 4] 2115 	sbc	a, d
   4E88 E2 8D 4E      [10] 2116 	jp	PO, 00171$
   4E8B EE 80         [ 7] 2117 	xor	a, #0x80
   4E8D                    2118 00171$:
   4E8D F2 94 4E      [10] 2119 	jp	P,00104$
                           2120 ;src/Enemigo.c:319: p2=1;
   4E90 DD 36 EF 01   [19] 2121 	ld	-17 (ix),#0x01
   4E94                    2122 00104$:
                           2123 ;src/Enemigo.c:320: if(arr[cont]->x< p->x+16)
   4E94 DD 7E F2      [19] 2124 	ld	a,-14 (ix)
   4E97 C6 10         [ 7] 2125 	add	a, #0x10
   4E99 4F            [ 4] 2126 	ld	c,a
   4E9A DD 7E F3      [19] 2127 	ld	a,-13 (ix)
   4E9D CE 00         [ 7] 2128 	adc	a, #0x00
   4E9F 47            [ 4] 2129 	ld	b,a
   4EA0 DD 7E F6      [19] 2130 	ld	a,-10 (ix)
   4EA3 91            [ 4] 2131 	sub	a, c
   4EA4 DD 7E F7      [19] 2132 	ld	a,-9 (ix)
   4EA7 98            [ 4] 2133 	sbc	a, b
   4EA8 E2 AD 4E      [10] 2134 	jp	PO, 00172$
   4EAB EE 80         [ 7] 2135 	xor	a, #0x80
   4EAD                    2136 00172$:
   4EAD F2 B4 4E      [10] 2137 	jp	P,00106$
                           2138 ;src/Enemigo.c:321: p3=1;
   4EB0 DD 36 EE 01   [19] 2139 	ld	-18 (ix),#0x01
   4EB4                    2140 00106$:
                           2141 ;src/Enemigo.c:322: if(arr[cont]->y<p->y+16)
   4EB4 01 10 00      [10] 2142 	ld	bc,#0x0010
   4EB7 09            [11] 2143 	add	hl,bc
   4EB8 7B            [ 4] 2144 	ld	a,e
   4EB9 95            [ 4] 2145 	sub	a, l
   4EBA 7A            [ 4] 2146 	ld	a,d
   4EBB 9C            [ 4] 2147 	sbc	a, h
   4EBC E2 C1 4E      [10] 2148 	jp	PO, 00173$
   4EBF EE 80         [ 7] 2149 	xor	a, #0x80
   4EC1                    2150 00173$:
   4EC1 F2 C8 4E      [10] 2151 	jp	P,00108$
                           2152 ;src/Enemigo.c:323: p4=1;
   4EC4 DD 36 ED 01   [19] 2153 	ld	-19 (ix),#0x01
   4EC8                    2154 00108$:
                           2155 ;src/Enemigo.c:324: if(p1 && p2 && p3 && p4 ){
   4EC8 DD 7E F0      [19] 2156 	ld	a,-16 (ix)
   4ECB B7            [ 4] 2157 	or	a, a
   4ECC 28 61         [12] 2158 	jr	Z,00110$
   4ECE DD 7E EF      [19] 2159 	ld	a,-17 (ix)
   4ED1 B7            [ 4] 2160 	or	a, a
   4ED2 28 5B         [12] 2161 	jr	Z,00110$
   4ED4 DD 7E EE      [19] 2162 	ld	a,-18 (ix)
   4ED7 B7            [ 4] 2163 	or	a, a
   4ED8 28 55         [12] 2164 	jr	Z,00110$
   4EDA DD 7E ED      [19] 2165 	ld	a,-19 (ix)
   4EDD B7            [ 4] 2166 	or	a, a
   4EDE 28 4F         [12] 2167 	jr	Z,00110$
                           2168 ;src/Enemigo.c:325: arr[cont]->vida=0;
   4EE0 DD 6E FC      [19] 2169 	ld	l,-4 (ix)
   4EE3 DD 66 FD      [19] 2170 	ld	h,-3 (ix)
   4EE6 36 00         [10] 2171 	ld	(hl),#0x00
                           2172 ;src/Enemigo.c:326: cpct_drawSolidBox(arr[cont]->memPtr, cpct_px2byteM1(2,2,2,2), 4, 16);
   4EE8 21 02 02      [10] 2173 	ld	hl,#0x0202
   4EEB E5            [11] 2174 	push	hl
   4EEC 2E 02         [ 7] 2175 	ld	l, #0x02
   4EEE E5            [11] 2176 	push	hl
   4EEF CD B9 75      [17] 2177 	call	_cpct_px2byteM1
   4EF2 F1            [10] 2178 	pop	af
   4EF3 F1            [10] 2179 	pop	af
   4EF4 DD 75 F2      [19] 2180 	ld	-14 (ix),l
   4EF7 DD 6E FA      [19] 2181 	ld	l,-6 (ix)
   4EFA DD 66 FB      [19] 2182 	ld	h,-5 (ix)
   4EFD 7E            [ 7] 2183 	ld	a,(hl)
   4EFE DD 77 F6      [19] 2184 	ld	-10 (ix),a
   4F01 23            [ 6] 2185 	inc	hl
   4F02 7E            [ 7] 2186 	ld	a,(hl)
   4F03 DD 77 F7      [19] 2187 	ld	-9 (ix),a
   4F06 DD 6E F6      [19] 2188 	ld	l,-10 (ix)
   4F09 DD 66 F7      [19] 2189 	ld	h,-9 (ix)
   4F0C 11 06 00      [10] 2190 	ld	de, #0x0006
   4F0F 19            [11] 2191 	add	hl, de
   4F10 7E            [ 7] 2192 	ld	a,(hl)
   4F11 DD 77 F6      [19] 2193 	ld	-10 (ix),a
   4F14 23            [ 6] 2194 	inc	hl
   4F15 7E            [ 7] 2195 	ld	a,(hl)
   4F16 DD 77 F7      [19] 2196 	ld	-9 (ix),a
   4F19 21 04 10      [10] 2197 	ld	hl,#0x1004
   4F1C E5            [11] 2198 	push	hl
   4F1D DD 7E F2      [19] 2199 	ld	a,-14 (ix)
   4F20 F5            [11] 2200 	push	af
   4F21 33            [ 6] 2201 	inc	sp
   4F22 DD 6E F6      [19] 2202 	ld	l,-10 (ix)
   4F25 DD 66 F7      [19] 2203 	ld	h,-9 (ix)
   4F28 E5            [11] 2204 	push	hl
   4F29 CD E6 75      [17] 2205 	call	_cpct_drawSolidBox
   4F2C F1            [10] 2206 	pop	af
   4F2D F1            [10] 2207 	pop	af
   4F2E 33            [ 6] 2208 	inc	sp
   4F2F                    2209 00110$:
                           2210 ;src/Enemigo.c:328: p1=0;
   4F2F DD 36 F0 00   [19] 2211 	ld	-16 (ix),#0x00
                           2212 ;src/Enemigo.c:329: p2=0;
   4F33 DD 36 EF 00   [19] 2213 	ld	-17 (ix),#0x00
                           2214 ;src/Enemigo.c:330: p3=0;
   4F37 DD 36 EE 00   [19] 2215 	ld	-18 (ix),#0x00
                           2216 ;src/Enemigo.c:331: p4=0;
   4F3B DD 36 ED 00   [19] 2217 	ld	-19 (ix),#0x00
   4F3F                    2218 00120$:
                           2219 ;src/Enemigo.c:314: for(cont=0; cont<maxEnemigosSala;cont++){
   4F3F DD 34 F1      [23] 2220 	inc	-15 (ix)
   4F42 DD 7E F1      [19] 2221 	ld	a,-15 (ix)
   4F45 D6 03         [ 7] 2222 	sub	a, #0x03
   4F47 DA DC 4D      [10] 2223 	jp	C,00119$
   4F4A                    2224 00121$:
   4F4A DD F9         [10] 2225 	ld	sp, ix
   4F4C DD E1         [14] 2226 	pop	ix
   4F4E C9            [10] 2227 	ret
                           2228 	.area _CODE
                           2229 	.area _INITIALIZER
                           2230 	.area _CABS (ABS)
