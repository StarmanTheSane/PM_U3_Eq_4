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
vector dword 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
.code

	mainU4P5 PROC
	
		;Lógica del Programa
		
		;mov esi, 4
		;mov ebx, 2
		;mov eax, 11
		;mov edx, 0
		;div ebx
		;mul esi ; eax*esi
		;mov esi, eax
		;mov eax, vector[esi]
		;call writedec
		

		; ej 2
		mov esi, 4
		mov ebx, 2
		mov edx, 0
		mov eax, 11
		div ebx
		mov esi, eax
		mov eax, vector[esi]
		call writedec
			
		exit	
	
	mainU4P5 ENDP
	
	END mainU4P5
