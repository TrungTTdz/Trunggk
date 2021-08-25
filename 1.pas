Var s,n,k,i,m:integer; x:real;
Function dq(n:integer):qword;
Var kq,i:integer;
Begin
    kq:=1;
    For i:=1 to n do
       kq:=kq*i;
    dq:=kq;
End;
Function C(n,k:integer):real;
Begin
  c:=dq(n)/(dq(k)*dq(n-k));
End;
begin
readln(s);
x:=x+C(s,2);
m:=2;
for i:=2 to (s div 2) do 
begin
x:=x+C(s,m);
m:=m+2;
end;
write((x+1):0:2);
end.
