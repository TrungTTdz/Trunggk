program SoLonNhat;
uses crt;
var
        a,max:integer;
BEGIN
        clrscr;

        max:=0;

        write('Nhap so thu nhat:');readln(a);
        if max < a then max:=a;
         write('Nhap so thu hai:');readln(a);
        if max < a then max:=a;
         write('Nhap so thu ba:');readln(a);
        if max < a then max:=a;
         write('Nhap so thu bon:');readln(a);
        if max < a then max:=a;
        write('So lon nhat la:', max);
        readln
END.