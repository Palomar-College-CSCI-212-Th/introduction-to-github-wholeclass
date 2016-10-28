; Name: Devon Sherrell

INCLUDE cmacros.inc

; C calling conventions: 
;  EBP, EBX, ESI, EDI should not be modified in a function call (non-volatile)
;  EAX, ECX, EDX can be modified (volatile)


;-----------------------------------------------------
; Description: Macro to print my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
mMyNameIsDevonSherrell MACRO

	; Add the code to print 3 times using a repeat block
	mPrintf "My name is Devon Sherrell\n"

ENDM

;----------------------
.code
;-----------------------------------------------------
; Description: Prints my name
; Receives: Nothing
; Returns: Nothing
;-----------------------------------------------------
PrintDevonSherrell PROC
	; Prolog
	push	ebp
	mov		ebp, esp

	mMyNameIsDevonSherrell

	; Epilog
	mov		esp, ebp
	pop		ebp
	ret
PrintDevonSherrell ENDP

END