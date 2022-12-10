assume cs:codesg,ss:stack,ds:datasg
stack segment
dw 0,0,0,0,0,0,0,0
stack ends
datasg segment
db '1. display      '
db '2. brows        '
db '3. replace      '
db '4. modify       '
datasg ends
codesg segment
start:mov ax,stack
mov ss,ax
mov sp,10h
mov ax,datasg
mov ds,ax
mov bx,0
mov cx,4
s1:push cx
mov si,0
mov cx,4
s2:mov al,[bx+3+si]
and al,11011111b
mov [bx+3+si],al
inc si
loop s2
add bx,16
pop cx
loop s1
mov ax,4c00h
int 21h
codesg ends
end start