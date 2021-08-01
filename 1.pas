uses crt;
var f:text;
    i:integer;
    a:array[1..140] of string;
begin
assign(f,'ascii-art.txt');
reset(f);
for i:=3 to 80 do
 
 begin
  readln(f,a[i]);
  writeln(a[i]);
  delay(100);
  
 end;
 readln;
  end.


