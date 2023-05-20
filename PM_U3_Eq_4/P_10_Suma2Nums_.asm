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

.code

	main10 PROC
	
		;Lógica del Programa
	
		println "Ingresa el valor de A:"
		call readint
		mov ebx, eax
		println "Ingresa el valor de B:"
		call readint
		add eax, ebx
		;call waitmsg
		println "la suma es:"
		call writedec
		
		exit	
	
	main10 ENDP
	
	END main10
