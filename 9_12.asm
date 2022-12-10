assume cs:code
code segment
start:mov ax,0b800h
mov ds,ax
mov si,20h
mov bx,0
mov byte ptr [bx+si+0],77h
mov byte ptr [bx+si+2],65h
mov byte ptr [bx+si+4],6ch
mov byte ptr [bx+si+8],63h
mov byte ptr [bx+si+0ah],6fh
mov byte ptr [bx+si+0ch],6dh
mov byte ptr [bx+si+0eh],65h
mov byte ptr [bx+si+10h],20h
mov byte ptr [bx+si+12h],74h
mov byte ptr [bx+si+14h],6fh
mov byte ptr [bx+si+16h],20h
mov byte ptr [bx+si+18h],6dh
mov byte ptr [bx+si+1ah],61h
mov byte ptr [bx+si+1ch],73h
mov byte ptr [bx+si+1eh],6dh
mov byte ptr [bx+si+20h],21h
mov cx,16
mov di,1
s1:mov byte ptr [bx+di+20h],2
add di,2
loop s1

add bx,0a0h
mov byte ptr [bx+si+0],77h
mov byte ptr [bx+si+2],65h
mov byte ptr [bx+si+4],6ch
mov byte ptr [bx+si+8],63h
mov byte ptr [bx+si+0ah],6fh
mov byte ptr [bx+si+0ch],6dh
mov byte ptr [bx+si+0eh],65h
mov byte ptr [bx+si+10h],20h
mov byte ptr [bx+si+12h],74h
mov byte ptr [bx+si+14h],6fh
mov byte ptr [bx+si+16h],20h
mov byte ptr [bx+si+18h],6dh
mov byte ptr [bx+si+1ah],61h
mov byte ptr [bx+si+1ch],73h
mov byte ptr [bx+si+1eh],6dh
mov byte ptr [bx+si+20h],21h
mov cx,16
mov di,1
s2:mov byte ptr [bx+di+20h],24h
add di,2
loop s2

add bx,0a0h
mov byte ptr [bx+si+0],77h
mov byte ptr [bx+si+2],65h
mov byte ptr [bx+si+4],6ch
mov byte ptr [bx+si+8],63h
mov byte ptr [bx+si+0ah],6fh
mov byte ptr [bx+si+0ch],6dh
mov byte ptr [bx+si+0eh],65h
mov byte ptr [bx+si+10h],20h
mov byte ptr [bx+si+12h],74h
mov byte ptr [bx+si+14h],6fh
mov byte ptr [bx+si+16h],20h
mov byte ptr [bx+si+18h],6dh
mov byte ptr [bx+si+1ah],61h
mov byte ptr [bx+si+1ch],73h
mov byte ptr [bx+si+1eh],6dh
mov byte ptr [bx+si+20h],21h
mov cx,16
mov di,1
s3:mov byte ptr [bx+di+20h],71h
add di,2
loop s3

mov ax,4c00h
int 21h
code ends
end