opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_dispHeader
	FNCALL	_main,_dispLCD
	FNCALL	_dispLCD,_beginCount
	FNCALL	_dispLCD,_dataCtrl
	FNCALL	_dispLCD,_instCtrl
	FNCALL	_beginCount,___awdiv
	FNCALL	_beginCount,___awmod
	FNCALL	_beginCount,___wmul
	FNCALL	_beginCount,_dataCtrl
	FNCALL	_beginCount,_delay
	FNCALL	_beginCount,_dispHeader
	FNCALL	_beginCount,_dispSTR
	FNCALL	_beginCount,_instCtrl
	FNCALL	_dispHeader,_dispSTR
	FNCALL	_dispHeader,_initLCD
	FNCALL	_dispHeader,_instCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dispSTR,_dataCtrl
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	FNCALL	_ISR,_toogleFlag
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	beginCount@F1174
	global	dispHeader@F1181
	global	dispHeader@F1183
	global	dispHeader@F1185
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	58

;initializer for beginCount@F1174
	retlw	053h
	retlw	074h
	retlw	061h
	retlw	072h
	retlw	074h
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	02Eh
	retlw	02Eh
	retlw	02Eh
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	174

;initializer for dispHeader@F1181
	retlw	053h
	retlw	061h
	retlw	06Dh
	retlw	070h
	retlw	06Ch
	retlw	065h
	retlw	020h
	retlw	048h
	retlw	065h
	retlw	061h
	retlw	064h
	retlw	065h
	retlw	072h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	line	177

;initializer for dispHeader@F1183
	retlw	030h
	retlw	03Ah
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	180

;initializer for dispHeader@F1185
	retlw	050h
	retlw	072h
	retlw	065h
	retlw	073h
	retlw	073h
	retlw	020h
	retlw	02Ah
	retlw	020h
	retlw	074h
	retlw	06Fh
	retlw	020h
	retlw	053h
	retlw	074h
	retlw	061h
	retlw	072h
	retlw	074h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_count_flag
	global	_dataRead
	global	_dispMin
	global	_dispSec
	global	_flagPause
	global	_flagStart
	global	_minutes
	global	_seconds
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RA0
_RA0	set	0x28
	global	_RA1
_RA1	set	0x29
	global	_RA2
_RA2	set	0x2A
	global	_RB0
_RB0	set	0x30
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_CMCON
_CMCON	set	0x9C
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"EggTimer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count_flag:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_dataRead:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_dispMin:
       ds      2

_dispSec:
       ds      2

_flagPause:
       ds      2

_flagStart:
       ds      2

_minutes:
       ds      2

_seconds:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	58
beginCount@F1174:
       ds      20

psect	dataBANK1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	174
dispHeader@F1181:
       ds      20

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	177
dispHeader@F1183:
       ds      20

psect	dataBANK3
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	180
dispHeader@F1185:
       ds      20

	file	"EggTimer.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
	clrf	((__pbssBANK1)+8)&07Fh
	clrf	((__pbssBANK1)+9)&07Fh
	clrf	((__pbssBANK1)+10)&07Fh
	clrf	((__pbssBANK1)+11)&07Fh
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+40)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram0
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+40)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	beginCount@header3
beginCount@header3:	; 20 bytes @ 0x0
	ds	20
	global	beginCount@secLSB
beginCount@secLSB:	; 2 bytes @ 0x14
	ds	2
	global	beginCount@secMSB
beginCount@secMSB:	; 2 bytes @ 0x16
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_dispHeader:	; 0 bytes @ 0x0
?_dispLCD:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_dispSTR:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_toogleFlag:	; 0 bytes @ 0x0
??_toogleFlag:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_beginCount:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	6
??_dispLCD:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
??_main:	; 0 bytes @ 0x6
??_initLCD:	; 0 bytes @ 0x6
??___wmul:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_delay:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@timer
delay@timer:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x3
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x3
	ds	1
??_dispSTR:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	dispSTR@i
dispSTR@i:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	dispSTR@STR
dispSTR@STR:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??_dispHeader:	; 0 bytes @ 0x8
	ds	4
	global	dispHeader@header
dispHeader@header:	; 20 bytes @ 0xC
	ds	20
	global	dispHeader@header2
dispHeader@header2:	; 20 bytes @ 0x20
	ds	20
	global	dispHeader@header3
dispHeader@header3:	; 20 bytes @ 0x34
	ds	20
??_beginCount:	; 0 bytes @ 0x48
	ds	4
	global	dispLCD@DATA
dispLCD@DATA:	; 2 bytes @ 0x4C
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        80
;!    BSS         16
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       8
;!    BANK0            80     78      80
;!    BANK1            80     24      76
;!    BANK3            96      0      40
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    dispSTR@STR	PTR unsigned char  size(1) Largest target is 20
;!		 -> dispHeader@header3(BANK0[20]), dispHeader@header2(BANK0[20]), dispHeader@header(BANK0[20]), beginCount@header3(BANK1[20]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_dispLCD
;!    _dispLCD->_beginCount
;!    _beginCount->_dispHeader
;!    _dispHeader->_dispSTR
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!    _dispSTR->_dataCtrl
;!    _dataCtrl->_delay
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _dispLCD->_beginCount
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    7601
;!                         _dispHeader
;!                            _dispLCD
;! ---------------------------------------------------------------------------------
;! (1) _dispLCD                                              2     2      0    5974
;!                                             76 BANK0      2     2      0
;!                         _beginCount
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _beginCount                                          28    28      0    5070
;!                                             72 BANK0      4     4      0
;!                                              0 BANK1     24    24      0
;!                            ___awdiv
;!                            ___awmod
;!                             ___wmul
;!                           _dataCtrl
;!                              _delay
;!                         _dispHeader
;!                            _dispSTR
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (3) _dispHeader                                          64    64      0    1627
;!                                              8 BANK0     64    64      0
;!                            _dispSTR
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (4) _initLCD                                              0     0      0     613
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0     322
;!                                              3 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _dispSTR                                              4     4      0     572
;!                                              4 BANK0      4     4      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     322
;!                                              3 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                3     1      2     291
;!                                              0 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4     266
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     823
;!                                              0 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     705
;!                                              0 BANK0      9     5      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _ISR                                                  6     6      0       0
;!                                              0 COMMON     6     6      0
;!                         _toogleFlag
;! ---------------------------------------------------------------------------------
;! (8) _toogleFlag                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dispHeader
;!     _dispSTR
;!       _dataCtrl
;!         _delay
;!     _initLCD
;!       _delay
;!       _instCtrl
;!         _delay
;!     _instCtrl
;!       _delay
;!   _dispLCD
;!     _beginCount
;!       ___awdiv
;!       ___awmod
;!       ___wmul
;!       _dataCtrl
;!         _delay
;!       _delay
;!       _dispHeader
;!         _dispSTR
;!           _dataCtrl
;!             _delay
;!         _initLCD
;!           _delay
;!           _instCtrl
;!             _delay
;!         _instCtrl
;!           _delay
;!       _dispSTR
;!         _dataCtrl
;!           _delay
;!       _instCtrl
;!         _delay
;!     _dataCtrl
;!       _delay
;!     _instCtrl
;!       _delay
;!
;! _ISR (ROOT)
;!   _toogleFlag
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      28       9       41.7%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     18      4C       7       95.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4E      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       8       1       57.1%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      CC      12        0.0%
;!ABS                  0      0      CC       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_dispHeader
;;		_dispLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	32
	
l1429:	
;EggTimer.c: 32: OPTION_REG = 0x43;
	movlw	(043h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	33
	
l1431:	
;EggTimer.c: 33: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	34
	
l1433:	
;EggTimer.c: 34: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	35
	
l1435:	
;EggTimer.c: 35: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	36
	
l1437:	
;EggTimer.c: 36: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	37
	
l1439:	
;EggTimer.c: 37: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	39
;EggTimer.c: 39: ADCON1 = 0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	40
;EggTimer.c: 40: CMCON = 0x07;
	movlw	(07h)
	movwf	(156)^080h	;volatile
	line	41
	
l1441:	
;EggTimer.c: 41: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	42
	
l1443:	
;EggTimer.c: 42: TRISB = 0x01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	43
;EggTimer.c: 43: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	44
	
l1445:	
;EggTimer.c: 44: TRISD = 0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	46
	
l1447:	
;EggTimer.c: 46: dispHeader();
	fcall	_dispHeader
	goto	l1449
	line	48
;EggTimer.c: 48: while(1)
	
l69:	
	line	50
	
l1449:	
;EggTimer.c: 49: {
;EggTimer.c: 50: if(RB0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u1361
	goto	u1360
u1361:
	goto	l1449
u1360:
	line	51
	
l1451:	
;EggTimer.c: 51: dispLCD();
	fcall	_dispLCD
	goto	l1449
	
l70:	
	goto	l1449
	line	52
	
l71:	
	line	48
	goto	l1449
	
l72:	
	line	53
	
l73:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_dispLCD

;; *************** function _dispLCD *****************
;; Defined at:
;;		line 127 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DATA            2   76[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_beginCount
;;		_dataCtrl
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	127
global __ptext1
__ptext1:	;psect for function _dispLCD
psect	text1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	127
	global	__size_of_dispLCD
	__size_of_dispLCD	equ	__end_of_dispLCD-_dispLCD
	
_dispLCD:	
;incstack = 0
	opt	stack 0
; Regs used in _dispLCD: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	129
	
l1387:	
;EggTimer.c: 129: int DATA = dataRead;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dataRead+1),w
	clrf	(dispLCD@DATA+1)
	addwf	(dispLCD@DATA+1)
	movf	(_dataRead),w
	clrf	(dispLCD@DATA)
	addwf	(dispLCD@DATA)

	line	130
	
l1389:	
;EggTimer.c: 130: if(DATA < 3)
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1295
	movlw	low(03h)
	subwf	(dispLCD@DATA),w
u1295:

	skipnc
	goto	u1291
	goto	u1290
u1291:
	goto	l1393
u1290:
	line	132
	
l1391:	
;EggTimer.c: 131: {
;EggTimer.c: 132: DATA += 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispLCD@DATA),f
	skipnc
	incf	(dispLCD@DATA+1),f
	movlw	high(01h)
	addwf	(dispLCD@DATA+1),f
	line	133
;EggTimer.c: 133: }
	goto	l1409
	line	134
	
l97:	
	
l1393:	
;EggTimer.c: 134: else if (DATA > 6 && DATA < 11)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1305
	movlw	low(07h)
	subwf	(dispLCD@DATA),w
u1305:

	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1399
u1300:
	
l1395:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u1315
	movlw	low(0Bh)
	subwf	(dispLCD@DATA),w
u1315:

	skipnc
	goto	u1311
	goto	u1310
u1311:
	goto	l1399
u1310:
	line	136
	
l1397:	
;EggTimer.c: 135: {
;EggTimer.c: 136: DATA -= 1;
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispLCD@DATA),f
	skipnc
	incf	(dispLCD@DATA+1),f
	movlw	high(-1)
	addwf	(dispLCD@DATA+1),f
	line	137
;EggTimer.c: 137: }
	goto	l1409
	line	138
	
l99:	
	
l1399:	
;EggTimer.c: 138: else if(DATA > 3 && DATA <= 6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1325
	movlw	low(04h)
	subwf	(dispLCD@DATA),w
u1325:

	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l1405
u1320:
	
l1401:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u1335
	movlw	low(07h)
	subwf	(dispLCD@DATA),w
u1335:

	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l1405
u1330:
	goto	l1409
	line	141
	
l1403:	
;EggTimer.c: 141: }
	goto	l1409
	line	142
	
l101:	
	
l1405:	
;EggTimer.c: 142: else if(DATA == 13)
	movlw	0Dh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(dispLCD@DATA),w
	iorwf	(dispLCD@DATA+1),w
	skipz
	goto	u1341
	goto	u1340
u1341:
	goto	l1409
u1340:
	line	144
	
l1407:	
;EggTimer.c: 143: {
;EggTimer.c: 144: DATA = 0;
	clrf	(dispLCD@DATA)
	clrf	(dispLCD@DATA+1)
	line	145
;EggTimer.c: 145: }
	goto	l1409
	line	146
	
l103:	
	goto	l1409
	line	149
	
l104:	
	goto	l1409
	
l102:	
	goto	l1409
	
l100:	
	goto	l1409
	
l98:	
	line	151
	
l1409:	
;EggTimer.c: 149: }
;EggTimer.c: 151: if(flagStart == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_flagStart+1)^080h),w
	iorwf	((_flagStart)^080h),w
	skipz
	goto	u1351
	goto	u1350
u1351:
	goto	l1423
u1350:
	line	153
	
l1411:	
;EggTimer.c: 152: {
;EggTimer.c: 153: minutes = DATA;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_minutes+1)^080h
	addwf	(_minutes+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dispLCD@DATA),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_minutes)^080h
	addwf	(_minutes)^080h

	line	154
	
l1413:	
;EggTimer.c: 154: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	155
	
l1415:	
;EggTimer.c: 155: dataCtrl(minutes+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_minutes)^080h,w
	addlw	030h
	fcall	_dataCtrl
	goto	l1423
	line	156
	
l105:	
	line	157
;EggTimer.c: 156: }
;EggTimer.c: 157: switch(DATA)
	goto	l1423
	line	159
;EggTimer.c: 158: {
;EggTimer.c: 159: case 12:
	
l107:	
	line	160
	
l1417:	
;EggTimer.c: 160: beginCount();
	fcall	_beginCount
	line	161
;EggTimer.c: 161: break;
	goto	l111
	line	162
;EggTimer.c: 162: case 14:
	
l109:	
	line	163
	
l1419:	
;EggTimer.c: 163: flagPause = 1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_flagPause)^080h
	movlw	high(01h)
	movwf	((_flagPause)^080h)+1
	line	164
;EggTimer.c: 164: break;
	goto	l111
	line	165
;EggTimer.c: 165: default:
	
l110:	
	line	166
;EggTimer.c: 166: break;
	goto	l111
	line	167
	
l1421:	
;EggTimer.c: 167: }
	goto	l111
	line	157
	
l106:	
	
l1423:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (dispLCD@DATA+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l1473
	goto	l111
	opt asmopt_on
	
l1473:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 12 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (dispLCD@DATA),w
	opt asmopt_off
	xorlw	12^0	; case 12
	skipnz
	goto	l1417
	xorlw	14^12	; case 14
	skipnz
	goto	l1419
	goto	l111
	opt asmopt_on

	line	167
	
l108:	
	line	168
	
l111:	
	return
	opt stack 0
GLOBAL	__end_of_dispLCD
	__end_of_dispLCD:
	signat	_dispLCD,88
	global	_beginCount

;; *************** function _beginCount *****************
;; Defined at:
;;		line 56 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  secMSB          2   22[BANK1 ] int 
;;  secLSB          2   20[BANK1 ] int 
;;  header3        20    0[BANK1 ] unsigned char [20]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      24       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4      24       0       0
;;Total ram usage:       28 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___wmul
;;		_dataCtrl
;;		_delay
;;		_dispHeader
;;		_dispSTR
;;		_instCtrl
;; This function is called by:
;;		_dispLCD
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	56
global __ptext2
__ptext2:	;psect for function _beginCount
psect	text2
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	56
	global	__size_of_beginCount
	__size_of_beginCount	equ	__end_of_beginCount-_beginCount
	
_beginCount:	
;incstack = 0
	opt	stack 0
; Regs used in _beginCount: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l1363:	
;EggTimer.c: 58: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	line	59
	
l1365:	
;EggTimer.c: 59: char header3[20] = "Starting...     ";
	movlw	(beginCount@header3)&0ffh
	movwf	fsr0
	movlw	low(beginCount@F1174)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_beginCount+0)+0
	movf	fsr0,w
	movwf	((??_beginCount+0)+0+1)
	movlw	20
	movwf	((??_beginCount+0)+0+2)
u1250:
	movf	(??_beginCount+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_beginCount+0)+0+3)
	incf	(??_beginCount+0)+0,f
	movf	((??_beginCount+0)+0+1),w
	movwf	fsr0
	
	movf	((??_beginCount+0)+0+3),w
	movwf	indf
	incf	((??_beginCount+0)+0+1),f
	decfsz	((??_beginCount+0)+0+2),f
	goto	u1250
	line	60
	
l1367:	
;EggTimer.c: 60: dispSTR(header3);
	movlw	(beginCount@header3)&0ffh
	fcall	_dispSTR
	line	61
	
l1369:	
;EggTimer.c: 61: for(seconds = minutes*60;seconds >= 0;seconds--)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_minutes+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_minutes)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(03Ch)
	movwf	(___wmul@multiplicand)
	movlw	high(03Ch)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_seconds+1)^080h
	addwf	(_seconds+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_seconds)^080h
	addwf	(_seconds)^080h

	goto	l1381
	line	62
	
l79:	
	line	63
	
l1371:	
;EggTimer.c: 62: {
;EggTimer.c: 63: dispMin = (seconds/60);
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(03Ch)
	movwf	((___awdiv@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_seconds+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_seconds)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_dispMin+1)^080h
	addwf	(_dispMin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_dispMin)^080h
	addwf	(_dispMin)^080h

	line	64
;EggTimer.c: 64: dispSec = (seconds%60);
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(03Ch)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_seconds+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_seconds)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_dispSec+1)^080h
	addwf	(_dispSec+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_dispSec)^080h
	addwf	(_dispSec)^080h

	line	67
;EggTimer.c: 66: int secLSB;
;EggTimer.c: 67: secLSB = dispSec%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dispSec+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dispSec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(beginCount@secLSB+1)^080h
	addwf	(beginCount@secLSB+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(beginCount@secLSB)^080h
	addwf	(beginCount@secLSB)^080h

	line	69
;EggTimer.c: 68: int secMSB;
;EggTimer.c: 69: secMSB = dispSec/10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dispSec+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dispSec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(beginCount@secMSB+1)^080h
	addwf	(beginCount@secMSB+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(beginCount@secMSB)^080h
	addwf	(beginCount@secMSB)^080h

	line	70
;EggTimer.c: 70: secMSB = secMSB%10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(beginCount@secMSB+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(beginCount@secMSB)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(beginCount@secMSB+1)^080h
	addwf	(beginCount@secMSB+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(beginCount@secMSB)^080h
	addwf	(beginCount@secMSB)^080h

	line	72
;EggTimer.c: 72: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	73
;EggTimer.c: 73: dataCtrl(dispMin+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_dispMin)^080h,w
	addlw	030h
	fcall	_dataCtrl
	line	74
;EggTimer.c: 74: dataCtrl(':');
	movlw	(03Ah)
	fcall	_dataCtrl
	line	75
;EggTimer.c: 75: dataCtrl(secMSB+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(beginCount@secMSB)^080h,w
	addlw	030h
	fcall	_dataCtrl
	line	76
;EggTimer.c: 76: dataCtrl(secLSB+48);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(beginCount@secLSB)^080h,w
	addlw	030h
	fcall	_dataCtrl
	line	78
;EggTimer.c: 78: delay(122);
	movlw	low(07Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay@timer)
	movlw	high(07Ah)
	movwf	((delay@timer))+1
	fcall	_delay
	line	79
	
l1373:	
;EggTimer.c: 79: if(flagStart == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_flagStart+1)^080h),w
	iorwf	((_flagStart)^080h),w
	skipz
	goto	u1261
	goto	u1260
u1261:
	goto	l1377
u1260:
	goto	l1383
	line	81
	
l1375:	
;EggTimer.c: 80: {
;EggTimer.c: 81: break;
	goto	l1383
	line	82
	
l80:	
	line	83
;EggTimer.c: 82: }
;EggTimer.c: 83: while(flagPause == 1)
	goto	l1377
	
l83:	
	goto	l1377
	line	85
;EggTimer.c: 84: {
	
l82:	
	line	83
	
l1377:	
	movlw	01h
	xorwf	(_flagPause)^080h,w
	iorwf	(_flagPause+1)^080h,w
	skipnz
	goto	u1271
	goto	u1270
u1271:
	goto	l1377
u1270:
	goto	l1379
	
l84:	
	line	61
	
l1379:	
	movlw	low(-1)
	addwf	(_seconds)^080h,f
	skipnc
	incf	(_seconds+1)^080h,f
	movlw	high(-1)
	addwf	(_seconds+1)^080h,f
	goto	l1381
	
l78:	
	
l1381:	
	btfss	(_seconds+1)^080h,7
	goto	u1281
	goto	u1280
u1281:
	goto	l1371
u1280:
	goto	l1383
	
l81:	
	line	87
	
l1383:	
;EggTimer.c: 85: }
;EggTimer.c: 86: }
;EggTimer.c: 87: minutes = 0;
	clrf	(_minutes)^080h
	clrf	(_minutes+1)^080h
	line	88
;EggTimer.c: 88: seconds = 0;
	clrf	(_seconds)^080h
	clrf	(_seconds+1)^080h
	line	89
	
l1385:	
;EggTimer.c: 89: dispHeader();
	fcall	_dispHeader
	line	90
	
l85:	
	return
	opt stack 0
GLOBAL	__end_of_beginCount
	__end_of_beginCount:
	signat	_beginCount,88
	global	_dispHeader

;; *************** function _dispHeader *****************
;; Defined at:
;;		line 170 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  header3        20   52[BANK0 ] unsigned char [20]
;;  header2        20   32[BANK0 ] unsigned char [20]
;;  header         20   12[BANK0 ] unsigned char [20]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      60       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      64       0       0       0
;;Total ram usage:       64 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_dispSTR
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		_main
;;		_beginCount
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	170
global __ptext3
__ptext3:	;psect for function _dispHeader
psect	text3
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	170
	global	__size_of_dispHeader
	__size_of_dispHeader	equ	__end_of_dispHeader-_dispHeader
	
_dispHeader:	
;incstack = 0
	opt	stack 0
; Regs used in _dispHeader: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	172
	
l1247:	
;EggTimer.c: 172: flagStart = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_flagStart)^080h
	clrf	(_flagStart+1)^080h
	line	173
	
l1249:	
;EggTimer.c: 173: initLCD();
	fcall	_initLCD
	line	174
	
l1251:	
;EggTimer.c: 174: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	175
	
l1253:	
;EggTimer.c: 175: char header[20] = "Sample Header";
	movlw	(dispHeader@header)&0ffh
	movwf	fsr0
	movlw	low(dispHeader@F1181)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispHeader+0)+0
	movf	fsr0,w
	movwf	((??_dispHeader+0)+0+1)
	movlw	20
	movwf	((??_dispHeader+0)+0+2)
u990:
	movf	(??_dispHeader+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_dispHeader+0)+0+3)
	incf	(??_dispHeader+0)+0,f
	movf	((??_dispHeader+0)+0+1),w
	movwf	fsr0
	
	movf	((??_dispHeader+0)+0+3),w
	movwf	indf
	incf	((??_dispHeader+0)+0+1),f
	decfsz	((??_dispHeader+0)+0+2),f
	goto	u990
	line	176
	
l1255:	
;EggTimer.c: 176: dispSTR(header);
	movlw	(dispHeader@header)&0ffh
	fcall	_dispSTR
	line	177
	
l1257:	
;EggTimer.c: 177: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	178
	
l1259:	
;EggTimer.c: 178: char header2[20] = "0:00";
	movlw	(dispHeader@header2)&0ffh
	movwf	fsr0
	movlw	low(dispHeader@F1183)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispHeader+0)+0
	movf	fsr0,w
	movwf	((??_dispHeader+0)+0+1)
	movlw	20
	movwf	((??_dispHeader+0)+0+2)
u1000:
	movf	(??_dispHeader+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_dispHeader+0)+0+3)
	incf	(??_dispHeader+0)+0,f
	movf	((??_dispHeader+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	((??_dispHeader+0)+0+3),w
	movwf	indf
	incf	((??_dispHeader+0)+0+1),f
	decfsz	((??_dispHeader+0)+0+2),f
	goto	u1000
	line	179
	
l1261:	
;EggTimer.c: 179: dispSTR(header2);
	movlw	(dispHeader@header2)&0ffh
	fcall	_dispSTR
	line	180
	
l1263:	
;EggTimer.c: 180: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	line	181
	
l1265:	
;EggTimer.c: 181: char header3[20] = "Press * to Start";
	movlw	(dispHeader@header3)&0ffh
	movwf	fsr0
	movlw	low(dispHeader@F1185)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_dispHeader+0)+0
	movf	fsr0,w
	movwf	((??_dispHeader+0)+0+1)
	movlw	20
	movwf	((??_dispHeader+0)+0+2)
u1010:
	movf	(??_dispHeader+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_dispHeader+0)+0+3)
	incf	(??_dispHeader+0)+0,f
	movf	((??_dispHeader+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	((??_dispHeader+0)+0+3),w
	movwf	indf
	incf	((??_dispHeader+0)+0+1),f
	decfsz	((??_dispHeader+0)+0+2),f
	goto	u1010
	line	182
	
l1267:	
;EggTimer.c: 182: dispSTR(header3);
	movlw	(dispHeader@header3)&0ffh
	fcall	_dispSTR
	line	183
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of_dispHeader
	__end_of_dispHeader:
	signat	_dispHeader,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 107 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	107
global __ptext4
__ptext4:	;psect for function _initLCD
psect	text4
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	107
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 0
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	109
	
l1245:	
;EggTimer.c: 109: delay(30);
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay@timer)
	movlw	high(01Eh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	110
;EggTimer.c: 110: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	111
;EggTimer.c: 111: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	112
;EggTimer.c: 112: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	113
;EggTimer.c: 113: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	114
;EggTimer.c: 114: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	115
	
l91:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 97 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_beginCount
;;		_initLCD
;;		_dispLCD
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	97
global __ptext5
__ptext5:	;psect for function _instCtrl
psect	text5
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	97
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 3
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@INST stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@INST)
	line	99
	
l1213:	
;EggTimer.c: 99: PORTC = INST;
	movf	(instCtrl@INST),w
	movwf	(7)	;volatile
	line	100
	
l1215:	
;EggTimer.c: 100: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	101
	
l1217:	
;EggTimer.c: 101: RA2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	102
	
l1219:	
;EggTimer.c: 102: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	103
	
l1221:	
;EggTimer.c: 103: delay(61);
	movlw	low(03Dh)
	movwf	(delay@timer)
	movlw	high(03Dh)
	movwf	((delay@timer))+1
	fcall	_delay
	line	104
	
l1223:	
;EggTimer.c: 104: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	105
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dispSTR

;; *************** function _dispSTR *****************
;; Defined at:
;;		line 185 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;  STR             1    wreg     PTR unsigned char 
;;		 -> dispHeader@header3(20), dispHeader@header2(20), dispHeader@header(20), beginCount@header3(20), 
;; Auto vars:     Size  Location     Type
;;  STR             1    7[BANK0 ] PTR unsigned char 
;;		 -> dispHeader@header3(20), dispHeader@header2(20), dispHeader@header(20), beginCount@header3(20), 
;;  i               2    5[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_beginCount
;;		_dispHeader
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	185
global __ptext6
__ptext6:	;psect for function _dispSTR
psect	text6
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	185
	global	__size_of_dispSTR
	__size_of_dispSTR	equ	__end_of_dispSTR-_dispSTR
	
_dispSTR:	
;incstack = 0
	opt	stack 1
; Regs used in _dispSTR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;dispSTR@STR stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dispSTR@STR)
	line	187
	
l1237:	
;EggTimer.c: 187: for(int i = 0;;i++)
	clrf	(dispSTR@i)
	clrf	(dispSTR@i+1)
	goto	l1239
	line	188
	
l123:	
	line	189
	
l1239:	
;EggTimer.c: 188: {
;EggTimer.c: 189: if(STR[i] != '\0')
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf
	skipnz
	goto	u981
	goto	u980
u981:
	goto	l126
u980:
	line	191
	
l1241:	
;EggTimer.c: 190: {
;EggTimer.c: 191: dataCtrl(STR[i]);
	movf	(dispSTR@i),w
	addwf	(dispSTR@STR),w
	movwf	(??_dispSTR+0)+0
	movf	0+(??_dispSTR+0)+0,w
	movwf	fsr0
	movf	indf,w
	fcall	_dataCtrl
	line	192
;EggTimer.c: 192: }
	goto	l1243
	line	193
	
l124:	
	line	195
;EggTimer.c: 193: else
;EggTimer.c: 194: {
;EggTimer.c: 195: return;
	goto	l126
	line	196
	
l125:	
	line	187
	
l1243:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(dispSTR@i),f
	skipnc
	incf	(dispSTR@i+1),f
	movlw	high(01h)
	addwf	(dispSTR@i+1),f
	goto	l1239
	
l127:	
	line	198
	
l126:	
	return
	opt stack 0
GLOBAL	__end_of_dispSTR
	__end_of_dispSTR:
	signat	_dispSTR,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 117 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_beginCount
;;		_dispLCD
;;		_dispSTR
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	117
global __ptext7
__ptext7:	;psect for function _dataCtrl
psect	text7
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	117
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 3
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@DATA stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@DATA)
	line	119
	
l1225:	
;EggTimer.c: 119: PORTC = DATA;
	movf	(dataCtrl@DATA),w
	movwf	(7)	;volatile
	line	120
	
l1227:	
;EggTimer.c: 120: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	121
	
l1229:	
;EggTimer.c: 121: RA2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	122
	
l1231:	
;EggTimer.c: 122: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	123
	
l1233:	
;EggTimer.c: 123: delay(1);
	movlw	low(01h)
	movwf	(delay@timer)
	movlw	high(01h)
	movwf	((delay@timer))+1
	fcall	_delay
	line	124
	
l1235:	
;EggTimer.c: 124: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	125
	
l94:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 200 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;  timer           2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	200
global __ptext8
__ptext8:	;psect for function _delay
psect	text8
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	200
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 3
; Regs used in _delay: [wreg+status,2]
	line	202
	
l1207:	
;EggTimer.c: 202: while(count_flag < timer)
	goto	l1209
	
l131:	
	goto	l1209
	line	204
;EggTimer.c: 203: {
	
l130:	
	line	202
	
l1209:	
	movf	(_count_flag+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_delay+0)+0
	movf	(delay@timer+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u975
	movf	(delay@timer),w
	subwf	(_count_flag),w
u975:

	skipc
	goto	u971
	goto	u970
u971:
	goto	l1209
u970:
	goto	l1211
	
l132:	
	line	205
	
l1211:	
;EggTimer.c: 204: }
;EggTimer.c: 205: count_flag = 0;
	clrf	(_count_flag)
	clrf	(_count_flag+1)
	line	206
	
l133:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext9
__ptext9:	;psect for function ___wmul
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1269:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1271
	line	44
	
l233:	
	line	45
	
l1271:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l234
u1020:
	line	46
	
l1273:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l234:	
	line	47
	movlw	01h
	
u1035:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1035
	line	48
	
l1275:	
	movlw	01h
	
u1045:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1045
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1051
	goto	u1050
u1051:
	goto	l1271
u1050:
	goto	l1277
	
l235:	
	line	52
	
l1277:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l236
	
l1279:	
	line	53
	
l236:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___awmod
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1325:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1327:	
	btfss	(___awmod@dividend+1),7
	goto	u1161
	goto	u1160
u1161:
	goto	l1333
u1160:
	line	15
	
l1329:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1331:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1333
	line	17
	
l369:	
	line	18
	
l1333:	
	btfss	(___awmod@divisor+1),7
	goto	u1171
	goto	u1170
u1171:
	goto	l1337
u1170:
	line	19
	
l1335:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1337
	
l370:	
	line	20
	
l1337:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1181
	goto	u1180
u1181:
	goto	l1355
u1180:
	line	21
	
l1339:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1345
	
l373:	
	line	23
	
l1341:	
	movlw	01h
	
u1195:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1195
	line	24
	
l1343:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1345
	line	25
	
l372:	
	line	22
	
l1345:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l1341
u1200:
	goto	l1347
	
l374:	
	goto	l1347
	line	26
	
l375:	
	line	27
	
l1347:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1215
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1215:
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l1351
u1210:
	line	28
	
l1349:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1351
	
l376:	
	line	29
	
l1351:	
	movlw	01h
	
u1225:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1225
	line	30
	
l1353:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l1347
u1230:
	goto	l1355
	
l377:	
	goto	l1355
	line	31
	
l371:	
	line	32
	
l1355:	
	movf	(___awmod@sign),w
	skipz
	goto	u1240
	goto	l1359
u1240:
	line	33
	
l1357:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1359
	
l378:	
	line	34
	
l1359:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l379
	
l1361:	
	line	35
	
l379:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_beginCount
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___awdiv
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1281:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1283:	
	btfss	(___awdiv@divisor+1),7
	goto	u1061
	goto	u1060
u1061:
	goto	l1289
u1060:
	line	16
	
l1285:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1287:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1289
	line	18
	
l356:	
	line	19
	
l1289:	
	btfss	(___awdiv@dividend+1),7
	goto	u1071
	goto	u1070
u1071:
	goto	l1295
u1070:
	line	20
	
l1291:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1293:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1295
	line	22
	
l357:	
	line	23
	
l1295:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1297:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1081
	goto	u1080
u1081:
	goto	l1317
u1080:
	line	25
	
l1299:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1305
	
l360:	
	line	27
	
l1301:	
	movlw	01h
	
u1095:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1095
	line	28
	
l1303:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1305
	line	29
	
l359:	
	line	26
	
l1305:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1101
	goto	u1100
u1101:
	goto	l1301
u1100:
	goto	l1307
	
l361:	
	goto	l1307
	line	30
	
l362:	
	line	31
	
l1307:	
	movlw	01h
	
u1115:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1115
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1125
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1125:
	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l1313
u1120:
	line	33
	
l1309:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1311:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1313
	line	35
	
l363:	
	line	36
	
l1313:	
	movlw	01h
	
u1135:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1135
	line	37
	
l1315:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1307
u1140:
	goto	l1317
	
l364:	
	goto	l1317
	line	38
	
l358:	
	line	39
	
l1317:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1150
	goto	l1321
u1150:
	line	40
	
l1319:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1321
	
l365:	
	line	41
	
l1321:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l366
	
l1323:	
	line	42
	
l366:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 208 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_toogleFlag
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	208
global __ptext12
__ptext12:	;psect for function _ISR
psect	text12
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	208
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 0
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text12
	line	210
	
i1l1173:	
;EggTimer.c: 210: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	211
;EggTimer.c: 211: if(INTF)
	btfss	(89/8),(89)&7	;volatile
	goto	u95_21
	goto	u95_20
u95_21:
	goto	i1l136
u95_20:
	line	213
	
i1l1175:	
;EggTimer.c: 212: {
;EggTimer.c: 213: dataRead = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	movwf	(_dataRead)
	movf	1+(??_ISR+0)+0,w
	movwf	(_dataRead+1)
	line	214
	
i1l1177:	
;EggTimer.c: 214: toogleFlag();
	fcall	_toogleFlag
	line	215
	
i1l1179:	
;EggTimer.c: 215: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	216
;EggTimer.c: 216: }
	goto	i1l1185
	line	217
	
i1l136:	
;EggTimer.c: 217: else if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u96_21
	goto	u96_20
u96_21:
	goto	i1l1185
u96_20:
	line	219
	
i1l1181:	
;EggTimer.c: 218: {
;EggTimer.c: 219: count_flag++;
	movlw	low(01h)
	addwf	(_count_flag),f
	skipnc
	incf	(_count_flag+1),f
	movlw	high(01h)
	addwf	(_count_flag+1),f
	line	220
	
i1l1183:	
;EggTimer.c: 220: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	goto	i1l1185
	line	221
	
i1l138:	
	goto	i1l1185
	line	222
	
i1l137:	
	
i1l1185:	
;EggTimer.c: 221: }
;EggTimer.c: 222: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	223
	
i1l139:	
	movf	(??_ISR+5),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_toogleFlag

;; *************** function _toogleFlag *****************
;; Defined at:
;;		line 225 in file "C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	225
global __ptext13
__ptext13:	;psect for function _toogleFlag
psect	text13
	file	"C:\Users\RetroGeek\Documents\GIT\ProteusLibrary\EggTimer\EggTimer.c"
	line	225
	global	__size_of_toogleFlag
	__size_of_toogleFlag	equ	__end_of_toogleFlag-_toogleFlag
	
_toogleFlag:	
;incstack = 0
	opt	stack 0
; Regs used in _toogleFlag: [wreg+status,2+status,0]
	line	227
	
i1l1129:	
;EggTimer.c: 227: if(dataRead == 12)
	movlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_dataRead),w
	iorwf	(_dataRead+1),w
	skipz
	goto	u88_21
	goto	u88_20
u88_21:
	goto	i1l1139
u88_20:
	line	229
	
i1l1131:	
;EggTimer.c: 228: {
;EggTimer.c: 229: if(flagStart == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_flagStart+1)^080h),w
	iorwf	((_flagStart)^080h),w
	skipz
	goto	u89_21
	goto	u89_20
u89_21:
	goto	i1l1135
u89_20:
	line	230
	
i1l1133:	
;EggTimer.c: 230: flagStart = 1;
	movlw	low(01h)
	movwf	(_flagStart)^080h
	movlw	high(01h)
	movwf	((_flagStart)^080h)+1
	goto	i1l1139
	line	232
	
i1l143:	
	
i1l1135:	
;EggTimer.c: 232: else if(flagStart == 1)
	movlw	01h
	xorwf	(_flagStart)^080h,w
	iorwf	(_flagStart+1)^080h,w
	skipz
	goto	u90_21
	goto	u90_20
u90_21:
	goto	i1l1139
u90_20:
	line	233
	
i1l1137:	
;EggTimer.c: 233: flagStart = 0;
	clrf	(_flagStart)^080h
	clrf	(_flagStart+1)^080h
	goto	i1l1139
	
i1l145:	
	goto	i1l1139
	line	234
	
i1l144:	
	goto	i1l1139
	
i1l142:	
	line	236
	
i1l1139:	
;EggTimer.c: 234: }
;EggTimer.c: 236: if(dataRead == 14)
	movlw	0Eh
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(_dataRead),w
	iorwf	(_dataRead+1),w
	skipz
	goto	u91_21
	goto	u91_20
u91_21:
	goto	i1l150
u91_20:
	line	238
	
i1l1141:	
;EggTimer.c: 237: {
;EggTimer.c: 238: if(flagPause == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_flagPause+1)^080h),w
	iorwf	((_flagPause)^080h),w
	skipz
	goto	u92_21
	goto	u92_20
u92_21:
	goto	i1l1145
u92_20:
	line	239
	
i1l1143:	
;EggTimer.c: 239: flagPause = 1;
	movlw	low(01h)
	movwf	(_flagPause)^080h
	movlw	high(01h)
	movwf	((_flagPause)^080h)+1
	goto	i1l150
	line	241
	
i1l147:	
	
i1l1145:	
;EggTimer.c: 241: else if(flagPause == 1)
	movlw	01h
	xorwf	(_flagPause)^080h,w
	iorwf	(_flagPause+1)^080h,w
	skipz
	goto	u93_21
	goto	u93_20
u93_21:
	goto	i1l150
u93_20:
	line	242
	
i1l1147:	
;EggTimer.c: 242: flagPause = 0;
	clrf	(_flagPause)^080h
	clrf	(_flagPause+1)^080h
	goto	i1l150
	
i1l149:	
	goto	i1l150
	line	243
	
i1l148:	
	goto	i1l150
	
i1l146:	
	line	245
	
i1l150:	
	return
	opt stack 0
GLOBAL	__end_of_toogleFlag
	__end_of_toogleFlag:
	signat	_toogleFlag,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
