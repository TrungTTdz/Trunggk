program Fibonacy;

uses crt;
var
        a:array [1..100] of qWord;
        n,i:integer;

procedure Fi;
var
        i:integer;
BEGIN
       a[1]:=1;
       a[2]:=1;

       for i:=3 to n do a[i]:=a[i-1]+a[i-2];

END;

BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        Fi;
        write(a[n]);
        readln
END.

