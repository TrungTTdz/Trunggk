program QuayLui;
uses crt;
var
        a:array[1..100] of integer;
        i,n,j:integer;

procedure InPut;
var
        i:integer;
BEGIN
        for i:=1 to n do write(a[i]:3);
        writeln;
END;

procedure Try(i:integer);
var
        j:integer;
BEGIN
        for j:=0 to 1 do
        begin
                a[i]:=j;

                if i = n then InPut() else
                Try(i+1);

        end;


END;

BEGIN
        clrscr;
        write('Nhap n:');readln(n);
        Try(1);
        readln
END.