                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
                              4 ; This file was generated Fri Oct 23 22:07:51 2015
                              5 ;--------------------------------------------------------
                              6 	.module SpriteEnemigoCAC
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _TranquiloArr
                             13 	.globl _TranquiloDer
                             14 	.globl _TranquiloIz
                             15 	.globl _EnfadadoArr
                             16 	.globl _EnfadadoDer
                             17 	.globl _EnfadadoIz
                             18 	.globl _tilesetEnemigoCAC
                             19 ;--------------------------------------------------------
                             20 ; special function registers
                             21 ;--------------------------------------------------------
                             22 ;--------------------------------------------------------
                             23 ; ram data
                             24 ;--------------------------------------------------------
                             25 	.area _DATA
                             26 ;--------------------------------------------------------
                             27 ; ram data
                             28 ;--------------------------------------------------------
                             29 	.area _INITIALIZED
                             30 ;--------------------------------------------------------
                             31 ; absolute external ram data
                             32 ;--------------------------------------------------------
                             33 	.area _DABS (ABS)
                             34 ;--------------------------------------------------------
                             35 ; global & static initialisations
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _GSINIT
                             39 	.area _GSFINAL
                             40 	.area _GSINIT
                             41 ;--------------------------------------------------------
                             42 ; Home
                             43 ;--------------------------------------------------------
                             44 	.area _HOME
                             45 	.area _HOME
                             46 ;--------------------------------------------------------
                             47 ; code
                             48 ;--------------------------------------------------------
                             49 	.area _CODE
                             50 	.area _CODE
   7019                      51 _tilesetEnemigoCAC:
   7019 25 70                52 	.dw _EnfadadoIz
   701B 65 70                53 	.dw _EnfadadoDer
   701D A5 70                54 	.dw _EnfadadoArr
   701F E5 70                55 	.dw _TranquiloIz
   7021 25 71                56 	.dw _TranquiloDer
   7023 65 71                57 	.dw _TranquiloArr
   7025                      58 _EnfadadoIz:
   7025 2D                   59 	.db #0x2D	; 45
   7026 78                   60 	.db #0x78	; 120	'x'
   7027 E1                   61 	.db #0xE1	; 225
   7028 4B                   62 	.db #0x4B	; 75	'K'
   7029 3C                   63 	.db #0x3C	; 60
   702A D0                   64 	.db #0xD0	; 208
   702B B0                   65 	.db #0xB0	; 176
   702C C3                   66 	.db #0xC3	; 195
   702D 1E                   67 	.db #0x1E	; 30
   702E D0                   68 	.db #0xD0	; 208
   702F B0                   69 	.db #0xB0	; 176
   7030 87                   70 	.db #0x87	; 135
   7031 0F                   71 	.db #0x0F	; 15
   7032 68                   72 	.db #0x68	; 104	'h'
   7033 61                   73 	.db #0x61	; 97	'a'
   7034 4B                   74 	.db #0x4B	; 75	'K'
   7035 0F                   75 	.db #0x0F	; 15
   7036 68                   76 	.db #0x68	; 104	'h'
   7037 61                   77 	.db #0x61	; 97	'a'
   7038 AD                   78 	.db #0xAD	; 173
   7039 0F                   79 	.db #0x0F	; 15
   703A 68                   80 	.db #0x68	; 104	'h'
   703B 61                   81 	.db #0x61	; 97	'a'
   703C 9E                   82 	.db #0x9E	; 158
   703D 0C                   83 	.db #0x0C	; 12
   703E 70                   84 	.db #0x70	; 112	'p'
   703F E0                   85 	.db #0xE0	; 224
   7040 9E                   86 	.db #0x9E	; 158
   7041 78                   87 	.db #0x78	; 120	'x'
   7042 98                   88 	.db #0x98	; 152
   7043 90                   89 	.db #0x90	; 144
   7044 AD                   90 	.db #0xAD	; 173
   7045 78                   91 	.db #0x78	; 120	'x'
   7046 DC                   92 	.db #0xDC	; 220
   7047 B2                   93 	.db #0xB2	; 178
   7048 9E                   94 	.db #0x9E	; 158
   7049 69                   95 	.db #0x69	; 105	'i'
   704A D4                   96 	.db #0xD4	; 212
   704B B2                   97 	.db #0xB2	; 178
   704C 9E                   98 	.db #0x9E	; 158
   704D 69                   99 	.db #0x69	; 105	'i'
   704E 78                  100 	.db #0x78	; 120	'x'
   704F E1                  101 	.db #0xE1	; 225
   7050 AD                  102 	.db #0xAD	; 173
   7051 79                  103 	.db #0x79	; 121	'y'
   7052 78                  104 	.db #0x78	; 120	'x'
   7053 E1                  105 	.db #0xE1	; 225
   7054 4B                  106 	.db #0x4B	; 75	'K'
   7055 3F                  107 	.db #0x3F	; 63
   7056 3C                  108 	.db #0x3C	; 60
   7057 E1                  109 	.db #0xE1	; 225
   7058 0F                  110 	.db #0x0F	; 15
   7059 0F                  111 	.db #0x0F	; 15
   705A 78                  112 	.db #0x78	; 120	'x'
   705B F0                  113 	.db #0xF0	; 240
   705C 0F                  114 	.db #0x0F	; 15
   705D 0F                  115 	.db #0x0F	; 15
   705E F0                  116 	.db #0xF0	; 240
   705F F0                  117 	.db #0xF0	; 240
   7060 0F                  118 	.db #0x0F	; 15
   7061 3C                  119 	.db #0x3C	; 60
   7062 F0                  120 	.db #0xF0	; 240
   7063 F0                  121 	.db #0xF0	; 240
   7064 87                  122 	.db #0x87	; 135
   7065                     123 _EnfadadoDer:
   7065 2D                  124 	.db #0x2D	; 45
   7066 78                  125 	.db #0x78	; 120	'x'
   7067 E1                  126 	.db #0xE1	; 225
   7068 4B                  127 	.db #0x4B	; 75	'K'
   7069 3C                  128 	.db #0x3C	; 60
   706A D0                  129 	.db #0xD0	; 208
   706B B0                  130 	.db #0xB0	; 176
   706C C3                  131 	.db #0xC3	; 195
   706D 1E                  132 	.db #0x1E	; 30
   706E D0                  133 	.db #0xD0	; 208
   706F B0                  134 	.db #0xB0	; 176
   7070 87                  135 	.db #0x87	; 135
   7071 2D                  136 	.db #0x2D	; 45
   7072 68                  137 	.db #0x68	; 104	'h'
   7073 61                  138 	.db #0x61	; 97	'a'
   7074 0F                  139 	.db #0x0F	; 15
   7075 5B                  140 	.db #0x5B	; 91
   7076 68                  141 	.db #0x68	; 104	'h'
   7077 61                  142 	.db #0x61	; 97	'a'
   7078 0F                  143 	.db #0x0F	; 15
   7079 97                  144 	.db #0x97	; 151
   707A 68                  145 	.db #0x68	; 104	'h'
   707B 61                  146 	.db #0x61	; 97	'a'
   707C 0F                  147 	.db #0x0F	; 15
   707D 97                  148 	.db #0x97	; 151
   707E 70                  149 	.db #0x70	; 112	'p'
   707F E0                  150 	.db #0xE0	; 224
   7080 03                  151 	.db #0x03	; 3
   7081 5B                  152 	.db #0x5B	; 91
   7082 90                  153 	.db #0x90	; 144
   7083 91                  154 	.db #0x91	; 145
   7084 E1                  155 	.db #0xE1	; 225
   7085 97                  156 	.db #0x97	; 151
   7086 D4                  157 	.db #0xD4	; 212
   7087 B3                  158 	.db #0xB3	; 179
   7088 E1                  159 	.db #0xE1	; 225
   7089 97                  160 	.db #0x97	; 151
   708A D4                  161 	.db #0xD4	; 212
   708B B2                  162 	.db #0xB2	; 178
   708C 69                  163 	.db #0x69	; 105	'i'
   708D 5B                  164 	.db #0x5B	; 91
   708E 78                  165 	.db #0x78	; 120	'x'
   708F E1                  166 	.db #0xE1	; 225
   7090 69                  167 	.db #0x69	; 105	'i'
   7091 2D                  168 	.db #0x2D	; 45
   7092 78                  169 	.db #0x78	; 120	'x'
   7093 E1                  170 	.db #0xE1	; 225
   7094 E9                  171 	.db #0xE9	; 233
   7095 0F                  172 	.db #0x0F	; 15
   7096 78                  173 	.db #0x78	; 120	'x'
   7097 C3                  174 	.db #0xC3	; 195
   7098 CF                  175 	.db #0xCF	; 207
   7099 0F                  176 	.db #0x0F	; 15
   709A F0                  177 	.db #0xF0	; 240
   709B E1                  178 	.db #0xE1	; 225
   709C 0F                  179 	.db #0x0F	; 15
   709D 0F                  180 	.db #0x0F	; 15
   709E F0                  181 	.db #0xF0	; 240
   709F F0                  182 	.db #0xF0	; 240
   70A0 0F                  183 	.db #0x0F	; 15
   70A1 1E                  184 	.db #0x1E	; 30
   70A2 F0                  185 	.db #0xF0	; 240
   70A3 F0                  186 	.db #0xF0	; 240
   70A4 C3                  187 	.db #0xC3	; 195
   70A5                     188 _EnfadadoArr:
   70A5 2D                  189 	.db #0x2D	; 45
   70A6 78                  190 	.db #0x78	; 120	'x'
   70A7 E1                  191 	.db #0xE1	; 225
   70A8 4B                  192 	.db #0x4B	; 75	'K'
   70A9 3C                  193 	.db #0x3C	; 60
   70AA F0                  194 	.db #0xF0	; 240
   70AB F0                  195 	.db #0xF0	; 240
   70AC C3                  196 	.db #0xC3	; 195
   70AD 1E                  197 	.db #0x1E	; 30
   70AE F0                  198 	.db #0xF0	; 240
   70AF F0                  199 	.db #0xF0	; 240
   70B0 87                  200 	.db #0x87	; 135
   70B1 0F                  201 	.db #0x0F	; 15
   70B2 78                  202 	.db #0x78	; 120	'x'
   70B3 E1                  203 	.db #0xE1	; 225
   70B4 4B                  204 	.db #0x4B	; 75	'K'
   70B5 0F                  205 	.db #0x0F	; 15
   70B6 78                  206 	.db #0x78	; 120	'x'
   70B7 E1                  207 	.db #0xE1	; 225
   70B8 AD                  208 	.db #0xAD	; 173
   70B9 0F                  209 	.db #0x0F	; 15
   70BA 78                  210 	.db #0x78	; 120	'x'
   70BB E1                  211 	.db #0xE1	; 225
   70BC 9E                  212 	.db #0x9E	; 158
   70BD 0C                  213 	.db #0x0C	; 12
   70BE 70                  214 	.db #0x70	; 112	'p'
   70BF E0                  215 	.db #0xE0	; 224
   70C0 9E                  216 	.db #0x9E	; 158
   70C1 78                  217 	.db #0x78	; 120	'x'
   70C2 88                  218 	.db #0x88	; 136
   70C3 10                  219 	.db #0x10	; 16
   70C4 AD                  220 	.db #0xAD	; 173
   70C5 78                  221 	.db #0x78	; 120	'x'
   70C6 CC                  222 	.db #0xCC	; 204
   70C7 32                  223 	.db #0x32	; 50	'2'
   70C8 9E                  224 	.db #0x9E	; 158
   70C9 69                  225 	.db #0x69	; 105	'i'
   70CA C4                  226 	.db #0xC4	; 196
   70CB 32                  227 	.db #0x32	; 50	'2'
   70CC 9E                  228 	.db #0x9E	; 158
   70CD 69                  229 	.db #0x69	; 105	'i'
   70CE 48                  230 	.db #0x48	; 72	'H'
   70CF 21                  231 	.db #0x21	; 33
   70D0 AD                  232 	.db #0xAD	; 173
   70D1 79                  233 	.db #0x79	; 121	'y'
   70D2 68                  234 	.db #0x68	; 104	'h'
   70D3 21                  235 	.db #0x21	; 33
   70D4 4B                  236 	.db #0x4B	; 75	'K'
   70D5 3F                  237 	.db #0x3F	; 63
   70D6 3C                  238 	.db #0x3C	; 60
   70D7 03                  239 	.db #0x03	; 3
   70D8 0F                  240 	.db #0x0F	; 15
   70D9 0F                  241 	.db #0x0F	; 15
   70DA 3C                  242 	.db #0x3C	; 60
   70DB 83                  243 	.db #0x83	; 131
   70DC 0F                  244 	.db #0x0F	; 15
   70DD 0F                  245 	.db #0x0F	; 15
   70DE 78                  246 	.db #0x78	; 120	'x'
   70DF F0                  247 	.db #0xF0	; 240
   70E0 0F                  248 	.db #0x0F	; 15
   70E1 0F                  249 	.db #0x0F	; 15
   70E2 F0                  250 	.db #0xF0	; 240
   70E3 F0                  251 	.db #0xF0	; 240
   70E4 87                  252 	.db #0x87	; 135
   70E5                     253 _TranquiloIz:
   70E5 2D                  254 	.db #0x2D	; 45
   70E6 78                  255 	.db #0x78	; 120	'x'
   70E7 E1                  256 	.db #0xE1	; 225
   70E8 4B                  257 	.db #0x4B	; 75	'K'
   70E9 3C                  258 	.db #0x3C	; 60
   70EA F2                  259 	.db #0xF2	; 242
   70EB F4                  260 	.db #0xF4	; 244
   70EC C3                  261 	.db #0xC3	; 195
   70ED 1E                  262 	.db #0x1E	; 30
   70EE F2                  263 	.db #0xF2	; 242
   70EF F4                  264 	.db #0xF4	; 244
   70F0 87                  265 	.db #0x87	; 135
   70F1 0F                  266 	.db #0x0F	; 15
   70F2 79                  267 	.db #0x79	; 121	'y'
   70F3 E9                  268 	.db #0xE9	; 233
   70F4 4B                  269 	.db #0x4B	; 75	'K'
   70F5 0F                  270 	.db #0x0F	; 15
   70F6 79                  271 	.db #0x79	; 121	'y'
   70F7 E9                  272 	.db #0xE9	; 233
   70F8 AD                  273 	.db #0xAD	; 173
   70F9 0F                  274 	.db #0x0F	; 15
   70FA 79                  275 	.db #0x79	; 121	'y'
   70FB E9                  276 	.db #0xE9	; 233
   70FC 9E                  277 	.db #0x9E	; 158
   70FD 3F                  278 	.db #0x3F	; 63
   70FE F8                  279 	.db #0xF8	; 248
   70FF F1                  280 	.db #0xF1	; 241
   7100 9E                  281 	.db #0x9E	; 158
   7101 78                  282 	.db #0x78	; 120	'x'
   7102 FE                  283 	.db #0xFE	; 254
   7103 F6                  284 	.db #0xF6	; 246
   7104 AD                  285 	.db #0xAD	; 173
   7105 78                  286 	.db #0x78	; 120	'x'
   7106 FE                  287 	.db #0xFE	; 254
   7107 F6                  288 	.db #0xF6	; 246
   7108 9E                  289 	.db #0x9E	; 158
   7109 69                  290 	.db #0x69	; 105	'i'
   710A F6                  291 	.db #0xF6	; 246
   710B F6                  292 	.db #0xF6	; 246
   710C 9E                  293 	.db #0x9E	; 158
   710D 69                  294 	.db #0x69	; 105	'i'
   710E 78                  295 	.db #0x78	; 120	'x'
   710F E1                  296 	.db #0xE1	; 225
   7110 AD                  297 	.db #0xAD	; 173
   7111 79                  298 	.db #0x79	; 121	'y'
   7112 78                  299 	.db #0x78	; 120	'x'
   7113 E1                  300 	.db #0xE1	; 225
   7114 4B                  301 	.db #0x4B	; 75	'K'
   7115 3F                  302 	.db #0x3F	; 63
   7116 3C                  303 	.db #0x3C	; 60
   7117 E1                  304 	.db #0xE1	; 225
   7118 0F                  305 	.db #0x0F	; 15
   7119 0F                  306 	.db #0x0F	; 15
   711A 78                  307 	.db #0x78	; 120	'x'
   711B F0                  308 	.db #0xF0	; 240
   711C 0F                  309 	.db #0x0F	; 15
   711D 0F                  310 	.db #0x0F	; 15
   711E F0                  311 	.db #0xF0	; 240
   711F F0                  312 	.db #0xF0	; 240
   7120 0F                  313 	.db #0x0F	; 15
   7121 3C                  314 	.db #0x3C	; 60
   7122 F0                  315 	.db #0xF0	; 240
   7123 F0                  316 	.db #0xF0	; 240
   7124 87                  317 	.db #0x87	; 135
   7125                     318 _TranquiloDer:
   7125 2D                  319 	.db #0x2D	; 45
   7126 78                  320 	.db #0x78	; 120	'x'
   7127 E1                  321 	.db #0xE1	; 225
   7128 4B                  322 	.db #0x4B	; 75	'K'
   7129 3C                  323 	.db #0x3C	; 60
   712A F2                  324 	.db #0xF2	; 242
   712B F4                  325 	.db #0xF4	; 244
   712C C3                  326 	.db #0xC3	; 195
   712D 1E                  327 	.db #0x1E	; 30
   712E F2                  328 	.db #0xF2	; 242
   712F F4                  329 	.db #0xF4	; 244
   7130 87                  330 	.db #0x87	; 135
   7131 2D                  331 	.db #0x2D	; 45
   7132 79                  332 	.db #0x79	; 121	'y'
   7133 E9                  333 	.db #0xE9	; 233
   7134 0F                  334 	.db #0x0F	; 15
   7135 5B                  335 	.db #0x5B	; 91
   7136 79                  336 	.db #0x79	; 121	'y'
   7137 E9                  337 	.db #0xE9	; 233
   7138 0F                  338 	.db #0x0F	; 15
   7139 97                  339 	.db #0x97	; 151
   713A 79                  340 	.db #0x79	; 121	'y'
   713B E9                  341 	.db #0xE9	; 233
   713C 0F                  342 	.db #0x0F	; 15
   713D 97                  343 	.db #0x97	; 151
   713E F8                  344 	.db #0xF8	; 248
   713F F1                  345 	.db #0xF1	; 241
   7140 CF                  346 	.db #0xCF	; 207
   7141 5B                  347 	.db #0x5B	; 91
   7142 F6                  348 	.db #0xF6	; 246
   7143 F7                  349 	.db #0xF7	; 247
   7144 E1                  350 	.db #0xE1	; 225
   7145 97                  351 	.db #0x97	; 151
   7146 F6                  352 	.db #0xF6	; 246
   7147 F7                  353 	.db #0xF7	; 247
   7148 E1                  354 	.db #0xE1	; 225
   7149 97                  355 	.db #0x97	; 151
   714A F6                  356 	.db #0xF6	; 246
   714B F6                  357 	.db #0xF6	; 246
   714C 69                  358 	.db #0x69	; 105	'i'
   714D 5B                  359 	.db #0x5B	; 91
   714E 78                  360 	.db #0x78	; 120	'x'
   714F E1                  361 	.db #0xE1	; 225
   7150 69                  362 	.db #0x69	; 105	'i'
   7151 2D                  363 	.db #0x2D	; 45
   7152 78                  364 	.db #0x78	; 120	'x'
   7153 E1                  365 	.db #0xE1	; 225
   7154 E9                  366 	.db #0xE9	; 233
   7155 0F                  367 	.db #0x0F	; 15
   7156 78                  368 	.db #0x78	; 120	'x'
   7157 C3                  369 	.db #0xC3	; 195
   7158 CF                  370 	.db #0xCF	; 207
   7159 0F                  371 	.db #0x0F	; 15
   715A F0                  372 	.db #0xF0	; 240
   715B E1                  373 	.db #0xE1	; 225
   715C 0F                  374 	.db #0x0F	; 15
   715D 0F                  375 	.db #0x0F	; 15
   715E F0                  376 	.db #0xF0	; 240
   715F F0                  377 	.db #0xF0	; 240
   7160 0F                  378 	.db #0x0F	; 15
   7161 1E                  379 	.db #0x1E	; 30
   7162 F0                  380 	.db #0xF0	; 240
   7163 F0                  381 	.db #0xF0	; 240
   7164 C3                  382 	.db #0xC3	; 195
   7165                     383 _TranquiloArr:
   7165 2D                  384 	.db #0x2D	; 45
   7166 78                  385 	.db #0x78	; 120	'x'
   7167 E1                  386 	.db #0xE1	; 225
   7168 4B                  387 	.db #0x4B	; 75	'K'
   7169 3C                  388 	.db #0x3C	; 60
   716A F0                  389 	.db #0xF0	; 240
   716B F0                  390 	.db #0xF0	; 240
   716C C3                  391 	.db #0xC3	; 195
   716D 1E                  392 	.db #0x1E	; 30
   716E F0                  393 	.db #0xF0	; 240
   716F F0                  394 	.db #0xF0	; 240
   7170 87                  395 	.db #0x87	; 135
   7171 0F                  396 	.db #0x0F	; 15
   7172 78                  397 	.db #0x78	; 120	'x'
   7173 E1                  398 	.db #0xE1	; 225
   7174 4B                  399 	.db #0x4B	; 75	'K'
   7175 0F                  400 	.db #0x0F	; 15
   7176 78                  401 	.db #0x78	; 120	'x'
   7177 E1                  402 	.db #0xE1	; 225
   7178 AD                  403 	.db #0xAD	; 173
   7179 0F                  404 	.db #0x0F	; 15
   717A 78                  405 	.db #0x78	; 120	'x'
   717B E1                  406 	.db #0xE1	; 225
   717C 9E                  407 	.db #0x9E	; 158
   717D 3F                  408 	.db #0x3F	; 63
   717E F8                  409 	.db #0xF8	; 248
   717F F1                  410 	.db #0xF1	; 241
   7180 9E                  411 	.db #0x9E	; 158
   7181 78                  412 	.db #0x78	; 120	'x'
   7182 FF                  413 	.db #0xFF	; 255
   7183 FE                  414 	.db #0xFE	; 254
   7184 AD                  415 	.db #0xAD	; 173
   7185 78                  416 	.db #0x78	; 120	'x'
   7186 FF                  417 	.db #0xFF	; 255
   7187 FE                  418 	.db #0xFE	; 254
   7188 9E                  419 	.db #0x9E	; 158
   7189 69                  420 	.db #0x69	; 105	'i'
   718A F7                  421 	.db #0xF7	; 247
   718B FE                  422 	.db #0xFE	; 254
   718C 9E                  423 	.db #0x9E	; 158
   718D 69                  424 	.db #0x69	; 105	'i'
   718E 7B                  425 	.db #0x7B	; 123
   718F ED                  426 	.db #0xED	; 237
   7190 AD                  427 	.db #0xAD	; 173
   7191 79                  428 	.db #0x79	; 121	'y'
   7192 79                  429 	.db #0x79	; 121	'y'
   7193 ED                  430 	.db #0xED	; 237
   7194 4B                  431 	.db #0x4B	; 75	'K'
   7195 3F                  432 	.db #0x3F	; 63
   7196 3C                  433 	.db #0x3C	; 60
   7197 CF                  434 	.db #0xCF	; 207
   7198 0F                  435 	.db #0x0F	; 15
   7199 0F                  436 	.db #0x0F	; 15
   719A 3C                  437 	.db #0x3C	; 60
   719B C7                  438 	.db #0xC7	; 199
   719C 0F                  439 	.db #0x0F	; 15
   719D 0F                  440 	.db #0x0F	; 15
   719E 78                  441 	.db #0x78	; 120	'x'
   719F F0                  442 	.db #0xF0	; 240
   71A0 0F                  443 	.db #0x0F	; 15
   71A1 0F                  444 	.db #0x0F	; 15
   71A2 F0                  445 	.db #0xF0	; 240
   71A3 F0                  446 	.db #0xF0	; 240
   71A4 87                  447 	.db #0x87	; 135
                            448 	.area _INITIALIZER
                            449 	.area _CABS (ABS)
