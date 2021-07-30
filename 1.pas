uses crt;
var n:qword;
        chuadung:integer;
    mang:array[1..100] of qword;


Const
  a: array[1..3] of integer = (2,7,61);

function power(a,q,n:qword):qword; inline;
    var
      u:qword;
    begin
      if q=1 then exit(a mod n);
      if q=0 then exit(1);
      u:=power(a,q shr 1,n);
      if q and 1=1 then exit( ((u*u) mod n*a) mod n )
      else exit( (u*u) mod n );
    end;


Function RabinMiller(k: qword): boolean;
Var
  i,j: integer;
  st,test,bs,p2: qword;
  ch: boolean;
Begin
  bs:= k - 1;
  p2:= 0;
  While bs mod 2 = 0 do
    Begin
      bs:= bs div 2;
      inc(p2);
    End;

  RabinMiller:= false;
  ch:= true;

  For i:= 1 to 3 do if k >= a[i] then
    Begin
      ch:= false;
      st:= power(a[i],bs,k);

      test:= st;
      If (test = 1) or (test = k - 1) then
        Begin
          ch:= true;
          break;
        End;

      For j:= 1 to p2 - 1 do
        Begin
          test:= (test * test) mod k;
          If (test = 1) or (test = k - 1) then
            Begin
              ch:= true;
              break;
            End;
        End;

      If not ch then exit(false);
    End;

  RabinMiller:= true;
End;
begin
clrscr;
n:=1;
chuadung:=1;
while n<> 0 do
begin
readln(mang[chuadung]);
n:=mang[chuadung];
if rabinmiller(n)= true then writeln(n,'la so nguyen to') else writeln(n,'k phai la so nguyen to');
inc(chuadung);
end;
readln;
end.
