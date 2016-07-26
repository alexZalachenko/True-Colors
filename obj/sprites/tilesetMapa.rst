                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:07:51 2015
                              5 ;--------------------------------------------------------
                              6 	.module tilesetMapa
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _columna
                             13 	.globl _puertaIz2
                             14 	.globl _puertaIz1
                             15 	.globl _puertaDer2
                             16 	.globl _puertaDer1
                             17 	.globl _puerta2
                             18 	.globl _puerta1
                             19 	.globl _pared
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 ;--------------------------------------------------------
                             24 ; ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DATA
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _INITIALIZED
                             31 ;--------------------------------------------------------
                             32 ; absolute external ram data
                             33 ;--------------------------------------------------------
                             34 	.area _DABS (ABS)
                             35 ;--------------------------------------------------------
                             36 ; global & static initialisations
                             37 ;--------------------------------------------------------
                             38 	.area _HOME
                             39 	.area _GSINIT
                             40 	.area _GSFINAL
                             41 	.area _GSINIT
                             42 ;--------------------------------------------------------
                             43 ; Home
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _HOME
                             47 ;--------------------------------------------------------
                             48 ; code
                             49 ;--------------------------------------------------------
                             50 	.area _CODE
                             51 	.area _CODE
   69F9                      52 _pared:
   69F9 FE                   53 	.db #0xFE	; 254
   69FA B7                   54 	.db #0xB7	; 183
   69FB FE                   55 	.db #0xFE	; 254
   69FC B7                   56 	.db #0xB7	; 183
   69FD FE                   57 	.db #0xFE	; 254
   69FE B7                   58 	.db #0xB7	; 183
   69FF FE                   59 	.db #0xFE	; 254
   6A00 B7                   60 	.db #0xB7	; 183
   6A01 1E                   61 	.db #0x1E	; 30
   6A02 87                   62 	.db #0x87	; 135
   6A03 1E                   63 	.db #0x1E	; 30
   6A04 87                   64 	.db #0x87	; 135
   6A05 F0                   65 	.db #0xF0	; 240
   6A06 F0                   66 	.db #0xF0	; 240
   6A07 F0                   67 	.db #0xF0	; 240
   6A08 F0                   68 	.db #0xF0	; 240
   6A09 B7                   69 	.db #0xB7	; 183
   6A0A FE                   70 	.db #0xFE	; 254
   6A0B B7                   71 	.db #0xB7	; 183
   6A0C FE                   72 	.db #0xFE	; 254
   6A0D B7                   73 	.db #0xB7	; 183
   6A0E FE                   74 	.db #0xFE	; 254
   6A0F B7                   75 	.db #0xB7	; 183
   6A10 FE                   76 	.db #0xFE	; 254
   6A11 87                   77 	.db #0x87	; 135
   6A12 1E                   78 	.db #0x1E	; 30
   6A13 87                   79 	.db #0x87	; 135
   6A14 1E                   80 	.db #0x1E	; 30
   6A15 F0                   81 	.db #0xF0	; 240
   6A16 F0                   82 	.db #0xF0	; 240
   6A17 F0                   83 	.db #0xF0	; 240
   6A18 F0                   84 	.db #0xF0	; 240
   6A19 FE                   85 	.db #0xFE	; 254
   6A1A B7                   86 	.db #0xB7	; 183
   6A1B FE                   87 	.db #0xFE	; 254
   6A1C B7                   88 	.db #0xB7	; 183
   6A1D FE                   89 	.db #0xFE	; 254
   6A1E B7                   90 	.db #0xB7	; 183
   6A1F FE                   91 	.db #0xFE	; 254
   6A20 B7                   92 	.db #0xB7	; 183
   6A21 1E                   93 	.db #0x1E	; 30
   6A22 87                   94 	.db #0x87	; 135
   6A23 1E                   95 	.db #0x1E	; 30
   6A24 87                   96 	.db #0x87	; 135
   6A25 F0                   97 	.db #0xF0	; 240
   6A26 F0                   98 	.db #0xF0	; 240
   6A27 F0                   99 	.db #0xF0	; 240
   6A28 F0                  100 	.db #0xF0	; 240
   6A29 B7                  101 	.db #0xB7	; 183
   6A2A FE                  102 	.db #0xFE	; 254
   6A2B B7                  103 	.db #0xB7	; 183
   6A2C FE                  104 	.db #0xFE	; 254
   6A2D B7                  105 	.db #0xB7	; 183
   6A2E FE                  106 	.db #0xFE	; 254
   6A2F B7                  107 	.db #0xB7	; 183
   6A30 FE                  108 	.db #0xFE	; 254
   6A31 87                  109 	.db #0x87	; 135
   6A32 1E                  110 	.db #0x1E	; 30
   6A33 87                  111 	.db #0x87	; 135
   6A34 1E                  112 	.db #0x1E	; 30
   6A35 F0                  113 	.db #0xF0	; 240
   6A36 F0                  114 	.db #0xF0	; 240
   6A37 F0                  115 	.db #0xF0	; 240
   6A38 F0                  116 	.db #0xF0	; 240
   6A39                     117 _puerta1:
   6A39 F0                  118 	.db #0xF0	; 240
   6A3A F7                  119 	.db #0xF7	; 247
   6A3B FF                  120 	.db #0xFF	; 255
   6A3C FF                  121 	.db #0xFF	; 255
   6A3D F3                  122 	.db #0xF3	; 243
   6A3E FF                  123 	.db #0xFF	; 255
   6A3F F0                  124 	.db #0xF0	; 240
   6A40 F0                  125 	.db #0xF0	; 240
   6A41 F7                  126 	.db #0xF7	; 247
   6A42 FC                  127 	.db #0xFC	; 252
   6A43 F0                  128 	.db #0xF0	; 240
   6A44 96                  129 	.db #0x96	; 150
   6A45 F7                  130 	.db #0xF7	; 247
   6A46 E9                  131 	.db #0xE9	; 233
   6A47 96                  132 	.db #0x96	; 150
   6A48 1E                  133 	.db #0x1E	; 30
   6A49 F7                  134 	.db #0xF7	; 247
   6A4A C3                  135 	.db #0xC3	; 195
   6A4B 96                  136 	.db #0x96	; 150
   6A4C 1E                  137 	.db #0x1E	; 30
   6A4D F7                  138 	.db #0xF7	; 247
   6A4E C3                  139 	.db #0xC3	; 195
   6A4F 96                  140 	.db #0x96	; 150
   6A50 1E                  141 	.db #0x1E	; 30
   6A51 F7                  142 	.db #0xF7	; 247
   6A52 C3                  143 	.db #0xC3	; 195
   6A53 96                  144 	.db #0x96	; 150
   6A54 1E                  145 	.db #0x1E	; 30
   6A55 F7                  146 	.db #0xF7	; 247
   6A56 F0                  147 	.db #0xF0	; 240
   6A57 F0                  148 	.db #0xF0	; 240
   6A58 F0                  149 	.db #0xF0	; 240
   6A59 F7                  150 	.db #0xF7	; 247
   6A5A F3                  151 	.db #0xF3	; 243
   6A5B FF                  152 	.db #0xFF	; 255
   6A5C FE                  153 	.db #0xFE	; 254
   6A5D F7                  154 	.db #0xF7	; 247
   6A5E D3                  155 	.db #0xD3	; 211
   6A5F FF                  156 	.db #0xFF	; 255
   6A60 FE                  157 	.db #0xFE	; 254
   6A61 F7                  158 	.db #0xF7	; 247
   6A62 D3                  159 	.db #0xD3	; 211
   6A63 FF                  160 	.db #0xFF	; 255
   6A64 F2                  161 	.db #0xF2	; 242
   6A65 F7                  162 	.db #0xF7	; 247
   6A66 D3                  163 	.db #0xD3	; 211
   6A67 FF                  164 	.db #0xFF	; 255
   6A68 F6                  165 	.db #0xF6	; 246
   6A69 F7                  166 	.db #0xF7	; 247
   6A6A D3                  167 	.db #0xD3	; 211
   6A6B FF                  168 	.db #0xFF	; 255
   6A6C FE                  169 	.db #0xFE	; 254
   6A6D F7                  170 	.db #0xF7	; 247
   6A6E C3                  171 	.db #0xC3	; 195
   6A6F 7F                  172 	.db #0x7F	; 127
   6A70 FE                  173 	.db #0xFE	; 254
   6A71 F7                  174 	.db #0xF7	; 247
   6A72 C3                  175 	.db #0xC3	; 195
   6A73 0F                  176 	.db #0x0F	; 15
   6A74 FE                  177 	.db #0xFE	; 254
   6A75 F7                  178 	.db #0xF7	; 247
   6A76 F0                  179 	.db #0xF0	; 240
   6A77 F0                  180 	.db #0xF0	; 240
   6A78 F0                  181 	.db #0xF0	; 240
   6A79                     182 _puerta2:
   6A79 FF                  183 	.db #0xFF	; 255
   6A7A FF                  184 	.db #0xFF	; 255
   6A7B FE                  185 	.db #0xFE	; 254
   6A7C F0                  186 	.db #0xF0	; 240
   6A7D F0                  187 	.db #0xF0	; 240
   6A7E F0                  188 	.db #0xF0	; 240
   6A7F FF                  189 	.db #0xFF	; 255
   6A80 FC                  190 	.db #0xFC	; 252
   6A81 96                  191 	.db #0x96	; 150
   6A82 F0                  192 	.db #0xF0	; 240
   6A83 F3                  193 	.db #0xF3	; 243
   6A84 FE                  194 	.db #0xFE	; 254
   6A85 87                  195 	.db #0x87	; 135
   6A86 96                  196 	.db #0x96	; 150
   6A87 79                  197 	.db #0x79	; 121	'y'
   6A88 FE                  198 	.db #0xFE	; 254
   6A89 87                  199 	.db #0x87	; 135
   6A8A 96                  200 	.db #0x96	; 150
   6A8B 3C                  201 	.db #0x3C	; 60
   6A8C FE                  202 	.db #0xFE	; 254
   6A8D 87                  203 	.db #0x87	; 135
   6A8E 96                  204 	.db #0x96	; 150
   6A8F 3C                  205 	.db #0x3C	; 60
   6A90 FE                  206 	.db #0xFE	; 254
   6A91 87                  207 	.db #0x87	; 135
   6A92 96                  208 	.db #0x96	; 150
   6A93 3C                  209 	.db #0x3C	; 60
   6A94 FE                  210 	.db #0xFE	; 254
   6A95 F0                  211 	.db #0xF0	; 240
   6A96 F0                  212 	.db #0xF0	; 240
   6A97 F0                  213 	.db #0xF0	; 240
   6A98 FE                  214 	.db #0xFE	; 254
   6A99 F7                  215 	.db #0xF7	; 247
   6A9A CF                  216 	.db #0xCF	; 207
   6A9B 3C                  217 	.db #0x3C	; 60
   6A9C FE                  218 	.db #0xFE	; 254
   6A9D F7                  219 	.db #0xF7	; 247
   6A9E FF                  220 	.db #0xFF	; 255
   6A9F 3C                  221 	.db #0x3C	; 60
   6AA0 FE                  222 	.db #0xFE	; 254
   6AA1 F4                  223 	.db #0xF4	; 244
   6AA2 FF                  224 	.db #0xFF	; 255
   6AA3 3C                  225 	.db #0x3C	; 60
   6AA4 FE                  226 	.db #0xFE	; 254
   6AA5 F6                  227 	.db #0xF6	; 246
   6AA6 FF                  228 	.db #0xFF	; 255
   6AA7 BC                  229 	.db #0xBC	; 188
   6AA8 FE                  230 	.db #0xFE	; 254
   6AA9 F7                  231 	.db #0xF7	; 247
   6AAA FF                  232 	.db #0xFF	; 255
   6AAB BC                  233 	.db #0xBC	; 188
   6AAC FE                  234 	.db #0xFE	; 254
   6AAD F7                  235 	.db #0xF7	; 247
   6AAE FF                  236 	.db #0xFF	; 255
   6AAF BC                  237 	.db #0xBC	; 188
   6AB0 FE                  238 	.db #0xFE	; 254
   6AB1 F7                  239 	.db #0xF7	; 247
   6AB2 FF                  240 	.db #0xFF	; 255
   6AB3 BC                  241 	.db #0xBC	; 188
   6AB4 FE                  242 	.db #0xFE	; 254
   6AB5 F0                  243 	.db #0xF0	; 240
   6AB6 F0                  244 	.db #0xF0	; 240
   6AB7 F0                  245 	.db #0xF0	; 240
   6AB8 FE                  246 	.db #0xFE	; 254
   6AB9                     247 _puertaDer1:
   6AB9 F0                  248 	.db #0xF0	; 240
   6ABA F0                  249 	.db #0xF0	; 240
   6ABB F0                  250 	.db #0xF0	; 240
   6ABC F0                  251 	.db #0xF0	; 240
   6ABD FF                  252 	.db #0xFF	; 255
   6ABE FF                  253 	.db #0xFF	; 255
   6ABF FF                  254 	.db #0xFF	; 255
   6AC0 FC                  255 	.db #0xFC	; 252
   6AC1 FF                  256 	.db #0xFF	; 255
   6AC2 FF                  257 	.db #0xFF	; 255
   6AC3 FF                  258 	.db #0xFF	; 255
   6AC4 FE                  259 	.db #0xFE	; 254
   6AC5 FF                  260 	.db #0xFF	; 255
   6AC6 FF                  261 	.db #0xFF	; 255
   6AC7 FF                  262 	.db #0xFF	; 255
   6AC8 FE                  263 	.db #0xFE	; 254
   6AC9 F0                  264 	.db #0xF0	; 240
   6ACA F0                  265 	.db #0xF0	; 240
   6ACB F0                  266 	.db #0xF0	; 240
   6ACC FE                  267 	.db #0xFE	; 254
   6ACD F0                  268 	.db #0xF0	; 240
   6ACE F0                  269 	.db #0xF0	; 240
   6ACF F0                  270 	.db #0xF0	; 240
   6AD0 F7                  271 	.db #0xF7	; 247
   6AD1 87                  272 	.db #0x87	; 135
   6AD2 1F                  273 	.db #0x1F	; 31
   6AD3 87                  274 	.db #0x87	; 135
   6AD4 F3                  275 	.db #0xF3	; 243
   6AD5 97                  276 	.db #0x97	; 151
   6AD6 FF                  277 	.db #0xFF	; 255
   6AD7 87                  278 	.db #0x87	; 135
   6AD8 7B                  279 	.db #0x7B	; 123
   6AD9 97                  280 	.db #0x97	; 151
   6ADA FF                  281 	.db #0xFF	; 255
   6ADB F0                  282 	.db #0xF0	; 240
   6ADC F1                  283 	.db #0xF1	; 241
   6ADD B7                  284 	.db #0xB7	; 183
   6ADE FF                  285 	.db #0xFF	; 255
   6ADF 87                  286 	.db #0x87	; 135
   6AE0 79                  287 	.db #0x79	; 121	'y'
   6AE1 B7                  288 	.db #0xB7	; 183
   6AE2 FF                  289 	.db #0xFF	; 255
   6AE3 87                  290 	.db #0x87	; 135
   6AE4 79                  291 	.db #0x79	; 121	'y'
   6AE5 B7                  292 	.db #0xB7	; 183
   6AE6 FF                  293 	.db #0xFF	; 255
   6AE7 F0                  294 	.db #0xF0	; 240
   6AE8 F1                  295 	.db #0xF1	; 241
   6AE9 F7                  296 	.db #0xF7	; 247
   6AEA F3                  297 	.db #0xF3	; 243
   6AEB 87                  298 	.db #0x87	; 135
   6AEC 79                  299 	.db #0x79	; 121	'y'
   6AED F7                  300 	.db #0xF7	; 247
   6AEE FB                  301 	.db #0xFB	; 251
   6AEF 87                  302 	.db #0x87	; 135
   6AF0 3D                  303 	.db #0x3D	; 61
   6AF1 F7                  304 	.db #0xF7	; 247
   6AF2 FF                  305 	.db #0xFF	; 255
   6AF3 87                  306 	.db #0x87	; 135
   6AF4 3D                  307 	.db #0x3D	; 61
   6AF5 F0                  308 	.db #0xF0	; 240
   6AF6 F0                  309 	.db #0xF0	; 240
   6AF7 F0                  310 	.db #0xF0	; 240
   6AF8 F1                  311 	.db #0xF1	; 241
   6AF9                     312 _puertaDer2:
   6AF9 F0                  313 	.db #0xF0	; 240
   6AFA F0                  314 	.db #0xF0	; 240
   6AFB F0                  315 	.db #0xF0	; 240
   6AFC F1                  316 	.db #0xF1	; 241
   6AFD F7                  317 	.db #0xF7	; 247
   6AFE FF                  318 	.db #0xFF	; 255
   6AFF 87                  319 	.db #0x87	; 135
   6B00 3D                  320 	.db #0x3D	; 61
   6B01 F7                  321 	.db #0xF7	; 247
   6B02 FB                  322 	.db #0xFB	; 251
   6B03 87                  323 	.db #0x87	; 135
   6B04 3D                  324 	.db #0x3D	; 61
   6B05 F7                  325 	.db #0xF7	; 247
   6B06 F3                  326 	.db #0xF3	; 243
   6B07 87                  327 	.db #0x87	; 135
   6B08 79                  328 	.db #0x79	; 121	'y'
   6B09 F7                  329 	.db #0xF7	; 247
   6B0A FF                  330 	.db #0xFF	; 255
   6B0B F0                  331 	.db #0xF0	; 240
   6B0C F1                  332 	.db #0xF1	; 241
   6B0D F7                  333 	.db #0xF7	; 247
   6B0E FF                  334 	.db #0xFF	; 255
   6B0F 87                  335 	.db #0x87	; 135
   6B10 79                  336 	.db #0x79	; 121	'y'
   6B11 F7                  337 	.db #0xF7	; 247
   6B12 EF                  338 	.db #0xEF	; 239
   6B13 87                  339 	.db #0x87	; 135
   6B14 79                  340 	.db #0x79	; 121	'y'
   6B15 F7                  341 	.db #0xF7	; 247
   6B16 EF                  342 	.db #0xEF	; 239
   6B17 F0                  343 	.db #0xF0	; 240
   6B18 F1                  344 	.db #0xF1	; 241
   6B19 F7                  345 	.db #0xF7	; 247
   6B1A 8F                  346 	.db #0x8F	; 143
   6B1B 87                  347 	.db #0x87	; 135
   6B1C 7B                  348 	.db #0x7B	; 123
   6B1D 87                  349 	.db #0x87	; 135
   6B1E 0F                  350 	.db #0x0F	; 15
   6B1F 87                  351 	.db #0x87	; 135
   6B20 F3                  352 	.db #0xF3	; 243
   6B21 F0                  353 	.db #0xF0	; 240
   6B22 F0                  354 	.db #0xF0	; 240
   6B23 F0                  355 	.db #0xF0	; 240
   6B24 F7                  356 	.db #0xF7	; 247
   6B25 F0                  357 	.db #0xF0	; 240
   6B26 F0                  358 	.db #0xF0	; 240
   6B27 F0                  359 	.db #0xF0	; 240
   6B28 FE                  360 	.db #0xFE	; 254
   6B29 FF                  361 	.db #0xFF	; 255
   6B2A FF                  362 	.db #0xFF	; 255
   6B2B FF                  363 	.db #0xFF	; 255
   6B2C FE                  364 	.db #0xFE	; 254
   6B2D FF                  365 	.db #0xFF	; 255
   6B2E FF                  366 	.db #0xFF	; 255
   6B2F FF                  367 	.db #0xFF	; 255
   6B30 FE                  368 	.db #0xFE	; 254
   6B31 FF                  369 	.db #0xFF	; 255
   6B32 FF                  370 	.db #0xFF	; 255
   6B33 FF                  371 	.db #0xFF	; 255
   6B34 FC                  372 	.db #0xFC	; 252
   6B35 F0                  373 	.db #0xF0	; 240
   6B36 F0                  374 	.db #0xF0	; 240
   6B37 F0                  375 	.db #0xF0	; 240
   6B38 F0                  376 	.db #0xF0	; 240
   6B39                     377 _puertaIz1:
   6B39 F8                  378 	.db #0xF8	; 248
   6B3A F0                  379 	.db #0xF0	; 240
   6B3B F0                  380 	.db #0xF0	; 240
   6B3C F0                  381 	.db #0xF0	; 240
   6B3D CB                  382 	.db #0xCB	; 203
   6B3E 1E                  383 	.db #0x1E	; 30
   6B3F FF                  384 	.db #0xFF	; 255
   6B40 FE                  385 	.db #0xFE	; 254
   6B41 CB                  386 	.db #0xCB	; 203
   6B42 1E                  387 	.db #0x1E	; 30
   6B43 FD                  388 	.db #0xFD	; 253
   6B44 FE                  389 	.db #0xFE	; 254
   6B45 E9                  390 	.db #0xE9	; 233
   6B46 1E                  391 	.db #0x1E	; 30
   6B47 FC                  392 	.db #0xFC	; 252
   6B48 FE                  393 	.db #0xFE	; 254
   6B49 F8                  394 	.db #0xF8	; 248
   6B4A F0                  395 	.db #0xF0	; 240
   6B4B FF                  396 	.db #0xFF	; 255
   6B4C DE                  397 	.db #0xDE	; 222
   6B4D E9                  398 	.db #0xE9	; 233
   6B4E 1E                  399 	.db #0x1E	; 30
   6B4F FF                  400 	.db #0xFF	; 255
   6B50 DE                  401 	.db #0xDE	; 222
   6B51 E9                  402 	.db #0xE9	; 233
   6B52 1E                  403 	.db #0x1E	; 30
   6B53 FF                  404 	.db #0xFF	; 255
   6B54 DE                  405 	.db #0xDE	; 222
   6B55 F8                  406 	.db #0xF8	; 248
   6B56 F0                  407 	.db #0xF0	; 240
   6B57 FF                  408 	.db #0xFF	; 255
   6B58 9E                  409 	.db #0x9E	; 158
   6B59 ED                  410 	.db #0xED	; 237
   6B5A 1E                  411 	.db #0x1E	; 30
   6B5B FF                  412 	.db #0xFF	; 255
   6B5C 9E                  413 	.db #0x9E	; 158
   6B5D FC                  414 	.db #0xFC	; 252
   6B5E 1E                  415 	.db #0x1E	; 30
   6B5F 8F                  416 	.db #0x8F	; 143
   6B60 1E                  417 	.db #0x1E	; 30
   6B61 FE                  418 	.db #0xFE	; 254
   6B62 F0                  419 	.db #0xF0	; 240
   6B63 F0                  420 	.db #0xF0	; 240
   6B64 F0                  421 	.db #0xF0	; 240
   6B65 F7                  422 	.db #0xF7	; 247
   6B66 F0                  423 	.db #0xF0	; 240
   6B67 F0                  424 	.db #0xF0	; 240
   6B68 F0                  425 	.db #0xF0	; 240
   6B69 F7                  426 	.db #0xF7	; 247
   6B6A FF                  427 	.db #0xFF	; 255
   6B6B FF                  428 	.db #0xFF	; 255
   6B6C FF                  429 	.db #0xFF	; 255
   6B6D F7                  430 	.db #0xF7	; 247
   6B6E FF                  431 	.db #0xFF	; 255
   6B6F FF                  432 	.db #0xFF	; 255
   6B70 FF                  433 	.db #0xFF	; 255
   6B71 F3                  434 	.db #0xF3	; 243
   6B72 FF                  435 	.db #0xFF	; 255
   6B73 FF                  436 	.db #0xFF	; 255
   6B74 FF                  437 	.db #0xFF	; 255
   6B75 F0                  438 	.db #0xF0	; 240
   6B76 F0                  439 	.db #0xF0	; 240
   6B77 F0                  440 	.db #0xF0	; 240
   6B78 F0                  441 	.db #0xF0	; 240
   6B79                     442 _puertaIz2:
   6B79 F0                  443 	.db #0xF0	; 240
   6B7A F0                  444 	.db #0xF0	; 240
   6B7B F0                  445 	.db #0xF0	; 240
   6B7C F0                  446 	.db #0xF0	; 240
   6B7D F3                  447 	.db #0xF3	; 243
   6B7E FF                  448 	.db #0xFF	; 255
   6B7F FF                  449 	.db #0xFF	; 255
   6B80 FF                  450 	.db #0xFF	; 255
   6B81 F7                  451 	.db #0xF7	; 247
   6B82 FF                  452 	.db #0xFF	; 255
   6B83 FF                  453 	.db #0xFF	; 255
   6B84 FF                  454 	.db #0xFF	; 255
   6B85 F7                  455 	.db #0xF7	; 247
   6B86 FF                  456 	.db #0xFF	; 255
   6B87 FF                  457 	.db #0xFF	; 255
   6B88 FF                  458 	.db #0xFF	; 255
   6B89 F7                  459 	.db #0xF7	; 247
   6B8A F0                  460 	.db #0xF0	; 240
   6B8B F0                  461 	.db #0xF0	; 240
   6B8C F0                  462 	.db #0xF0	; 240
   6B8D FE                  463 	.db #0xFE	; 254
   6B8E F0                  464 	.db #0xF0	; 240
   6B8F F0                  465 	.db #0xF0	; 240
   6B90 F0                  466 	.db #0xF0	; 240
   6B91 FC                  467 	.db #0xFC	; 252
   6B92 1E                  468 	.db #0x1E	; 30
   6B93 0F                  469 	.db #0x0F	; 15
   6B94 1E                  470 	.db #0x1E	; 30
   6B95 ED                  471 	.db #0xED	; 237
   6B96 1E                  472 	.db #0x1E	; 30
   6B97 1F                  473 	.db #0x1F	; 31
   6B98 FE                  474 	.db #0xFE	; 254
   6B99 F8                  475 	.db #0xF8	; 248
   6B9A F0                  476 	.db #0xF0	; 240
   6B9B 7F                  477 	.db #0x7F	; 127
   6B9C FE                  478 	.db #0xFE	; 254
   6B9D E9                  479 	.db #0xE9	; 233
   6B9E 1E                  480 	.db #0x1E	; 30
   6B9F 7F                  481 	.db #0x7F	; 127
   6BA0 FE                  482 	.db #0xFE	; 254
   6BA1 E9                  483 	.db #0xE9	; 233
   6BA2 1E                  484 	.db #0x1E	; 30
   6BA3 FF                  485 	.db #0xFF	; 255
   6BA4 FE                  486 	.db #0xFE	; 254
   6BA5 F8                  487 	.db #0xF8	; 248
   6BA6 F0                  488 	.db #0xF0	; 240
   6BA7 FF                  489 	.db #0xFF	; 255
   6BA8 FE                  490 	.db #0xFE	; 254
   6BA9 E9                  491 	.db #0xE9	; 233
   6BAA 1E                  492 	.db #0x1E	; 30
   6BAB FC                  493 	.db #0xFC	; 252
   6BAC FE                  494 	.db #0xFE	; 254
   6BAD CB                  495 	.db #0xCB	; 203
   6BAE 1E                  496 	.db #0x1E	; 30
   6BAF FD                  497 	.db #0xFD	; 253
   6BB0 FE                  498 	.db #0xFE	; 254
   6BB1 CB                  499 	.db #0xCB	; 203
   6BB2 1E                  500 	.db #0x1E	; 30
   6BB3 FF                  501 	.db #0xFF	; 255
   6BB4 FE                  502 	.db #0xFE	; 254
   6BB5 F8                  503 	.db #0xF8	; 248
   6BB6 F0                  504 	.db #0xF0	; 240
   6BB7 F0                  505 	.db #0xF0	; 240
   6BB8 F0                  506 	.db #0xF0	; 240
   6BB9                     507 _columna:
   6BB9 0F                  508 	.db #0x0F	; 15
   6BBA F0                  509 	.db #0xF0	; 240
   6BBB F0                  510 	.db #0xF0	; 240
   6BBC 0F                  511 	.db #0x0F	; 15
   6BBD 3C                  512 	.db #0x3C	; 60
   6BBE F7                  513 	.db #0xF7	; 247
   6BBF FE                  514 	.db #0xFE	; 254
   6BC0 C3                  515 	.db #0xC3	; 195
   6BC1 79                  516 	.db #0x79	; 121	'y'
   6BC2 FF                  517 	.db #0xFF	; 255
   6BC3 FF                  518 	.db #0xFF	; 255
   6BC4 E9                  519 	.db #0xE9	; 233
   6BC5 79                  520 	.db #0x79	; 121	'y'
   6BC6 FF                  521 	.db #0xFF	; 255
   6BC7 FF                  522 	.db #0xFF	; 255
   6BC8 E9                  523 	.db #0xE9	; 233
   6BC9 78                  524 	.db #0x78	; 120	'x'
   6BCA FF                  525 	.db #0xFF	; 255
   6BCB FF                  526 	.db #0xFF	; 255
   6BCC E1                  527 	.db #0xE1	; 225
   6BCD 7A                  528 	.db #0x7A	; 122	'z'
   6BCE F0                  529 	.db #0xF0	; 240
   6BCF F0                  530 	.db #0xF0	; 240
   6BD0 E5                  531 	.db #0xE5	; 229
   6BD1 7B                  532 	.db #0x7B	; 123
   6BD2 F1                  533 	.db #0xF1	; 241
   6BD3 F8                  534 	.db #0xF8	; 248
   6BD4 ED                  535 	.db #0xED	; 237
   6BD5 79                  536 	.db #0x79	; 121	'y'
   6BD6 F3                  537 	.db #0xF3	; 243
   6BD7 FC                  538 	.db #0xFC	; 252
   6BD8 E9                  539 	.db #0xE9	; 233
   6BD9 7B                  540 	.db #0x7B	; 123
   6BDA F7                  541 	.db #0xF7	; 247
   6BDB FE                  542 	.db #0xFE	; 254
   6BDC ED                  543 	.db #0xED	; 237
   6BDD 7B                  544 	.db #0x7B	; 123
   6BDE F6                  545 	.db #0xF6	; 246
   6BDF FE                  546 	.db #0xFE	; 254
   6BE0 ED                  547 	.db #0xED	; 237
   6BE1 7B                  548 	.db #0x7B	; 123
   6BE2 F7                  549 	.db #0xF7	; 247
   6BE3 FE                  550 	.db #0xFE	; 254
   6BE4 ED                  551 	.db #0xED	; 237
   6BE5 79                  552 	.db #0x79	; 121	'y'
   6BE6 F7                  553 	.db #0xF7	; 247
   6BE7 FC                  554 	.db #0xFC	; 252
   6BE8 E9                  555 	.db #0xE9	; 233
   6BE9 7B                  556 	.db #0x7B	; 123
   6BEA F3                  557 	.db #0xF3	; 243
   6BEB FE                  558 	.db #0xFE	; 254
   6BEC ED                  559 	.db #0xED	; 237
   6BED 79                  560 	.db #0x79	; 121	'y'
   6BEE F7                  561 	.db #0xF7	; 247
   6BEF F6                  562 	.db #0xF6	; 246
   6BF0 E9                  563 	.db #0xE9	; 233
   6BF1 3C                  564 	.db #0x3C	; 60
   6BF2 F3                  565 	.db #0xF3	; 243
   6BF3 FC                  566 	.db #0xFC	; 252
   6BF4 C3                  567 	.db #0xC3	; 195
   6BF5 0F                  568 	.db #0x0F	; 15
   6BF6 F0                  569 	.db #0xF0	; 240
   6BF7 F0                  570 	.db #0xF0	; 240
   6BF8 0F                  571 	.db #0x0F	; 15
                            572 	.area _INITIALIZER
                            573 	.area _CABS (ABS)
