#include <iostream>

extern "C"
{
    int __fastcall fastcallproc(int a, int b,int c);
    int __stdcall stdcallproc(int a, int b, int c);
    int __cdecl cdeclproc(int a, int b, int c);
}

int main()
{
    std::cout << stdcallproc(1, 2, 3) << '\n';
    std::cout << cdeclproc(1, 2, 3) << '\n';
    std::cout << fastcallproc(1, 2, 3) << '\n';
}
