TITLE msgBoxAsk

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
	titulo_P16 db "Advertencia mamawebo",0
	contenido_P16 db "¿Desea visualizar el resultado de la suma?",0dh,0ah
	contenido2_P15 db "Segunda linea",0


.code

	main16 PROC
	
		;Lógica del Programa
	
		println "Ingresa el valor de A:"
		call readint
		println "Ingresa el valor de B:"
		mov ecx, eax
		call readint
		mov edx, offset contenido_P16
		mov ebx, offset titulo_P16
		add ecx, eax ; guarda en ecx
		call msgBoxAsk ; guarda en eax

		exit	
	
	main16 ENDP
	
	END main16
