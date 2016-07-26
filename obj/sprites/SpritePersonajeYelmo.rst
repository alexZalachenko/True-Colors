                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:07:51 2015
                              5 ;--------------------------------------------------------
                              6 	.module SpritePersonajeYelmo
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _g_tile_15
                             13 	.globl _g_tile_14
                             14 	.globl _g_tile_13
                             15 	.globl _g_tile_12
                             16 	.globl _g_tile_11
                             17 	.globl _g_tile_10
                             18 	.globl _g_tile_9
                             19 	.globl _g_tile_8
                             20 	.globl _g_tile_7
                             21 	.globl _g_tile_6
                             22 	.globl _g_tile_5
                             23 	.globl _g_tile_4
                             24 	.globl _g_tile_3
                             25 	.globl _g_tile_2
                             26 	.globl _g_tile_1
                             27 	.globl _g_tile_0
                             28 	.globl _personaje_tileset
                             29 ;--------------------------------------------------------
                             30 ; special function registers
                             31 ;--------------------------------------------------------
                             32 ;--------------------------------------------------------
                             33 ; ram data
                             34 ;--------------------------------------------------------
                             35 	.area _DATA
                             36 ;--------------------------------------------------------
                             37 ; ram data
                             38 ;--------------------------------------------------------
                             39 	.area _INITIALIZED
                             40 ;--------------------------------------------------------
                             41 ; absolute external ram data
                             42 ;--------------------------------------------------------
                             43 	.area _DABS (ABS)
                             44 ;--------------------------------------------------------
                             45 ; global & static initialisations
                             46 ;--------------------------------------------------------
                             47 	.area _HOME
                             48 	.area _GSINIT
                             49 	.area _GSFINAL
                             50 	.area _GSINIT
                             51 ;--------------------------------------------------------
                             52 ; Home
                             53 ;--------------------------------------------------------
                             54 	.area _HOME
                             55 	.area _HOME
                             56 ;--------------------------------------------------------
                             57 ; code
                             58 ;--------------------------------------------------------
                             59 	.area _CODE
                             60 	.area _CODE
   6BF9                      61 _personaje_tileset:
   6BF9 19 6C                62 	.dw _g_tile_0
   6BFB 59 6C                63 	.dw _g_tile_1
   6BFD 99 6C                64 	.dw _g_tile_2
   6BFF D9 6C                65 	.dw _g_tile_3
   6C01 19 6D                66 	.dw _g_tile_4
   6C03 59 6D                67 	.dw _g_tile_5
   6C05 99 6D                68 	.dw _g_tile_6
   6C07 D9 6D                69 	.dw _g_tile_7
   6C09 19 6E                70 	.dw _g_tile_8
   6C0B 59 6E                71 	.dw _g_tile_9
   6C0D 99 6E                72 	.dw _g_tile_10
   6C0F D9 6E                73 	.dw _g_tile_11
   6C11 19 6F                74 	.dw _g_tile_12
   6C13 59 6F                75 	.dw _g_tile_13
   6C15 99 6F                76 	.dw _g_tile_14
   6C17 D9 6F                77 	.dw _g_tile_15
   6C19                      78 _g_tile_0:
   6C19 3C                   79 	.db #0x3C	; 60
   6C1A F0                   80 	.db #0xF0	; 240
   6C1B F0                   81 	.db #0xF0	; 240
   6C1C 0F                   82 	.db #0x0F	; 15
   6C1D 7B                   83 	.db #0x7B	; 123
   6C1E FF                   84 	.db #0xFF	; 255
   6C1F FF                   85 	.db #0xFF	; 255
   6C20 87                   86 	.db #0x87	; 135
   6C21 F7                   87 	.db #0xF7	; 247
   6C22 F8                   88 	.db #0xF8	; 248
   6C23 F0                   89 	.db #0xF0	; 240
   6C24 C3                   90 	.db #0xC3	; 195
   6C25 F0                   91 	.db #0xF0	; 240
   6C26 F6                   92 	.db #0xF6	; 246
   6C27 FA                   93 	.db #0xFA	; 250
   6C28 CB                   94 	.db #0xCB	; 203
   6C29 F7                   95 	.db #0xF7	; 247
   6C2A FE                   96 	.db #0xFE	; 254
   6C2B FA                   97 	.db #0xFA	; 250
   6C2C CB                   98 	.db #0xCB	; 203
   6C2D 78                   99 	.db #0x78	; 120	'x'
   6C2E FE                  100 	.db #0xFE	; 254
   6C2F FA                  101 	.db #0xFA	; 250
   6C30 CB                  102 	.db #0xCB	; 203
   6C31 7B                  103 	.db #0x7B	; 123
   6C32 F6                  104 	.db #0xF6	; 246
   6C33 FA                  105 	.db #0xFA	; 250
   6C34 CB                  106 	.db #0xCB	; 203
   6C35 7B                  107 	.db #0x7B	; 123
   6C36 F8                  108 	.db #0xF8	; 248
   6C37 F0                  109 	.db #0xF0	; 240
   6C38 C3                  110 	.db #0xC3	; 195
   6C39 3D                  111 	.db #0x3D	; 61
   6C3A FF                  112 	.db #0xFF	; 255
   6C3B FF                  113 	.db #0xFF	; 255
   6C3C CB                  114 	.db #0xCB	; 203
   6C3D 78                  115 	.db #0x78	; 120	'x'
   6C3E F0                  116 	.db #0xF0	; 240
   6C3F F0                  117 	.db #0xF0	; 240
   6C40 F0                  118 	.db #0xF0	; 240
   6C41 7B                  119 	.db #0x7B	; 123
   6C42 87                  120 	.db #0x87	; 135
   6C43 0F                  121 	.db #0x0F	; 15
   6C44 1E                  122 	.db #0x1E	; 30
   6C45 F3                  123 	.db #0xF3	; 243
   6C46 F0                  124 	.db #0xF0	; 240
   6C47 F0                  125 	.db #0xF0	; 240
   6C48 2D                  126 	.db #0x2D	; 45
   6C49 3D                  127 	.db #0x3D	; 61
   6C4A 87                  128 	.db #0x87	; 135
   6C4B 0F                  129 	.db #0x0F	; 15
   6C4C 4B                  130 	.db #0x4B	; 75	'K'
   6C4D 1E                  131 	.db #0x1E	; 30
   6C4E F0                  132 	.db #0xF0	; 240
   6C4F F0                  133 	.db #0xF0	; 240
   6C50 87                  134 	.db #0x87	; 135
   6C51 1E                  135 	.db #0x1E	; 30
   6C52 87                  136 	.db #0x87	; 135
   6C53 C3                  137 	.db #0xC3	; 195
   6C54 0F                  138 	.db #0x0F	; 15
   6C55 1E                  139 	.db #0x1E	; 30
   6C56 C3                  140 	.db #0xC3	; 195
   6C57 E1                  141 	.db #0xE1	; 225
   6C58 0F                  142 	.db #0x0F	; 15
   6C59                     143 _g_tile_1:
   6C59 0F                  144 	.db #0x0F	; 15
   6C5A F0                  145 	.db #0xF0	; 240
   6C5B F0                  146 	.db #0xF0	; 240
   6C5C C3                  147 	.db #0xC3	; 195
   6C5D 1E                  148 	.db #0x1E	; 30
   6C5E FF                  149 	.db #0xFF	; 255
   6C5F FF                  150 	.db #0xFF	; 255
   6C60 ED                  151 	.db #0xED	; 237
   6C61 3C                  152 	.db #0x3C	; 60
   6C62 F0                  153 	.db #0xF0	; 240
   6C63 F1                  154 	.db #0xF1	; 241
   6C64 FE                  155 	.db #0xFE	; 254
   6C65 3D                  156 	.db #0x3D	; 61
   6C66 F5                  157 	.db #0xF5	; 245
   6C67 F6                  158 	.db #0xF6	; 246
   6C68 F0                  159 	.db #0xF0	; 240
   6C69 3D                  160 	.db #0x3D	; 61
   6C6A F5                  161 	.db #0xF5	; 245
   6C6B F7                  162 	.db #0xF7	; 247
   6C6C FE                  163 	.db #0xFE	; 254
   6C6D 3D                  164 	.db #0x3D	; 61
   6C6E F5                  165 	.db #0xF5	; 245
   6C6F F7                  166 	.db #0xF7	; 247
   6C70 E1                  167 	.db #0xE1	; 225
   6C71 3D                  168 	.db #0x3D	; 61
   6C72 F5                  169 	.db #0xF5	; 245
   6C73 F6                  170 	.db #0xF6	; 246
   6C74 ED                  171 	.db #0xED	; 237
   6C75 3C                  172 	.db #0x3C	; 60
   6C76 F0                  173 	.db #0xF0	; 240
   6C77 F1                  174 	.db #0xF1	; 241
   6C78 ED                  175 	.db #0xED	; 237
   6C79 3D                  176 	.db #0x3D	; 61
   6C7A FF                  177 	.db #0xFF	; 255
   6C7B FF                  178 	.db #0xFF	; 255
   6C7C CB                  179 	.db #0xCB	; 203
   6C7D F0                  180 	.db #0xF0	; 240
   6C7E F0                  181 	.db #0xF0	; 240
   6C7F F0                  182 	.db #0xF0	; 240
   6C80 E1                  183 	.db #0xE1	; 225
   6C81 87                  184 	.db #0x87	; 135
   6C82 0F                  185 	.db #0x0F	; 15
   6C83 1E                  186 	.db #0x1E	; 30
   6C84 ED                  187 	.db #0xED	; 237
   6C85 4B                  188 	.db #0x4B	; 75	'K'
   6C86 F0                  189 	.db #0xF0	; 240
   6C87 F0                  190 	.db #0xF0	; 240
   6C88 FC                  191 	.db #0xFC	; 252
   6C89 2D                  192 	.db #0x2D	; 45
   6C8A 0F                  193 	.db #0x0F	; 15
   6C8B 1E                  194 	.db #0x1E	; 30
   6C8C CB                  195 	.db #0xCB	; 203
   6C8D 1E                  196 	.db #0x1E	; 30
   6C8E F0                  197 	.db #0xF0	; 240
   6C8F F0                  198 	.db #0xF0	; 240
   6C90 87                  199 	.db #0x87	; 135
   6C91 0F                  200 	.db #0x0F	; 15
   6C92 3C                  201 	.db #0x3C	; 60
   6C93 1E                  202 	.db #0x1E	; 30
   6C94 87                  203 	.db #0x87	; 135
   6C95 0F                  204 	.db #0x0F	; 15
   6C96 78                  205 	.db #0x78	; 120	'x'
   6C97 3C                  206 	.db #0x3C	; 60
   6C98 87                  207 	.db #0x87	; 135
   6C99                     208 _g_tile_2:
   6C99 1E                  209 	.db #0x1E	; 30
   6C9A F0                  210 	.db #0xF0	; 240
   6C9B F0                  211 	.db #0xF0	; 240
   6C9C 87                  212 	.db #0x87	; 135
   6C9D 3D                  213 	.db #0x3D	; 61
   6C9E FF                  214 	.db #0xFF	; 255
   6C9F FF                  215 	.db #0xFF	; 255
   6CA0 CB                  216 	.db #0xCB	; 203
   6CA1 7B                  217 	.db #0x7B	; 123
   6CA2 F0                  218 	.db #0xF0	; 240
   6CA3 F0                  219 	.db #0xF0	; 240
   6CA4 ED                  220 	.db #0xED	; 237
   6CA5 78                  221 	.db #0x78	; 120	'x'
   6CA6 FA                  222 	.db #0xFA	; 250
   6CA7 F5                  223 	.db #0xF5	; 245
   6CA8 E1                  224 	.db #0xE1	; 225
   6CA9 7B                  225 	.db #0x7B	; 123
   6CAA FA                  226 	.db #0xFA	; 250
   6CAB F5                  227 	.db #0xF5	; 245
   6CAC ED                  228 	.db #0xED	; 237
   6CAD 78                  229 	.db #0x78	; 120	'x'
   6CAE FA                  230 	.db #0xFA	; 250
   6CAF F5                  231 	.db #0xF5	; 245
   6CB0 E1                  232 	.db #0xE1	; 225
   6CB1 7A                  233 	.db #0x7A	; 122	'z'
   6CB2 FA                  234 	.db #0xFA	; 250
   6CB3 F5                  235 	.db #0xF5	; 245
   6CB4 E5                  236 	.db #0xE5	; 229
   6CB5 3D                  237 	.db #0x3D	; 61
   6CB6 F0                  238 	.db #0xF0	; 240
   6CB7 F0                  239 	.db #0xF0	; 240
   6CB8 CB                  240 	.db #0xCB	; 203
   6CB9 7B                  241 	.db #0x7B	; 123
   6CBA FF                  242 	.db #0xFF	; 255
   6CBB FF                  243 	.db #0xFF	; 255
   6CBC ED                  244 	.db #0xED	; 237
   6CBD 78                  245 	.db #0x78	; 120	'x'
   6CBE F0                  246 	.db #0xF0	; 240
   6CBF F0                  247 	.db #0xF0	; 240
   6CC0 F0                  248 	.db #0xF0	; 240
   6CC1 7B                  249 	.db #0x7B	; 123
   6CC2 87                  250 	.db #0x87	; 135
   6CC3 0F                  251 	.db #0x0F	; 15
   6CC4 1E                  252 	.db #0x1E	; 30
   6CC5 F3                  253 	.db #0xF3	; 243
   6CC6 F0                  254 	.db #0xF0	; 240
   6CC7 F0                  255 	.db #0xF0	; 240
   6CC8 2D                  256 	.db #0x2D	; 45
   6CC9 79                  257 	.db #0x79	; 121	'y'
   6CCA 87                  258 	.db #0x87	; 135
   6CCB 0F                  259 	.db #0x0F	; 15
   6CCC 69                  260 	.db #0x69	; 105	'i'
   6CCD 1E                  261 	.db #0x1E	; 30
   6CCE F0                  262 	.db #0xF0	; 240
   6CCF F0                  263 	.db #0xF0	; 240
   6CD0 87                  264 	.db #0x87	; 135
   6CD1 0F                  265 	.db #0x0F	; 15
   6CD2 69                  266 	.db #0x69	; 105	'i'
   6CD3 69                  267 	.db #0x69	; 105	'i'
   6CD4 0F                  268 	.db #0x0F	; 15
   6CD5 0F                  269 	.db #0x0F	; 15
   6CD6 E1                  270 	.db #0xE1	; 225
   6CD7 78                  271 	.db #0x78	; 120	'x'
   6CD8 0F                  272 	.db #0x0F	; 15
   6CD9                     273 _g_tile_3:
   6CD9 1E                  274 	.db #0x1E	; 30
   6CDA F0                  275 	.db #0xF0	; 240
   6CDB F0                  276 	.db #0xF0	; 240
   6CDC 87                  277 	.db #0x87	; 135
   6CDD 3D                  278 	.db #0x3D	; 61
   6CDE FA                  279 	.db #0xFA	; 250
   6CDF F5                  280 	.db #0xF5	; 245
   6CE0 CB                  281 	.db #0xCB	; 203
   6CE1 7A                  282 	.db #0x7A	; 122	'z'
   6CE2 F0                  283 	.db #0xF0	; 240
   6CE3 F0                  284 	.db #0xF0	; 240
   6CE4 E5                  285 	.db #0xE5	; 229
   6CE5 79                  286 	.db #0x79	; 121	'y'
   6CE6 FF                  287 	.db #0xFF	; 255
   6CE7 FF                  288 	.db #0xFF	; 255
   6CE8 E9                  289 	.db #0xE9	; 233
   6CE9 7A                  290 	.db #0x7A	; 122	'z'
   6CEA FF                  291 	.db #0xFF	; 255
   6CEB FF                  292 	.db #0xFF	; 255
   6CEC E5                  293 	.db #0xE5	; 229
   6CED 79                  294 	.db #0x79	; 121	'y'
   6CEE FF                  295 	.db #0xFF	; 255
   6CEF FF                  296 	.db #0xFF	; 255
   6CF0 E9                  297 	.db #0xE9	; 233
   6CF1 7B                  298 	.db #0x7B	; 123
   6CF2 FF                  299 	.db #0xFF	; 255
   6CF3 FF                  300 	.db #0xFF	; 255
   6CF4 ED                  301 	.db #0xED	; 237
   6CF5 3C                  302 	.db #0x3C	; 60
   6CF6 F0                  303 	.db #0xF0	; 240
   6CF7 F0                  304 	.db #0xF0	; 240
   6CF8 C3                  305 	.db #0xC3	; 195
   6CF9 1E                  306 	.db #0x1E	; 30
   6CFA FF                  307 	.db #0xFF	; 255
   6CFB FF                  308 	.db #0xFF	; 255
   6CFC 87                  309 	.db #0x87	; 135
   6CFD F0                  310 	.db #0xF0	; 240
   6CFE FF                  311 	.db #0xFF	; 255
   6CFF FF                  312 	.db #0xFF	; 255
   6D00 E1                  313 	.db #0xE1	; 225
   6D01 96                  314 	.db #0x96	; 150
   6D02 FB                  315 	.db #0xFB	; 251
   6D03 FD                  316 	.db #0xFD	; 253
   6D04 E5                  317 	.db #0xE5	; 229
   6D05 4B                  318 	.db #0x4B	; 75	'K'
   6D06 F3                  319 	.db #0xF3	; 243
   6D07 FE                  320 	.db #0xFE	; 254
   6D08 FC                  321 	.db #0xFC	; 252
   6D09 69                  322 	.db #0x69	; 105	'i'
   6D0A 7B                  323 	.db #0x7B	; 123
   6D0B FC                  324 	.db #0xFC	; 252
   6D0C E1                  325 	.db #0xE1	; 225
   6D0D 1E                  326 	.db #0x1E	; 30
   6D0E F2                  327 	.db #0xF2	; 242
   6D0F E5                  328 	.db #0xE5	; 229
   6D10 0F                  329 	.db #0x0F	; 15
   6D11 0F                  330 	.db #0x0F	; 15
   6D12 69                  331 	.db #0x69	; 105	'i'
   6D13 69                  332 	.db #0x69	; 105	'i'
   6D14 0F                  333 	.db #0x0F	; 15
   6D15 0F                  334 	.db #0x0F	; 15
   6D16 E1                  335 	.db #0xE1	; 225
   6D17 78                  336 	.db #0x78	; 120	'x'
   6D18 0F                  337 	.db #0x0F	; 15
   6D19                     338 _g_tile_4:
   6D19 3C                  339 	.db #0x3C	; 60
   6D1A F0                  340 	.db #0xF0	; 240
   6D1B F0                  341 	.db #0xF0	; 240
   6D1C 0F                  342 	.db #0x0F	; 15
   6D1D 7B                  343 	.db #0x7B	; 123
   6D1E FF                  344 	.db #0xFF	; 255
   6D1F FF                  345 	.db #0xFF	; 255
   6D20 87                  346 	.db #0x87	; 135
   6D21 F7                  347 	.db #0xF7	; 247
   6D22 F8                  348 	.db #0xF8	; 248
   6D23 F0                  349 	.db #0xF0	; 240
   6D24 C3                  350 	.db #0xC3	; 195
   6D25 F0                  351 	.db #0xF0	; 240
   6D26 F6                  352 	.db #0xF6	; 246
   6D27 FA                  353 	.db #0xFA	; 250
   6D28 CB                  354 	.db #0xCB	; 203
   6D29 F7                  355 	.db #0xF7	; 247
   6D2A FE                  356 	.db #0xFE	; 254
   6D2B FA                  357 	.db #0xFA	; 250
   6D2C CB                  358 	.db #0xCB	; 203
   6D2D 78                  359 	.db #0x78	; 120	'x'
   6D2E FE                  360 	.db #0xFE	; 254
   6D2F FA                  361 	.db #0xFA	; 250
   6D30 CB                  362 	.db #0xCB	; 203
   6D31 7B                  363 	.db #0x7B	; 123
   6D32 F6                  364 	.db #0xF6	; 246
   6D33 FA                  365 	.db #0xFA	; 250
   6D34 CB                  366 	.db #0xCB	; 203
   6D35 7B                  367 	.db #0x7B	; 123
   6D36 F8                  368 	.db #0xF8	; 248
   6D37 F0                  369 	.db #0xF0	; 240
   6D38 C3                  370 	.db #0xC3	; 195
   6D39 3D                  371 	.db #0x3D	; 61
   6D3A FF                  372 	.db #0xFF	; 255
   6D3B FF                  373 	.db #0xFF	; 255
   6D3C CB                  374 	.db #0xCB	; 203
   6D3D 78                  375 	.db #0x78	; 120	'x'
   6D3E F0                  376 	.db #0xF0	; 240
   6D3F F0                  377 	.db #0xF0	; 240
   6D40 F0                  378 	.db #0xF0	; 240
   6D41 7B                  379 	.db #0x7B	; 123
   6D42 87                  380 	.db #0x87	; 135
   6D43 0F                  381 	.db #0x0F	; 15
   6D44 1E                  382 	.db #0x1E	; 30
   6D45 F3                  383 	.db #0xF3	; 243
   6D46 F0                  384 	.db #0xF0	; 240
   6D47 F0                  385 	.db #0xF0	; 240
   6D48 2D                  386 	.db #0x2D	; 45
   6D49 3D                  387 	.db #0x3D	; 61
   6D4A 87                  388 	.db #0x87	; 135
   6D4B 0F                  389 	.db #0x0F	; 15
   6D4C 4B                  390 	.db #0x4B	; 75	'K'
   6D4D 1E                  391 	.db #0x1E	; 30
   6D4E F0                  392 	.db #0xF0	; 240
   6D4F F0                  393 	.db #0xF0	; 240
   6D50 87                  394 	.db #0x87	; 135
   6D51 1E                  395 	.db #0x1E	; 30
   6D52 87                  396 	.db #0x87	; 135
   6D53 C3                  397 	.db #0xC3	; 195
   6D54 0F                  398 	.db #0x0F	; 15
   6D55 0F                  399 	.db #0x0F	; 15
   6D56 0F                  400 	.db #0x0F	; 15
   6D57 E1                  401 	.db #0xE1	; 225
   6D58 0F                  402 	.db #0x0F	; 15
   6D59                     403 _g_tile_5:
   6D59 0F                  404 	.db #0x0F	; 15
   6D5A F0                  405 	.db #0xF0	; 240
   6D5B F0                  406 	.db #0xF0	; 240
   6D5C C3                  407 	.db #0xC3	; 195
   6D5D 1E                  408 	.db #0x1E	; 30
   6D5E FF                  409 	.db #0xFF	; 255
   6D5F FF                  410 	.db #0xFF	; 255
   6D60 ED                  411 	.db #0xED	; 237
   6D61 3C                  412 	.db #0x3C	; 60
   6D62 F0                  413 	.db #0xF0	; 240
   6D63 F1                  414 	.db #0xF1	; 241
   6D64 FE                  415 	.db #0xFE	; 254
   6D65 3D                  416 	.db #0x3D	; 61
   6D66 F5                  417 	.db #0xF5	; 245
   6D67 F6                  418 	.db #0xF6	; 246
   6D68 F0                  419 	.db #0xF0	; 240
   6D69 3D                  420 	.db #0x3D	; 61
   6D6A F5                  421 	.db #0xF5	; 245
   6D6B F7                  422 	.db #0xF7	; 247
   6D6C FE                  423 	.db #0xFE	; 254
   6D6D 3D                  424 	.db #0x3D	; 61
   6D6E F5                  425 	.db #0xF5	; 245
   6D6F F7                  426 	.db #0xF7	; 247
   6D70 E1                  427 	.db #0xE1	; 225
   6D71 3D                  428 	.db #0x3D	; 61
   6D72 F5                  429 	.db #0xF5	; 245
   6D73 F6                  430 	.db #0xF6	; 246
   6D74 ED                  431 	.db #0xED	; 237
   6D75 3C                  432 	.db #0x3C	; 60
   6D76 F0                  433 	.db #0xF0	; 240
   6D77 F1                  434 	.db #0xF1	; 241
   6D78 ED                  435 	.db #0xED	; 237
   6D79 3D                  436 	.db #0x3D	; 61
   6D7A FF                  437 	.db #0xFF	; 255
   6D7B FF                  438 	.db #0xFF	; 255
   6D7C CB                  439 	.db #0xCB	; 203
   6D7D F0                  440 	.db #0xF0	; 240
   6D7E F0                  441 	.db #0xF0	; 240
   6D7F F0                  442 	.db #0xF0	; 240
   6D80 E1                  443 	.db #0xE1	; 225
   6D81 87                  444 	.db #0x87	; 135
   6D82 0F                  445 	.db #0x0F	; 15
   6D83 1E                  446 	.db #0x1E	; 30
   6D84 ED                  447 	.db #0xED	; 237
   6D85 4B                  448 	.db #0x4B	; 75	'K'
   6D86 F0                  449 	.db #0xF0	; 240
   6D87 F0                  450 	.db #0xF0	; 240
   6D88 FC                  451 	.db #0xFC	; 252
   6D89 2D                  452 	.db #0x2D	; 45
   6D8A 0F                  453 	.db #0x0F	; 15
   6D8B 1E                  454 	.db #0x1E	; 30
   6D8C CB                  455 	.db #0xCB	; 203
   6D8D 1E                  456 	.db #0x1E	; 30
   6D8E F0                  457 	.db #0xF0	; 240
   6D8F F0                  458 	.db #0xF0	; 240
   6D90 87                  459 	.db #0x87	; 135
   6D91 0F                  460 	.db #0x0F	; 15
   6D92 3C                  461 	.db #0x3C	; 60
   6D93 1E                  462 	.db #0x1E	; 30
   6D94 87                  463 	.db #0x87	; 135
   6D95 0F                  464 	.db #0x0F	; 15
   6D96 0F                  465 	.db #0x0F	; 15
   6D97 3C                  466 	.db #0x3C	; 60
   6D98 87                  467 	.db #0x87	; 135
   6D99                     468 _g_tile_6:
   6D99 1E                  469 	.db #0x1E	; 30
   6D9A F0                  470 	.db #0xF0	; 240
   6D9B F0                  471 	.db #0xF0	; 240
   6D9C 87                  472 	.db #0x87	; 135
   6D9D 3D                  473 	.db #0x3D	; 61
   6D9E FF                  474 	.db #0xFF	; 255
   6D9F FF                  475 	.db #0xFF	; 255
   6DA0 CB                  476 	.db #0xCB	; 203
   6DA1 7B                  477 	.db #0x7B	; 123
   6DA2 F0                  478 	.db #0xF0	; 240
   6DA3 F0                  479 	.db #0xF0	; 240
   6DA4 ED                  480 	.db #0xED	; 237
   6DA5 78                  481 	.db #0x78	; 120	'x'
   6DA6 FA                  482 	.db #0xFA	; 250
   6DA7 F5                  483 	.db #0xF5	; 245
   6DA8 E1                  484 	.db #0xE1	; 225
   6DA9 7B                  485 	.db #0x7B	; 123
   6DAA FA                  486 	.db #0xFA	; 250
   6DAB F5                  487 	.db #0xF5	; 245
   6DAC ED                  488 	.db #0xED	; 237
   6DAD 78                  489 	.db #0x78	; 120	'x'
   6DAE FA                  490 	.db #0xFA	; 250
   6DAF F5                  491 	.db #0xF5	; 245
   6DB0 E1                  492 	.db #0xE1	; 225
   6DB1 7A                  493 	.db #0x7A	; 122	'z'
   6DB2 FA                  494 	.db #0xFA	; 250
   6DB3 F5                  495 	.db #0xF5	; 245
   6DB4 E5                  496 	.db #0xE5	; 229
   6DB5 3D                  497 	.db #0x3D	; 61
   6DB6 F0                  498 	.db #0xF0	; 240
   6DB7 F0                  499 	.db #0xF0	; 240
   6DB8 CB                  500 	.db #0xCB	; 203
   6DB9 7B                  501 	.db #0x7B	; 123
   6DBA FF                  502 	.db #0xFF	; 255
   6DBB FF                  503 	.db #0xFF	; 255
   6DBC ED                  504 	.db #0xED	; 237
   6DBD 78                  505 	.db #0x78	; 120	'x'
   6DBE F0                  506 	.db #0xF0	; 240
   6DBF F0                  507 	.db #0xF0	; 240
   6DC0 F0                  508 	.db #0xF0	; 240
   6DC1 7B                  509 	.db #0x7B	; 123
   6DC2 87                  510 	.db #0x87	; 135
   6DC3 0F                  511 	.db #0x0F	; 15
   6DC4 1E                  512 	.db #0x1E	; 30
   6DC5 F3                  513 	.db #0xF3	; 243
   6DC6 F0                  514 	.db #0xF0	; 240
   6DC7 F0                  515 	.db #0xF0	; 240
   6DC8 2D                  516 	.db #0x2D	; 45
   6DC9 79                  517 	.db #0x79	; 121	'y'
   6DCA 87                  518 	.db #0x87	; 135
   6DCB 0F                  519 	.db #0x0F	; 15
   6DCC 69                  520 	.db #0x69	; 105	'i'
   6DCD 1E                  521 	.db #0x1E	; 30
   6DCE F0                  522 	.db #0xF0	; 240
   6DCF F0                  523 	.db #0xF0	; 240
   6DD0 87                  524 	.db #0x87	; 135
   6DD1 0F                  525 	.db #0x0F	; 15
   6DD2 69                  526 	.db #0x69	; 105	'i'
   6DD3 69                  527 	.db #0x69	; 105	'i'
   6DD4 0F                  528 	.db #0x0F	; 15
   6DD5 0F                  529 	.db #0x0F	; 15
   6DD6 0F                  530 	.db #0x0F	; 15
   6DD7 78                  531 	.db #0x78	; 120	'x'
   6DD8 0F                  532 	.db #0x0F	; 15
   6DD9                     533 _g_tile_7:
   6DD9 1E                  534 	.db #0x1E	; 30
   6DDA F0                  535 	.db #0xF0	; 240
   6DDB F0                  536 	.db #0xF0	; 240
   6DDC 87                  537 	.db #0x87	; 135
   6DDD 3D                  538 	.db #0x3D	; 61
   6DDE FA                  539 	.db #0xFA	; 250
   6DDF F5                  540 	.db #0xF5	; 245
   6DE0 CB                  541 	.db #0xCB	; 203
   6DE1 7A                  542 	.db #0x7A	; 122	'z'
   6DE2 F0                  543 	.db #0xF0	; 240
   6DE3 F0                  544 	.db #0xF0	; 240
   6DE4 E5                  545 	.db #0xE5	; 229
   6DE5 79                  546 	.db #0x79	; 121	'y'
   6DE6 FF                  547 	.db #0xFF	; 255
   6DE7 FF                  548 	.db #0xFF	; 255
   6DE8 E9                  549 	.db #0xE9	; 233
   6DE9 7A                  550 	.db #0x7A	; 122	'z'
   6DEA FF                  551 	.db #0xFF	; 255
   6DEB FF                  552 	.db #0xFF	; 255
   6DEC E5                  553 	.db #0xE5	; 229
   6DED 79                  554 	.db #0x79	; 121	'y'
   6DEE FF                  555 	.db #0xFF	; 255
   6DEF FF                  556 	.db #0xFF	; 255
   6DF0 E9                  557 	.db #0xE9	; 233
   6DF1 7B                  558 	.db #0x7B	; 123
   6DF2 FF                  559 	.db #0xFF	; 255
   6DF3 FF                  560 	.db #0xFF	; 255
   6DF4 ED                  561 	.db #0xED	; 237
   6DF5 3C                  562 	.db #0x3C	; 60
   6DF6 F0                  563 	.db #0xF0	; 240
   6DF7 F0                  564 	.db #0xF0	; 240
   6DF8 C3                  565 	.db #0xC3	; 195
   6DF9 1E                  566 	.db #0x1E	; 30
   6DFA FF                  567 	.db #0xFF	; 255
   6DFB FF                  568 	.db #0xFF	; 255
   6DFC 87                  569 	.db #0x87	; 135
   6DFD F0                  570 	.db #0xF0	; 240
   6DFE FF                  571 	.db #0xFF	; 255
   6DFF FF                  572 	.db #0xFF	; 255
   6E00 E1                  573 	.db #0xE1	; 225
   6E01 96                  574 	.db #0x96	; 150
   6E02 FB                  575 	.db #0xFB	; 251
   6E03 FD                  576 	.db #0xFD	; 253
   6E04 E5                  577 	.db #0xE5	; 229
   6E05 4B                  578 	.db #0x4B	; 75	'K'
   6E06 F3                  579 	.db #0xF3	; 243
   6E07 FE                  580 	.db #0xFE	; 254
   6E08 FC                  581 	.db #0xFC	; 252
   6E09 69                  582 	.db #0x69	; 105	'i'
   6E0A 7B                  583 	.db #0x7B	; 123
   6E0B FC                  584 	.db #0xFC	; 252
   6E0C E1                  585 	.db #0xE1	; 225
   6E0D 1E                  586 	.db #0x1E	; 30
   6E0E F2                  587 	.db #0xF2	; 242
   6E0F E5                  588 	.db #0xE5	; 229
   6E10 0F                  589 	.db #0x0F	; 15
   6E11 0F                  590 	.db #0x0F	; 15
   6E12 69                  591 	.db #0x69	; 105	'i'
   6E13 69                  592 	.db #0x69	; 105	'i'
   6E14 0F                  593 	.db #0x0F	; 15
   6E15 0F                  594 	.db #0x0F	; 15
   6E16 0F                  595 	.db #0x0F	; 15
   6E17 78                  596 	.db #0x78	; 120	'x'
   6E18 0F                  597 	.db #0x0F	; 15
   6E19                     598 _g_tile_8:
   6E19 3C                  599 	.db #0x3C	; 60
   6E1A F0                  600 	.db #0xF0	; 240
   6E1B F0                  601 	.db #0xF0	; 240
   6E1C 0F                  602 	.db #0x0F	; 15
   6E1D 7B                  603 	.db #0x7B	; 123
   6E1E FF                  604 	.db #0xFF	; 255
   6E1F FF                  605 	.db #0xFF	; 255
   6E20 87                  606 	.db #0x87	; 135
   6E21 F7                  607 	.db #0xF7	; 247
   6E22 F8                  608 	.db #0xF8	; 248
   6E23 F0                  609 	.db #0xF0	; 240
   6E24 C3                  610 	.db #0xC3	; 195
   6E25 F0                  611 	.db #0xF0	; 240
   6E26 F6                  612 	.db #0xF6	; 246
   6E27 FA                  613 	.db #0xFA	; 250
   6E28 CB                  614 	.db #0xCB	; 203
   6E29 F7                  615 	.db #0xF7	; 247
   6E2A FE                  616 	.db #0xFE	; 254
   6E2B FA                  617 	.db #0xFA	; 250
   6E2C CB                  618 	.db #0xCB	; 203
   6E2D 78                  619 	.db #0x78	; 120	'x'
   6E2E FE                  620 	.db #0xFE	; 254
   6E2F FA                  621 	.db #0xFA	; 250
   6E30 CB                  622 	.db #0xCB	; 203
   6E31 7B                  623 	.db #0x7B	; 123
   6E32 F6                  624 	.db #0xF6	; 246
   6E33 FA                  625 	.db #0xFA	; 250
   6E34 CB                  626 	.db #0xCB	; 203
   6E35 7B                  627 	.db #0x7B	; 123
   6E36 F8                  628 	.db #0xF8	; 248
   6E37 F0                  629 	.db #0xF0	; 240
   6E38 C3                  630 	.db #0xC3	; 195
   6E39 3D                  631 	.db #0x3D	; 61
   6E3A FF                  632 	.db #0xFF	; 255
   6E3B FF                  633 	.db #0xFF	; 255
   6E3C CB                  634 	.db #0xCB	; 203
   6E3D 78                  635 	.db #0x78	; 120	'x'
   6E3E F0                  636 	.db #0xF0	; 240
   6E3F F0                  637 	.db #0xF0	; 240
   6E40 F0                  638 	.db #0xF0	; 240
   6E41 7B                  639 	.db #0x7B	; 123
   6E42 87                  640 	.db #0x87	; 135
   6E43 0F                  641 	.db #0x0F	; 15
   6E44 1E                  642 	.db #0x1E	; 30
   6E45 F3                  643 	.db #0xF3	; 243
   6E46 F0                  644 	.db #0xF0	; 240
   6E47 F0                  645 	.db #0xF0	; 240
   6E48 2D                  646 	.db #0x2D	; 45
   6E49 3D                  647 	.db #0x3D	; 61
   6E4A 87                  648 	.db #0x87	; 135
   6E4B 0F                  649 	.db #0x0F	; 15
   6E4C 4B                  650 	.db #0x4B	; 75	'K'
   6E4D 1E                  651 	.db #0x1E	; 30
   6E4E F0                  652 	.db #0xF0	; 240
   6E4F F0                  653 	.db #0xF0	; 240
   6E50 87                  654 	.db #0x87	; 135
   6E51 1E                  655 	.db #0x1E	; 30
   6E52 87                  656 	.db #0x87	; 135
   6E53 C3                  657 	.db #0xC3	; 195
   6E54 0F                  658 	.db #0x0F	; 15
   6E55 1E                  659 	.db #0x1E	; 30
   6E56 C3                  660 	.db #0xC3	; 195
   6E57 0F                  661 	.db #0x0F	; 15
   6E58 0F                  662 	.db #0x0F	; 15
   6E59                     663 _g_tile_9:
   6E59 0F                  664 	.db #0x0F	; 15
   6E5A F0                  665 	.db #0xF0	; 240
   6E5B F0                  666 	.db #0xF0	; 240
   6E5C C3                  667 	.db #0xC3	; 195
   6E5D 1E                  668 	.db #0x1E	; 30
   6E5E FF                  669 	.db #0xFF	; 255
   6E5F FF                  670 	.db #0xFF	; 255
   6E60 ED                  671 	.db #0xED	; 237
   6E61 3C                  672 	.db #0x3C	; 60
   6E62 F0                  673 	.db #0xF0	; 240
   6E63 F1                  674 	.db #0xF1	; 241
   6E64 FE                  675 	.db #0xFE	; 254
   6E65 3D                  676 	.db #0x3D	; 61
   6E66 F5                  677 	.db #0xF5	; 245
   6E67 F6                  678 	.db #0xF6	; 246
   6E68 F0                  679 	.db #0xF0	; 240
   6E69 3D                  680 	.db #0x3D	; 61
   6E6A F5                  681 	.db #0xF5	; 245
   6E6B F7                  682 	.db #0xF7	; 247
   6E6C FE                  683 	.db #0xFE	; 254
   6E6D 3D                  684 	.db #0x3D	; 61
   6E6E F5                  685 	.db #0xF5	; 245
   6E6F F7                  686 	.db #0xF7	; 247
   6E70 E1                  687 	.db #0xE1	; 225
   6E71 3D                  688 	.db #0x3D	; 61
   6E72 F5                  689 	.db #0xF5	; 245
   6E73 F6                  690 	.db #0xF6	; 246
   6E74 ED                  691 	.db #0xED	; 237
   6E75 3C                  692 	.db #0x3C	; 60
   6E76 F0                  693 	.db #0xF0	; 240
   6E77 F1                  694 	.db #0xF1	; 241
   6E78 ED                  695 	.db #0xED	; 237
   6E79 3D                  696 	.db #0x3D	; 61
   6E7A FF                  697 	.db #0xFF	; 255
   6E7B FF                  698 	.db #0xFF	; 255
   6E7C CB                  699 	.db #0xCB	; 203
   6E7D F0                  700 	.db #0xF0	; 240
   6E7E F0                  701 	.db #0xF0	; 240
   6E7F F0                  702 	.db #0xF0	; 240
   6E80 E1                  703 	.db #0xE1	; 225
   6E81 87                  704 	.db #0x87	; 135
   6E82 0F                  705 	.db #0x0F	; 15
   6E83 1E                  706 	.db #0x1E	; 30
   6E84 ED                  707 	.db #0xED	; 237
   6E85 4B                  708 	.db #0x4B	; 75	'K'
   6E86 F0                  709 	.db #0xF0	; 240
   6E87 F0                  710 	.db #0xF0	; 240
   6E88 FC                  711 	.db #0xFC	; 252
   6E89 2D                  712 	.db #0x2D	; 45
   6E8A 0F                  713 	.db #0x0F	; 15
   6E8B 1E                  714 	.db #0x1E	; 30
   6E8C CB                  715 	.db #0xCB	; 203
   6E8D 1E                  716 	.db #0x1E	; 30
   6E8E F0                  717 	.db #0xF0	; 240
   6E8F F0                  718 	.db #0xF0	; 240
   6E90 87                  719 	.db #0x87	; 135
   6E91 0F                  720 	.db #0x0F	; 15
   6E92 3C                  721 	.db #0x3C	; 60
   6E93 1E                  722 	.db #0x1E	; 30
   6E94 87                  723 	.db #0x87	; 135
   6E95 0F                  724 	.db #0x0F	; 15
   6E96 78                  725 	.db #0x78	; 120	'x'
   6E97 0F                  726 	.db #0x0F	; 15
   6E98 0F                  727 	.db #0x0F	; 15
   6E99                     728 _g_tile_10:
   6E99 1E                  729 	.db #0x1E	; 30
   6E9A F0                  730 	.db #0xF0	; 240
   6E9B F0                  731 	.db #0xF0	; 240
   6E9C 87                  732 	.db #0x87	; 135
   6E9D 3D                  733 	.db #0x3D	; 61
   6E9E FF                  734 	.db #0xFF	; 255
   6E9F FF                  735 	.db #0xFF	; 255
   6EA0 CB                  736 	.db #0xCB	; 203
   6EA1 7B                  737 	.db #0x7B	; 123
   6EA2 F0                  738 	.db #0xF0	; 240
   6EA3 F0                  739 	.db #0xF0	; 240
   6EA4 ED                  740 	.db #0xED	; 237
   6EA5 78                  741 	.db #0x78	; 120	'x'
   6EA6 FA                  742 	.db #0xFA	; 250
   6EA7 F5                  743 	.db #0xF5	; 245
   6EA8 E1                  744 	.db #0xE1	; 225
   6EA9 7B                  745 	.db #0x7B	; 123
   6EAA FA                  746 	.db #0xFA	; 250
   6EAB F5                  747 	.db #0xF5	; 245
   6EAC ED                  748 	.db #0xED	; 237
   6EAD 78                  749 	.db #0x78	; 120	'x'
   6EAE FA                  750 	.db #0xFA	; 250
   6EAF F5                  751 	.db #0xF5	; 245
   6EB0 E1                  752 	.db #0xE1	; 225
   6EB1 7A                  753 	.db #0x7A	; 122	'z'
   6EB2 FA                  754 	.db #0xFA	; 250
   6EB3 F5                  755 	.db #0xF5	; 245
   6EB4 E5                  756 	.db #0xE5	; 229
   6EB5 3D                  757 	.db #0x3D	; 61
   6EB6 F0                  758 	.db #0xF0	; 240
   6EB7 F0                  759 	.db #0xF0	; 240
   6EB8 CB                  760 	.db #0xCB	; 203
   6EB9 7B                  761 	.db #0x7B	; 123
   6EBA FF                  762 	.db #0xFF	; 255
   6EBB FF                  763 	.db #0xFF	; 255
   6EBC ED                  764 	.db #0xED	; 237
   6EBD 78                  765 	.db #0x78	; 120	'x'
   6EBE F0                  766 	.db #0xF0	; 240
   6EBF F0                  767 	.db #0xF0	; 240
   6EC0 F0                  768 	.db #0xF0	; 240
   6EC1 7B                  769 	.db #0x7B	; 123
   6EC2 87                  770 	.db #0x87	; 135
   6EC3 0F                  771 	.db #0x0F	; 15
   6EC4 1E                  772 	.db #0x1E	; 30
   6EC5 F3                  773 	.db #0xF3	; 243
   6EC6 F0                  774 	.db #0xF0	; 240
   6EC7 F0                  775 	.db #0xF0	; 240
   6EC8 2D                  776 	.db #0x2D	; 45
   6EC9 79                  777 	.db #0x79	; 121	'y'
   6ECA 87                  778 	.db #0x87	; 135
   6ECB 0F                  779 	.db #0x0F	; 15
   6ECC 69                  780 	.db #0x69	; 105	'i'
   6ECD 1E                  781 	.db #0x1E	; 30
   6ECE F0                  782 	.db #0xF0	; 240
   6ECF F0                  783 	.db #0xF0	; 240
   6ED0 87                  784 	.db #0x87	; 135
   6ED1 0F                  785 	.db #0x0F	; 15
   6ED2 69                  786 	.db #0x69	; 105	'i'
   6ED3 69                  787 	.db #0x69	; 105	'i'
   6ED4 0F                  788 	.db #0x0F	; 15
   6ED5 0F                  789 	.db #0x0F	; 15
   6ED6 E1                  790 	.db #0xE1	; 225
   6ED7 0F                  791 	.db #0x0F	; 15
   6ED8 0F                  792 	.db #0x0F	; 15
   6ED9                     793 _g_tile_11:
   6ED9 1E                  794 	.db #0x1E	; 30
   6EDA F0                  795 	.db #0xF0	; 240
   6EDB F0                  796 	.db #0xF0	; 240
   6EDC 87                  797 	.db #0x87	; 135
   6EDD 3D                  798 	.db #0x3D	; 61
   6EDE FA                  799 	.db #0xFA	; 250
   6EDF F5                  800 	.db #0xF5	; 245
   6EE0 CB                  801 	.db #0xCB	; 203
   6EE1 7A                  802 	.db #0x7A	; 122	'z'
   6EE2 F0                  803 	.db #0xF0	; 240
   6EE3 F0                  804 	.db #0xF0	; 240
   6EE4 E5                  805 	.db #0xE5	; 229
   6EE5 79                  806 	.db #0x79	; 121	'y'
   6EE6 FF                  807 	.db #0xFF	; 255
   6EE7 FF                  808 	.db #0xFF	; 255
   6EE8 E9                  809 	.db #0xE9	; 233
   6EE9 7A                  810 	.db #0x7A	; 122	'z'
   6EEA FF                  811 	.db #0xFF	; 255
   6EEB FF                  812 	.db #0xFF	; 255
   6EEC E5                  813 	.db #0xE5	; 229
   6EED 79                  814 	.db #0x79	; 121	'y'
   6EEE FF                  815 	.db #0xFF	; 255
   6EEF FF                  816 	.db #0xFF	; 255
   6EF0 E9                  817 	.db #0xE9	; 233
   6EF1 7B                  818 	.db #0x7B	; 123
   6EF2 FF                  819 	.db #0xFF	; 255
   6EF3 FF                  820 	.db #0xFF	; 255
   6EF4 ED                  821 	.db #0xED	; 237
   6EF5 3C                  822 	.db #0x3C	; 60
   6EF6 F0                  823 	.db #0xF0	; 240
   6EF7 F0                  824 	.db #0xF0	; 240
   6EF8 C3                  825 	.db #0xC3	; 195
   6EF9 1E                  826 	.db #0x1E	; 30
   6EFA FF                  827 	.db #0xFF	; 255
   6EFB FF                  828 	.db #0xFF	; 255
   6EFC 87                  829 	.db #0x87	; 135
   6EFD F0                  830 	.db #0xF0	; 240
   6EFE FF                  831 	.db #0xFF	; 255
   6EFF FF                  832 	.db #0xFF	; 255
   6F00 E1                  833 	.db #0xE1	; 225
   6F01 96                  834 	.db #0x96	; 150
   6F02 FB                  835 	.db #0xFB	; 251
   6F03 FD                  836 	.db #0xFD	; 253
   6F04 E5                  837 	.db #0xE5	; 229
   6F05 4B                  838 	.db #0x4B	; 75	'K'
   6F06 F3                  839 	.db #0xF3	; 243
   6F07 FE                  840 	.db #0xFE	; 254
   6F08 FC                  841 	.db #0xFC	; 252
   6F09 69                  842 	.db #0x69	; 105	'i'
   6F0A 7B                  843 	.db #0x7B	; 123
   6F0B FC                  844 	.db #0xFC	; 252
   6F0C E1                  845 	.db #0xE1	; 225
   6F0D 1E                  846 	.db #0x1E	; 30
   6F0E F2                  847 	.db #0xF2	; 242
   6F0F E5                  848 	.db #0xE5	; 229
   6F10 0F                  849 	.db #0x0F	; 15
   6F11 0F                  850 	.db #0x0F	; 15
   6F12 69                  851 	.db #0x69	; 105	'i'
   6F13 69                  852 	.db #0x69	; 105	'i'
   6F14 0F                  853 	.db #0x0F	; 15
   6F15 0F                  854 	.db #0x0F	; 15
   6F16 E1                  855 	.db #0xE1	; 225
   6F17 0F                  856 	.db #0x0F	; 15
   6F18 0F                  857 	.db #0x0F	; 15
   6F19                     858 _g_tile_12:
   6F19 3C                  859 	.db #0x3C	; 60
   6F1A F0                  860 	.db #0xF0	; 240
   6F1B F0                  861 	.db #0xF0	; 240
   6F1C 0F                  862 	.db #0x0F	; 15
   6F1D 7B                  863 	.db #0x7B	; 123
   6F1E FF                  864 	.db #0xFF	; 255
   6F1F FF                  865 	.db #0xFF	; 255
   6F20 87                  866 	.db #0x87	; 135
   6F21 F7                  867 	.db #0xF7	; 247
   6F22 F8                  868 	.db #0xF8	; 248
   6F23 F0                  869 	.db #0xF0	; 240
   6F24 C3                  870 	.db #0xC3	; 195
   6F25 F0                  871 	.db #0xF0	; 240
   6F26 F6                  872 	.db #0xF6	; 246
   6F27 FA                  873 	.db #0xFA	; 250
   6F28 CB                  874 	.db #0xCB	; 203
   6F29 F7                  875 	.db #0xF7	; 247
   6F2A FE                  876 	.db #0xFE	; 254
   6F2B FA                  877 	.db #0xFA	; 250
   6F2C F8                  878 	.db #0xF8	; 248
   6F2D 78                  879 	.db #0x78	; 120	'x'
   6F2E FE                  880 	.db #0xFE	; 254
   6F2F FA                  881 	.db #0xFA	; 250
   6F30 94                  882 	.db #0x94	; 148
   6F31 7B                  883 	.db #0x7B	; 123
   6F32 F6                  884 	.db #0xF6	; 246
   6F33 E1                  885 	.db #0xE1	; 225
   6F34 18                  886 	.db #0x18	; 24
   6F35 7B                  887 	.db #0x7B	; 123
   6F36 E1                  888 	.db #0xE1	; 225
   6F37 0F                  889 	.db #0x0F	; 15
   6F38 10                  890 	.db #0x10	; 16
   6F39 3C                  891 	.db #0x3C	; 60
   6F3A 1E                  892 	.db #0x1E	; 30
   6F3B C2                  893 	.db #0xC2	; 194
   6F3C 61                  894 	.db #0x61	; 97	'a'
   6F3D 69                  895 	.db #0x69	; 105	'i'
   6F3E E1                  896 	.db #0xE1	; 225
   6F3F 1C                  897 	.db #0x1C	; 28
   6F40 87                  898 	.db #0x87	; 135
   6F41 F6                  899 	.db #0xF6	; 246
   6F42 0F                  900 	.db #0x0F	; 15
   6F43 E1                  901 	.db #0xE1	; 225
   6F44 0F                  902 	.db #0x0F	; 15
   6F45 7B                  903 	.db #0x7B	; 123
   6F46 F0                  904 	.db #0xF0	; 240
   6F47 ED                  905 	.db #0xED	; 237
   6F48 0F                  906 	.db #0x0F	; 15
   6F49 B4                  907 	.db #0xB4	; 180
   6F4A F7                  908 	.db #0xF7	; 247
   6F4B ED                  909 	.db #0xED	; 237
   6F4C 0F                  910 	.db #0x0F	; 15
   6F4D 1E                  911 	.db #0x1E	; 30
   6F4E F0                  912 	.db #0xF0	; 240
   6F4F E1                  913 	.db #0xE1	; 225
   6F50 0F                  914 	.db #0x0F	; 15
   6F51 1E                  915 	.db #0x1E	; 30
   6F52 87                  916 	.db #0x87	; 135
   6F53 C3                  917 	.db #0xC3	; 195
   6F54 0F                  918 	.db #0x0F	; 15
   6F55 1E                  919 	.db #0x1E	; 30
   6F56 C3                  920 	.db #0xC3	; 195
   6F57 E1                  921 	.db #0xE1	; 225
   6F58 0F                  922 	.db #0x0F	; 15
   6F59                     923 _g_tile_13:
   6F59 0F                  924 	.db #0x0F	; 15
   6F5A F0                  925 	.db #0xF0	; 240
   6F5B F0                  926 	.db #0xF0	; 240
   6F5C C3                  927 	.db #0xC3	; 195
   6F5D 1E                  928 	.db #0x1E	; 30
   6F5E FF                  929 	.db #0xFF	; 255
   6F5F FF                  930 	.db #0xFF	; 255
   6F60 ED                  931 	.db #0xED	; 237
   6F61 3C                  932 	.db #0x3C	; 60
   6F62 F0                  933 	.db #0xF0	; 240
   6F63 F1                  934 	.db #0xF1	; 241
   6F64 FE                  935 	.db #0xFE	; 254
   6F65 3D                  936 	.db #0x3D	; 61
   6F66 F5                  937 	.db #0xF5	; 245
   6F67 F6                  938 	.db #0xF6	; 246
   6F68 F0                  939 	.db #0xF0	; 240
   6F69 F1                  940 	.db #0xF1	; 241
   6F6A F5                  941 	.db #0xF5	; 245
   6F6B F7                  942 	.db #0xF7	; 247
   6F6C FE                  943 	.db #0xFE	; 254
   6F6D 92                  944 	.db #0x92	; 146
   6F6E F5                  945 	.db #0xF5	; 245
   6F6F F7                  946 	.db #0xF7	; 247
   6F70 E1                  947 	.db #0xE1	; 225
   6F71 81                  948 	.db #0x81	; 129
   6F72 78                  949 	.db #0x78	; 120	'x'
   6F73 F6                  950 	.db #0xF6	; 246
   6F74 ED                  951 	.db #0xED	; 237
   6F75 80                  952 	.db #0x80	; 128
   6F76 0F                  953 	.db #0x0F	; 15
   6F77 78                  954 	.db #0x78	; 120	'x'
   6F78 ED                  955 	.db #0xED	; 237
   6F79 68                  956 	.db #0x68	; 104	'h'
   6F7A 34                  957 	.db #0x34	; 52	'4'
   6F7B 87                  958 	.db #0x87	; 135
   6F7C C3                  959 	.db #0xC3	; 195
   6F7D 1E                  960 	.db #0x1E	; 30
   6F7E 83                  961 	.db #0x83	; 131
   6F7F 78                  962 	.db #0x78	; 120	'x'
   6F80 69                  963 	.db #0x69	; 105	'i'
   6F81 0F                  964 	.db #0x0F	; 15
   6F82 78                  965 	.db #0x78	; 120	'x'
   6F83 0F                  966 	.db #0x0F	; 15
   6F84 F6                  967 	.db #0xF6	; 246
   6F85 0F                  968 	.db #0x0F	; 15
   6F86 7B                  969 	.db #0x7B	; 123
   6F87 F0                  970 	.db #0xF0	; 240
   6F88 ED                  971 	.db #0xED	; 237
   6F89 0F                  972 	.db #0x0F	; 15
   6F8A 7B                  973 	.db #0x7B	; 123
   6F8B FE                  974 	.db #0xFE	; 254
   6F8C D2                  975 	.db #0xD2	; 210
   6F8D 0F                  976 	.db #0x0F	; 15
   6F8E 78                  977 	.db #0x78	; 120	'x'
   6F8F F0                  978 	.db #0xF0	; 240
   6F90 87                  979 	.db #0x87	; 135
   6F91 0F                  980 	.db #0x0F	; 15
   6F92 3C                  981 	.db #0x3C	; 60
   6F93 1E                  982 	.db #0x1E	; 30
   6F94 87                  983 	.db #0x87	; 135
   6F95 0F                  984 	.db #0x0F	; 15
   6F96 78                  985 	.db #0x78	; 120	'x'
   6F97 3C                  986 	.db #0x3C	; 60
   6F98 87                  987 	.db #0x87	; 135
   6F99                     988 _g_tile_14:
   6F99 1E                  989 	.db #0x1E	; 30
   6F9A F0                  990 	.db #0xF0	; 240
   6F9B F0                  991 	.db #0xF0	; 240
   6F9C 87                  992 	.db #0x87	; 135
   6F9D 3D                  993 	.db #0x3D	; 61
   6F9E FF                  994 	.db #0xFF	; 255
   6F9F FF                  995 	.db #0xFF	; 255
   6FA0 CB                  996 	.db #0xCB	; 203
   6FA1 7B                  997 	.db #0x7B	; 123
   6FA2 F0                  998 	.db #0xF0	; 240
   6FA3 F0                  999 	.db #0xF0	; 240
   6FA4 ED                 1000 	.db #0xED	; 237
   6FA5 78                 1001 	.db #0x78	; 120	'x'
   6FA6 FA                 1002 	.db #0xFA	; 250
   6FA7 F5                 1003 	.db #0xF5	; 245
   6FA8 E1                 1004 	.db #0xE1	; 225
   6FA9 7B                 1005 	.db #0x7B	; 123
   6FAA FA                 1006 	.db #0xFA	; 250
   6FAB F5                 1007 	.db #0xF5	; 245
   6FAC E5                 1008 	.db #0xE5	; 229
   6FAD 78                 1009 	.db #0x78	; 120	'x'
   6FAE FA                 1010 	.db #0xFA	; 250
   6FAF F4                 1011 	.db #0xF4	; 244
   6FB0 F0                 1012 	.db #0xF0	; 240
   6FB1 7A                 1013 	.db #0x7A	; 122	'z'
   6FB2 FA                 1014 	.db #0xFA	; 250
   6FB3 E1                 1015 	.db #0xE1	; 225
   6FB4 18                 1016 	.db #0x18	; 24
   6FB5 3D                 1017 	.db #0x3D	; 61
   6FB6 F0                 1018 	.db #0xF0	; 240
   6FB7 87                 1019 	.db #0x87	; 135
   6FB8 21                 1020 	.db #0x21	; 33
   6FB9 7B                 1021 	.db #0x7B	; 123
   6FBA E9                 1022 	.db #0xE9	; 233
   6FBB 2D                 1023 	.db #0x2D	; 45
   6FBC 43                 1024 	.db #0x43	; 67	'C'
   6FBD 3C                 1025 	.db #0x3C	; 60
   6FBE 87                 1026 	.db #0x87	; 135
   6FBF C2                 1027 	.db #0xC2	; 194
   6FC0 87                 1028 	.db #0x87	; 135
   6FC1 1E                 1029 	.db #0x1E	; 30
   6FC2 B4                 1030 	.db #0xB4	; 180
   6FC3 3C                 1031 	.db #0x3C	; 60
   6FC4 0F                 1032 	.db #0x0F	; 15
   6FC5 3D                 1033 	.db #0x3D	; 61
   6FC6 CB                 1034 	.db #0xCB	; 203
   6FC7 7A                 1035 	.db #0x7A	; 122	'z'
   6FC8 0F                 1036 	.db #0x0F	; 15
   6FC9 1E                 1037 	.db #0x1E	; 30
   6FCA FC                 1038 	.db #0xFC	; 252
   6FCB F6                 1039 	.db #0xF6	; 246
   6FCC 0F                 1040 	.db #0x0F	; 15
   6FCD 2D                 1041 	.db #0x2D	; 45
   6FCE F0                 1042 	.db #0xF0	; 240
   6FCF F0                 1043 	.db #0xF0	; 240
   6FD0 0F                 1044 	.db #0x0F	; 15
   6FD1 0F                 1045 	.db #0x0F	; 15
   6FD2 69                 1046 	.db #0x69	; 105	'i'
   6FD3 69                 1047 	.db #0x69	; 105	'i'
   6FD4 0F                 1048 	.db #0x0F	; 15
   6FD5 0F                 1049 	.db #0x0F	; 15
   6FD6 E1                 1050 	.db #0xE1	; 225
   6FD7 78                 1051 	.db #0x78	; 120	'x'
   6FD8 0F                 1052 	.db #0x0F	; 15
   6FD9                    1053 _g_tile_15:
   6FD9 1E                 1054 	.db #0x1E	; 30
   6FDA F0                 1055 	.db #0xF0	; 240
   6FDB F0                 1056 	.db #0xF0	; 240
   6FDC 87                 1057 	.db #0x87	; 135
   6FDD 3D                 1058 	.db #0x3D	; 61
   6FDE FA                 1059 	.db #0xFA	; 250
   6FDF F5                 1060 	.db #0xF5	; 245
   6FE0 CB                 1061 	.db #0xCB	; 203
   6FE1 7A                 1062 	.db #0x7A	; 122	'z'
   6FE2 F0                 1063 	.db #0xF0	; 240
   6FE3 F0                 1064 	.db #0xF0	; 240
   6FE4 E5                 1065 	.db #0xE5	; 229
   6FE5 79                 1066 	.db #0x79	; 121	'y'
   6FE6 FF                 1067 	.db #0xFF	; 255
   6FE7 FF                 1068 	.db #0xFF	; 255
   6FE8 E9                 1069 	.db #0xE9	; 233
   6FE9 7A                 1070 	.db #0x7A	; 122	'z'
   6FEA FF                 1071 	.db #0xFF	; 255
   6FEB FF                 1072 	.db #0xFF	; 255
   6FEC E5                 1073 	.db #0xE5	; 229
   6FED 79                 1074 	.db #0x79	; 121	'y'
   6FEE FF                 1075 	.db #0xFF	; 255
   6FEF FF                 1076 	.db #0xFF	; 255
   6FF0 E9                 1077 	.db #0xE9	; 233
   6FF1 F3                 1078 	.db #0xF3	; 243
   6FF2 FF                 1079 	.db #0xFF	; 255
   6FF3 FF                 1080 	.db #0xFF	; 255
   6FF4 ED                 1081 	.db #0xED	; 237
   6FF5 B0                 1082 	.db #0xB0	; 176
   6FF6 F0                 1083 	.db #0xF0	; 240
   6FF7 F0                 1084 	.db #0xF0	; 240
   6FF8 C3                 1085 	.db #0xC3	; 195
   6FF9 90                 1086 	.db #0x90	; 144
   6FFA FF                 1087 	.db #0xFF	; 255
   6FFB FF                 1088 	.db #0xFF	; 255
   6FFC 87                 1089 	.db #0x87	; 135
   6FFD 90                 1090 	.db #0x90	; 144
   6FFE FF                 1091 	.db #0xFF	; 255
   6FFF FF                 1092 	.db #0xFF	; 255
   7000 87                 1093 	.db #0x87	; 135
   7001 78                 1094 	.db #0x78	; 120	'x'
   7002 FB                 1095 	.db #0xFB	; 251
   7003 FD                 1096 	.db #0xFD	; 253
   7004 C3                 1097 	.db #0xC3	; 195
   7005 1E                 1098 	.db #0x1E	; 30
   7006 F3                 1099 	.db #0xF3	; 243
   7007 FC                 1100 	.db #0xFC	; 252
   7008 ED                 1101 	.db #0xED	; 237
   7009 0F                 1102 	.db #0x0F	; 15
   700A 7B                 1103 	.db #0x7B	; 123
   700B FC                 1104 	.db #0xFC	; 252
   700C CB                 1105 	.db #0xCB	; 203
   700D 0F                 1106 	.db #0x0F	; 15
   700E 7A                 1107 	.db #0x7A	; 122	'z'
   700F E5                 1108 	.db #0xE5	; 229
   7010 A5                 1109 	.db #0xA5	; 165
   7011 0F                 1110 	.db #0x0F	; 15
   7012 69                 1111 	.db #0x69	; 105	'i'
   7013 69                 1112 	.db #0x69	; 105	'i'
   7014 0F                 1113 	.db #0x0F	; 15
   7015 0F                 1114 	.db #0x0F	; 15
   7016 E1                 1115 	.db #0xE1	; 225
   7017 78                 1116 	.db #0x78	; 120	'x'
   7018 0F                 1117 	.db #0x0F	; 15
                           1118 	.area _INITIALIZER
                           1119 	.area _CABS (ABS)
