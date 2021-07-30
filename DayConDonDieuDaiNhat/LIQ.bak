{$B-}
program LIQ;
uses crt;
const
        FI = 'DayConDonDieuDaiNhat\INP.txt';
        FO = 'DayConDonDieuDaiNhat\OUT.txt';
var
        a,dai:array[1..1000] of integer;
        i,n,max,j,d,c:integer;
procedure ReadData;
var
        f:text;
BEGIN
        assign(f,FI);
        reset(f);
        readln(f,n);

        for i:=1 to n do read(f,a[i]);

        close(f);
END;

procedure WriteData;
var
        f:text;
        i,max:integer;
BEGIN
        assign(f,FO);
        rewrite(f);
        max:=0 ;

        for i:=1 to n do
        if (dai[i] >  max) then max:=dai[i];
        write(f,max);
        close(f);
END;

BEGIN
        clrscr;

        ReadData;

        dai[1]:=1;

        for i:=2 to n do
        begin
                max:=0;
                for j:=1 to i-1 do
                if ( a[i] > a[j]) and (dai[j] > max) then max:=dai[j];
                dai[i]:=max+1;

        end;

        WriteData;





        readln
END.
