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

	vector dword 10, 20, 30, 40, 50
.code

	mainEJ7 PROC
	
		;L�gica del Programa
		
		mov ecx,sizeof vector
		mov esi, 0
		ciclo:
			mov eax, vector[esi]
			call writedec
			call crlf
			add esi, 4
			loop ciclo
			
		exit	
	
	mainEJ7 ENDP
	
	END mainEJ7
