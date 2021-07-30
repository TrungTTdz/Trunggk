program DoiCoSoMuoi;
uses crt;
var n:longint;
css:byte;

function Doi:string;
var
        cs:array[0..100] of char;
        i,j:integer;
        tam,s:string;
        c:char;

BEGIN
        //Gan 0-9 va A-Z vao mang
        i:=0;

        for c:='0' to '9' do
        begin
                cs[i]:=c;
                inc(i);
        end;

        i:=10;

        for c:='A' to 'Z' do
        begin
                cs[i]:=c;
                inc(i);
        end;

        Doi:='';

        while n <> 0 do
        begin
                Doi:=cs[n mod css]+Doi;
                n:=n div css;

        end;







END;

BEGIN
        clrscr;

        write('Nhap n:');readln(n);
        write('Nhap co so:');readln(css);

        write('Ket qua la:',Doi);
        readln
END.

