program DoiGiaTri;
uses crt;
var
        x,y:integer;

procedure Swap(var x,y:integer);
var
        t:integer;

BEGIN
        t:=x; x:=y; y:=t;
        write('Gia tri cua x =',x,' y=',y);

END;
BEGIN
        clrscr;

        write('Nhap x,y:');readln(x,y);
        writeln('Truoc khi doi x =',x,' y= ',y);
        Swap(x,y);


        readln
END.