assume cs:code
a segment
db 1,2,3,4,5,6,7,8
a ends
b segment
db 1,2,3,4,5,6,7,8
b ends
c segment
db 0,0,0,0,0,0,0,0
c ends
code segment
start:mov ax,a
mov ds,ax
mov ax,c
mov es,ax
mov bx,0
mov cx,4
s1:mov ax,[bx]
add es:[bx],ax
add bx,2
loop s1
mov ax,b
mov ds,ax
mov bx,0
mov cx,4
s2:mov ax,[bx]
add es:[bx],ax
add bx,2
loop s2
mov ax,4c00h
int 21h
code ends
end start
