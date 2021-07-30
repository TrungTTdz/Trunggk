program GiaiThua;
uses crt;
var
        n,i:integer;
        a:array[0..10000] of qWord;
BEGIN
        clrscr;
        write('Nhap n:');readln(n);

        a[0]:=1;

        for i:=1  to  n do a[i]:=a[i-1]*i;

        write(n,'!=',a[n]);

        readln

END.
