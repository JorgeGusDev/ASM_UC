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

        ;-----------for(0..6) ----------------------
        ; for n in range(0,6){
        ;     print('a')
        ;}
        ;SALIDA ESPERADA: aaaaa
        
        ;---ASM--
        
        xor si,si
        CFOR:
          cmp si,5d
          je SALIRFOR

          printChar 'a'
          inc si
          jmp CFOR

        SALIRFOR:
       

        .exit
    main ENDP

end main
