{$B-}
program ChiaThuong;
uses crt;
const
        FI = 'ChiaThuong\INP.txt';
        FO = 'ChiaThuong\OUT.txt';
var
        m,n,d:longint;

procedure ReadData;
var
        f:text;
BEGIN
        assign(f,FI);
        reset(f);
        read(f,m,n);
        close(f);
END;

procedure WriteData;
var
        f:text;
        i,max:integer;
BEGIN
        assign(f,FO);
        rewrite(f);
        close(f);
END;

function Chia(i,j:integer):longint;
BEGIN

        d:=d+1;
        if (j = 0) then Chia:=0 else
        if (i = 0) then Chia:=1 else
        if (i < j) then Chia:=Chia(i,i) else Chia:=Chia(i,j-1)+Chia(i-j,j);

END;
BEGIN
        clrscr;
        d:=0;
        ReadData;
        writeln(Chia(66,32));
        write(d);




        readln

END.
