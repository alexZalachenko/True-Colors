;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Sep 23 2015) (CYGWIN)
; This file was generated Fri Oct 23 22:07:51 2015
;--------------------------------------------------------
	.module CorazonesVida
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CorazonVacio
	.globl _CorazonLleno
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
_CorazonLleno:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x0C	; 12
	.db #0x03	; 3
	.db #0x0C	; 12
	.db #0x03	; 3
	.db #0x0E	; 14
	.db #0x07	; 7
_CorazonVacio:
	.db #0x0F	; 15
	.db #0x0F	; 15
	.db #0x6F	; 111	'o'
	.db #0x6F	; 111	'o'
	.db #0xEF	; 239
	.db #0x7F	; 127
	.db #0xFF	; 255
	.db #0xFF	; 255
	.db #0x7F	; 127
	.db #0xEF	; 239
	.db #0x3F	; 63
	.db #0xCF	; 207
	.db #0x3F	; 63
	.db #0xCF	; 207
	.db #0x1F	; 31
	.db #0x8F	; 143
	.area _INITIALIZER
	.area _CABS (ABS)
