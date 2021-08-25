program SoHuuNghi;

uses crt;
var
        i,tam,dem:integer;

function TongUoc(n:integer):integer;
var
        i,uoc:integer;
BEGIN

        uoc:=0;
        for i:=2 to n-1 do
        if(n mod i = 0) then inc(uoc);

        TongUoc:=uoc;


END;

BEGIN
        clrscr;

        write('Cac cap so huu nghi');

        for i:=1 to 10 do
        begin
                tam:=TongUoc(i);
                write(tam);

                if(TongUoc(tam) = i) then
                begin
                        writeln('  ',i:10);
                        inc(dem);
                end;


        end;

END.

