program TamGiacPascal;
uses crt;
var
        a:array [1..100,1..100] of longint;
        i,j,n:integer;
BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        a[1,1]:=1;

        for i:=2 to n do
        begin
                a[i,1]:=1;
                for j:=2 to i+1 do a[i,j]:=a[i-1,j-1]+a[i-1,j];

        end;

        for i:=1 to n do
        begin
                for j:=1 to n-i+1 do write(' ');
                for j:=1 to i do write(a[i,j]:2);
                writeln;
        end;

        readln

END.




































