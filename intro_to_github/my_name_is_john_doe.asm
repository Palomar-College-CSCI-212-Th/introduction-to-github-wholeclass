; Module Name: my_name_is.asm
; Description: Demonstrates the use of a macro to print my name
; Date: 10/27/2016
; Name: 

INCLUDE cmacros.inc

; C calling conventions: 
;  EBP, EBX, ESI, EDI should not be modified in a function call (non-volatile)
;  EAX, ECX, EDX can be modified (volatile)


;-----------------------------------------------------
; Description: Macro to print my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
mMyNameIsJohnDoe MACRO

	; Add the code to print 3 times using a repeat block
	mPrintf "My name is John Doe\n"

ENDM

;----------------------
.code
;-----------------------------------------------------
; Description: Prints my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
PrintJohnDoe PROC
	; Prolog
	push	ebp
	mov		ebp, esp

	mMyNameIsJohnDoe

	; Epilog
	mov		esp, ebp
	pop		ebp
	ret
PrintJohnDoe ENDP

END