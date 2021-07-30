program ChuSoThuKCuaN;

uses crt;
var
        n,tam:String;
        k:integer;

BEGIN

        clrscr;

        write('Nhap n:');readln(n);

        write('Nhap k:');readln(k);

        if(pos(n[k],n) = k) then write(n[k]) else write(-1);



        readln
END.

