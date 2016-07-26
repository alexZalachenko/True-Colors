;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:07:51 2015
;--------------------------------------------------------
	.module SpriteEnemigoCAC
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TranquiloArr
	.globl _TranquiloDer
	.globl _TranquiloIz
	.globl _EnfadadoArr
	.globl _EnfadadoDer
	.globl _EnfadadoIz
	.globl _tilesetEnemigoCAC
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
_tilesetEnemigoCAC:
	.dw _EnfadadoIz
	.dw _EnfadadoDer
	.dw _EnfadadoArr
	.dw _TranquiloIz
	.dw _TranquiloDer
	.dw _TranquiloArr
_EnfadadoIz:
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3C	; 60
	.db #0xD0	; 208
	.db #0xB0	; 176
	.db #0xC3	; 195
	.db #0x1E	; 30
	.db #0xD0	; 208
	.db #0xB0	; 176
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x68	; 104	'h'
	.db #0x61	; 97	'a'
	.db #0x4B	; 75	'K'
	.db #0x0F	; 15
	.db #0x68	; 104	'h'
	.db #0x61	; 97	'a'
	.db #0xAD	; 173
	.db #0x0F	; 15
	.db #0x68	; 104	'h'
	.db #0x61	; 97	'a'
	.db #0x9E	; 158
	.db #0x0C	; 12
	.db #0x70	; 112	'p'
	.db #0xE0	; 224
	.db #0x9E	; 158
	.db #0x78	; 120	'x'
	.db #0x98	; 152
	.db #0x90	; 144
	.db #0xAD	; 173
	.db #0x78	; 120	'x'
	.db #0xDC	; 220
	.db #0xB2	; 178
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0xD4	; 212
	.db #0xB2	; 178
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0xAD	; 173
	.db #0x79	; 121	'y'
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3F	; 63
	.db #0x3C	; 60
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x87	; 135
_EnfadadoDer:
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3C	; 60
	.db #0xD0	; 208
	.db #0xB0	; 176
	.db #0xC3	; 195
	.db #0x1E	; 30
	.db #0xD0	; 208
	.db #0xB0	; 176
	.db #0x87	; 135
	.db #0x2D	; 45
	.db #0x68	; 104	'h'
	.db #0x61	; 97	'a'
	.db #0x0F	; 15
	.db #0x5B	; 91
	.db #0x68	; 104	'h'
	.db #0x61	; 97	'a'
	.db #0x0F	; 15
	.db #0x97	; 151
	.db #0x68	; 104	'h'
	.db #0x61	; 97	'a'
	.db #0x0F	; 15
	.db #0x97	; 151
	.db #0x70	; 112	'p'
	.db #0xE0	; 224
	.db #0x03	; 3
	.db #0x5B	; 91
	.db #0x90	; 144
	.db #0x91	; 145
	.db #0xE1	; 225
	.db #0x97	; 151
	.db #0xD4	; 212
	.db #0xB3	; 179
	.db #0xE1	; 225
	.db #0x97	; 151
	.db #0xD4	; 212
	.db #0xB2	; 178
	.db #0x69	; 105	'i'
	.db #0x5B	; 91
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x69	; 105	'i'
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0xE9	; 233
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xC3	; 195
	.db #0xCF	; 207
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xC3	; 195
_EnfadadoArr:
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3C	; 60
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xC3	; 195
	.db #0x1E	; 30
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0xAD	; 173
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x9E	; 158
	.db #0x0C	; 12
	.db #0x70	; 112	'p'
	.db #0xE0	; 224
	.db #0x9E	; 158
	.db #0x78	; 120	'x'
	.db #0x88	; 136
	.db #0x10	; 16
	.db #0xAD	; 173
	.db #0x78	; 120	'x'
	.db #0xCC	; 204
	.db #0x32	; 50	'2'
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0xC4	; 196
	.db #0x32	; 50	'2'
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0x48	; 72	'H'
	.db #0x21	; 33
	.db #0xAD	; 173
	.db #0x79	; 121	'y'
	.db #0x68	; 104	'h'
	.db #0x21	; 33
	.db #0x4B	; 75	'K'
	.db #0x3F	; 63
	.db #0x3C	; 60
	.db #0x03	; 3
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0x83	; 131
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x87	; 135
_TranquiloIz:
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3C	; 60
	.db #0xF2	; 242
	.db #0xF4	; 244
	.db #0xC3	; 195
	.db #0x1E	; 30
	.db #0xF2	; 242
	.db #0xF4	; 244
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x79	; 121	'y'
	.db #0xE9	; 233
	.db #0x4B	; 75	'K'
	.db #0x0F	; 15
	.db #0x79	; 121	'y'
	.db #0xE9	; 233
	.db #0xAD	; 173
	.db #0x0F	; 15
	.db #0x79	; 121	'y'
	.db #0xE9	; 233
	.db #0x9E	; 158
	.db #0x3F	; 63
	.db #0xF8	; 248
	.db #0xF1	; 241
	.db #0x9E	; 158
	.db #0x78	; 120	'x'
	.db #0xFE	; 254
	.db #0xF6	; 246
	.db #0xAD	; 173
	.db #0x78	; 120	'x'
	.db #0xFE	; 254
	.db #0xF6	; 246
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0xF6	; 246
	.db #0xF6	; 246
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0xAD	; 173
	.db #0x79	; 121	'y'
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3F	; 63
	.db #0x3C	; 60
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x87	; 135
_TranquiloDer:
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3C	; 60
	.db #0xF2	; 242
	.db #0xF4	; 244
	.db #0xC3	; 195
	.db #0x1E	; 30
	.db #0xF2	; 242
	.db #0xF4	; 244
	.db #0x87	; 135
	.db #0x2D	; 45
	.db #0x79	; 121	'y'
	.db #0xE9	; 233
	.db #0x0F	; 15
	.db #0x5B	; 91
	.db #0x79	; 121	'y'
	.db #0xE9	; 233
	.db #0x0F	; 15
	.db #0x97	; 151
	.db #0x79	; 121	'y'
	.db #0xE9	; 233
	.db #0x0F	; 15
	.db #0x97	; 151
	.db #0xF8	; 248
	.db #0xF1	; 241
	.db #0xCF	; 207
	.db #0x5B	; 91
	.db #0xF6	; 246
	.db #0xF7	; 247
	.db #0xE1	; 225
	.db #0x97	; 151
	.db #0xF6	; 246
	.db #0xF7	; 247
	.db #0xE1	; 225
	.db #0x97	; 151
	.db #0xF6	; 246
	.db #0xF6	; 246
	.db #0x69	; 105	'i'
	.db #0x5B	; 91
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x69	; 105	'i'
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0xE9	; 233
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xC3	; 195
	.db #0xCF	; 207
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xE1	; 225
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x1E	; 30
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xC3	; 195
_TranquiloArr:
	.db #0x2D	; 45
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x3C	; 60
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xC3	; 195
	.db #0x1E	; 30
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x87	; 135
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x4B	; 75	'K'
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0xAD	; 173
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xE1	; 225
	.db #0x9E	; 158
	.db #0x3F	; 63
	.db #0xF8	; 248
	.db #0xF1	; 241
	.db #0x9E	; 158
	.db #0x78	; 120	'x'
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0xAD	; 173
	.db #0x78	; 120	'x'
	.db #0xFF	; 255
	.db #0xFE	; 254
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0xF7	; 247
	.db #0xFE	; 254
	.db #0x9E	; 158
	.db #0x69	; 105	'i'
	.db #0x7B	; 123
	.db #0xED	; 237
	.db #0xAD	; 173
	.db #0x79	; 121	'y'
	.db #0x79	; 121	'y'
	.db #0xED	; 237
	.db #0x4B	; 75	'K'
	.db #0x3F	; 63
	.db #0x3C	; 60
	.db #0xCF	; 207
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x3C	; 60
	.db #0xC7	; 199
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x78	; 120	'x'
	.db #0xF0	; 240
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x87	; 135
	.area _INITIALIZER
	.area _CABS (ABS)
