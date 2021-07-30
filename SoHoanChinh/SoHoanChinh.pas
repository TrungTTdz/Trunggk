program SoHoanChinh;

uses crt;
var
        i,s:integer;

function SoHoanChinh(n:integer):boolean;
var
        i,s:integer;
BEGIN
        s:=0;
      for i:=1 to n-1 do
      if (n mod i = 0) then s:=s+i;

        if s = n then SoHoanChinh:=true else
        SoHoanChinh:=false;
END;

BEGIN
        clrscr;



        for i:=1 to 100 do if(SoHoanChinh(i)) then write(i:3);


        readln
END.

