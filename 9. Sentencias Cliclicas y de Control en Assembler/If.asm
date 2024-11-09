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

        ;-----------IF NORMAL ----------------------
        ; if(COND1){
        ;     print('a')
        ; }else{
        ;     print('b')
        ; }

        cmp COND1,1b
        je L1
        jmp L2

        L1:
            printChar 'a'
            jmp L3
        L2:
            printChar 'b'
        L3:
       

        .exit
    main ENDP

end main
