mov eax, [ebx+ecx*4] ; potential buffer overflow if ecx is too large

mov DWORD PTR [eax], 0 ; writing to an invalid memory address if eax is not properly initialized or points to an invalid location