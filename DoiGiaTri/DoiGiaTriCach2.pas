program Tram_Chuc_DonVi;
uses crt;
var
        a:integer;
BEGIN
        clrscr;


        write('Nhap so:');readln(a);

        writeln('Chu so hang tram la:',a div 100);
        a:=a mod 100;
        writeln('Chu so hang chuc la:',a div 10);
        writeln('Chu so hang don vi la', a mod 10);

        readln

END.