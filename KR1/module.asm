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


mov eax, ecx		;первый параметр
mov ebx, edx		;второй параметр
mov esi, [esp + 4]		;третий параметр
ret 4
@fastcallproc@12 endp


_stdcallproc@12 proc
 push ebp

 mov eax, [esp + 8]		;первый параметр
 mov ebx, [esp + 12]		;второй параметр
 mov edx, [esp + 16]		;третий параметр

 pop ebp
 ret 12
_stdcallproc@12 endp


_cdeclproc proc
 push ebp

 mov eax, [esp + 8]		;первый параметр
 mov ebx, [esp + 12]		;второй параметр
 mov edx, [esp + 16]		;третий параметр

 pop ebp
 ret
_cdeclproc endp 

end