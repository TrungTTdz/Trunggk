program MyFirstProgramEver;
uses crt;
var
        n,i,j,k:byte;
        a : array [1..100] of byte;

BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        repeat

                for j:=1 to n do write(a[j]:3);
                writeln;

                i:=n;

                while ( i > 0) and (a[i] = 1)  do dec(i);
                if ( i > 0) then
                begin
                        a[i]:=1;
                        for k:=i+1 to n do a[k]:=0;
                end;



        until i = 0;






        readln
END.
