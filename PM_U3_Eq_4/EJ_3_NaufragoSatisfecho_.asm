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

	mainEJ3 PROC
	
		;Lógica del Programa
	
		println "Bienvenido a la Buena Hamburguesa, le muestro el menu:"
		println "1. Hamburguesa Sencilla: 20 pesos."
		println "2. Hamburguesa Doble:    25 pesos."
		println "3. Hamburguesa Triple:   30 pesos."
		println "Seleccione el numero de hamburguesa que desea..."
		
		call readint
		cmp eax, 2
		jg tipo3
		jl tipo1
		je tipo2
		
		tipo3:
		mov ebx, 30 ; precio de la hamburguesa
		println "Cuantas hamburguesas quiere?"
		call readint ; se guarda la entrada en eax
		mul ebx ; mul eax * precio de hamburguesa seleccionada
		mov ecx, eax
		jnz tipoPago ; Saltamos al metodo de pago

		tipo2:
		mov ebx, 25 ; precio de la hamburguesa
		println "Cuantas hamburguesas quiere?"
		call readint ; se guarda la cantidad en eax
		mul ebx ; mul eax * precio de hamburguesa seleccionada
		mov ecx, eax
		jnz tipoPago ; Saltamos al metodo de pago

		tipo1:
		mov ebx, 20 ; precio de la hamburguesa
		println "Cuantas hamburguesas quiere?"
		call readint ; se guarda la cantidad en eax
		mul ebx ; mul cant * tipo en eax
		mov ecx, eax
		jnz tipoPago ; Saltamos al metodo de pago

		tipoPago:
		println "Pagara con Tarjeta de Credito? 1 para si y 2 para no."
		call readint
		cmp eax, 1
		je pagoTDC
		jg pagoEF

		; pago con tdc
		pagoTDC:
		add ecx, 5
		
		; pago en efectivo/debito
		pagoEF:
		mov eax, ecx
		
		println "Su total es: "
		call writedec
		println " pesos."
		
		exit	
	
	mainEJ3 ENDP
	
	END mainEJ3
