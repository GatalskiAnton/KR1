.386 

PUBLIC @fastcallproc@12
PUBLIC _stdcallproc@12
PUBLIC _cdeclproc

.model flat

.data

n dd 0
m dd 0

.code 

@fastcallproc@12 proc


mov eax, ecx		;������ ��������
mov ebx, edx		;������ ��������
mov esi, [esp + 4]		;������ ��������
ret 4
@fastcallproc@12 endp


_stdcallproc@12 proc
 push ebp

 mov eax, [esp + 8]		;������ ��������
 mov ebx, [esp + 12]		;������ ��������
 mov edx, [esp + 16]		;������ ��������

 pop ebp
 ret 12
_stdcallproc@12 endp


_cdeclproc proc
 push ebp

 mov eax, [esp + 8]		;������ ��������
 mov ebx, [esp + 12]		;������ ��������
 mov edx, [esp + 16]		;������ ��������

 pop ebp
 ret
_cdeclproc endp 

end