program SapXepDaySo;

uses crt;
type mang = array [1..100] of integer;
var
        a:mang;
        i,n:integer;

procedure NhapMang(var a:mang; n:byte);
BEGIN
        for i:=1 to n do
        begin
                write('Nhap ptu thu ',i,':');readln(a[i]);

        end;
        writeln('Truoc khi sap xep:');

        for i:=1 to n do write(a[i]:3);
        writeln;



END;

procedure SapXep(var a:mang; n:byte);
var
        i,j,tam:integer;
BEGIN
        for j:=n downto 2 do
                for i:=1 to j-1 do
                if (a[i] > a[j]) then
                BEGIN
                        tam:=a[i];
                        a[i]:=a[j];
                        a[j]:=tam;

                END;

END;
BEGIN
        clrscr;
        write('Nhap n:');readln(n);

        NhapMang(a,n);
        SapXep(a,n);

        for i:=1 to n do write(a[i]:3);
        readln
END.

