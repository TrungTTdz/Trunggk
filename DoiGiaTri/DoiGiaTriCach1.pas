program Doi_Gia_TCach1ach1;
uses crt;
var
        a,b:integer;
BEGIN
        clrscr;


        write('Nhap so thu 1:');readln(a);
        write('Nhap so thu 2:');readln(b);

        writeln('Truoc khi doi gia tri a = ',a,' b = ',b);
        a:=a+b;
        b:=a-b;
        a:=a-b;


        write('Sau khi doi gia tri a = ',a,' b = ',b);
        readln

END.