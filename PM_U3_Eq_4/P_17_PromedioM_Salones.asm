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
sumEdadesSalones_17 dword 0
sumTotalAlumnosSalones_17 dword 0

.code

	main17 PROC
	
		;Lógica del Programa

		mov ebx, 0 ; acumulador salon

		println "Cuantos salones tiene la escuela? "
		
		call readint

		mov ecx, eax


			ciclo1:
			
			println "Cuantos alumnos tiene el salon? "
			call readint
			
			
				push ecx ; guarda en la pila el valor de la cantidad de salones
				mov ecx, eax ; cuantos alumnos

				mov edx, ecx ; cuantos alumnos tiene el salon...

				ciclo2:

				println "Cual es la edad del alumno? "
				
				call readint ; edad de uno de los N alumnos
				
				add ebx, eax
				
				loop ciclo2

	    ; suma de edades del salon.....
		; se necesita que eax, tenga la suma... ahorita esta en ebx
		; se necesita que edx, este en 0
		; en un registro o var tener la cant de alumnos en el salon
		
		mov eax, ebx ; se coloca en ebx,la suma de las edades acumuladas
		mov ebx, edx ; en ebx se coloca el total de alumnos que tiene el salon...
		mov edx, 0   ; en edx se coloca el cero para poder dividir

		add sumEdadesSalones_17, eax
		add sumTotalAlumnosSalones_17, ebx

		div ebx ; eax / ebx => sumaAcumulada/totalAlumnosSalon

		println "El promedio de edades del salon es: "
		
		call writedec
		call crlf

		mov ebx, 0 ; reinicia el contador de la suma de edades

		pop ecx

		loop ciclo1
		
		mov edx, 0
		mov ebx, sumTotalAlumnosSalones_17
		mov eax, sumEdadesSalones_17

		div ebx

		println "EL promedio de edad de la escuela es: "
		
		call writedec
		call crlf

		exit	
	
	main17 ENDP
	
	END main17
