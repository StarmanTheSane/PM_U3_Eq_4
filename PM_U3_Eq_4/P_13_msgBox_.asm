TITLE msgBox

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
	titulo_P13 db "Este es el titulo",0
	contenido_P13 db "Contenido del mensaje",0


.code

	main13 PROC
	
		;L�gica del Programa
	
		mov edx, offset contenido_P13
		mov ebx, offset titulo_P13
		call msgBox
		
		exit	
	
	main13 ENDP
	
	END main13
