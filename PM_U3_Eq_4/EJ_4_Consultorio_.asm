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

	mainEJ4 PROC
	
		;Lógica del Programa
	
		println "Cita a agendar: "
		call readint
		mov ebx, eax
		cmp ebx, 8
		jg opAdicional
		jle opPrimera

		opPrimera:
		


		opAdicional:

		println "Su cita es la numero: "
		call writedec
		call crlf

		mov ecx, 900 ; guarda las primeras 8 citas
		
		sub ebx, 8 ; ebx es mi contador
		
		mov eax, 50 ; guardas 50 en eax
		
		mul ebx	; multiplicas valor adicional * contador 
		
		add eax, ecx ; sumas los primeros 900 pesos de las 8 citas iniciales con las citas nuevas
		
		println "El costo total de las consultas es:"
		call writedec
		call crlf

		println "El costo actual de la cita es: "
		mov eax, 50
		call writedec
		call crlf

		exit	
	
	mainEJ4 ENDP
	
	END mainEJ4
