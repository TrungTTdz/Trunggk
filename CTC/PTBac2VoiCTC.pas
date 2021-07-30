program PTBac2;
uses crt;
var
        a,b,c,del:real;

procedure Delta(a,b,c:real);
BEGIN
        del:=sqr(b)-(4*a*c);

        if(del >= 0) then writeln('Phuong trinh co 2 nghiem phan biet x1 =',(-b+sqrt(del))/(2*a):0:2,' x2 =',
        (-b-sqrt(del))/(2*a):0:2);

        if(del = 0) then writeln('Phuong trinh co nghiem kep x1 = x2 = ',-b/(2*a):0:2);
        if(del < 0) then writeln('Phuong trinh vo nghiem:');

END;


BEGIN
        clrscr;

        write('Nhap a,b,c:');readln(a,b,c);

        Delta(a,b,c);

        readln
END.

