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
nombre1_P12 byte 50 dup('G')
nombre2_P12	byte 50 dup('A')

.code

	main12 PROC
	
		;Lógica del Programa
		
		mov edx, offset nombre1_P12
		mov ecx, sizeof nombre1_P12
		call readstring ; se almacena en nombre1
		
		mov edx, offset nombre2_P12
		mov ecx, sizeof nombre2_P12
		call readstring

		mov edx, offset nombre1_P12
		call writestring
		call crlf

		mov edx, offset nombre2_P12
		call writestring
		call crlf

		exit	
	
	main12 ENDP
	
	END main12
