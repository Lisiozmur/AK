
_code segment
assume  cs:_code, ds:_data, ss:_stack     

start:	    mov	ax,_data
	mov     ds,ax
	mov	    ax,_stack
	mov	    ss,ax
	mov	    sp,offset top
        
	mov     bp,3
	mov     bx,2
	
	call    spac
	mov     cx,bp
	
spacja:
	mov     ah,02h
	int     21h
	loop    spacja
	
	call    znak
	mov     cx,bx
	
fistaszek:
	mov     ah,02h
	int     21h
	loop    fistaszek
	
	mov     ah, 02h     
    mov     dl, 0Ah       
    int     21h
    mov     dl, 0Dh     
    int     21h
		
	mov     bp, 2
    mov     bx, 2
	mov		di, 1 

cale: 
    call    spac
    mov     cx, bp

spacja1:
    mov     ah, 02h
    int     21h
    loop    spacja1
 
    call    znak    
    mov     cx, bx
    
fistaszek1:
    mov     ah, 02h
    int     21h
    loop    fistaszek1
    
    call    spac
    mov     cx, di

spacjemid1:
    mov     ah, 02h
    int     21h
    loop    spacjemid1
    
    call    znak
    mov     ah, 02h
    int     21h 
   
    mov     ah, 02h     
    mov     dl, 0Ah
    int     21h
    mov     dl, 0Dh
    int     21h
    
    inc     di 
    inc     bx
    dec     bp
    
    jnz     cale
		
	
	mov     bp, 1
    mov     bx, 3
    mov		di, 2
    
cale2: 
    call    spac
    mov     cx, bp
    
spacja2:  
    mov     ah, 02h
    int     21h
    loop    spacja2
             
    call    znak
    mov     ah, 02h
    int     21h
                 
    call    spac
    mov     cx, di

spacjemid2:
    mov     ah, 02h
    int     21h
    loop    spacjemid2
              
    call    znak
    mov     cx, bx
    
fistaszek2:
    mov     ah, 02h
    int     21h
    loop    fistaszek2

   
    mov     ah, 02h     
    mov     dl, 0Ah 
    int     21h
    mov     dl, 0Dh
    int     21h

    dec     bx
    inc     bp
    dec     di
    jnz     cale2
           
    mov     bp,3
	mov     bx,2
	
	call    spac
	mov     cx,bp
	
spacja3:
	mov     ah,02h
	int     21h
	loop    spacja3
	
	call    znak
	mov     cx,bx
	
fistaszek3:
	mov     ah,02h
	int     21h
	loop    fistaszek3
	
	mov     ah, 02h     
    mov     dl, 0Ah
    int     21h
    mov     dl, 0Dh
    int     21h	
	
	mov	    ah,4ch
	mov	    al,0      
	int	    21h
	
znak:
    mov     dl, "&"	
    RET	 

spac:
    mov     dl, " "
    RET
	
_code ends

_data segment

_data ends

_stack segment stack
	dw	100h dup(0)     
top	Label word
_stack ends

end start   
