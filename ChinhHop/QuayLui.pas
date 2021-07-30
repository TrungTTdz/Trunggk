program TapConK;
uses crt;
var
        i,n,k:integer;
        a:array[0..100] of integer;

procedure InPut;
var
        i:integer;
begin
        for i:=1 to k  do write(a[i]:3);
        writeln;
end;

procedure Try(i:integer);
var
        j:integer;
BEGIN
        for j:=a[i-1]+1 to n-k+i do
        begin
                a[i]:=j;

                if i = k then InPut else
                Try(i+1);

        end;

END;
BEGIN
        clrscr;
        write('nhap n:');readln(n);
        write('Nhap k:');readln(k);
        a[0]:=0;
        Try(1);


        readln
END.
