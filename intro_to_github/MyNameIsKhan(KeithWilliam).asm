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
mMyNameIsKhan MACRO

	; Repeat 3 times.
	REPEAT 3

		; Add the code to print 3 times using a repeat block
		mPrintf "My name is KHAAAAAAAAAAAAAAAAAAAAAAAAAN!\n"


ENDM

;----------------------


;-----------------------------------------------------
; Description: Macro to print my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
mMyNameIsWilliamKeith MACRO

	; Repeat 3 times.
	REPEAT 3

		; Add the code to print 3 times using a repeat block
		mPrintf "My name is William Keith\n"

ENDM

;----------------------

.code
;-----------------------------------------------------
; Description: Prints my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
PrintKHAN PROC
	; Prolog
	push	ebp
	mov		ebp, esp

	mMyNameIsKhan

	; Epilog
	mov		esp, ebp
	pop		ebp
	ret
PrintKHAN ENDP
;-----------------------------------------------------
; Description: Prints my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
PrintWilliamKeith PROC
	; Prolog
	push	ebp
	mov		ebp, esp

	mMyNameIsWilliamKeith

	; Epilog
	mov		esp, ebp
	pop		ebp
	ret
PrintWilliamKeith ENDP

END