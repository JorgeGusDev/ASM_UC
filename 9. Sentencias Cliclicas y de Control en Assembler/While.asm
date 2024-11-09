printChar macro char	
    mov ah,02h
    mov dl, char
    int 21h
endm

.model small
.stack
.data
    COND1 db 0b
    COND2 db 1b
.code

    main PROC  
        ;importo varibles
        mov dx, @DATA   
        mov ds , dx
        xor dx,dx   

        ;----------- While(COND1) ------------------
        ; COND1 = true
        ; contador = 0
        ; whiel(COND1){
        ;     print('b')
        ;     if(contador == 5){
        ;         COND1 = false
        ;     }
        ;     contador++
        ; }
        ;SALIDA ESPERADA: bbbbbb

        ;---ASM--  
        
        mov COND1,1b
        xor si,si
        
        CWHILE:  
            cmp COND1,1b
            jne EXITWHILE

            printChar 'b'

            cmp si,5d
            je SIES5
            jmp NOES5

            SIES5:
                mov COND1,0b

            NOES5:
            
            inc si
            jmp CWHILE

        EXITWHILE:

       

        .exit
    main ENDP

end main
