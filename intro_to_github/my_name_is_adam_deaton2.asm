; Module Name: my_name_is_adam_deaton.asm
; Description: Demonstrates the use of a macro to print my name
; Date: 10/27/2016
; Name: Adam Deaton

INCLUDE cmacros.inc

; C calling conventions: 
;  EBP, EBX, ESI, EDI should not be modified in a function call (non-volatile)
;  EAX, ECX, EDX can be modified (volatile)


;-----------------------------------------------------
; Description: Macro to print my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
mMyNameIsAdamDeaton MACRO

	; Add the code to print 3 times using a repeat block
	mPrintf "My name is Adam Deaton\n"

ENDM

;----------------------
.code
;-----------------------------------------------------
; Description: Prints my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
PrintAdamDeaton PROC
	; Prolog
	push	ebp
	mov		ebp, esp

	mMyNameIsAdamDeaton

	; Epilog
	mov		esp, ebp
	pop		ebp
	ret
PrintAdamDeaton ENDP

END