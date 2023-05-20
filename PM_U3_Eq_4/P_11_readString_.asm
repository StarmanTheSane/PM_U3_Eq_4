TITLE Plantilla

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
nombre byte 20 dup('A')


.code

	main11 PROC
	
		;Lógica del Programa
	
		mov edx, offset nombre
		mov ecx, sizeof nombre
		call readstring ; "PEDRO" + null/0
		call writestring
		
		exit	
	
	main11 ENDP
	
	END main11
