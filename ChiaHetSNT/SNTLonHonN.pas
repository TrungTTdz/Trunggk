program NToLonHonN;
uses crt;

var
        n,i:integer;
function KT(n:integer):boolean;
var
        i:integer;
BEGIN
        KT:=false;
        if n < 2 then exit;

        for i:=2 to trunc(sqrt(n)) do
        if (n mod i = 0) then exit;

        KT:=true;

END;
BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        i:=n;

        if(KT(n)) then
        begin
                write('So nguyen to lon hon:', n,':');
                if (n = 2) then write(3) else

                repeat
                        i:=i+2;

                until KT(i);

                write(i);
        end else
        write(n,' khong phai so nguyen to:');




        readln

END.