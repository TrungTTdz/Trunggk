program TongHaiSONT;

uses crt;
var
        n,i,j:integer;

function SNT(n:integer):boolean;
var
        i:integer;
BEGIN
        SNT:=false;

        if n < 2 then exit;
        for i:=2 to trunc(sqrt(n)) do
        if n mod i = 0 then exit;

        SNT:=true;

END;
BEGIN
        clrscr;

        write('Nhap n:');readln(n);



        for i:=2 to n div 2 do
                begin
                        if(SNT(i)) and (SNT(n-i)) then
                        begin

                                write(n,'=');
                                writeln(i,'+',n-i);

                        end;


                end;

        readln
END.

