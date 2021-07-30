program InXauDaoNguoc;
uses crt;
var s:String;
function DaoNguoc(s:string):string;
BEGIN
        kq:='';
        if(length(s) = 1) then daonguoc:=s else
        daonguoc:=s[length(s)]+DaoNguoc(copy(s,1,length(s)-1));




END;

BEGIN
        clrscr;

        write('Nhap xau s:');readln(s);
        write(DaoNguoc(s));

        readln
END.

