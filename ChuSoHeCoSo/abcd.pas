program abcd;
uses crt;
var
        a,b,c,d:byte;
BEGIN
        clrscr;

        for a:=1 to 9 do
                for b:=0 to 9 do
                        for c:=0 to 9 do
                                for d:=0 to 9 do
        if (sqr((a*10+b)+(c*10+d)) = a*1000+b*100+c*10+d) then writeln(a*1000+b*100+c*10+d,'=(',a*10+b,'+',c*10+d,')^2');





        readln


END.