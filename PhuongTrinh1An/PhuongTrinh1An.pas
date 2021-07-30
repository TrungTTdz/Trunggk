program PTMotAn;
uses crt;
var
        a,b,x:real;
BEGIN
        clrscr;

        WRITELN('PHUONG TRINH AX+B = 0');

        write('Nhap a:');readln(a);
        write('Nhap b:');readln(b);

        x:=-b/a;

        if(a = 0) then write('Phuong trinh vo nghiem:') else
        if(a = 0) and (b= 0) then write('Phuong trinh vo so nghiem') else
        write('Nghiem cua phuong trinh la:', x:0:3);

        readln

END.