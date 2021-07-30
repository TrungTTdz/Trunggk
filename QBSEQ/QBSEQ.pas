program DayDaiNhatCoTongChiaHetChoK;
uses crt;
const
        FI = '';
        FO = '';
var
        a,b:array[1..1000] of integer;
        k:byte;
        n,i,dem,j,l:integer;
procedure ReadData;
var
        f:text;
        i:integer;
BEGIN
        assign(f,FI);
        reset(f);

        readln(f,n,k);
        i:=0;

        while not(EOF(f)) do
        begin
                while not (EOLN(f)) do
                begin
                        inc(i);
                        read(f,a[i]);

                end;

                readln(f);

        end;

        close(f);

END;

procedure Swap(var a,b:integer);
var
        t:integer;
BEGIN
        t:=a;
        a:=b;
        b:=t;
END;

procedure WriteData;
var
        f:text;
BEGIN
        assign(f,FO);
        reset(f);
        write(f,dem);

        close(f);

END;

BEGIN
        clrscr;

        ReadData;


        for i:=1 to n do
        if (a[i] mod k = 0) then inc(dem) else
        begin
                inc(j);
                b[j]:=a[i] mod k;

        end;


        //Sap xep
           for i:=1 to j-1 do
                for l:=i+1 to j do
                if(b[i] > b[l]) then Swap(b[i],b[l]);


        for i:=1 to (j div 2) do
                if(b[i] + b[j-i+1] = k) then dem:=dem+2;

        write(dem);






      //  WriteData;
        readln

END.
