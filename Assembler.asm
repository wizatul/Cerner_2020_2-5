; Day 6 uses "flat real mode" to read the contents of arbitrary memory locations to the screen
.model tiny
.code
.586P
ORG 100h
; cerner_2^5_2020
start:
	call  fillscreen        ; fill the screen using 4G descriptor
	mov ax,4c00h            ; do a standard DOS exit
	int 21h                 ;
fillscreen proc
        mov     esi,0FFFFFF70h  ; point to ROM
        mov     edi,0B8000h     ; point to screen
        mov     cx,160          ; just two lines
        mov     ah,1Eh          ; yellow on blue screen 
		myloop:
        mov     al,fs:[esi]     ; read ROM byte
        mov     fs:[edi],ax     ; store to screen with attribute
        inc     esi             ; increment source ptr
        inc     edi             ; increment dest ptr by two
        inc     edi             
        loop    myloop          
        ret                    
fillscreen endp
end start