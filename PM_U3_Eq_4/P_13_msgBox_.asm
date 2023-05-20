TITLE msgBox

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
	titulo_P13 db "Este es el titulo",0
	contenido_P13 db "Contenido del mensaje",0


.code

	main13 PROC
	
		;Lógica del Programa
	
		mov edx, offset contenido_P13
		mov ebx, offset titulo_P13
		call msgBox
		
		exit	
	
	main13 ENDP
	
	END main13
