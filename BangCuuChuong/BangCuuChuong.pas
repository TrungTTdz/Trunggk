program BangCuuChuong;

uses crt;
const w = 17;

var
        i,j,x,y,h,xTam,n:byte;


BEGIN
        clrscr;

        write('Nhap bang cuu chuong n:');readln(n);

        for i:=1 to n do
        begin
                if (i mod 2 <>0) then y:=1 else y:=13;
                if(i-1 mod 2<>0) and (i mod 2 = 0) then xTam:=0 else xTam:=15;
                if(i=1) or (i=2) then x:=1 else inc(x,xTam);


                for j:=1 to 10 do
                begin
                        gotoxy(x,y+j);
                        write(i,'*',j,'=',i*j);

                end;

        end;




        readln
END.

