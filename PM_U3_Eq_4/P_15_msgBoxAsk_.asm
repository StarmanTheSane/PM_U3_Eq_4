TITLE msgBoxAsk

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
	titulo_P15 db "Este es el titulo",0
	contenido_P15 db "Primera linea",0dh,0ah
	contenido2_P15 db "Segunda linea",0


.code

	main15 PROC
	
		;L�gica del Programa
	
		mov edx, offset contenido2_P15
		mov edx, offset contenido_P15
		mov ebx, offset titulo_P15
		call msgBoxAsk
		println "El boton seleccionado es:"
		call writeint 
		
		exit	
	
	main15 ENDP
	
	END main15
