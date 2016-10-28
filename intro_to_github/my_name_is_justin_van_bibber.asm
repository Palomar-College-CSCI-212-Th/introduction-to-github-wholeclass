; Module Name: my_name_is_justin_van_bibber.asm
; Description: Demonstrates the use of a macro to print my name
; Date: 10/27/2016
; Name: justin van bibber

INCLUDE cmacros.inc

; C calling conventions: 
;  EBP, EBX, ESI, EDI should not be modified in a function call (non-volatile)
;  EAX, ECX, EDX can be modified (volatile)


;-----------------------------------------------------
; Description: Macro to print my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
mMyNameIsJustinVanBibber MACRO

	; Add the code to print 3 times using a repeat block
	repeat 3
		mPrintf "My name is Justin Van Bibber\n"
	endm
	

ENDM

;----------------------
.code
;-----------------------------------------------------
; Description: Prints my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
PrintJustinVanBibber PROC
	; Prolog
	push	ebp
	mov		ebp, esp

	mMyNameIsJustinVanBibber

	; Epilog
	mov		esp, ebp
	pop		ebp
	ret
PrintJustinVanBibber ENDP

END