program GiaiThuaKep;

uses crt;
var
        n,gt,i:integer;

BEGIN
        clrscr;
        write('Nhap n:');readln(n);

        gt:=1;
        i:=n;

        while i > 0 do
        begin
                gt:=gt*i;
                i:=i-2;


        end;

        write(n,'!!=',gt);
        readln
END.

