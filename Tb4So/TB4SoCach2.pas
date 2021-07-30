program TB_Nhan_4so;
uses crt;
var
        a,s:integer;
BEGIN
        clrscr;

        s:=1;

        write('Nhap so thu 1:');readln(a); s:=s*a;
        write('Nhap so thu 2:');readln(a); s:=s*a;
        write('Nhap so thu 3:');readln(a); s:=s*a;
        write('Nhap so thu 4:');readln(a); s:=s*a;

        write('Trung binh nhan 4 so:',sqrt(sqrt(s)):0:2);

        readln

END.