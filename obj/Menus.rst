                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:07:50 2015
                              5 ;--------------------------------------------------------
                              6 	.module Menus
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _cpct_getScreenPtr
                             13 	.globl _cpct_drawStringM1
                             14 	.globl _cpct_drawSolidBox
                             15 	.globl _cpct_px2byteM1
                             16 	.globl _cpct_isKeyPressed
                             17 	.globl _cpct_scanKeyboard
                             18 	.globl _cpct_memset
                             19 	.globl _menuInicio
                             20 	.globl _menuGameOver
                             21 	.globl _pintaInicio
                             22 	.globl _pintaCreditos
                             23 	.globl _pintaControles
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DATA
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
                             35 ;--------------------------------------------------------
                             36 ; absolute external ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DABS (ABS)
                             39 ;--------------------------------------------------------
                             40 ; global & static initialisations
                             41 ;--------------------------------------------------------
                             42 	.area _HOME
                             43 	.area _GSINIT
                             44 	.area _GSFINAL
                             45 	.area _GSINIT
                             46 ;--------------------------------------------------------
                             47 ; Home
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _HOME
                             51 ;--------------------------------------------------------
                             52 ; code
                             53 ;--------------------------------------------------------
                             54 	.area _CODE
                             55 ;src/Menus.c:3: void menuInicio(){
                             56 ;	---------------------------------
                             57 ; Function menuInicio
                             58 ; ---------------------------------
   6607                      59 _menuInicio::
                             60 ;src/Menus.c:4: pintaInicio();
   6607 CD DA 66      [17]   61 	call	_pintaInicio
                             62 ;src/Menus.c:5: while(1){
   660A                      63 00113$:
                             64 ;src/Menus.c:6: cpct_scanKeyboard();
   660A CD B7 76      [17]   65 	call	_cpct_scanKeyboard
                             66 ;src/Menus.c:7: if(cpct_isKeyPressed(Key_1)){
   660D 21 08 01      [10]   67 	ld	hl,#0x0108
   6610 CD EE 71      [17]   68 	call	_cpct_isKeyPressed
   6613 7D            [ 4]   69 	ld	a,l
   6614 B7            [ 4]   70 	or	a, a
   6615 C0            [11]   71 	ret	NZ
                             72 ;src/Menus.c:10: else if(cpct_isKeyPressed(Key_2)){
   6616 21 08 02      [10]   73 	ld	hl,#0x0208
   6619 CD EE 71      [17]   74 	call	_cpct_isKeyPressed
   661C 7D            [ 4]   75 	ld	a,l
   661D B7            [ 4]   76 	or	a, a
   661E 28 05         [12]   77 	jr	Z,00107$
                             78 ;src/Menus.c:11: pintaControles();
   6620 CD 38 69      [17]   79 	call	_pintaControles
   6623 18 E5         [12]   80 	jr	00113$
   6625                      81 00107$:
                             82 ;src/Menus.c:13: else if(cpct_isKeyPressed(Key_3)){
   6625 21 07 02      [10]   83 	ld	hl,#0x0207
   6628 CD EE 71      [17]   84 	call	_cpct_isKeyPressed
   662B 7D            [ 4]   85 	ld	a,l
   662C B7            [ 4]   86 	or	a, a
   662D 28 05         [12]   87 	jr	Z,00104$
                             88 ;src/Menus.c:14: pintaCreditos();
   662F CD 92 68      [17]   89 	call	_pintaCreditos
   6632 18 D6         [12]   90 	jr	00113$
   6634                      91 00104$:
                             92 ;src/Menus.c:16: else if(cpct_isKeyPressed(Key_5)){
   6634 21 06 02      [10]   93 	ld	hl,#0x0206
   6637 CD EE 71      [17]   94 	call	_cpct_isKeyPressed
   663A 7D            [ 4]   95 	ld	a,l
   663B B7            [ 4]   96 	or	a, a
   663C 28 CC         [12]   97 	jr	Z,00113$
                             98 ;src/Menus.c:17: pintaInicio();
   663E CD DA 66      [17]   99 	call	_pintaInicio
   6641 18 C7         [12]  100 	jr	00113$
                            101 ;src/Menus.c:21: void menuGameOver(){
                            102 ;	---------------------------------
                            103 ; Function menuGameOver
                            104 ; ---------------------------------
   6643                     105 _menuGameOver::
                            106 ;src/Menus.c:23: memPtr=cpct_getScreenPtr(video_memory_start,13,33);
   6643 ED 5B 25 42   [20]  107 	ld	de,(_video_memory_start)
   6647 21 0D 21      [10]  108 	ld	hl,#0x210D
   664A E5            [11]  109 	push	hl
   664B D5            [11]  110 	push	de
   664C CD E8 76      [17]  111 	call	_cpct_getScreenPtr
                            112 ;src/Menus.c:24: cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1),52,132);
   664F E5            [11]  113 	push	hl
   6650 21 01 01      [10]  114 	ld	hl,#0x0101
   6653 E5            [11]  115 	push	hl
   6654 2E 01         [ 7]  116 	ld	l, #0x01
   6656 E5            [11]  117 	push	hl
   6657 CD B9 75      [17]  118 	call	_cpct_px2byteM1
   665A F1            [10]  119 	pop	af
   665B F1            [10]  120 	pop	af
   665C 45            [ 4]  121 	ld	b,l
   665D D1            [10]  122 	pop	de
   665E 21 34 84      [10]  123 	ld	hl,#0x8434
   6661 E5            [11]  124 	push	hl
   6662 C5            [11]  125 	push	bc
   6663 33            [ 6]  126 	inc	sp
   6664 D5            [11]  127 	push	de
   6665 CD E6 75      [17]  128 	call	_cpct_drawSolidBox
   6668 F1            [10]  129 	pop	af
   6669 F1            [10]  130 	pop	af
   666A 33            [ 6]  131 	inc	sp
                            132 ;src/Menus.c:25: memPtr=cpct_getScreenPtr(video_memory_start,26,66);
   666B ED 5B 25 42   [20]  133 	ld	de,(_video_memory_start)
   666F 21 1A 42      [10]  134 	ld	hl,#0x421A
   6672 E5            [11]  135 	push	hl
   6673 D5            [11]  136 	push	de
   6674 CD E8 76      [17]  137 	call	_cpct_getScreenPtr
                            138 ;src/Menus.c:26: cpct_drawStringM1("Has muerto :'(", memPtr, 3, 1);
   6677 EB            [ 4]  139 	ex	de,hl
   6678 01 B8 66      [10]  140 	ld	bc,#___str_0+0
   667B 21 03 01      [10]  141 	ld	hl,#0x0103
   667E E5            [11]  142 	push	hl
   667F D5            [11]  143 	push	de
   6680 C5            [11]  144 	push	bc
   6681 CD 64 72      [17]  145 	call	_cpct_drawStringM1
   6684 21 06 00      [10]  146 	ld	hl,#6
   6687 39            [11]  147 	add	hl,sp
   6688 F9            [ 6]  148 	ld	sp,hl
                            149 ;src/Menus.c:27: memPtr=cpct_getScreenPtr(video_memory_start,26,74);
   6689 ED 5B 25 42   [20]  150 	ld	de,(_video_memory_start)
   668D 21 1A 4A      [10]  151 	ld	hl,#0x4A1A
   6690 E5            [11]  152 	push	hl
   6691 D5            [11]  153 	push	de
   6692 CD E8 76      [17]  154 	call	_cpct_getScreenPtr
                            155 ;src/Menus.c:28: cpct_drawStringM1("Pulsa K para jugar", memPtr, 3, 1);
   6695 EB            [ 4]  156 	ex	de,hl
   6696 01 C7 66      [10]  157 	ld	bc,#___str_1+0
   6699 21 03 01      [10]  158 	ld	hl,#0x0103
   669C E5            [11]  159 	push	hl
   669D D5            [11]  160 	push	de
   669E C5            [11]  161 	push	bc
   669F CD 64 72      [17]  162 	call	_cpct_drawStringM1
   66A2 21 06 00      [10]  163 	ld	hl,#6
   66A5 39            [11]  164 	add	hl,sp
   66A6 F9            [ 6]  165 	ld	sp,hl
                            166 ;src/Menus.c:29: while(1){
   66A7                     167 00104$:
                            168 ;src/Menus.c:30: cpct_scanKeyboard();
   66A7 CD B7 76      [17]  169 	call	_cpct_scanKeyboard
                            170 ;src/Menus.c:31: if(cpct_isKeyPressed(Key_K)){
   66AA 21 04 20      [10]  171 	ld	hl,#0x2004
   66AD CD EE 71      [17]  172 	call	_cpct_isKeyPressed
   66B0 7D            [ 4]  173 	ld	a,l
   66B1 B7            [ 4]  174 	or	a, a
   66B2 28 F3         [12]  175 	jr	Z,00104$
                            176 ;src/Menus.c:32: menuInicio();
   66B4 CD 07 66      [17]  177 	call	_menuInicio
                            178 ;src/Menus.c:33: break;
   66B7 C9            [10]  179 	ret
   66B8                     180 ___str_0:
   66B8 48 61 73 20 6D 75   181 	.ascii "Has muerto :'("
        65 72 74 6F 20 3A
        27 28
   66C6 00                  182 	.db 0x00
   66C7                     183 ___str_1:
   66C7 50 75 6C 73 61 20   184 	.ascii "Pulsa K para jugar"
        4B 20 70 61 72 61
        20 6A 75 67 61 72
   66D9 00                  185 	.db 0x00
                            186 ;src/Menus.c:37: void pintaInicio(){
                            187 ;	---------------------------------
                            188 ; Function pintaInicio
                            189 ; ---------------------------------
   66DA                     190 _pintaInicio::
   66DA DD E5         [15]  191 	push	ix
   66DC DD 21 00 00   [14]  192 	ld	ix,#0
   66E0 DD 39         [15]  193 	add	ix,sp
   66E2 21 F7 FF      [10]  194 	ld	hl,#-9
   66E5 39            [11]  195 	add	hl,sp
   66E6 F9            [ 6]  196 	ld	sp,hl
                            197 ;src/Menus.c:39: char const *s0=" ___ __      _    _  _     _      __  _ ";
                            198 ;src/Menus.c:40: char const *s1="  | |  || | |    |  | ||  | || | |  ||  ";
                            199 ;src/Menus.c:41: char const *s2="  | |__|| | |-   |  | ||  | || | |__||_ ";
                            200 ;src/Menus.c:42: char const *s3="  | | | |_| |_   |_ |_||_ |_||_| | |  _|";
                            201 ;src/Menus.c:43: char const * titulo[]={s0,s1,s2,s3};   //68
   66E7 21 00 00      [10]  202 	ld	hl,#0x0000
   66EA 39            [11]  203 	add	hl,sp
   66EB 5D            [ 4]  204 	ld	e,l
   66EC 54            [ 4]  205 	ld	d,h
   66ED 36 CF         [10]  206 	ld	(hl),#<(___str_2)
   66EF 23            [ 6]  207 	inc	hl
   66F0 36 67         [10]  208 	ld	(hl),#>(___str_2)
   66F2 6B            [ 4]  209 	ld	l, e
   66F3 62            [ 4]  210 	ld	h, d
   66F4 23            [ 6]  211 	inc	hl
   66F5 23            [ 6]  212 	inc	hl
   66F6 36 F8         [10]  213 	ld	(hl),#<(___str_3)
   66F8 23            [ 6]  214 	inc	hl
   66F9 36 67         [10]  215 	ld	(hl),#>(___str_3)
   66FB 21 04 00      [10]  216 	ld	hl,#0x0004
   66FE 19            [11]  217 	add	hl,de
   66FF 36 21         [10]  218 	ld	(hl),#<(___str_4)
   6701 23            [ 6]  219 	inc	hl
   6702 36 68         [10]  220 	ld	(hl),#>(___str_4)
   6704 21 06 00      [10]  221 	ld	hl,#0x0006
   6707 19            [11]  222 	add	hl,de
   6708 36 4A         [10]  223 	ld	(hl),#<(___str_5)
   670A 23            [ 6]  224 	inc	hl
   670B 36 68         [10]  225 	ld	(hl),#>(___str_5)
                            226 ;src/Menus.c:44: cpct_clearScreen(cpct_px2byteM1(1,1,1,1));
   670D D5            [11]  227 	push	de
   670E 21 01 01      [10]  228 	ld	hl,#0x0101
   6711 E5            [11]  229 	push	hl
   6712 2E 01         [ 7]  230 	ld	l, #0x01
   6714 E5            [11]  231 	push	hl
   6715 CD B9 75      [17]  232 	call	_cpct_px2byteM1
   6718 F1            [10]  233 	pop	af
   6719 F1            [10]  234 	pop	af
   671A 65            [ 4]  235 	ld	h,l
   671B 01 00 40      [10]  236 	ld	bc,#0x4000
   671E C5            [11]  237 	push	bc
   671F E5            [11]  238 	push	hl
   6720 33            [ 6]  239 	inc	sp
   6721 21 00 C0      [10]  240 	ld	hl,#0xC000
   6724 E5            [11]  241 	push	hl
   6725 CD AB 75      [17]  242 	call	_cpct_memset
   6728 D1            [10]  243 	pop	de
                            244 ;src/Menus.c:46: for(a=0;a<4;a++){
   6729 DD 36 FF 00   [19]  245 	ld	-1 (ix),#0x00
   672D                     246 00102$:
                            247 ;src/Menus.c:47: memPtr=cpct_getScreenPtr(video_memory_start,0,8*a);
   672D DD 7E FF      [19]  248 	ld	a,-1 (ix)
   6730 07            [ 4]  249 	rlca
   6731 07            [ 4]  250 	rlca
   6732 07            [ 4]  251 	rlca
   6733 E6 F8         [ 7]  252 	and	a,#0xF8
   6735 67            [ 4]  253 	ld	h,a
   6736 ED 4B 25 42   [20]  254 	ld	bc,(_video_memory_start)
   673A D5            [11]  255 	push	de
   673B E5            [11]  256 	push	hl
   673C 33            [ 6]  257 	inc	sp
   673D AF            [ 4]  258 	xor	a, a
   673E F5            [11]  259 	push	af
   673F 33            [ 6]  260 	inc	sp
   6740 C5            [11]  261 	push	bc
   6741 CD E8 76      [17]  262 	call	_cpct_getScreenPtr
   6744 D1            [10]  263 	pop	de
   6745 E5            [11]  264 	push	hl
   6746 FD E1         [14]  265 	pop	iy
                            266 ;src/Menus.c:48: cpct_drawStringM1(titulo[a], memPtr, 0, 1);
   6748 DD 6E FF      [19]  267 	ld	l,-1 (ix)
   674B 26 00         [ 7]  268 	ld	h,#0x00
   674D 29            [11]  269 	add	hl, hl
   674E 19            [11]  270 	add	hl,de
   674F 4E            [ 7]  271 	ld	c,(hl)
   6750 23            [ 6]  272 	inc	hl
   6751 46            [ 7]  273 	ld	b,(hl)
   6752 D5            [11]  274 	push	de
   6753 21 00 01      [10]  275 	ld	hl,#0x0100
   6756 E5            [11]  276 	push	hl
   6757 FD E5         [15]  277 	push	iy
   6759 C5            [11]  278 	push	bc
   675A CD 64 72      [17]  279 	call	_cpct_drawStringM1
   675D 21 06 00      [10]  280 	ld	hl,#6
   6760 39            [11]  281 	add	hl,sp
   6761 F9            [ 6]  282 	ld	sp,hl
   6762 D1            [10]  283 	pop	de
                            284 ;src/Menus.c:46: for(a=0;a<4;a++){
   6763 DD 34 FF      [23]  285 	inc	-1 (ix)
   6766 DD 7E FF      [19]  286 	ld	a,-1 (ix)
   6769 D6 04         [ 7]  287 	sub	a, #0x04
   676B 38 C0         [12]  288 	jr	C,00102$
                            289 ;src/Menus.c:51: memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
   676D ED 5B 25 42   [20]  290 	ld	de,(_video_memory_start)
   6771 21 04 58      [10]  291 	ld	hl,#0x5804
   6774 E5            [11]  292 	push	hl
   6775 D5            [11]  293 	push	de
   6776 CD E8 76      [17]  294 	call	_cpct_getScreenPtr
                            295 ;src/Menus.c:52: cpct_drawStringM1("1-JUGAR", memPtr, 3, 1);
   6779 4D            [ 4]  296 	ld	c, l
   677A 44            [ 4]  297 	ld	b, h
   677B 11 73 68      [10]  298 	ld	de,#___str_6
   677E 21 03 01      [10]  299 	ld	hl,#0x0103
   6781 E5            [11]  300 	push	hl
   6782 C5            [11]  301 	push	bc
   6783 D5            [11]  302 	push	de
   6784 CD 64 72      [17]  303 	call	_cpct_drawStringM1
   6787 21 06 00      [10]  304 	ld	hl,#6
   678A 39            [11]  305 	add	hl,sp
   678B F9            [ 6]  306 	ld	sp,hl
                            307 ;src/Menus.c:53: memPtr=cpct_getScreenPtr(video_memory_start,4,8*13);
   678C ED 5B 25 42   [20]  308 	ld	de,(_video_memory_start)
   6790 21 04 68      [10]  309 	ld	hl,#0x6804
   6793 E5            [11]  310 	push	hl
   6794 D5            [11]  311 	push	de
   6795 CD E8 76      [17]  312 	call	_cpct_getScreenPtr
                            313 ;src/Menus.c:54: cpct_drawStringM1("2-CONTROLES", memPtr, 3, 1);
   6798 4D            [ 4]  314 	ld	c, l
   6799 44            [ 4]  315 	ld	b, h
   679A 11 7B 68      [10]  316 	ld	de,#___str_7
   679D 21 03 01      [10]  317 	ld	hl,#0x0103
   67A0 E5            [11]  318 	push	hl
   67A1 C5            [11]  319 	push	bc
   67A2 D5            [11]  320 	push	de
   67A3 CD 64 72      [17]  321 	call	_cpct_drawStringM1
   67A6 21 06 00      [10]  322 	ld	hl,#6
   67A9 39            [11]  323 	add	hl,sp
   67AA F9            [ 6]  324 	ld	sp,hl
                            325 ;src/Menus.c:55: memPtr=cpct_getScreenPtr(video_memory_start,4,8*15);
   67AB ED 5B 25 42   [20]  326 	ld	de,(_video_memory_start)
   67AF 21 04 78      [10]  327 	ld	hl,#0x7804
   67B2 E5            [11]  328 	push	hl
   67B3 D5            [11]  329 	push	de
   67B4 CD E8 76      [17]  330 	call	_cpct_getScreenPtr
                            331 ;src/Menus.c:56: cpct_drawStringM1("3-CREDITOS", memPtr, 3, 1);
   67B7 4D            [ 4]  332 	ld	c, l
   67B8 44            [ 4]  333 	ld	b, h
   67B9 11 87 68      [10]  334 	ld	de,#___str_8
   67BC 21 03 01      [10]  335 	ld	hl,#0x0103
   67BF E5            [11]  336 	push	hl
   67C0 C5            [11]  337 	push	bc
   67C1 D5            [11]  338 	push	de
   67C2 CD 64 72      [17]  339 	call	_cpct_drawStringM1
   67C5 21 06 00      [10]  340 	ld	hl,#6
   67C8 39            [11]  341 	add	hl,sp
   67C9 F9            [ 6]  342 	ld	sp,hl
   67CA DD F9         [10]  343 	ld	sp, ix
   67CC DD E1         [14]  344 	pop	ix
   67CE C9            [10]  345 	ret
   67CF                     346 ___str_2:
   67CF 20 5F 5F 5F 20 5F   347 	.ascii " ___ __      _    _  _     _      __  _ "
        5F 20 20 20 20 20
        20 5F 20 20 20 20
        5F 20 20 5F 20 20
        20 20 20 5F 20 20
        20 20 20 20 5F 5F
        20 20 5F 20
   67F7 00                  348 	.db 0x00
   67F8                     349 ___str_3:
   67F8 20 20 7C 20 7C 20   350 	.ascii "  | |  || | |    |  | ||  | || | |  ||  "
        20 7C 7C 20 7C 20
        7C 20 20 20 20 7C
        20 20 7C 20 7C 7C
        20 20 7C 20 7C 7C
        20 7C 20 7C 20 20
        7C 7C 20 20
   6820 00                  351 	.db 0x00
   6821                     352 ___str_4:
   6821 20 20 7C 20 7C 5F   353 	.ascii "  | |__|| | |-   |  | ||  | || | |__||_ "
        5F 7C 7C 20 7C 20
        7C 2D 20 20 20 7C
        20 20 7C 20 7C 7C
        20 20 7C 20 7C 7C
        20 7C 20 7C 5F 5F
        7C 7C 5F 20
   6849 00                  354 	.db 0x00
   684A                     355 ___str_5:
   684A 20 20 7C 20 7C 20   356 	.ascii "  | | | |_| |_   |_ |_||_ |_||_| | |  _|"
        7C 20 7C 5F 7C 20
        7C 5F 20 20 20 7C
        5F 20 7C 5F 7C 7C
        5F 20 7C 5F 7C 7C
        5F 7C 20 7C 20 7C
        20 20 5F 7C
   6872 00                  357 	.db 0x00
   6873                     358 ___str_6:
   6873 31 2D 4A 55 47 41   359 	.ascii "1-JUGAR"
        52
   687A 00                  360 	.db 0x00
   687B                     361 ___str_7:
   687B 32 2D 43 4F 4E 54   362 	.ascii "2-CONTROLES"
        52 4F 4C 45 53
   6886 00                  363 	.db 0x00
   6887                     364 ___str_8:
   6887 33 2D 43 52 45 44   365 	.ascii "3-CREDITOS"
        49 54 4F 53
   6891 00                  366 	.db 0x00
                            367 ;src/Menus.c:58: void pintaCreditos(){
                            368 ;	---------------------------------
                            369 ; Function pintaCreditos
                            370 ; ---------------------------------
   6892                     371 _pintaCreditos::
                            372 ;src/Menus.c:60: memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
   6892 ED 5B 25 42   [20]  373 	ld	de,(_video_memory_start)
   6896 21 04 58      [10]  374 	ld	hl,#0x5804
   6899 E5            [11]  375 	push	hl
   689A D5            [11]  376 	push	de
   689B CD E8 76      [17]  377 	call	_cpct_getScreenPtr
                            378 ;src/Menus.c:61: cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1), 22, 7*7);
   689E E5            [11]  379 	push	hl
   689F 21 01 01      [10]  380 	ld	hl,#0x0101
   68A2 E5            [11]  381 	push	hl
   68A3 2E 01         [ 7]  382 	ld	l, #0x01
   68A5 E5            [11]  383 	push	hl
   68A6 CD B9 75      [17]  384 	call	_cpct_px2byteM1
   68A9 F1            [10]  385 	pop	af
   68AA F1            [10]  386 	pop	af
   68AB 55            [ 4]  387 	ld	d,l
   68AC C1            [10]  388 	pop	bc
   68AD C5            [11]  389 	push	bc
   68AE 21 16 31      [10]  390 	ld	hl,#0x3116
   68B1 E5            [11]  391 	push	hl
   68B2 D5            [11]  392 	push	de
   68B3 33            [ 6]  393 	inc	sp
   68B4 C5            [11]  394 	push	bc
   68B5 CD E6 75      [17]  395 	call	_cpct_drawSolidBox
   68B8 F1            [10]  396 	pop	af
   68B9 F1            [10]  397 	pop	af
   68BA 33            [ 6]  398 	inc	sp
   68BB C1            [10]  399 	pop	bc
                            400 ;src/Menus.c:62: cpct_drawStringM1("Creado por Alex Verdu y Manuel Gomez", memPtr, 3, 1);
   68BC 11 ED 68      [10]  401 	ld	de,#___str_9
   68BF 21 03 01      [10]  402 	ld	hl,#0x0103
   68C2 E5            [11]  403 	push	hl
   68C3 C5            [11]  404 	push	bc
   68C4 D5            [11]  405 	push	de
   68C5 CD 64 72      [17]  406 	call	_cpct_drawStringM1
   68C8 21 06 00      [10]  407 	ld	hl,#6
   68CB 39            [11]  408 	add	hl,sp
   68CC F9            [ 6]  409 	ld	sp,hl
                            410 ;src/Menus.c:63: memPtr=cpct_getScreenPtr(video_memory_start,4,120);
   68CD ED 5B 25 42   [20]  411 	ld	de,(_video_memory_start)
   68D1 21 04 78      [10]  412 	ld	hl,#0x7804
   68D4 E5            [11]  413 	push	hl
   68D5 D5            [11]  414 	push	de
   68D6 CD E8 76      [17]  415 	call	_cpct_getScreenPtr
                            416 ;src/Menus.c:64: cpct_drawStringM1("Pulsa 5 para volver al menu principal", memPtr, 3, 1);
   68D9 4D            [ 4]  417 	ld	c, l
   68DA 44            [ 4]  418 	ld	b, h
   68DB 11 12 69      [10]  419 	ld	de,#___str_10
   68DE 21 03 01      [10]  420 	ld	hl,#0x0103
   68E1 E5            [11]  421 	push	hl
   68E2 C5            [11]  422 	push	bc
   68E3 D5            [11]  423 	push	de
   68E4 CD 64 72      [17]  424 	call	_cpct_drawStringM1
   68E7 21 06 00      [10]  425 	ld	hl,#6
   68EA 39            [11]  426 	add	hl,sp
   68EB F9            [ 6]  427 	ld	sp,hl
   68EC C9            [10]  428 	ret
   68ED                     429 ___str_9:
   68ED 43 72 65 61 64 6F   430 	.ascii "Creado por Alex Verdu y Manuel Gomez"
        20 70 6F 72 20 41
        6C 65 78 20 56 65
        72 64 75 20 79 20
        4D 61 6E 75 65 6C
        20 47 6F 6D 65 7A
   6911 00                  431 	.db 0x00
   6912                     432 ___str_10:
   6912 50 75 6C 73 61 20   433 	.ascii "Pulsa 5 para volver al menu principal"
        35 20 70 61 72 61
        20 76 6F 6C 76 65
        72 20 61 6C 20 6D
        65 6E 75 20 70 72
        69 6E 63 69 70 61
        6C
   6937 00                  434 	.db 0x00
                            435 ;src/Menus.c:66: void pintaControles(){
                            436 ;	---------------------------------
                            437 ; Function pintaControles
                            438 ; ---------------------------------
   6938                     439 _pintaControles::
                            440 ;src/Menus.c:68: memPtr=cpct_getScreenPtr(video_memory_start,4,8*11);
   6938 ED 5B 25 42   [20]  441 	ld	de,(_video_memory_start)
   693C 21 04 58      [10]  442 	ld	hl,#0x5804
   693F E5            [11]  443 	push	hl
   6940 D5            [11]  444 	push	de
   6941 CD E8 76      [17]  445 	call	_cpct_getScreenPtr
                            446 ;src/Menus.c:69: cpct_drawSolidBox(memPtr, cpct_px2byteM1(1,1,1,1), 22, 7*7);
   6944 E5            [11]  447 	push	hl
   6945 21 01 01      [10]  448 	ld	hl,#0x0101
   6948 E5            [11]  449 	push	hl
   6949 2E 01         [ 7]  450 	ld	l, #0x01
   694B E5            [11]  451 	push	hl
   694C CD B9 75      [17]  452 	call	_cpct_px2byteM1
   694F F1            [10]  453 	pop	af
   6950 F1            [10]  454 	pop	af
   6951 55            [ 4]  455 	ld	d,l
   6952 C1            [10]  456 	pop	bc
   6953 C5            [11]  457 	push	bc
   6954 21 16 31      [10]  458 	ld	hl,#0x3116
   6957 E5            [11]  459 	push	hl
   6958 D5            [11]  460 	push	de
   6959 33            [ 6]  461 	inc	sp
   695A C5            [11]  462 	push	bc
   695B CD E6 75      [17]  463 	call	_cpct_drawSolidBox
   695E F1            [10]  464 	pop	af
   695F F1            [10]  465 	pop	af
   6960 33            [ 6]  466 	inc	sp
   6961 C1            [10]  467 	pop	bc
                            468 ;src/Menus.c:70: cpct_drawStringM1("Muevete con W,A,S,D", memPtr, 3, 1);
   6962 11 B2 69      [10]  469 	ld	de,#___str_11
   6965 21 03 01      [10]  470 	ld	hl,#0x0103
   6968 E5            [11]  471 	push	hl
   6969 C5            [11]  472 	push	bc
   696A D5            [11]  473 	push	de
   696B CD 64 72      [17]  474 	call	_cpct_drawStringM1
   696E 21 06 00      [10]  475 	ld	hl,#6
   6971 39            [11]  476 	add	hl,sp
   6972 F9            [ 6]  477 	ld	sp,hl
                            478 ;src/Menus.c:71: memPtr=cpct_getScreenPtr(video_memory_start,4,8*13);
   6973 ED 5B 25 42   [20]  479 	ld	de,(_video_memory_start)
   6977 21 04 68      [10]  480 	ld	hl,#0x6804
   697A E5            [11]  481 	push	hl
   697B D5            [11]  482 	push	de
   697C CD E8 76      [17]  483 	call	_cpct_getScreenPtr
                            484 ;src/Menus.c:72: cpct_drawStringM1("Golpea con K", memPtr, 3, 1);
   697F 4D            [ 4]  485 	ld	c, l
   6980 44            [ 4]  486 	ld	b, h
   6981 11 C6 69      [10]  487 	ld	de,#___str_12
   6984 21 03 01      [10]  488 	ld	hl,#0x0103
   6987 E5            [11]  489 	push	hl
   6988 C5            [11]  490 	push	bc
   6989 D5            [11]  491 	push	de
   698A CD 64 72      [17]  492 	call	_cpct_drawStringM1
   698D 21 06 00      [10]  493 	ld	hl,#6
   6990 39            [11]  494 	add	hl,sp
   6991 F9            [ 6]  495 	ld	sp,hl
                            496 ;src/Menus.c:73: memPtr=cpct_getScreenPtr(video_memory_start,4,120);
   6992 ED 5B 25 42   [20]  497 	ld	de,(_video_memory_start)
   6996 21 04 78      [10]  498 	ld	hl,#0x7804
   6999 E5            [11]  499 	push	hl
   699A D5            [11]  500 	push	de
   699B CD E8 76      [17]  501 	call	_cpct_getScreenPtr
                            502 ;src/Menus.c:74: cpct_drawStringM1("Pulsa 5 para volver al menu principal", memPtr, 3, 1);
   699E 4D            [ 4]  503 	ld	c, l
   699F 44            [ 4]  504 	ld	b, h
   69A0 11 D3 69      [10]  505 	ld	de,#___str_13
   69A3 21 03 01      [10]  506 	ld	hl,#0x0103
   69A6 E5            [11]  507 	push	hl
   69A7 C5            [11]  508 	push	bc
   69A8 D5            [11]  509 	push	de
   69A9 CD 64 72      [17]  510 	call	_cpct_drawStringM1
   69AC 21 06 00      [10]  511 	ld	hl,#6
   69AF 39            [11]  512 	add	hl,sp
   69B0 F9            [ 6]  513 	ld	sp,hl
   69B1 C9            [10]  514 	ret
   69B2                     515 ___str_11:
   69B2 4D 75 65 76 65 74   516 	.ascii "Muevete con W,A,S,D"
        65 20 63 6F 6E 20
        57 2C 41 2C 53 2C
        44
   69C5 00                  517 	.db 0x00
   69C6                     518 ___str_12:
   69C6 47 6F 6C 70 65 61   519 	.ascii "Golpea con K"
        20 63 6F 6E 20 4B
   69D2 00                  520 	.db 0x00
   69D3                     521 ___str_13:
   69D3 50 75 6C 73 61 20   522 	.ascii "Pulsa 5 para volver al menu principal"
        35 20 70 61 72 61
        20 76 6F 6C 76 65
        72 20 61 6C 20 6D
        65 6E 75 20 70 72
        69 6E 63 69 70 61
        6C
   69F8 00                  523 	.db 0x00
                            524 	.area _CODE
                            525 	.area _INITIALIZER
                            526 	.area _CABS (ABS)
