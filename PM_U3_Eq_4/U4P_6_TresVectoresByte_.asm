TITLE Plantilla

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE macros.inc

.data
; �rea de Declaraci�n de Variables
vector byte 1, 2, 3, 4, 5
vector2 byte 6, 7, 8, 9, 10
vector3 byte 11, 12, 13, 14, 15

.code

	mainU4P6 PROC
	
		;L�gica del Programa
		mov esi, 7
		mov edi, 0
		mov eax, 0
		mov al, vector[esi+edi]
		call writedec ;1
		exit	
	
	mainU4P6 ENDP
	
	END mainU4P6
