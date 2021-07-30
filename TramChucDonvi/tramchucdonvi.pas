program DonVi_Tram_Chuc;
uses crt;
var
        a:integer;
BEGIN
        clrscr;


        write('Nhap so:');readln(a);

        writeln('Chu so hang don vi:',a mod 10);
        a:=a div 10;
        writeln('Chu so hang chuc:',a mod 10);
        writeln('Chu so hang tram:',a div 10);

        readln

END.