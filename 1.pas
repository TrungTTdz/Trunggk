uses crt;
var f:text;
    i:integer;
    a:array[1..50] of string;
begin
assign(f,'bai1.inp');
reset(f);
for i:=1 to 50 do
 
 begin
  readln(f,a[i]);
  writeln(a[i]);
  delay(100);
  
 end;
 readln;
  end.

