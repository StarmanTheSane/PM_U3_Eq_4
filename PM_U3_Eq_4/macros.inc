println macro cadena
	local cad
	.data
		cad db cadena,0

.code

	push edx
	mov edx, offset cad
	call writestring
	call crlf
	pop edx

ENDM
print macro cadena
	local cad
	.data
		cad db cadena,0

.code

	push edx
	mov edx, offset cad
	call writestring
	pop edx

ENDM