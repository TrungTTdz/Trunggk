{Tinh chu vi va dien tich hinh tron}

program HinhTron;
uses crt;
var r:integer;

BEGIN
        clrscr;

        // Pi la hang so do Pascal tu tao

        write('Nhap vao ban kinh:');readln(r);
        writeln('Chu vi duong tron:',r*PI:0:2);
        writeln('Dien tich duong tron:',r*r*PI:0:2);

        readln

END.