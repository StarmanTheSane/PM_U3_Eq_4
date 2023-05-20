TITLE Proyecto de Unidad 3 Programación Modular - Calculadora

;DESCRPICIÓN 
;Objetivo: Realizar una Calculadora que permita al usuario hacer operaciones aritmeticas basicas
;
; Autore(s):
;         Zavala Loredo Jose Andres
;		  Moreno Galicia Brandon Antonio
;         Galarza Mora Alejandro Matias
;         Escamilla Gonzalez Cynthia Vanessa

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE macros.inc

.data
; Área de Declaración de Variables
operand1 DWORD ?
operand2 DWORD ?
result DWORD ?
operation BYTE ?

.code

	mainU3P PROC
	
		;Lógica del Programa

    jmp menu

        menu:
            println "Elige una operacion presionando: +, -, *, / o 'Q' para salir: "
   
            call ReadChar
            mov operation, al

            cmp operation, '+'
            je addOperation

            cmp operation, '-'
            je subOperation
    
            cmp operation, '*'
            je mulOperation
    
            cmp operation, '/'
            je divOperation
    
            cmp operation, 'Q'
            je exitProg

            jmp menu

        addOperation:
            println "Suma"
            call inputOperands
            add operand1, ebx
            mov eax, operand1
            mov result, eax
            call printResultado
            jmp menu

        subOperation:
            println "Substraccion"
            call inputOperands
            mov eax, operand2
            sub operand1, eax; destino , origen
            mov ecx, 0
            mov ecx, operand1
            mov result, ecx
            call printResultado
            jmp menu

        mulOperation:
        println "Multiplicacion"
            call inputOperands
            mov eax, operand1
            mul ebx
            mov result, eax
            call printResultado
            jmp menu

        divOperation:
            println "Division"
            println "Primer numero: "
            call ReadInt
            mov operand1, eax

            println "Segundo numero: "
            call ReadInt
            mov operand2, eax

            cmp operand2, 0 ; El divisor no puede ser cero
            je divPorCero

            mov ebx, operand2   ; Mueve el operand2 a ebx

            mov edx, 0          ; Limpieza del registro
            mov eax, operand1   ; Mueve el primer operando a eax
            div operand2 ; Realiza la division eax / operand2
            
            print "= "
            call writedec
            call crlf

            jmp menu

        divPorCero:
            println "Error: No se puede dividir entre cero."
            jmp divOperation

        inputOperands:
            println "Primer numero: "
            call ReadInt
            mov operand1, eax

            println "Segundo numero: "
            call ReadInt
            mov operand2, eax
            mov ebx, operand2 
            ret ;   retorna a la ejecucion desde la parte a la 
                ;   que se llama la subrutina, en este caso: inputOperands

        printResultado:
            mov eax, result
            print "= "
            call writedec
            call crlf
            ret

	    exitProg:
        exit

	mainU3P ENDP
	
	END mainU3P
