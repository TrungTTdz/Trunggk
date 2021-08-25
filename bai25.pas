
uses crt;
var
        i,tam,dem,j:integer;
        x,y:integer;
        f1,f2:text;

function TongUoc(n:integer):integer;
var
        i,uoc:integer;
BEGIN

        uoc:=1;
        for i:=2 to round(sqrt(n)) do
        if(n mod i = 0) then uoc:=uoc+i+( n div i);
        if i*i=n then uoc:=uoc-i;
        TongUoc:=uoc;


END;

BEGIN
        clrscr;
        assign(f1,'25.inp');
        assign(f2,'25.out');
        reset(f1); rewrite(f2);
        read(f1,x); read(f1,y);
        
        for i:=x to y do
        begin
                tam:=TongUoc(i);
                if i<tam then
                if(i = TongUoc(tam)) then
                begin
                        writeln(i,'    ',tam);
                end;


        end;
        
END.

