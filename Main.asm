; Hola Mundo en ensamblador con TASM
.model small
.stack 100h

.data
    mensaje db 'Hola, Mundo!', 0  ; Mensaje terminado en cero

.code
main proc
    ; Inicializar el segmento de datos
    mov ax, @data
    mov ds, ax

    ; Mostrar el mensaje
    mov ah, 09h              ; Función para mostrar cadena
    lea dx, mensaje          ; Cargar la dirección del mensaje
    int 21h                  ; Llamada a la interrupción del DOS

    ; Terminar el programa
    mov ax, 4C00h            ; Función para terminar el programa
    int 21h                  ; Llamada a la interrupción del DOS
main endp

end main
