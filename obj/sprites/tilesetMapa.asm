;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:07:51 2015
;--------------------------------------------------------
	.module tilesetMapa
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _columna
	.globl _puertaIz2
	.globl _puertaIz1
	.globl _puertaDer2
	.globl _puertaDer1
	.globl _puerta2
	.globl _puerta1
	.globl _pared
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
	.area _CODE
_pared:
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0x1E	; 30
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0xB7	; 183
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0x1E	; 30
	.db #0x87	; 135
	.db #0x1E	; 30
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
_puerta1:
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0xFC	; 252
	.db #0xF0	; 240
	.db #0x96	; 150
	.db #0xF7	; 247
	.db #0xE9	; 233
	.db #0x96	; 150
	.db #0x1E	; 30
	.db #0xF7	; 247
	.db #0xC3	; 195
	.db #0x96	; 150
	.db #0x1E	; 30
	.db #0xF7	; 247
	.db #0xC3	; 195
	.db #0x96	; 150
	.db #0x1E	; 30
	.db #0xF7	; 247
	.db #0xC3	; 195
	.db #0x96	; 150
	.db #0x1E	; 30
	.db #0xF7	; 247
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xD3	; 211
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xD3	; 211
	.db #0xFF	; 255
	.db #0xF2	; 242
	.db #0xF7	; 247
	.db #0xD3	; 211
	.db #0xFF	; 255
	.db #0xF6	; 246
	.db #0xF7	; 247
	.db #0xD3	; 211
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xC3	; 195
	.db #0x7F	; 127
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
_puerta2:
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0x96	; 150
	.db #0xF0	; 240
	.db #0xF3	; 243
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0x96	; 150
	.db #0x79	; 121	'y'
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0x96	; 150
	.db #0x3C	; 60
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0x96	; 150
	.db #0x3C	; 60
	.db #0xFE	; 254
	.db #0x87	; 135
	.db #0x96	; 150
	.db #0x3C	; 60
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xCF	; 207
	.db #0x3C	; 60
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0x3C	; 60
	.db #0xFE	; 254
	.db #0xF4	; 244
	.db #0xFF	; 255
	.db #0x3C	; 60
	.db #0xFE	; 254
	.db #0xF6	; 246
	.db #0xFF	; 255
	.db #0xBC	; 188
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xBC	; 188
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xBC	; 188
	.db #0xFE	; 254
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xBC	; 188
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFE	; 254
_puertaDer1:
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0x87	; 135
	.db #0x1F	; 31
	.db #0x87	; 135
	.db #0xF3	; 243
	.db #0x97	; 151
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0x7B	; 123
	.db #0x97	; 151
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xF1	; 241
	.db #0xB7	; 183
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0x79	; 121	'y'
	.db #0xB7	; 183
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0x79	; 121	'y'
	.db #0xB7	; 183
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xF1	; 241
	.db #0xF7	; 247
	.db #0xF3	; 243
	.db #0x87	; 135
	.db #0x79	; 121	'y'
	.db #0xF7	; 247
	.db #0xFB	; 251
	.db #0x87	; 135
	.db #0x3D	; 61
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0x3D	; 61
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF1	; 241
_puertaDer2:
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF1	; 241
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0x3D	; 61
	.db #0xF7	; 247
	.db #0xFB	; 251
	.db #0x87	; 135
	.db #0x3D	; 61
	.db #0xF7	; 247
	.db #0xF3	; 243
	.db #0x87	; 135
	.db #0x79	; 121	'y'
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xF1	; 241
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0x87	; 135
	.db #0x79	; 121	'y'
	.db #0xF7	; 247
	.db #0xEF	; 239
	.db #0x87	; 135
	.db #0x79	; 121	'y'
	.db #0xF7	; 247
	.db #0xEF	; 239
	.db #0xF0	; 240
	.db #0xF1	; 241
	.db #0xF7	; 247
	.db #0x8F	; 143
	.db #0x87	; 135
	.db #0x7B	; 123
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x87	; 135
	.db #0xF3	; 243
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFC	; 252
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
_puertaIz1:
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xCB	; 203
	.db #0x1E	; 30
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xCB	; 203
	.db #0x1E	; 30
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0xE9	; 233
	.db #0x1E	; 30
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xDE	; 222
	.db #0xE9	; 233
	.db #0x1E	; 30
	.db #0xFF	; 255
	.db #0xDE	; 222
	.db #0xE9	; 233
	.db #0x1E	; 30
	.db #0xFF	; 255
	.db #0xDE	; 222
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0x9E	; 158
	.db #0xED	; 237
	.db #0x1E	; 30
	.db #0xFF	; 255
	.db #0x9E	; 158
	.db #0xFC	; 252
	.db #0x1E	; 30
	.db #0x8F	; 143
	.db #0x1E	; 30
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
_puertaIz2:
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF3	; 243
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xF7	; 247
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFE	; 254
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xFC	; 252
	.db #0x1E	; 30
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0xED	; 237
	.db #0x1E	; 30
	.db #0x1F	; 31
	.db #0xFE	; 254
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0x7F	; 127
	.db #0xFE	; 254
	.db #0xE9	; 233
	.db #0x1E	; 30
	.db #0x7F	; 127
	.db #0xFE	; 254
	.db #0xE9	; 233
	.db #0x1E	; 30
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xE9	; 233
	.db #0x1E	; 30
	.db #0xFC	; 252
	.db #0xFE	; 254
	.db #0xCB	; 203
	.db #0x1E	; 30
	.db #0xFD	; 253
	.db #0xFE	; 254
	.db #0xCB	; 203
	.db #0x1E	; 30
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xF8	; 248
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
_columna:
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0xF7	; 247
	.db #0xFE	; 254
	.db #0xC3	; 195
	.db #0x79	; 121	'y'
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE9	; 233
	.db #0x79	; 121	'y'
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE9	; 233
	.db #0x78	; 120	'x'
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0xE1	; 225
	.db #0x7A	; 122	'z'
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE5	; 229
	.db #0x7B	; 123
	.db #0xF1	; 241
	.db #0xF8	; 248
	.db #0xED	; 237
	.db #0x79	; 121	'y'
	.db #0xF3	; 243
	.db #0xFC	; 252
	.db #0xE9	; 233
	.db #0x7B	; 123
	.db #0xF7	; 247
	.db #0xFE	; 254
	.db #0xED	; 237
	.db #0x7B	; 123
	.db #0xF6	; 246
	.db #0xFE	; 254
	.db #0xED	; 237
	.db #0x7B	; 123
	.db #0xF7	; 247
	.db #0xFE	; 254
	.db #0xED	; 237
	.db #0x79	; 121	'y'
	.db #0xF7	; 247
	.db #0xFC	; 252
	.db #0xE9	; 233
	.db #0x7B	; 123
	.db #0xF3	; 243
	.db #0xFE	; 254
	.db #0xED	; 237
	.db #0x79	; 121	'y'
	.db #0xF7	; 247
	.db #0xF6	; 246
	.db #0xE9	; 233
	.db #0x3C	; 60
	.db #0xF3	; 243
	.db #0xFC	; 252
	.db #0xC3	; 195
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.area _INITIALIZER
	.area _CABS (ABS)
