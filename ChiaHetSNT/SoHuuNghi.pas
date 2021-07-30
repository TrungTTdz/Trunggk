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

        for i:=1 to 1000 do
        begin
                tam:=TongUoc(i);
                write(tam);

                if(TongUoc(tam) = i) then
                begin
                        inc(dem);
                end;


        end;

        write(TongUoc(48),'-',75);

        if(dem = 0) then write(' Ko co');



        readln
END.

