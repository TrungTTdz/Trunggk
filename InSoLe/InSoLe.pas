program InSoLeXuongDong;

uses crt;
var dem,i:integer;

BEGIN
        clrscr;

        dem:=0;

        for i:=1 to 100 do
        if ( i mod 2 <> 0) then
        begin

                write(i:3);

                inc(dem);
                 if (dem = 15) then
                begin
                        writeln;
                        dem:=0;
                end;
        end;

        readln
END.

