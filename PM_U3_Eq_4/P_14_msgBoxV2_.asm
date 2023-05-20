TITLE msgBoxV2

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE macros.inc

.data
; Área de Declaración de Variables
	titulo_P14 db "Este es el titulo",0
	contenido_P14 db "Primera linea",0dh,0ah
	contenido2_P14 db "Segunda linea",0


.code

	main14 PROC
	
		;Lógica del Programa
	
		mov edx, offset contenido2_P14
		mov edx, offset contenido_P14
		mov ebx, offset titulo_P14
		call msgBox
		
		exit	
	
	main14 ENDP
	
	END main14
